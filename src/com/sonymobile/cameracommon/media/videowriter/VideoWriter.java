package com.sonymobile.cameracommon.media.videowriter;

import android.content.Context;
import android.location.Location;
import android.media.CamcorderProfile;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.net.Uri;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.view.Surface;
import com.google.android.gms.common.Scopes;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.gltextureview.EGLConfigChooser_RGBA8888D16S8;
import com.sonymobile.cameracommon.gltextureview.EGLController;
import com.sonymobile.cameracommon.gltextureview.GLTextureView;
import com.sonymobile.cameracommon.media.encoder.InputDataInfo;
import com.sonymobile.cameracommon.media.encoder.MediaEncoder;
import com.sonymobile.cameracommon.media.encoder.source.AudioSampleDataSource;
import com.sonymobile.cameracommon.media.encoder.source.VideoFrameSource;
import com.sonymobile.cameracommon.media.utility.FpsMonitor;
import com.sonymobile.cameracommon.media.utility.ReferenceClock;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import javax.microedition.khronos.egl.EGLContext;

/* loaded from: classes.dex */
public class VideoWriter {
    private static final int AUDIO_FORMAT = 2;
    private static final String AUDIO_MIMETYPE = "audio/mp4a-latm";
    private static final boolean ENABLE_MONITOR_FPS = false;
    private static final int I_FRAME_INTERVAL = 1;
    public static final String TAG = "VideoWriter";
    private static final String VIDEO_MIMETYPE = "video/avc";
    private final Context mContext;
    private EGLController mEglController;
    private MediaEncoder mEncoder;
    private final VideoWriterListener mListener;
    private String mOutputPath;
    private boolean mIsRunning = false;
    private final FpsMonitor mFpsMonitor = new FpsMonitor(10);
    private final Handler mHandler = new Handler();
    private ReferenceClock mReferenceClock = new ReferenceClock();

    public interface VideoWriterListener {
        void onFinished(boolean z);

        void onStarted();
    }

    public VideoWriter(Context context, VideoWriterListener listener) {
        this.mContext = context;
        this.mListener = listener;
    }

    public void start(String outputPath, int orientationHint, Location location, boolean isMicrophoneEnabled, CamcorderProfile profile, EGLContext sharedEglContext) throws IOException {
        startEncode(outputPath, orientationHint, location, isMicrophoneEnabled, profile, sharedEglContext, new MediaEncoderStateListener());
        this.mReferenceClock.start();
    }

    public void start(String outputPath, int orientationHint, Location location, boolean isMicrophoneEnabled, CamcorderProfile profile, EGLContext sharedEglContext, long maxDurationMills, long maxFileSizeBytes) throws IOException {
        startEncode(outputPath, orientationHint, location, isMicrophoneEnabled, profile, sharedEglContext, new MediaEncoderStateListener(maxDurationMills, maxFileSizeBytes));
        this.mReferenceClock.start();
    }

