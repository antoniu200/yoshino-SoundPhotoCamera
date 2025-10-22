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
            tempFile = File.createTempFile("audio", MediaSavingConstants.MEDIA_TYPE_MPEG4_EXT);
            MediaMuxer muxer = new MediaMuxer(tempFile.getPath(), MediaMuxer.OutputFormat.MUXER_OUTPUT_MPEG_4);
            InputDataInfo inputDataInfo = createAudioInputStreamInfo("audio/mp4a-latm", this.sampleRate, this.channels, 256000);
            final CountDownLatch finishSignal = new CountDownLatch(1);
            MediaEncoder.StateListener stateListener = new MediaEncoder.StateListener() { // from class: com.sonymobile.android.addoncamera.soundphoto.contents.AudioData.1
                @Override // com.sonymobile.cameracommon.media.encoder.MediaEncoder.StateListener
                public void onStarted() {
                }

                @Override // com.sonymobile.cameracommon.media.encoder.MediaEncoder.StateListener
                public void onFinished(boolean result) {
                    finishSignal.countDown();
                }

                @Override // com.sonymobile.cameracommon.media.encoder.MediaEncoder.StateListener
                public void onProgress(long duration, long size) {
                }

                @Override // com.sonymobile.cameracommon.media.encoder.MediaEncoder.StateListener
                public void onStorageFull() {
                }
            };
            MediaEncoder encoder = new MediaEncoder(new InputDataInfo[]{inputDataInfo}, muxer, stateListener);
            encoder.start();
            finishSignal.await();
            byte[] bArrFileToBytes = fileToBytes(tempFile.getPath());
            if (tempFile == null || !tempFile.delete()) {
            }
            return bArrFileToBytes;
        } catch (IOException e) {
            if (tempFile == null || !tempFile.delete()) {
            }
            return null;
        } catch (InterruptedException e2) {
            if (tempFile == null || !tempFile.delete()) {
            }
            return null;
        } catch (Throwable th) {
            if (tempFile == null || !tempFile.delete()) {
            }
            throw th;
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

    private byte[] fileToBytes(String path) throws Throwable {
        InputStream in = null;
        try {
            try {
                InputStream in2 = new FileInputStream(path);
                try {
                    ByteArrayOutputStream out = new ByteArrayOutputStream();
                    byte[] buff = new byte[2048];
                    while (true) {
                        int length = in2.read(buff);
                        if (length < 0) {
                            break;
                        }
                        out.write(buff, 0, length);
                    }
                    byte[] byteArray = out.toByteArray();
                    if (in2 != null) {
                        try {
                            in2.close();
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                    }
                    return byteArray;
                } catch (IOException e2) {
                    e = e2;
                    in = in2;
                    throw new RuntimeException(e);
                } catch (Throwable th) {
                    th = th;
                    in = in2;
                    if (in != null) {
                        try {
                            in.close();
                        } catch (IOException e3) {
                            throw new RuntimeException(e3);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e4) {
            e = e4;
        }
    }
}