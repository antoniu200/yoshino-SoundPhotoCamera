package com.sonymobile.cameracommon.media.utility;

import android.media.MediaCodec;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.media.encoder.InputDataSource;
import com.sonymobile.cameracommon.memorybuffer.NativeByteBufferHolder;
import java.nio.ByteBuffer;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class ByteDataSource implements InputDataSource {
    private static final long INPUTBUFFER_TIMEOUT_NANOSECONDS = 100000000;
    public static final String TAG = "ByteDataSource";
    private final MediaCodec mEncoder;
    private volatile boolean mIsStopRequested;
    private final PresentationTimeCalculator mPresentationTime;
    private final BlockingQueue<NativeByteBufferHolder> mQueue;
    private final SampleDataFilter mSampleDataFilter;

    public interface PresentationTimeCalculator {
        long get(int i);
    }

    public interface SampleDataFilter {
        void onSamples(NativeByteBufferHolder nativeByteBufferHolder, boolean z);
    }

    public ByteDataSource(BlockingQueue<NativeByteBufferHolder> queue, MediaCodec encoder, PresentationTimeCalculator presentationTimeCalculator) {
        this(queue, encoder, presentationTimeCalculator, null);
    }

    public ByteDataSource(BlockingQueue<NativeByteBufferHolder> queue, MediaCodec encoder, PresentationTimeCalculator presentationTimeCalculator, SampleDataFilter sampleDataFilter) {
        this.mQueue = queue;
        this.mEncoder = encoder;
        this.mPresentationTime = presentationTimeCalculator;
        this.mSampleDataFilter = sampleDataFilter;
        this.mIsStopRequested = false;
    }

    @Override // com.sonymobile.cameracommon.media.encoder.InputDataSource
    public void start() {
        this.mIsStopRequested = false;
        Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: com.sonymobile.cameracommon.media.utility.ByteDataSource.1
            @Override // java.lang.Runnable
            public void run() {
                boolean eos = false;
                int writtenBytes = 0;
                ByteBuffer[] inputBuffers = ByteDataSource.this.mEncoder.getInputBuffers();
                while (!eos) {
                    NativeByteBufferHolder bufferRef = null;
                    try {
                        try {
                            bufferRef = (NativeByteBufferHolder) ByteDataSource.this.mQueue.take();
                            ByteBuffer buffer = bufferRef.get();
                            eos = buffer.limit() == 0;
                            if (ByteDataSource.this.mSampleDataFilter != null) {
                                ByteDataSource.this.mSampleDataFilter.onSamples(bufferRef, eos);
                            }
                            ByteDataSource.this.pushToEncoder(buffer, inputBuffers, writtenBytes, eos);
                            writtenBytes += buffer.limit();
                            if (bufferRef != null) {
                                bufferRef.decrementRefCount();
                            }
                        } catch (InterruptedException e) {
                            CameraLogger.e(ByteDataSource.TAG, "mQueue.take() INTERRUPTED");
                            if (bufferRef != null) {
                                bufferRef.decrementRefCount();
                            }
                        }
                    } catch (Throwable th) {
                        if (bufferRef != null) {
                            bufferRef.decrementRefCount();
                        }
                        throw th;
                    }
                }
            }
        });
    }

    @Override // com.sonymobile.cameracommon.media.encoder.InputDataSource
    public void stop() {
        this.mIsStopRequested = true;
    }

    @Override // com.sonymobile.cameracommon.media.encoder.InputDataSource
    public void release() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pushToEncoder(ByteBuffer src, ByteBuffer[] dstBuffers, int srcOffset, boolean eos) throws MediaCodec.CryptoException {
        src.rewind();
        while (true) {
            int dstBufferIndex = this.mEncoder.dequeueInputBuffer(INPUTBUFFER_TIMEOUT_NANOSECONDS);
            if (dstBufferIndex >= 0) {
                long currentPresentationTime = this.mPresentationTime.get(src.position() + srcOffset);
                ByteBuffer dst = dstBuffers[dstBufferIndex];
                dst.rewind();
                if (src.remaining() > dst.remaining()) {
                    int originalLimit = src.limit();
                    src.limit(src.position() + dst.remaining());
                    dst.put(src);
                    src.limit(originalLimit);
                } else {
                    dst.put(src);
                }
                boolean writtenAll = src.remaining() == 0;
                this.mIsStopRequested = this.mIsStopRequested || (writtenAll && eos);
                int flags = this.mIsStopRequested ? 4 : 0;
                this.mEncoder.queueInputBuffer(dstBufferIndex, 0, dst.position(), currentPresentationTime, flags);
                if (this.mIsStopRequested || writtenAll) {
                    return;
                }
            }
        }
    }
}