    private void startEncode(String outputPath, int orientationHint, Location location, boolean isMicrophoneEnabled, CamcorderProfile profile, EGLContext sharedEglContext, MediaEncoderStateListener encodeStateListener) throws IOException {
        MediaMuxer muxer;
        InputDataInfo[] inputs;
        if (isRunning()) {
            throw new IllegalStateException();
        }
        this.mOutputPath = outputPath;
        if (StorageUtil.getStorageTypeFromPath(this.mOutputPath, this.mContext) == StorageUtil.CameraStorageType.EXTERNAL_CARD) {
            Uri parentUri = StorageUtil.getSdCardGrantedUri(this.mContext);
            Uri fileUri = StorageUtil.createFile(this.mContext, parentUri, StorageUtil.getPathAfterDcim(parentUri, this.mOutputPath));
            try {
                ParcelFileDescriptor pfd = this.mContext.getContentResolver().openFileDescriptor(fileUri, "rw");
                if (pfd == null) {
                    CameraLogger.e(TAG, "openFileDescriptor fd is null.");
                    throw new RuntimeException("openFileDescriptor fd is null.");
                }
                muxer = new MediaMuxer(pfd.getFileDescriptor(), 0);
            } catch (FileNotFoundException e) {
                CameraLogger.e(TAG, "openFileDescriptor failed.", e);
                throw new RuntimeException(e);
            }
        } else {
            muxer = new MediaMuxer(outputPath, 0);
        }
        muxer.setOrientationHint(orientationHint);
        if (location != null) {
            muxer.setLocation((float) location.getLatitude(), (float) location.getLongitude());
        }
        this.mEglController = new EGLController();
        this.mEglController.initialize(new EGLConfigChooser_RGBA8888D16S8(), GLTextureView.OpenGLVersion.OPEN_GL_ES_20, sharedEglContext);
        if (isMicrophoneEnabled) {
            inputs = new InputDataInfo[]{createVideoInputStreamInfo(profile), createAudioInputStreamInfo(profile)};
        } else {
            inputs = new InputDataInfo[]{createVideoInputStreamInfo(profile)};
        }
        this.mEncoder = new MediaEncoder(inputs, muxer, encodeStateListener);
        this.mIsRunning = true;
        this.mEncoder.start();
    }

    public void stop() {
        if (isRunning()) {
            this.mEncoder.stop();
        }
        this.mReferenceClock.stop();
    }

    public boolean isRunning() {
        return this.mIsRunning;
    }

    public EGLController getEglController() {
        return this.mEglController;
    }

    private MediaFormat createVideoFormat(String mimetype, CamcorderProfile profile) {
        MediaFormat format = MediaFormat.createVideoFormat(mimetype, profile.videoFrameWidth, profile.videoFrameHeight);
        format.setInteger("color-format", 2130708361);
        format.setInteger("bitrate", profile.videoBitRate);
        format.setInteger("frame-rate", profile.videoFrameRate);
        format.setInteger("i-frame-interval", 1);
        if (profile.videoFrameWidth >= 3840 && profile.videoFrameHeight >= 2160) {
            if (profile.videoCodec == 2) {
                format.setInteger(Scopes.PROFILE, 8);
                format.setInteger("level", 1);
            } else {
                format.setInteger(Scopes.PROFILE, 1);
                format.setInteger("level", 1);
            }
        } else if (profile.videoFrameWidth >= 640 && profile.videoFrameHeight >= 480) {
            format.setInteger(Scopes.PROFILE, 8);
            format.setInteger("level", 1);
        } else {
            format.setInteger(Scopes.PROFILE, 1);
            format.setInteger("level", 1);
        }
        return format;
    }

    private MediaFormat createAudioFormat(String mimetype, CamcorderProfile profile) {
        MediaFormat format = MediaFormat.createAudioFormat(mimetype, profile.audioSampleRate, profile.audioChannels);
        format.setInteger("bitrate", profile.audioBitRate);
        format.setInteger("aac-profile", 2);
        return format;
    }

    private InputDataInfo createVideoInputStreamInfo(CamcorderProfile profile) throws IOException {
        MediaFormat format = createVideoFormat(VIDEO_MIMETYPE, profile);
        MediaCodec codec = MediaCodec.createEncoderByType(VIDEO_MIMETYPE);
        codec.configure(format, (Surface) null, (MediaCrypto) null, 1);
        VideoFrameSource source = new VideoFrameSource(codec);
        this.mEglController.onSurfaceTextureChanged(source.createInputSurface());
        return InputDataInfo.create(format, codec, source);
    }

    private InputDataInfo createAudioInputStreamInfo(CamcorderProfile profile) throws IOException {
        MediaFormat format = createAudioFormat("audio/mp4a-latm", profile);
        MediaCodec codec = MediaCodec.createEncoderByType("audio/mp4a-latm");
        codec.configure(format, (Surface) null, (MediaCrypto) null, 1);
        AudioSampleDataSource source = new AudioSampleDataSource(codec, format.getInteger("sample-rate"), format.getInteger("channel-count"), 2);
        return InputDataInfo.create(format, codec, source);
    }

