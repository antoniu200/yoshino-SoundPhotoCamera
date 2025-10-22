package com.sonymobile.cameracommon.media.encoder;

import android.media.MediaFormat;
import android.media.MediaMuxer;
import com.sonyericsson.cameracommon.utility.Log;
import com.sonymobile.cameracommon.media.encoder.EncodedDataWriteTask;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class MediaEncoder {
    public static final String TAG = "MediaEncoder";
    private static final long TIME_OUT_STOPPING_MILLISECONDS = 2000;
    private static boolean TRACE = true;
    private CountDownLatch mEncoderFinishSignal;
    private CountDownLatch mEncoderFormatChangedSignal;
    private ExecutorService mInputEncodedDataThreadPool;
    private final InputDataInfo[] mInputStreams;
    private Future<?> mMainTaskFuture;
    private final MediaMuxer mMuxer;
    private CountDownLatch mMuxerStartedSignal;
    private final StateListener mStateListener;
    private final Runnable mMainTask = new Runnable() { // from class: com.sonymobile.cameracommon.media.encoder.MediaEncoder.1
        @Override // java.lang.Runnable
        public void run() {
            if (MediaEncoder.TRACE) {
                Log.logDebug(MediaEncoder.TAG, "### START RECODING ###");
            }
            boolean result = true;
            MediaEncoder.this.mEncoderFormatChangedSignal = new CountDownLatch(MediaEncoder.this.mInputStreams.length);
            MediaEncoder.this.mMuxerStartedSignal = new CountDownLatch(1);
            MediaEncoder.this.mEncoderFinishSignal = new CountDownLatch(MediaEncoder.this.mInputStreams.length);
            MediaEncoder.this.startEncoders();
            MediaEncoder.this.startInputDataSource();
            MediaEncoder.this.startEncodedDataWriteTasks();
            try {
                MediaEncoder.this.startMediaMuxerAfterEncodedFormatIsFixed();
                MediaEncoder.this.sendOnStartedEvent();
                MediaEncoder.this.waitToCompleteEncoding();
                MediaEncoder.this.stopEncoders();
                try {
                    MediaEncoder.this.stopMuxer();
                } catch (IllegalStateException e) {
                    Log.logError(MediaEncoder.TAG, "IllegalStateException occur at stopMuxer().");
                    result = false;
                }
                MediaEncoder.this.release();
                MediaEncoder.this.sendOnFinishedEvent(result);
                if (MediaEncoder.TRACE) {
                    Log.logDebug(MediaEncoder.TAG, "### END RECORDING ###");
                }
            } catch (InterruptedException e2) {
                Log.logError(MediaEncoder.TAG, "startMediaMuxerAfterEncodedFormatIsFixed() is interrupted");
                MediaEncoder.this.stopEncoders();
            }
        }
    };
    private final EncodedDataWriteTask.EncodedDataWriteListener mEncodedDataWriteListener = new EncodedDataWriteTask.EncodedDataWriteListener() { // from class: com.sonymobile.cameracommon.media.encoder.MediaEncoder.2
        @Override // com.sonymobile.cameracommon.media.encoder.EncodedDataWriteTask.EncodedDataWriteListener
        public void onEncodedDataWritten(long presentationTimeUs, long wittenSizeBytes) {
            MediaEncoder.this.mStateListener.onProgress(presentationTimeUs, wittenSizeBytes);
        }

        @Override // com.sonymobile.cameracommon.media.encoder.EncodedDataWriteTask.EncodedDataWriteListener
        public void onEncoderFormatChanged(MediaFormat format) {
            MediaEncoder.this.mEncoderFormatChangedSignal.countDown();
            try {
                MediaEncoder.this.mMuxerStartedSignal.await();
            } catch (InterruptedException e) {
                Log.logError(MediaEncoder.TAG, "mMuxerStartedSignal is interrupted.");
            }
        }

        @Override // com.sonymobile.cameracommon.media.encoder.EncodedDataWriteTask.EncodedDataWriteListener
        public void onEncoderFinished() {
            MediaEncoder.this.mEncoderFinishSignal.countDown();
        }

        @Override // com.sonymobile.cameracommon.media.encoder.EncodedDataWriteTask.EncodedDataWriteListener
        public void onStorageFull() {
            MediaEncoder.this.mStateListener.onStorageFull();
        }
    };
    private final Runnable mWaitRequestFinishSignalTask = new Runnable() { // from class: com.sonymobile.cameracommon.media.encoder.MediaEncoder.3
        @Override // java.lang.Runnable
        public void run() {
            try {
                MediaEncoder.this.mRequestFinishSignal.await();
                if (MediaEncoder.TRACE) {
                    Log.logDebug(MediaEncoder.TAG, "Start finalization of recording.");
                }
                try {
                    MediaEncoder.this.stopInputDataSource();
                } catch (InterruptedException e) {
                    Log.logError(MediaEncoder.TAG, "stopInputDataSource is interrupted");
                }
            } catch (InterruptedException e2) {
                Log.logError(MediaEncoder.TAG, "mRequestFinishSignal is interrupted");
            }
        }
    };
    private CountDownLatch mRequestFinishSignal = null;

    public interface StateListener {
        void onFinished(boolean z);

        void onProgress(long j, long j2);

        void onStarted();

        void onStorageFull();
    }

    public MediaEncoder(InputDataInfo[] inputStreamInfoList, MediaMuxer muxer, StateListener stateListener) {
        this.mInputStreams = inputStreamInfoList;
        this.mMuxer = muxer;
        this.mStateListener = stateListener;
        this.mInputEncodedDataThreadPool = Executors.newFixedThreadPool(this.mInputStreams.length);
    }

    public void start() {
        start(Executors.newSingleThreadExecutor());
    }

    public void start(ExecutorService executor) {
        synchronized (this) {
            if (this.mRequestFinishSignal != null) {
                throw new IllegalStateException();
            }
            this.mRequestFinishSignal = new CountDownLatch(1);
        }
        this.mMainTaskFuture = executor.submit(this.mMainTask);
    }

    public void stop() {
        synchronized (this) {
            if (this.mRequestFinishSignal != null) {
                this.mRequestFinishSignal.countDown();
                try {
                    if (this.mMainTaskFuture != null) {
                        this.mMainTaskFuture.get(TIME_OUT_STOPPING_MILLISECONDS, TimeUnit.MILLISECONDS);
                    }
                } catch (Exception e) {
                    Log.logError(TAG, "stop() caught exception e: " + e);
                } finally {
                    this.mMainTaskFuture = null;
                }
            }
        }
    }

    public void release() {
        shutdownEncodedDataThreadPool();
        releaseInputDataSource();
        releaseEncoders();
        try {
            releaseMuxer();
        } catch (IllegalStateException e) {
            Log.logError(TAG, "IllegalStateException occur at releaseMuxer().");
        }
    }

    void startMediaMuxerAfterEncodedFormatIsFixed() throws InterruptedException {
        if (TRACE) {
            Log.logDebug(TAG, "startMediaMuxer() E");
        }
        this.mEncoderFormatChangedSignal.await();
        if (TRACE) {
            Log.logDebug(TAG, "muxer.start E");
        }
        this.mMuxer.start();
        if (TRACE) {
            Log.logDebug(TAG, "muxer.start X");
        }
        this.mMuxerStartedSignal.countDown();
        if (TRACE) {
            Log.logDebug(TAG, "startMediaMuxer() X");
        }
    }

    void startEncodedDataWriteTasks() {
        if (TRACE) {
            Log.logDebug(TAG, "startEncodedDataWriteTasks() E");
        }
        for (InputDataInfo input : this.mInputStreams) {
            this.mInputEncodedDataThreadPool.execute(new EncodedDataWriteTask(this.mMuxer, input.codec, this.mEncodedDataWriteListener, input.mimeType()));
        }
        if (TRACE) {
            Log.logDebug(TAG, "startEncodedDataWriteTasks() X");
        }
    }

    private void shutdownEncodedDataThreadPool() {
        this.mInputEncodedDataThreadPool.shutdown();
    }

    void startEncoders() {
        if (TRACE) {
            Log.logDebug(TAG, "startEncoders() E");
        }
        for (InputDataInfo input : this.mInputStreams) {
            input.codec.start();
        }
        if (TRACE) {
            Log.logDebug(TAG, "startEncoders() X");
        }
    }

    void stopEncoders() {
        if (TRACE) {
            Log.logDebug(TAG, "stopEncoders() E");
        }
        for (InputDataInfo input : this.mInputStreams) {
            try {
                input.codec.stop();
            } catch (IllegalStateException e) {
                Log.logError(TAG, e + " occurred. Maybe MediaCodec is released.");
            }
        }
        if (TRACE) {
            Log.logDebug(TAG, "stopEncoders() X");
        }
    }

    void releaseEncoders() {
        if (TRACE) {
            Log.logDebug(TAG, "releaseEncoders() E");
        }
        for (InputDataInfo input : this.mInputStreams) {
            input.codec.release();
        }
        if (TRACE) {
            Log.logDebug(TAG, "releaseEncoders() X");
        }
    }

    void startInputDataSource() {
        for (InputDataInfo input : this.mInputStreams) {
            input.source.start();
        }
    }

    void stopInputDataSource() throws InterruptedException {
        for (InputDataInfo input : this.mInputStreams) {
            input.source.stop();
        }
    }

    void releaseInputDataSource() {
        for (InputDataInfo input : this.mInputStreams) {
            input.source.release();
        }
    }

    void stopMuxer() {
        if (TRACE) {
            Log.logDebug(TAG, "stopMuxer() E");
        }
        this.mMuxer.stop();
        if (TRACE) {
            Log.logDebug(TAG, "stopMuxer() X");
        }
    }

    void releaseMuxer() {
        if (TRACE) {
            Log.logDebug(TAG, "releaseMuxer() E");
        }
        this.mMuxer.release();
        if (TRACE) {
            Log.logDebug(TAG, "releaseMuxer() X");
        }
    }

    void waitToCompleteEncoding() throws InterruptedException {
        if (TRACE) {
            Log.logDebug(TAG, "waitToCompleteEncoding() E");
        }
        Future<?> future = Executors.newSingleThreadExecutor().submit(this.mWaitRequestFinishSignalTask);
        try {
            if (TRACE) {
                Log.logDebug(TAG, "EncoderFinishSignal.await");
            }
            this.mEncoderFinishSignal.await();
            if (TRACE) {
                Log.logDebug(TAG, "EncoderFinishSignal.await FINISHED");
            }
        } catch (InterruptedException e) {
            Log.logError(TAG, "mEncoderFinishSignal is interrupted");
        }
        future.cancel(true);
        if (TRACE) {
            Log.logDebug(TAG, "waitToCompleteEncoding() X");
        }
    }

    void sendOnStartedEvent() {
        if (this.mStateListener != null) {
            this.mStateListener.onStarted();
        }
    }

    void sendOnFinishedEvent(boolean result) {
        synchronized (this) {
            this.mRequestFinishSignal = null;
        }
        if (this.mStateListener != null) {
            this.mStateListener.onFinished(result);
        }
    }
}
