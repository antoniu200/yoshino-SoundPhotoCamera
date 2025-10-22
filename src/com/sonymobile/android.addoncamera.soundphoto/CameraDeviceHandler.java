package com.sonymobile.android.addoncamera.soundphoto;

import android.app.Activity;
import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.Camera;
import android.media.CameraProfile;
import android.os.Handler;
import androidx.core.app.NotificationManagerCompat;
import android.util.Log;
import android.view.SurfaceHolder;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.device.CameraExtensionValues;
import com.sonyericsson.cameracommon.device.CommonPlatformDependencyResolver;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.FaceDetectUtil;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.StaticConfigurationUtil;
import com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine;
import com.sonymobile.android.addoncamera.soundphoto.setting.CapturingMode;
import com.sonymobile.android.addoncamera.soundphoto.setting.ParameterApplyer;
import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.AutoReview;
import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.Flash;
import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.SelfTimer;
import com.sonymobile.cameracommon.memorybuffer.ByteBufferRing;
import com.sonymobile.cameracommon.testevent.TestEventSender;
import com.sonymobile.cameracommon.zoom.camera1.SmoothZoomController;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public class CameraDeviceHandler implements ParameterApplyer, Camera.ErrorCallback {
    private static final boolean DUMP_PARAMETERS = false;
    public static final int INTERVAL_OPEN_CAMERA_MILLIS = 500;
    public static final int RETRY_OPEN_CAMERA = 5;
    public static final int SLEEP_TIMES_OPEN_CAMERA = 5;
    public static final int STATUS_OPENED = 2;
    public static final int STATUS_OPENING = 1;
    public static final int STATUS_RELEASED = 0;
    private static final String TAG = "CameraDeviceHandler";
    private static final int TIMEOUT_OPEN_CAMERA_DEVICE = 2000;
    private static final int WORK_BUFFER_RING_SIZE = 4;
    private static CameraDeviceHandler sInstance = new CameraDeviceHandler();
    private int mCameraDeviceId;
    private Camera.ErrorCallback mErrorCallback;
    private PhotoSavingRequest mLastSavingRequest;
    private OnZoomChangedCallback mOnZoomChangedCallback;
    private StateMachine mStateMachine;
    private ByteBufferRing mWorkBufferRing;
    private OpenDeviceThread mOpenDeviceThread = null;
    private Camera mCamera = null;
    private Camera.Parameters mLatestCachedParameters = null;
    private Camera.CameraInfo mCameraInfo = null;
    private int mCurrentDeviceState = 0;
    private Rect mPreviewRect = null;
    private Rect mPictureRect = null;
    private Context mContext = null;
    private final Handler mHandler = new Handler();
    private final Object mStateMachineLock = new Object();
    private SmoothZoomController mSmoothZoomController = null;
    private boolean mIsFaceDetectionAlreadyStarted = false;
    private boolean mIsImmediateReleaseRequested = false;
    private boolean mIsCameraDisabled = false;
    private boolean mActivityIsInForeground = true;
    private final PreviewFrameCallback mPreviewFrameCallback = new PreviewFrameCallback();
    private final OnAutoFocusCallback mOnAutoFocusCallback = new OnAutoFocusCallback();
    private final OnShutterCallback mOnShutterCallback = new OnShutterCallback();
    private final OnPictureTakenCallback mOnPictureTakenCallback = new OnPictureTakenCallback();
    private final OnFaceDetectionCallback mOnFaceDetectionCallback = new OnFaceDetectionCallback();

    private static void logPerformance(String event) {
        Log.e("TraceLog", "[PERFORMANCE] [TIME = " + System.currentTimeMillis() + "] [" + TAG + "] [" + Thread.currentThread().getName() + " : " + event + "]");
    }

    public static synchronized CameraDeviceHandler getInstance() {
        return sInstance;
    }

    public void requestStartCameraOpen(Context context, int cameraId) {
        switch (this.mCurrentDeviceState) {
            case 0:
                startCameraOpen(context, cameraId);
                break;
        }
    }

    public synchronized void startCameraOpen(Context context, int cameraId) {
        DevicePolicyManager dpm = (DevicePolicyManager) context.getSystemService(Context.DEVICE_POLICY_SERVICE);
        if (dpm.getCameraDisabled(null)) {
            this.mIsCameraDisabled = true;
            CameraLogger.errorLogForNonUserVariant(TAG, "[CameraNotAvailable] startCameraOpen: dpm.getCameraDisabled(null)");
            showDeviceErrorMessage((BaseActivity) context);
        } else {
            this.mIsCameraDisabled = false;
            switch (this.mCurrentDeviceState) {
                case 1:
                case 2:
                    this.mIsImmediateReleaseRequested = false;
                    break;
                default:
                    this.mContext = context;
                    this.mCameraDeviceId = cameraId;
                    this.mCameraInfo = new Camera.CameraInfo();
                    Camera.getCameraInfo(this.mCameraDeviceId, this.mCameraInfo);
                    StaticConfigurationUtil.setCameraInfo(this.mCameraInfo);
                    if (this.mOpenDeviceThread == null) {
                        this.mOpenDeviceThread = new OpenDeviceThread();
                        this.mOpenDeviceThread.setName(OpenDeviceThread.class.getSimpleName());
                        this.mOpenDeviceThread.setPriority(10);
                        this.mOpenDeviceThread.start();
                        break;
                    }
                    break;
            }
        }
    }

    public boolean isOpenDeviceThreadAlive() {
        return this.mOpenDeviceThread != null && this.mOpenDeviceThread.isAlive();
    }

    public int getCameraDeviceStatus() {
        return this.mCurrentDeviceState;
    }

    private void showDeviceErrorMessage(BaseActivity activity) {
        if (this.mIsCameraDisabled) {
            activity.getMessagePopup().showCameraDisabledMessage();
        } else {
            activity.getMessagePopup().showDeviceErrorMessage();
        }
    }

    private synchronized Camera getCameraInstance() {
        Camera camera = null;
        synchronized (this) {
            if (!this.mIsImmediateReleaseRequested) {
                boolean isSuccess = isOpenDeviceTaskFinishedSuccessfully();
                if (isSuccess) {
                    camera = this.mCamera;
                }
            }
        }
        return camera;
    }

    public synchronized void releaseCameraInstance() {
        switch (this.mCurrentDeviceState) {
            case 0:
                break;
            case 1:
                this.mIsImmediateReleaseRequested = true;
                break;
            case 2:
            default:
                isOpenDeviceTaskFinishedSuccessfully();
                releaseCameraImmediately();
                this.mIsImmediateReleaseRequested = false;
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDeviceOpened() {
        synchronized (this.mStateMachineLock) {
            if (this.mStateMachine != null) {
                this.mStateMachine.onDeviceOpened(this.mLatestCachedParameters, CapturingMode.translateIdToCapturingMode(this.mCameraDeviceId));
            }
        }
    }

    private synchronized void releaseCameraImmediately() {
        releaseCameraImmediatelyNotSynchronized();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseCameraImmediatelyNotSynchronized() {
        stopFaceDetectionNotSynchronized();
        stopPreviewFrameCapturingNotSynchronized();
        if (this.mSmoothZoomController != null) {
            this.mSmoothZoomController.release();
            this.mSmoothZoomController = null;
        }
        this.mPreviewRect = null;
        this.mPictureRect = null;
        this.mOpenDeviceThread = null;
        this.mContext = null;
        this.mCameraInfo = null;
        if (this.mCamera != null) {
            this.mCamera.setZoomChangeListener(null);
            this.mCamera.setErrorCallback(null);
            try {
                this.mCamera.stopPreview();
            } catch (RuntimeException e) {
                CameraLogger.e(TAG, "Camera.stopPreview failed.ActivityIsInForeground: " + this.mActivityIsInForeground, e);
                if (this.mActivityIsInForeground) {
                    throw e;
                }
            }
            Camera camera = this.mCamera;
            this.mCamera = null;
            camera.release();
        }
        this.mCurrentDeviceState = 0;
    }

    private class OpenDeviceThread extends Thread {
        private static final String TAG = "OpenDeviceThread";
        private volatile boolean mIsSuccess;

        private OpenDeviceThread() {
            this.mIsSuccess = false;
        }

        public boolean isSuccess() {
            return this.mIsSuccess;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.OPEN_CAMERA_DEVICE_TASK, true);
            CameraDeviceHandler.this.mCurrentDeviceState = 1;
            if (!CameraDeviceHandler.this.openCamera()) {
                CameraDeviceHandler.this.releaseCameraImmediatelyNotSynchronized();
                return;
            }
            try {
                CameraDeviceHandler.this.mLatestCachedParameters = CameraDeviceHandler.this.mCamera.getParameters();
            } catch (RuntimeException e) {
                CameraLogger.e(TAG, "Camera.getParameters failed.ActivityIsInForeground: " + CameraDeviceHandler.this.mActivityIsInForeground, e);
                if (CameraDeviceHandler.this.mActivityIsInForeground) {
                    throw e;
                }
            }
            if (CameraDeviceHandler.this.mLatestCachedParameters != null) {
                CameraDeviceHandler.this.notifyDeviceOpened();
                CameraDeviceHandler.this.setPictureSizeToParameters(CameraDeviceHandler.this.mCameraDeviceId, CameraDeviceHandler.this.mLatestCachedParameters);
                CameraDeviceHandler.this.setPreviewSizeToParameters(CameraDeviceHandler.this.mCameraDeviceId, CameraDeviceHandler.this.mLatestCachedParameters);
                CameraDeviceHandler.this.setPreviewFpsRangeToParameters(CameraDeviceHandler.this.mLatestCachedParameters);
                CameraDeviceHandler.this.setSceneToParameters(CameraDeviceHandler.this.mCameraDeviceId, CameraDeviceHandler.this.mLatestCachedParameters);
                CameraDeviceHandler.this.setFocusModeToParameters(CameraDeviceHandler.this.mCameraDeviceId, CameraDeviceHandler.this.mLatestCachedParameters);
                CameraDeviceHandler.this.setWhiteBalanceToParameters(CameraDeviceHandler.this.mCameraDeviceId, CameraDeviceHandler.this.mLatestCachedParameters);
                CameraDeviceHandler.this.setJpegEncodingQuality();
                CameraDeviceHandler.this.setPhotoShutterSoundToMute();
                CameraDeviceHandler.this.setDcModeParameters(CameraDeviceHandler.this.mLatestCachedParameters);
                try {
                    CameraDeviceHandler.this.doSetParametersToDevice(CameraDeviceHandler.this.mCamera, CameraDeviceHandler.this.mLatestCachedParameters);
                } catch (RuntimeException e2) {
                    CameraLogger.e(TAG, "doSetParametersToDevice failed.ActivityIsInForeground: " + CameraDeviceHandler.this.mActivityIsInForeground, e2);
                    if (CameraDeviceHandler.this.mActivityIsInForeground) {
                        throw e2;
                    }
                }
                try {
                    if (CameraDeviceHandler.this.mCamera != null) {
                        CameraDeviceHandler.this.mCamera.startPreview();
                    }
                } catch (RuntimeException e3) {
                    CameraLogger.e(TAG, "Camera.startPreview failed.ActivityIsInForeground: " + CameraDeviceHandler.this.mActivityIsInForeground, e3);
                    if (CameraDeviceHandler.this.mActivityIsInForeground) {
                        throw e3;
                    }
                }
                if (CameraDeviceHandler.this.mIsImmediateReleaseRequested) {
                    CameraDeviceHandler.this.releaseCameraImmediatelyNotSynchronized();
                    CameraDeviceHandler.this.mIsImmediateReleaseRequested = false;
                    return;
                } else {
                    this.mIsSuccess = true;
                    CameraDeviceHandler.this.mCurrentDeviceState = 2;
                    MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.OPEN_CAMERA_DEVICE_TASK, false);
                    return;
                }
            }
            CameraLogger.e(TAG, "run: mLatestCachedParameters is null.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDcModeParameters(Camera.Parameters params) {
        CommonPlatformDependencyResolver.DcCategory.MAKE_IMAGE_FROM_PREVIEW.writeTo(params);
    }

    public boolean isCameraDisabled() {
        return this.mIsCameraDisabled;
    }

    public void initialize() {
        this.mIsImmediateReleaseRequested = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    private boolean openCamera() {
        if (mContext == null) {
            return false;
        }

        for (int count = 0; count < 5; count++) {
            if (mIsImmediateReleaseRequested) {
                mCurrentDeviceState = 0;
                return false;
            }
            try {
                mCamera = Camera.open(mCameraDeviceId);

                if (mIsImmediateReleaseRequested) {
                    if (mCamera != null) {
                        mCamera.release();
                        mCamera = null;
                    }
                    mCurrentDeviceState = 0;
                    return false;
                } else {
                    if (mCamera != null) {
                        mCamera.setErrorCallback(this);
                    }
                }
            } catch (Exception e) {
                CameraLogger.e("CameraDeviceHandler", "Open camera failed.", e);
                if (mCamera != null) {
                    mCamera.release();
                    mCamera = null;
                }

                for (int j = 0; j < 5; j++) {
                    try {
                        if (mIsImmediateReleaseRequested) {
                            mCurrentDeviceState = 0;
                            return false;
                        }
                        Thread.sleep(100L);
                    } catch (InterruptedException ignored) {
                        // Keep behavior simple: ignore and continue.
                    }
                }
            }
        }

        if (mCamera == null) {
            mCurrentDeviceState = 0;
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPictureSizeToParameters(int cameraType, Camera.Parameters params) {
        this.mPictureRect = PlatformDependencyResolver.getDefaultResolution(params);
        params.setPictureSize(this.mPictureRect.width(), this.mPictureRect.height());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPreviewSizeToParameters(int cameraType, Camera.Parameters targetParams) {
        this.mPreviewRect = PlatformDependencyResolver.getOptimalStillPreviewSize(targetParams, this.mPictureRect);
        if (this.mPreviewRect != null) {
            targetParams.setPreviewSize(this.mPreviewRect.width(), this.mPreviewRect.height());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSceneToParameters(int cameraType, Camera.Parameters targetParams) {
        String scene = PlatformDependencyResolver.getDefaultSceneMode(cameraType, targetParams);
        if (scene != null) {
            targetParams.setSceneMode(scene);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFocusModeToParameters(int cameraType, Camera.Parameters targetParams) {
        String focus = PlatformDependencyResolver.getDefaultFocusMode(cameraType, targetParams);
        if (focus != null) {
            targetParams.setFocusMode(focus);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWhiteBalanceToParameters(int cameraType, Camera.Parameters targetParams) {
        String whiteBalance = PlatformDependencyResolver.getDefaultWhiteBalance(targetParams);
        if (whiteBalance != null) {
            targetParams.setWhiteBalance(whiteBalance);
        }
    }

    public void setPhotoShutterSoundToMute() {
        this.mLatestCachedParameters.set(CameraExtensionValues.KEY_EX_PLAY_SHUTTER_SOUND, "off");
    }

    public final void setTorch(boolean on) {
        Camera.Parameters params = getLatestCachedParameters();
        if (params == null) {
            CameraLogger.e(TAG, "setTorch: params is null.");
        } else {
            params.setFlashMode(on ? "torch" : "off");
            trySetParametersToDevice(params);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPreviewFpsRangeToParameters(Camera.Parameters target) {
        int[] preferred = PlatformDependencyResolver.getOptimalPreviewFpsRangeAccordintTo(target);
        if (preferred[0] != 0 && preferred[1] != 0) {
            target.setPreviewFpsRange(Math.min(preferred[0], preferred[1]), Math.max(preferred[0], preferred[1]));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setJpegEncodingQuality() {
        this.mLatestCachedParameters.setJpegQuality(CameraProfile.getJpegEncodingQualityParameter(2));
    }

    public void prepareAdditionalFeatures(int cameraType, Activity activity) {
        Camera camera = getCameraInstance();
        if (camera != null) {
            prepareZoom(camera);
            switch (cameraType) {
                case 1:
                    startFaceDetection();
                    return;
                case 2:
                    startFaceDetection();
                    return;
                default:
                    throw new IllegalStateException("prepareAdditionalSettings():[UnExpected State]");
            }
        }
    }

    private void prepareZoom(Camera camera) {
        this.mOnZoomChangedCallback = new OnZoomChangedCallback();
        this.mSmoothZoomController = new SmoothZoomController(camera, this.mHandler, this.mOnZoomChangedCallback);
        this.mSmoothZoomController.setZoomChangeInterval(33);
    }

    public synchronized void startFaceDetection() {
        if (!this.mIsFaceDetectionAlreadyStarted && this.mLatestCachedParameters != null && getCameraId() == 0 && PlatformDependencyResolver.isFaceDetectionSupported(this.mLatestCachedParameters) && this.mCamera != null) {
            this.mCamera.setFaceDetectionListener(this.mOnFaceDetectionCallback);
            try {
                this.mCamera.startFaceDetection();
            } catch (RuntimeException e) {
                CameraLogger.e(TAG, "Camera.startFaceDetection failed.ActivityIsInForeground: " + this.mActivityIsInForeground, e);
                if (this.mActivityIsInForeground) {
                    throw e;
                }
            }
            this.mIsFaceDetectionAlreadyStarted = true;
        }
    }

    public synchronized void stopFaceDetection() {
        stopFaceDetectionNotSynchronized();
    }

    private void stopFaceDetectionNotSynchronized() {
        if (this.mIsFaceDetectionAlreadyStarted && this.mLatestCachedParameters != null && getCameraId() == 0 && PlatformDependencyResolver.isFaceDetectionSupported(this.mLatestCachedParameters) && this.mCamera != null) {
            this.mCamera.setFaceDetectionListener(null);
            try {
                this.mCamera.stopFaceDetection();
            } catch (RuntimeException e) {
                CameraLogger.e(TAG, ".stopFaceDetection():[stopFaceDetection failed]ActivityIsInForeground: " + this.mActivityIsInForeground, e);
            }
            this.mIsFaceDetectionAlreadyStarted = false;
        }
    }

    private boolean isOpenDeviceTaskFinishedSuccessfully() {
        if (this.mOpenDeviceThread == null) {
            return false;
        }
        try {
            this.mOpenDeviceThread.join(2000L);
            if (this.mOpenDeviceThread == null) {
                return false;
            }
            if (this.mOpenDeviceThread.isAlive()) {
                CameraLogger.e(TAG, "mOpenDeviceThread.join() timeout.");
                return false;
            }
            return this.mOpenDeviceThread.isSuccess();
        } catch (InterruptedException e) {
            CameraLogger.e(TAG, "isOpenDeviceTaskFinishedSuccessfully():[task is Interrupted]", e);
            return false;
        } catch (CancellationException e2) {
            CameraLogger.e(TAG, "isOpenDeviceTaskFinishedSuccessfully():[task is canceled]", e2);
            return false;
        }
    }

    public boolean isImmediateReleaseRequested() {
        return this.mIsImmediateReleaseRequested;
    }

    public boolean isCameraDeviceIsOpenedRightNow() {
        return this.mCurrentDeviceState == 2;
    }

    public boolean waitForCameraInitialization() {
        return getCameraInstance() != null;
    }

    public int getCameraId() {
        return this.mCameraDeviceId;
    }

    public Rect getPreviewRect() {
        return this.mPreviewRect;
    }

    public Rect getPictureRect() {
        return this.mPictureRect;
    }

    public void setStateMachine(StateMachine stateMachine) {
        synchronized (this.mStateMachineLock) {
            this.mStateMachine = stateMachine;
        }
    }

    public Camera.Parameters getLatestCachedParameters() {
        if (this.mCurrentDeviceState != 2) {
            return this.mLatestCachedParameters;
        }
        if (this.mLatestCachedParameters == null) {
            Camera camera = getCameraInstance();
            if (camera == null) {
                return null;
            }
            try {
                this.mLatestCachedParameters = camera.getParameters();
            } catch (RuntimeException e) {
                CameraLogger.e(TAG, "Camera.getParameters failed.ActivityIsInForeground: " + this.mActivityIsInForeground, e);
                if (this.mActivityIsInForeground) {
                    throw e;
                }
            }
            if (this.mLatestCachedParameters == null) {
                CameraLogger.e(TAG, "getLatestCachedParameters: mLatestCachedParameters is null");
                return null;
            }
        }
        return this.mLatestCachedParameters;
    }

    public void requestCacheParameters() {
        Camera camera = getCameraInstance();
        if (camera != null) {
            try {
                this.mLatestCachedParameters = camera.getParameters();
            } catch (RuntimeException e) {
                CameraLogger.e(TAG, "Camera.getParameters failed.ActivityIsInForeground: " + this.mActivityIsInForeground, e);
                if (this.mActivityIsInForeground) {
                    throw e;
                }
            }
            if (this.mLatestCachedParameters == null) {
                CameraLogger.e(TAG, "requestCacheParameters: mLatestCachedParameters is null.");
            }
        }
    }

    public boolean trySetParametersToDevice(Camera.Parameters params) {
        Camera camera = getCameraInstance();
        if (camera == null) {
            return false;
        }
        try {
            doSetParametersToDevice(camera, this.mLatestCachedParameters);
            this.mLatestCachedParameters = camera.getParameters();
            return true;
        } catch (RuntimeException e) {
            CameraLogger.e(TAG, "trySetParametersToDevice failed.ActivityIsInForeground: " + this.mActivityIsInForeground, e);
            this.mLatestCachedParameters = null;
            return false;
        } catch (Exception e2) {
            this.mLatestCachedParameters = null;
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doSetParametersToDevice(Camera camera, Camera.Parameters params) {
        camera.setParameters(params);
        this.mLatestCachedParameters.remove(CameraExtensionValues.KEY_EX_PLAY_SHUTTER_SOUND);
    }

    public void startLiveViewFinder(SurfaceHolder surface) {
        Camera camera = getCameraInstance();
        if (camera != null) {
            if (surface == null) {
                CameraLogger.e(TAG, "Camera.setPreviewDisplay() failed. Because surfaceHolder is null.");
            } else {
                try {
                    camera.setPreviewDisplay(surface);
                } catch (IOException e) {
                }
            }
        }
    }

    public boolean startPreview() {
        Camera curCamera = getCameraInstance();
        if (curCamera != null) {
            try {
                curCamera.startPreview();
            } catch (RuntimeException exception) {
                if (this.mStateMachine == null) {
                    return false;
                }
                this.mStateMachine.sendStaticEvent(StateMachine.StaticEvent.EVENT_ON_DEVICE_ERROR, StateMachine.ErrorCode.ERROR_ON_START_PREVIEW, exception);
                return false;
            }
        }
        return true;
    }

    public void stopLiveViewFinder() {
        stopFaceDetection();
        if (this.mCamera != null) {
            try {
                this.mCamera.stopPreview();
            } catch (RuntimeException e) {
                CameraLogger.e(TAG, "Camera.stopPreview failed.ActivityIsInForeground: " + this.mActivityIsInForeground, e);
                if (this.mActivityIsInForeground) {
                    throw e;
                }
            }
        }
    }

    public void autoFocus() {
        Camera camera = getCameraInstance();
        if (camera != null) {
            setExposureAndWhiteBalanceLock(true);
            try {
                camera.autoFocus(this.mOnAutoFocusCallback);
            } catch (RuntimeException e) {
                CameraLogger.e(TAG, "camera.autoFocus failed.ActivityIsInForeground: " + this.mActivityIsInForeground, e);
                if (this.mActivityIsInForeground) {
                    throw e;
                }
            }
        }
    }

    class OnAutoFocusCallback implements Camera.AutoFocusCallback {
        OnAutoFocusCallback() {
        }

        @Override // android.hardware.Camera.AutoFocusCallback
        public void onAutoFocus(boolean success, Camera camera) {
            if (CameraDeviceHandler.this.mStateMachine != null) {
                CameraDeviceHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ON_AUTO_FOCUS_DONE, Boolean.valueOf(success));
            }
        }
    }

    public void cancelAutoFocus() {
        Camera camera = getCameraInstance();
        if (camera != null) {
            setExposureAndWhiteBalanceLock(false);
            try {
                camera.cancelAutoFocus();
            } catch (RuntimeException e) {
                CameraLogger.e(TAG, "Camera.cancelAutoFocus failed.ActivityIsInForeground: " + this.mActivityIsInForeground, e);
                if (this.mActivityIsInForeground) {
                    throw e;
                }
            }
        }
    }

    private void setExposureAndWhiteBalanceLock(boolean lock) {
        Camera.Parameters params = getLatestCachedParameters();
        if (params != null) {
            boolean isNeedSetParameters = false;
            if (params.isAutoExposureLockSupported() && params.getAutoExposureLock() != lock) {
                params.setAutoExposureLock(lock);
                isNeedSetParameters = true;
            }
            if (params.isAutoWhiteBalanceLockSupported() && params.getAutoWhiteBalanceLock() != lock) {
                params.setAutoWhiteBalanceLock(lock);
                isNeedSetParameters = true;
            }
            if (isNeedSetParameters) {
                trySetParametersToDevice(params);
            }
        }
    }

    public void applySavingRequest(SavingRequest savingRequest, Camera.Parameters params) {
        if (params != null) {
            params.setRotation(savingRequest.common.orientation);
            params.removeGpsData();
            if (savingRequest.common.location != null) {
                double lat = savingRequest.common.location.getLatitude();
                double lon = savingRequest.common.location.getLongitude();
                boolean hasLatLon = (lat == 0.0d && lon == 0.0d) ? false : true;
                if (hasLatLon) {
                    params.setGpsLatitude(lat);
                    params.setGpsLongitude(lon);
                    if (savingRequest.common.location.hasAltitude()) {
                        params.setGpsAltitude(savingRequest.common.location.getAltitude());
                    } else {
                        params.setGpsAltitude(0.0d);
                    }
                    if (savingRequest.common.location.getProvider() != null) {
                        params.setGpsProcessingMethod(savingRequest.common.location.getProvider().toUpperCase());
                    } else {
                        params.setGpsProcessingMethod("");
                    }
                    if (savingRequest.common.location.getTime() != 0) {
                        long utcTimeSeconds = savingRequest.common.location.getTime() / 1000;
                        params.setGpsTimestamp(utcTimeSeconds);
                    }
                }
            }
            trySetParametersToDevice(params);
        }
    }

    public void takePicture(PhotoSavingRequest savingRequest) {
        Camera camera = getCameraInstance();
        if (camera != null) {
            setExposureAndWhiteBalanceLock(false);
            this.mLastSavingRequest = savingRequest;
            try {
                camera.takePicture(this.mOnShutterCallback, null, this.mOnPictureTakenCallback);
            } catch (RuntimeException e) {
                CameraLogger.e(TAG, "Camera.takePicture failed.ActivityIsInForeground: " + this.mActivityIsInForeground, e);
                if (this.mActivityIsInForeground) {
                    throw e;
                }
            }
            this.mIsFaceDetectionAlreadyStarted = false;
        }
    }

    class OnShutterCallback implements Camera.ShutterCallback {
        OnShutterCallback() {
        }

        @Override // android.hardware.Camera.ShutterCallback
        public void onShutter() {
            if (CameraDeviceHandler.this.mStateMachine != null) {
                CameraDeviceHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ON_SHUTTER_DONE, CameraDeviceHandler.this.mLastSavingRequest);
            }
        }
    }

    class OnPictureTakenCallback implements Camera.PictureCallback {
        OnPictureTakenCallback() {
        }

        @Override // android.hardware.Camera.PictureCallback
        public void onPictureTaken(byte[] data, Camera camera) {
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STOT_TO_SHOT, false);
            MeasurePerformance.outResult();
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STOT_TO_SHOT, true);
            TestEventSender.onPictureTaken();
            CameraDeviceHandler.this.mLastSavingRequest.setImageData(data);
            if (CameraDeviceHandler.this.mStateMachine != null) {
                CameraDeviceHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ON_TAKE_PICTURE_DONE, CameraDeviceHandler.this.mLastSavingRequest);
            }
        }
    }

    class OnFaceDetectionCallback implements Camera.FaceDetectionListener {
        OnFaceDetectionCallback() {
        }

        @Override // android.hardware.Camera.FaceDetectionListener
        public void onFaceDetection(Camera.Face[] faces, Camera camera) {
            if (CameraDeviceHandler.this.mStateMachine == null || camera == null || faces == null) {
                return;
            }
            FaceDetectUtil.FaceDetectionResult faceDetectionResult = new FaceDetectUtil.FaceDetectionResult();
            for (Camera.Face face : faces) {
                faceDetectionResult.addFaceResult(face);
            }
            CameraDeviceHandler.this.mStateMachine.sendStaticEvent(StateMachine.StaticEvent.EVENT_ON_FACE_DETECTED, faceDetectionResult);
        }
    }

    public class OnZoomChangedCallback implements Camera.OnZoomChangeListener {
        public OnZoomChangedCallback() {
        }

        @Override // android.hardware.Camera.OnZoomChangeListener
        public void onZoomChange(int zoomValue, boolean stopped, Camera camera) {
            Camera.Parameters params = CameraDeviceHandler.this.getLatestCachedParameters();
            params.setZoom(zoomValue);
            if (CameraDeviceHandler.this.mStateMachine != null) {
                CameraDeviceHandler.this.mStateMachine.sendStaticEvent(StateMachine.StaticEvent.EVENT_ON_ZOOM_CHANGED, Integer.valueOf(zoomValue), Boolean.valueOf(stopped), camera);
            }
        }
    }

    public void startSmoothZoom(int zoomStep) {
        if (this.mOnZoomChangedCallback != null && this.mSmoothZoomController != null) {
            this.mSmoothZoomController.startSmoothZoom(zoomStep);
        }
    }

    public void stopSmoothZoom() {
        if (this.mOnZoomChangedCallback != null && this.mSmoothZoomController != null) {
            this.mSmoothZoomController.stopSmoothZoom();
            requestCacheParameters();
        }
    }

    public int getMaxZoom() {
        Camera.Parameters params = getLatestCachedParameters();
        if (params == null) {
            return 0;
        }
        int max = params.getMaxZoom();
        return max;
    }

    public void setFocusPosition(PointF positionRatio) {
        Camera.Parameters params;
        Camera camera = getCameraInstance();
        if (camera != null && (params = getLatestCachedParameters()) != null && params.getMaxNumFocusAreas() >= 1) {
            int x = (int) ((positionRatio.x * 2000.0f) - 1000.0f);
            int y = (int) ((positionRatio.y * 2000.0f) - 1000.0f);
            Camera.Area focusArea = new Camera.Area(new Rect(x - 50, y - 50, x + 50, y + 50), 1000);
            Rect rangeArea = new Rect(NotificationManagerCompat.IMPORTANCE_UNSPECIFIED, NotificationManagerCompat.IMPORTANCE_UNSPECIFIED, 1000, 1000);
            if (rangeArea.contains(focusArea.rect)) {
                List<Camera.Area> focusAreaList = new ArrayList<>();
                focusAreaList.add(focusArea);
                params.setFocusAreas(focusAreaList);
                if (trySetParametersToDevice(params)) {
                }
            }
        }
    }

    public void resetFocusMode() {
        Camera.Parameters params;
        Camera camera = getCameraInstance();
        if (camera != null && (params = getLatestCachedParameters()) != null && params.getMaxNumFocusAreas() >= 1) {
            params.setFocusMode(PlatformDependencyResolver.getDefaultFocusMode(this.mCameraDeviceId, params));
            List<Camera.Area> focusAreaList = new ArrayList<>();
            focusAreaList.add(new Camera.Area(new Rect(), 0));
            params.setFocusAreas(focusAreaList);
            if (trySetParametersToDevice(params)) {
            }
        }
    }

    public void startPreviewFrameCapturing() {
        Camera camera = getCameraInstance();
        if (camera != null && this.mWorkBufferRing == null) {
            Rect rect = getPreviewRect();
            this.mWorkBufferRing = new ByteBufferRing(4, ((rect.width() * rect.height()) * 12) / 8, false);
            try {
                camera.setPreviewCallbackWithBuffer(this.mPreviewFrameCallback);
            } catch (RuntimeException e) {
                CameraLogger.e(TAG, "Camera.setPreviewCallbackWithBuffer failed.ActivityIsInForeground: " + this.mActivityIsInForeground, e);
                if (this.mActivityIsInForeground) {
                    throw e;
                }
            }
            for (int i = 0; i < 2; i++) {
                requestNextFrame();
            }
        }
    }

    public synchronized void stopPreviewFrameCapturing() {
        stopPreviewFrameCapturingNotSynchronized();
    }

    private void stopPreviewFrameCapturingNotSynchronized() {
        if (this.mCamera != null) {
            try {
                this.mCamera.setPreviewCallbackWithBuffer(null);
                this.mCamera.setPreviewCallback(null);
            } catch (RuntimeException e) {
                CameraLogger.e(TAG, "Camera.setPreviewCallback failed.ActivityIsInForeground: " + this.mActivityIsInForeground, e);
                if (this.mActivityIsInForeground) {
                    throw e;
                }
            }
            if (this.mWorkBufferRing != null) {
                this.mWorkBufferRing.release();
                this.mWorkBufferRing = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestNextFrame() {
        Camera camera = getCameraInstance();
        if (camera != null && this.mWorkBufferRing != null) {
            camera.addCallbackBuffer(this.mWorkBufferRing.getCurrent().array());
            this.mWorkBufferRing.increment();
        }
    }

    private class PreviewFrameCallback implements Camera.PreviewCallback {
        private PreviewFrameCallback() {
        }

        @Override // android.hardware.Camera.PreviewCallback
        public void onPreviewFrame(byte[] frame, Camera camera) {
            if (com.sonymobile.cameracommon.util.Log.IS_KPI) {
                MeasurePerformance.debugShowPreviewFPS("SoundPhoto");
            }
            CameraDeviceHandler.this.requestNextFrame();
            if (CameraDeviceHandler.this.mStateMachine != null && CameraDeviceHandler.this.mLatestCachedParameters != null) {
                CameraDeviceHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ON_PREVIEW_FRAME, frame, Integer.valueOf(CameraDeviceHandler.this.mLatestCachedParameters.getPreviewFormat()), CameraDeviceHandler.this.getPreviewRect());
            }
        }
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.setting.ParameterApplyer
    public void set(AutoReview value) {
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.setting.ParameterApplyer
    public void set(SelfTimer value) {
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.setting.ParameterApplyer
    public void set(Flash flash) {
        Camera.Parameters params = getLatestCachedParameters();
        if (params != null) {
            params.setFlashMode(flash.cameraParameterValue());
        }
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.setting.ParameterApplyer
    public void commit() {
        Camera.Parameters params;
        if (this.mCurrentDeviceState == 2 && (params = getLatestCachedParameters()) != null) {
            trySetParametersToDevice(params);
        }
    }

    public void setErrorCallback(Camera.ErrorCallback cb) {
        this.mErrorCallback = cb;
    }

    @Override // android.hardware.Camera.ErrorCallback
    public void onError(int code, Camera camera) {
        CameraLogger.e(TAG, "Camera error occurred. Error code = " + code);
        synchronized (this) {
            if (this.mCamera != null) {
                this.mCamera.release();
                this.mCamera = null;
            }
        }
        if (this.mErrorCallback != null) {
            this.mErrorCallback.onError(code, camera);
        }
    }

    public void setActivityForeground(boolean isInForeground) {
        this.mActivityIsInForeground = isInForeground;
    }
}
