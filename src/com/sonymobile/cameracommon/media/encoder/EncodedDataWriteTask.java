package com.sonymobile.cameracommon.media.encoder;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.Log;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
class EncodedDataWriteTask implements Runnable {
    private static final long OUTPUTBUFFER_TIMEOUT_NANOSECONDS = 100000000;
    public static final String TAG = "EncodedDataWriteTask";
    private static boolean TRACE = false;
    private final MediaCodec mCodec;
    private final EncodedDataWriteListener mListener;
    private final MediaMuxer mMuxer;
    private int mMuxerIndex;
    private final String mName;
    private boolean mIsFirstFrameArrived = false;
    private long mFirstFramePresentationTimeUs = 0;

    public interface EncodedDataWriteListener {
        void onEncodedDataWritten(long j, long j2);

        void onEncoderFinished();

        void onEncoderFormatChanged(MediaFormat mediaFormat);

        void onStorageFull();
    }

    public EncodedDataWriteTask(MediaMuxer muxer, MediaCodec encoder, EncodedDataWriteListener listener, String name) {
        this.mName = name;
        this.mMuxer = muxer;
        this.mCodec = encoder;
        this.mListener = listener;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (awaitEncoderFormat()) {
            ByteBuffer[] outputBuffers = this.mCodec.getOutputBuffers();
            MediaCodec.BufferInfo info = new MediaCodec.BufferInfo();
            long presentationTimeUs = -1;
            MediaFormat format = this.mCodec.getOutputFormat();
            synchronized (this.mMuxer) {
                if (TRACE) {
                    Log.logDebug(TAG, this.mName + " ADD TRACK (" + format + "): E");
                }
                this.mMuxerIndex = this.mMuxer.addTrack(format);
                if (TRACE) {
                    Log.logDebug(TAG, this.mName + " ADD TRACK (" + format + "): X");
                }
            }
            if (this.mListener != null) {
                this.mListener.onEncoderFormatChanged(format);
            }
            while (true) {
                if (canceled()) {
                    break;
                }
                try {
                    int outputBufferIndex = this.mCodec.dequeueOutputBuffer(info, OUTPUTBUFFER_TIMEOUT_NANOSECONDS);
                    if (outputBufferIndex == -1) {
                        if (TRACE) {
                            Log.logDebug(TAG, this.mName + " INFO_TRY_AGAIN_LATER");
                        }
                        if (canceled()) {
                            if (TRACE) {
                                Log.logDebug(TAG, this.mName + " CANCELED");
                            }
                        }
                    } else if (outputBufferIndex >= 0) {
                        if (canceled()) {
                            info.flags |= 4;
                        }
                        if (TRACE) {
                            Log.logDebug(TAG, this.mName + " PULL SAMPLE DATA presentationTime:" + info.presentationTimeUs + " flag:" + info.flags);
                        }
                        ByteBuffer outbuffer = outputBuffers[outputBufferIndex];
                        if ((info.flags & 2) == 0) {
                            if (presentationTimeUs < info.presentationTimeUs - this.mFirstFramePresentationTimeUs) {
                                if (!this.mIsFirstFrameArrived) {
                                    this.mIsFirstFrameArrived = true;
                                    this.mFirstFramePresentationTimeUs = info.presentationTimeUs;
                                    if (TRACE) {
                                        Log.logDebug(TAG, this.mName + " First frame is arrived:" + this.mFirstFramePresentationTimeUs);
                                    }
                                }
                                info.presentationTimeUs -= this.mFirstFramePresentationTimeUs;
                                if (TRACE) {
                                    Log.logDebug(TAG, this.mName + " WRITE SAMPLE DATA presentationTime: " + info.presentationTimeUs + " flag: " + info.flags + " offset: " + info.offset + " size: " + info.size + " outbuffer: " + outbuffer.capacity());
                                }
                                try {
                                    synchronized (this.mMuxer) {
                                        this.mMuxer.writeSampleData(this.mMuxerIndex, outbuffer, info);
                                    }
                                } catch (IllegalStateException e) {
                                    if (TRACE) {
                                        Log.logDebug(TAG, this.mName + " IllegalStateException" + e.getMessage());
                                    }
                                    this.mListener.onStorageFull();
                                }
                                presentationTimeUs = info.presentationTimeUs;
                                if (this.mListener != null) {
                                    this.mListener.onEncodedDataWritten(presentationTimeUs, info.size);
                                }
                            } else if (info.flags == 4) {
                                info.presentationTimeUs = 1 + presentationTimeUs;
                                info.size = 0;
                                if (TRACE) {
                                    Log.logDebug(TAG, this.mName + " WRITE SAMPLE DATA presentationTime: " + info.presentationTimeUs + " flag: " + info.flags + " offset: " + info.offset + " size: " + info.size + " outbuffer: " + outbuffer.capacity());
                                }
                                try {
                                    synchronized (this.mMuxer) {
                                        this.mMuxer.writeSampleData(this.mMuxerIndex, outbuffer, info);
                                    }
                                } catch (IllegalStateException e2) {
                                    if (TRACE) {
                                        Log.logDebug(TAG, this.mName + " IllegalStateException at BUFFER_FLAG_END_OF_STREAM" + e2.getMessage());
                                    }
                                }
                                presentationTimeUs = info.presentationTimeUs;
                            }
                        }
                        this.mCodec.releaseOutputBuffer(outputBufferIndex, false);
                        if (canceled()) {
                            if (TRACE) {
                                Log.logDebug(TAG, this.mName + " CANCELED");
                            }
                        } else if ((info.flags & 4) == 4) {
                            if (TRACE) {
                                Log.logDebug(TAG, this.mName + " BUFFER_FLAG_END_OF_STREAM");
                            }
                        }
                    } else if (outputBufferIndex == -3) {
                        if (TRACE) {
                            Log.logDebug(TAG, this.mName + " INFO_OUTPUT_BUFFERS_CHANGED");
                        }
                        outputBuffers = this.mCodec.getOutputBuffers();
                    } else if (outputBufferIndex == -2 && TRACE) {
                        Log.logDebug(TAG, this.mName + " INFO_OUTPUT_FORMAT_CHANGED");
                    }
                } catch (IllegalStateException e3) {
                    CameraLogger.e(TAG, e3 + " occurred. Maybe camera server is dead.", e3);
                }
            }
            if (this.mListener != null) {
                this.mListener.onEncoderFinished();
            }
        }
    }

    private boolean awaitEncoderFormat() {
        if (TRACE) {
            Log.logDebug(TAG, this.mName + " awaitEncoderFormat E");
        }
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        while (!canceled()) {
            int info = this.mCodec.dequeueOutputBuffer(bufferInfo, OUTPUTBUFFER_TIMEOUT_NANOSECONDS);
            if (info == -2) {
                if (TRACE) {
                    Log.logDebug(TAG, this.mName + " INFO_OUTPUT_FORMAT_CHANGED");
                }
                return true;
            }
            if (TRACE) {
                Log.logDebug(TAG, this.mName + " INFO_OUTPUT:" + info);
            }
        }
        if (TRACE) {
            Log.logDebug(TAG, this.mName + " awaitEncoderFormat X");
        }
        return false;
    }

    private static boolean canceled() {
        return Thread.currentThread().isInterrupted();
    }
}