package com.sonymobile.android.addoncamera.soundphoto.contents;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.view.Surface;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingConstants;
import com.sonymobile.cameracommon.media.encoder.InputDataInfo;
import com.sonymobile.cameracommon.media.encoder.InputDataSource;
import com.sonymobile.cameracommon.media.encoder.MediaEncoder;
import com.sonymobile.cameracommon.media.utility.ByteDataSource;
import com.sonymobile.cameracommon.memorybuffer.NativeByteBufferHolder;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
public class AudioData {
    private static final int BITRATE = 256000;
    private static final int BYTES_COPY_BUFFER_LENGTH = 2048;
    private static final String MIMETYPE = "audio/mp4a-latm";
    private static final String TAG = AudioData.class.getSimpleName();
    public final int bitPerSample;
    public final int channels;
    private final BlockingQueue<NativeByteBufferHolder> mSamples;
    public final int sampleRate;
    private final ByteDataSource.PresentationTimeCalculator mPresentationTimeCalculator = new ByteDataSource.PresentationTimeCalculator() { // from class: com.sonymobile.android.addoncamera.soundphoto.contents.AudioData.2
        @Override // com.sonymobile.cameracommon.media.utility.ByteDataSource.PresentationTimeCalculator
        public long get(int position) {
            long nano = ((1000000 * position) / ((AudioData.this.bitPerSample / 8) * AudioData.this.channels)) / AudioData.this.sampleRate;
            AudioData.this.mEncodedDuration = nano / 1000;
            return nano;
        }
    };
    private final ByteDataSource.SampleDataFilter mCaptureFinishedNotifyer = new ByteDataSource.SampleDataFilter() { // from class: com.sonymobile.android.addoncamera.soundphoto.contents.AudioData.3
        public final List<ByteBuffer> samples = new ArrayList();

        @Override // com.sonymobile.cameracommon.media.utility.ByteDataSource.SampleDataFilter
        public void onSamples(NativeByteBufferHolder data, boolean eos) {
            ByteBuffer buffer = ByteBuffer.allocate(data.get().limit());
            data.get().rewind();
            buffer.put(data.get());
            this.samples.add(buffer);
            if (eos) {
                synchronized (AudioData.this) {
                    if (AudioData.this.mOnAudioCaptureFinishedListener != null) {
                        AudioData.this.mOnAudioCaptureFinishedListener.onAudioCaptureFinished(AudioData.this, concat(this.samples));
                    }
                }
            }
        }

        private ByteBuffer concat(List<ByteBuffer> buffers) {
            int totalSize = 0;
            Iterator<ByteBuffer> it = buffers.iterator();
            while (it.hasNext()) {
                totalSize += it.next().limit();
            }
            ByteBuffer result = ByteBuffer.allocate(totalSize);
            for (ByteBuffer i : buffers) {
                i.rewind();
                result.put(i);
            }
            return result;
        }
    };
    private volatile long mEncodedDuration = 0;
    private OnAudioCaptureFinishedListener mOnAudioCaptureFinishedListener = null;

    public interface OnAudioCaptureFinishedListener {
        void onAudioCaptureFinished(AudioData audioData, ByteBuffer byteBuffer);
    }

    public AudioData(BlockingQueue<NativeByteBufferHolder> data, int sampleRate, int channels, int bitPerSample) {
        this.mSamples = data;
        this.sampleRate = sampleRate;
        this.channels = channels;
        this.bitPerSample = bitPerSample;
    }

    public long duration() {
        return this.mEncodedDuration;
    }

    public void setOnAudioCaptureFinishedListener(OnAudioCaptureFinishedListener onAudioCaptureFinishedListener) {
        synchronized (this) {
            this.mOnAudioCaptureFinishedListener = onAudioCaptureFinishedListener;
        }
    }

    public byte[] makeMp4() {
        File tempFile = null;
        try {
            tempFile = File.createTempFile("audio", ".mp4");

            MediaMuxer muxer = new MediaMuxer(tempFile.getPath(), 0);

            InputDataInfo inputDataInfo =
                    createAudioInputStreamInfo("audio/mp4a-latm", this.sampleRate, this.channels, 0x3e800);

            CountDownLatch finishSignal = new CountDownLatch(1);

            MediaEncoder.StateListener stateListener = new MediaEncoder.StateListener() {
                @Override public void onStarted() { /* no-op */ }
                @Override public void onFinished(boolean result) { finishSignal.countDown(); }
                @Override public void onProgress(long writtenUs, long durationUs) { /* no-op */ }
                @Override public void onStorageFull() { finishSignal.countDown(); }
            };

            MediaEncoder encoder = new MediaEncoder(new InputDataInfo[]{ inputDataInfo }, muxer, stateListener);
            encoder.start();

            // Wait until encoding completes (or storage fills up).
            finishSignal.await();

            return fileToBytes(tempFile.getPath());
        } catch (IOException | InterruptedException e) {
            return null;
        } finally {
            if (tempFile != null) {
                try { tempFile.delete(); } catch (Throwable ignored) {}
            }
        }
    }

    public void clearSamples() {
        while (!this.mSamples.isEmpty()) {
            NativeByteBufferHolder holder = this.mSamples.poll();
            if (holder != null) {
                holder.decrementRefCount();
            }
        }
    }

    private InputDataInfo createAudioInputStreamInfo(String mime, int sampleRate, int channelCount, int bitRate) throws IOException {
        InputDataSource source;
        MediaFormat format = MediaFormat.createAudioFormat(mime, sampleRate, channelCount);
        format.setInteger("bitrate", bitRate);
        format.setInteger("aac-profile", 2);
        MediaCodec codec = MediaCodec.createEncoderByType("audio/mp4a-latm");
        codec.configure(format, (Surface) null, (MediaCrypto) null, MediaCodec.CONFIGURE_FLAG_ENCODE);
        synchronized (this) {
            if (this.mOnAudioCaptureFinishedListener == null) {
                source = new ByteDataSource(this.mSamples, codec, this.mPresentationTimeCalculator);
            } else {
                source = new ByteDataSource(this.mSamples, codec, this.mPresentationTimeCalculator, this.mCaptureFinishedNotifyer);
            }
        }
        return InputDataInfo.create(format, codec, source);
    }

    private byte[] fileToBytes(String path) {
        try (InputStream in = new FileInputStream(path); ByteArrayOutputStream out = new ByteArrayOutputStream()) {
            byte[] buff = new byte[0x800];
            int length;
            while ((length = in.read(buff)) >= 0) {
                out.write(buff, 0, length);
            }
            return out.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