    private class MediaEncoderStateListener implements MediaEncoder.StateListener {
        private final long mMaxDurationUs;
        private final long mMaxFileSizeBytes;
        private long mTotalSizeBytes;
        private long mTotalTimeUs;

        public MediaEncoderStateListener() {
            this.mTotalTimeUs = 0L;
            this.mTotalSizeBytes = 0L;
            this.mMaxDurationUs = -1L;
            this.mMaxFileSizeBytes = -1L;
        }

        public MediaEncoderStateListener(long maxDurationMills, long maxFileSizeBytes) {
            this.mTotalTimeUs = 0L;
            this.mTotalSizeBytes = 0L;
            this.mMaxDurationUs = 1000 * maxDurationMills;
            this.mMaxFileSizeBytes = maxFileSizeBytes;
        }

        @Override // com.sonymobile.cameracommon.media.encoder.MediaEncoder.StateListener
        public void onStarted() {
            VideoWriter.this.mHandler.post(new Runnable() { // from class: com.sonymobile.cameracommon.media.videowriter.VideoWriter.MediaEncoderStateListener.1
                @Override // java.lang.Runnable
                public void run() {
                    VideoWriter.this.mListener.onStarted();
                }
            });
        }

        @Override // com.sonymobile.cameracommon.media.encoder.MediaEncoder.StateListener
        public void onFinished(final boolean result) {
            if (!result) {
                File outputFile = new File(VideoWriter.this.mOutputPath);
                if (outputFile.exists()) {
                    if (StorageUtil.getStorageTypeFromPath(VideoWriter.this.mOutputPath, VideoWriter.this.mContext) == StorageUtil.CameraStorageType.EXTERNAL_CARD) {
                        Uri fileUri = StorageUtil.searchDocumentSdCard(VideoWriter.this.mContext, VideoWriter.this.mOutputPath);
                        if (fileUri != null) {
                            try {
                                if (!DocumentsContract.deleteDocument(VideoWriter.this.mContext.getContentResolver(), fileUri)) {
                                    CameraLogger.e(VideoWriter.TAG, "Unable to delete file.");
                                }
                            } catch (FileNotFoundException e) {
                                CameraLogger.e(VideoWriter.TAG, "Unable to delete file." + e);
                            }
                        }
                    } else if (!outputFile.delete()) {
                        CameraLogger.e(VideoWriter.TAG, "Unable to delete file.");
                    }
                }
            }
            VideoWriter.this.mHandler.post(new Runnable() { // from class: com.sonymobile.cameracommon.media.videowriter.VideoWriter.MediaEncoderStateListener.2
                @Override // java.lang.Runnable
                public void run() {
                    VideoWriter.this.mIsRunning = false;
                    VideoWriter.this.mListener.onFinished(result);
                }
            });
        }

        @Override // com.sonymobile.cameracommon.media.encoder.MediaEncoder.StateListener
        public synchronized void onProgress(long presentationTimeUs, long wittenSizeBytes) {
            this.mTotalTimeUs = presentationTimeUs;
            this.mTotalSizeBytes += wittenSizeBytes;
            if (this.mTotalSizeBytes >= this.mMaxFileSizeBytes && this.mMaxFileSizeBytes > 0) {
                VideoWriter.this.mEncoder.stop();
            } else if (this.mTotalTimeUs >= this.mMaxDurationUs && this.mMaxDurationUs > 0) {
                VideoWriter.this.mEncoder.stop();
            }
        }

        @Override // com.sonymobile.cameracommon.media.encoder.MediaEncoder.StateListener
        public void onStorageFull() {
            VideoWriter.this.mEncoder.stop();
        }
    }

    public long elapsedTimeMillis() {
        return this.mReferenceClock.elapsedTimeMillis();
    }
}