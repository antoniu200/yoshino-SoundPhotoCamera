package com.sonymobile.android.addoncamera.soundphoto.contents;

import android.media.AudioRecord;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.media.utility.BackgroundWorker;
import com.sonymobile.cameracommon.media.utility.ReferenceClock;
import com.sonymobile.cameracommon.memorybuffer.NativeByteBufferHolder;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes.dex */
public class AudioSampleDataStore {
    private static final int NOTIFICATION_PERIOD_SAMPLE_COUNT = 1440;
    private static final String TAG = AudioSampleDataStore.class.getSimpleName();
    private final int mAudioRecordBufferSize;
    private final int mBufferingDuration;
    private final int mCaptureDuration;
    private final int mChannelCount;
    private volatile int mCurrentSamplePosition;
    private final int mFormat;
    private final int mFrameBytes;
    private OnBufferPositionUpdateListener mOnBufferPositionUpdateListener;
    private final int mPostCaptureDuration;
    private final int mPreCaptureDuration;
    private final CyclicBuffer mSampleBuffer;
    private final int mSampleRate;
    final AudioRecord.OnRecordPositionUpdateListener mOnRecordPositionUpdateListener = new AudioRecord.OnRecordPositionUpdateListener() { // from class: com.sonymobile.android.addoncamera.soundphoto.contents.AudioSampleDataStore.2
        @Override // android.media.AudioRecord.OnRecordPositionUpdateListener
        public void onMarkerReached(AudioRecord recorder) {
        }

        @Override // android.media.AudioRecord.OnRecordPositionUpdateListener
        public void onPeriodicNotification(AudioRecord recorder) {
            if (AudioSampleDataStore.this.mNowBuffering) {
                AudioSampleDataStore.this.drainSamples(AudioSampleDataStore.this.mNotificationPeriod);
            }
        }
    };
    private final List<Request> mRequests = new ArrayList();
    private final ReferenceClock mTimeElapseFromLastSample = new ReferenceClock();
    private final int mNotificationPeriod = NOTIFICATION_PERIOD_SAMPLE_COUNT;
    private volatile boolean mNowBuffering = false;
    private BackgroundWorker mBackgroundWorker = null;
    private AudioRecord mAudioRecord = null;

    public interface OnBufferPositionUpdateListener {
        void onBufferPositionUpdated(int i, int i2);
    }

    public AudioSampleDataStore(int sampleRate, int channelCount, int format, int captureDuration, int preCaptureDuration) {
        this.mSampleRate = sampleRate;
        this.mChannelCount = channelCount;
        this.mFormat = format;
        this.mCaptureDuration = captureDuration;
        this.mPreCaptureDuration = preCaptureDuration;
        this.mPostCaptureDuration = this.mCaptureDuration - this.mPreCaptureDuration;
        this.mBufferingDuration = this.mCaptureDuration * 2;
        this.mFrameBytes = sampleBytes(this.mFormat) * this.mChannelCount;
        int audioRecordBufferSizeRequested = this.mNotificationPeriod * this.mFrameBytes * 4;
        this.mAudioRecordBufferSize = Math.max(audioRecordBufferSizeRequested, AudioRecord.getMinBufferSize(this.mSampleRate, channelConfig(), this.mFormat));
        this.mSampleBuffer = new CyclicBuffer(this.mSampleRate * this.mFrameBytes * this.mBufferingDuration);
    }

    public void release() throws IllegalStateException {
        try {
            stopBuffering();
        } catch (InterruptedException e) {
            CameraLogger.e(TAG, "stopBuffering() is interrupted.");
        }
    }

    public boolean nowBuffering() {
        return this.mNowBuffering;
    }

