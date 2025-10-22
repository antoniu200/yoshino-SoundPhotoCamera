package com.sonymobile.cameracommon.zoom.camera1;

import android.hardware.Camera;
import android.os.Handler;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class SmoothZoomController {
    public static final String TAG = "SmoothZoomController";
    private ExecutorService mBackWorker;
    private Camera mCamera;
    private final boolean mIsSmoothZoomSupportedPlatform;
    private Camera.OnZoomChangeListener mOnZoomChangedCallback;
    private Handler mUiWorker;
    private boolean mIsSmoothZoomStartRequired = false;
    private int mZoomChangeInterval = 33;

    private class ZoomCallbackTask implements Runnable {
        private final Camera mCamera;
        private final boolean mIsStopped;
        private final int mZoomValue;

        public ZoomCallbackTask(int zoomValue, boolean isStopped, Camera camera) {
            this.mZoomValue = zoomValue;
            this.mIsStopped = isStopped;
            this.mCamera = camera;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SmoothZoomController.this.mOnZoomChangedCallback != null) {
                SmoothZoomController.this.mOnZoomChangedCallback.onZoomChange(this.mZoomValue, this.mIsStopped, this.mCamera);
            }
        }
    }

    public SmoothZoomController(Camera camera, Handler uiWorker, Camera.OnZoomChangeListener callback) {
        this.mUiWorker = null;
        this.mBackWorker = null;
        this.mCamera = null;
        this.mOnZoomChangedCallback = null;
        this.mCamera = camera;
        Camera.Parameters params = this.mCamera.getParameters();
        if (params != null && params.isSmoothZoomSupported()) {
            this.mIsSmoothZoomSupportedPlatform = true;
            this.mCamera.setZoomChangeListener(callback);
        } else {
            this.mIsSmoothZoomSupportedPlatform = false;
            this.mUiWorker = uiWorker;
            this.mBackWorker = Executors.newSingleThreadExecutor();
            this.mOnZoomChangedCallback = callback;
        }
    }

    public void release() {
        this.mIsSmoothZoomStartRequired = false;
        if (this.mBackWorker != null) {
            this.mBackWorker.shutdown();
            try {
                this.mBackWorker.awaitTermination(500L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                CameraLogger.e(TAG, "Fail to shutdown mBackWorker", e);
            }
            this.mBackWorker = null;
        }
        this.mUiWorker = null;
        if (this.mCamera != null) {
            this.mCamera.setZoomChangeListener(null);
            this.mCamera = null;
        }
        this.mOnZoomChangedCallback = null;
    }

    public void setZoomChangeInterval(int intervalMillis) {
        this.mZoomChangeInterval = intervalMillis;
    }

    public void startSmoothZoom(int targetZoomIndex) {
        if (this.mIsSmoothZoomSupportedPlatform) {
            this.mCamera.startSmoothZoom(targetZoomIndex);
        } else {
            if (!this.mIsSmoothZoomStartRequired) {
                this.mIsSmoothZoomStartRequired = true;
                Runnable task = new SmoothZoomTask(targetZoomIndex);
                this.mBackWorker.execute(task);
                return;
            }
            CameraLogger.d(TAG, "SmoothZoomController : Already started.");
        }
    }

    public void stopSmoothZoom() {
        if (this.mIsSmoothZoomSupportedPlatform) {
            this.mCamera.stopSmoothZoom();
        } else {
            this.mIsSmoothZoomStartRequired = false;
        }
    }

    private class SmoothZoomTask implements Runnable {
        private final int mTargetZoom;
        private long mTaskStartTimestampMillis = 0;

        public SmoothZoomTask(int targetZoom) {
            this.mTargetZoom = targetZoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            int nextTrg;
            while (SmoothZoomController.this.mIsSmoothZoomStartRequired) {
                if (SmoothZoomController.this.mCamera != null) {
                    this.mTaskStartTimestampMillis = System.currentTimeMillis();
                    Camera.Parameters camParam = SmoothZoomController.this.mCamera.getParameters();
                    int actZoom = camParam.getZoom();
                    if (actZoom < this.mTargetZoom) {
                        nextTrg = actZoom + 1;
                    } else if (this.mTargetZoom < actZoom) {
                        nextTrg = actZoom - 1;
                    } else {
                        Runnable callbackTask = SmoothZoomController.this.new ZoomCallbackTask(this.mTargetZoom, true, SmoothZoomController.this.mCamera);
                        SmoothZoomController.this.mUiWorker.post(callbackTask);
                        SmoothZoomController.this.mIsSmoothZoomStartRequired = false;
                        return;
                    }
                    camParam.setZoom(nextTrg);
                    SmoothZoomController.this.mCamera.setParameters(camParam);
                    Runnable callbackTask2 = SmoothZoomController.this.new ZoomCallbackTask(nextTrg, false, SmoothZoomController.this.mCamera);
                    SmoothZoomController.this.mUiWorker.post(callbackTask2);
                    int ellapsedTimeMillis = (int) (System.currentTimeMillis() - this.mTaskStartTimestampMillis);
                    int sleepTimeMillis = SmoothZoomController.this.mZoomChangeInterval - ellapsedTimeMillis;
                    if (sleepTimeMillis > 0) {
                        try {
                            Thread.sleep(sleepTimeMillis);
                        } catch (InterruptedException e) {
                            CameraLogger.e(SmoothZoomController.TAG, "SmoothZoomTask is interrupted", e);
                        }
                    }
                } else {
                    CameraLogger.e(SmoothZoomController.TAG, "SmoothZoomController : Camera is released.");
                }
            }
        }
    }
}