    public boolean startBuffering() throws IllegalStateException {
        if (this.mNowBuffering) {
            return true;
        }
        this.mNowBuffering = true;
        this.mBackgroundWorker = new BackgroundWorker("AudioSampleDataStore-Thread");
        this.mSampleBuffer.clear();
        this.mCurrentSamplePosition = 0;
        this.mTimeElapseFromLastSample.start();
        this.mAudioRecord = new AudioRecord(5, this.mSampleRate, channelConfig(), this.mFormat, this.mAudioRecordBufferSize);
        int r = this.mAudioRecord.setPositionNotificationPeriod(this.mNotificationPeriod);
        if (r != 0) {
            CameraLogger.e(TAG, "setPositionNotificationPeriod:failed");
        }
        this.mAudioRecord.setRecordPositionUpdateListener(this.mOnRecordPositionUpdateListener, this.mBackgroundWorker.getHandler());
        try {
            this.mAudioRecord.startRecording();
            switch (this.mAudioRecord.getRecordingState()) {
                case 1:
                    break;
                default:
                    requestToDrainSamples(0);
                    break;
            }
        } catch (IllegalStateException e) {
            CameraLogger.e(TAG, "startRecording:failed", e);
            return false;
        }
        return true;
    }

    public void stopBuffering() throws IllegalStateException, InterruptedException {
        if (this.mNowBuffering) {
            this.mNowBuffering = false;
            if (this.mAudioRecord.getRecordingState() == 3) {
                this.mAudioRecord.stop();
            }
            this.mBackgroundWorker.quit();
            this.mBackgroundWorker = null;
            this.mAudioRecord.release();
            this.mAudioRecord = null;
            List<Request> requests = new ArrayList<>();
            synchronized (this.mRequests) {
                requests.addAll(this.mRequests);
                this.mRequests.clear();
            }
            for (Request r : requests) {
                r.putEos();
            }
        }
    }

    public BlockingQueue<NativeByteBufferHolder> get() {
        int elapseSeconds = ((int) this.mTimeElapseFromLastSample.elapsedTimeMillis()) / 1000;
        int tail = this.mCurrentSamplePosition + ((this.mPostCaptureDuration + elapseSeconds) * this.mSampleRate);
        int head = tail - (this.mCaptureDuration * this.mSampleRate);
        Request request = new Request(Math.max(0, head), tail);
        synchronized (this.mRequests) {
            this.mRequests.add(request);
        }
        return request.samples;
    }

    private void requestToDrainSamples(final int size) {
        this.mBackgroundWorker.getHandler().post(new Runnable() { // from class: com.sonymobile.android.addoncamera.soundphoto.contents.AudioSampleDataStore.1
            @Override // java.lang.Runnable
            public void run() {
                AudioSampleDataStore.this.drainSamples(size);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drainSamples(int count) {
        this.mSampleBuffer.drain(this.mAudioRecord, this.mFrameBytes * count);
        this.mCurrentSamplePosition += count;
        this.mTimeElapseFromLastSample.start();
        if (this.mOnBufferPositionUpdateListener != null) {
            this.mOnBufferPositionUpdateListener.onBufferPositionUpdated((int) ((this.mCurrentSamplePosition / this.mSampleRate) * 1000.0f), this.mSampleBuffer.getCurrentVolume());
        }
        List<Request> requests = new ArrayList<>();
        synchronized (this.mRequests) {
            requests.addAll(this.mRequests);
        }
        for (Request r : requests) {
            int length = (r.tail - r.mPosition) * this.mFrameBytes;
            int offset = (this.mCurrentSamplePosition - r.tail) * this.mFrameBytes;
            if (offset < 0) {
                length += offset;
                offset = 0;
            }
            int lastSamplePosition = r.mPosition + (length / this.mFrameBytes);
            try {
                r.put(this.mSampleBuffer.get(length, offset), lastSamplePosition);
            } catch (InterruptedException e) {
                CameraLogger.e(TAG, "drainSamples() is interrupted.");
            }
            if (r.eos()) {
                synchronized (this.mRequests) {
                    this.mRequests.remove(r);
                }
            }
        }
    }

    private int sampleBytes(int audioFormat) {
        switch (audioFormat) {
            case 2:
                return 2;
            case 3:
                return 1;
            default:
                throw new IllegalStateException("Specified Audio format is not supported.");
        }
    }

    private int channelConfig() {
        switch (this.mChannelCount) {
            case 1:
            default:
                return 16;
            case 2:
                return 12;
        }
    }

    static class Request {
        public final int head;
        private int mPosition;
        public final int tail;
        public final BlockingQueue<NativeByteBufferHolder> samples = new LinkedBlockingQueue();
        private boolean mForceEos = false;

        public Request(int headSamplePosition, int tailSamplePosition) {
            this.head = headSamplePosition;
            this.tail = tailSamplePosition;
            this.mPosition = this.head;
        }

        public void put(NativeByteBufferHolder buffer, int lastPosition) throws InterruptedException {
            if (!eos()) {
                this.samples.put(buffer);
                this.mPosition = lastPosition;
                if (eos()) {
                    putEos();
                }
            }
        }

        public void putEos() throws InterruptedException {
            this.samples.put(NativeByteBufferHolder.allocate(0));
            this.mForceEos = true;
        }

        public boolean eos() {
            return this.mForceEos || this.mPosition >= this.tail;
        }
    }

    static class CyclicBuffer {
        private final byte[] mBytes;
        private int mCurrentPosition = 0;
        private int mCurrentVolume;

        public CyclicBuffer(int size) {
            this.mBytes = new byte[size];
        }

        public int size() {
            return this.mBytes.length;
        }

        public int getCurrentVolume() {
            return this.mCurrentVolume;
        }

        public void clear() {
            Arrays.fill(this.mBytes, (byte) 0);
            this.mCurrentPosition = 0;
            this.mCurrentVolume = 0;
        }

        public void drain(AudioRecord audioRecord, int size) {
            if (audioRecord == null || size <= 0) {
                return;
            }

            int remaining = size;
            while (remaining > 0) {
                // Read contiguously up to the end of the ring.
                int capacityToEnd = mBytes.length - mCurrentPosition;
                int request = remaining < capacityToEnd ? remaining : capacityToEnd;

                int read = audioRecord.read(mBytes, mCurrentPosition, request);
                switch (read) {
                    case AudioRecord.ERROR_INVALID_OPERATION: // -3
                    case AudioRecord.ERROR_BAD_VALUE:         // -2
                        return;
                    default:
                        if (read <= 0) {
                            return;
                        }
                        break;
                }

                // Compute RMS volume over the newly written PCM16LE samples.
                long sumSq = 0L;
                for (int i = 0; i < read; i += 2) {
                    int lo = mBytes[mCurrentPosition + i] & 0xFF;
                    int hi = mBytes[mCurrentPosition + i + 1]; // sign extends in int
                    int sample = (hi << 8) | lo;               // little-endian 16-bit
                    sumSq += (long) sample * (long) sample;
                }
                if (read > 0) {
                    double denom = (double) (read / 2); // number of 16-bit samples
                    if (denom > 0) {
                        mCurrentVolume = (int) Math.sqrt(sumSq / denom);
                    }
                }

                mCurrentPosition += read;
                if (mCurrentPosition >= mBytes.length) {
                    mCurrentPosition %= mBytes.length;
                }
                remaining -= read;
            }
        }

        public NativeByteBufferHolder get(int size, int offset) {
            NativeByteBufferHolder dstHolder = NativeByteBufferHolder.allocate(size);
            ByteBuffer dst = dstHolder.get();
            byte[] src = this.mBytes;
            int srcHead = this.mCurrentPosition - (size + offset);
            while (dst.position() < size) {
                int srcPosition = computeSrcPosition(dst.position(), srcHead);
                int copyLength = size - dst.position();
                if (srcPosition + copyLength > src.length) {
                    copyLength = src.length - srcPosition;
                }
                dst.put(src, srcPosition, copyLength);
            }
            return dstHolder;
        }

        private int computeSrcPosition(int position, int offset) {
            int srcPosition = position + offset;
            while (srcPosition < 0) {
                srcPosition += this.mBytes.length;
            }
            return srcPosition;
        }
    }

    public void setBufferPositionUpdateListener(OnBufferPositionUpdateListener listener) {
        this.mOnBufferPositionUpdateListener = listener;
    }
}