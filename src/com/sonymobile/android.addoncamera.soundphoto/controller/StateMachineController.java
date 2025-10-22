package com.sonymobile.android.addoncamera.soundphoto.controller;

import android.content.DialogInterface;
import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.Camera;
import android.location.Location;
import android.net.Uri;
import android.os.Handler;
import android.os.PowerManager;
import android.util.Log;
import android.view.SurfaceHolder;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.values.SaveDestination;
import com.sonyericsson.cameracommon.contentsview.ContentsViewController;
import com.sonyericsson.cameracommon.contentsview.ThumbnailUtil;
import com.sonyericsson.cameracommon.controller.ZoomController;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingConstants;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusPhoto;
import com.sonyericsson.cameracommon.selftimerfeedback.LedLight;
import com.sonyericsson.cameracommon.selftimerfeedback.SelfTimerFeedback;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;
import com.sonymobile.android.addoncamera.soundphoto.CameraDeviceHandler;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonymobile.android.addoncamera.soundphoto.SoundPhotoCameraActivity;
import com.sonymobile.android.addoncamera.soundphoto.SoundPhotoConstants;
import com.sonymobile.android.addoncamera.soundphoto.contents.AudioData;
import com.sonymobile.android.addoncamera.soundphoto.contents.AudioSampleDataStore;
import com.sonymobile.android.addoncamera.soundphoto.contents.PreviewFrameData;
import com.sonymobile.android.addoncamera.soundphoto.contents.PreviewFrameStore;
import com.sonymobile.android.addoncamera.soundphoto.contents.SoundPhotoContentsIntegrator;
import com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine;
import com.sonymobile.android.addoncamera.soundphoto.setting.CapturingMode;
import com.sonymobile.android.addoncamera.soundphoto.setting.SettingPreferenceManager;
import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.AutoReview;
import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.Flash;
import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.SelfTimer;
import com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder;
import com.sonymobile.cameracommon.memorybuffer.NativeByteBufferHolder;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class StateMachineController implements StateMachine, SavingRequest.StoreDataCallback, AudioSampleDataStore.OnBufferPositionUpdateListener, AudioData.OnAudioCaptureFinishedListener {
    private static final int PREPARE_PINCH_ZOOM_TIMEOUT_COUNT = 100;
    private static final int RESUME_TIMEOUT = 5000;
    public static final long STORAGE_REMAIN_ENOUGH = 153600;
    public static final long STORAGE_REMAIN_MIN = 61440;
    private static final String TAG = StateMachineController.class.getSimpleName();
    private SoundPhotoCameraActivity mActivity;
    private CameraDeviceHandler mCameraDeviceHandler;
    private final SoundPhotoContentsIntegrator mContentsIntegrator;
    private float mCurrentZoomLength;
    private final SettingPreferenceManager mSettingPreferences;
    private SoundPhotoViewFinder mViewFinder;
    private Handler mHandler = new Handler();
    private PhotoSavingRequest mLastSavingRequest = null;
    private ContentsViewController mContentsViewController = null;
    private List<PhotoSavingRequest> mSavingRequestList = new ArrayList();
    private State mCurrentState = new StateNone();
    private CapturingMode mNextCapturingMode = CapturingMode.MAIN;
    private Set<StateMachine.OnStateChangedListener> mOnStateChangedListenerSet = new CopyOnWriteArraySet();
    private final Runnable mNotifyResumeTimeoutTask = new Runnable() { // from class: com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.1
        @Override // java.lang.Runnable
        public void run() {
            StateMachineController.this.sendEvent(StateMachine.TransitterEvent.EVENT_RESUME_TIMEOUT, new Object[0]);
        }
    };
    private final AudioSampleDataStore mAudioSampleDataStore = new AudioSampleDataStore(SoundPhotoConstants.SOUND_SAMPLE_RATE, 2, 2, 10, 8);
    private final PreviewFrameStore mPreviewFrameStore = new PreviewFrameStore(30);

    private static void logPerformance(String event) {
        Log.e("TraceLog", "[PERFORMANCE] [TIME = " + System.currentTimeMillis() + "] [" + TAG + "] [" + Thread.currentThread().getName() + " : " + event + "]");
    }

    StateMachineController(SoundPhotoCameraActivity activity, SettingPreferenceManager preferences) {
        this.mActivity = activity;
        this.mContentsIntegrator = new SoundPhotoContentsIntegrator(this.mActivity);
        this.mSettingPreferences = preferences;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine
    public synchronized boolean canCurrentStateHandleAsynchronizedTask() {
        return this.mCurrentState.getCaptureState().canHandleAsynchronizedTask();
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine
    public synchronized boolean canApplicationBeFinished() {
        return this.mCurrentState.getCaptureState().canApplicationBeFinished();
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine
    public void addOnStateChangedListener(StateMachine.OnStateChangedListener listener) {
        this.mOnStateChangedListenerSet.add(listener);
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine
    public void removeOnStateChangedListener(StateMachine.OnStateChangedListener listener) {
        this.mOnStateChangedListenerSet.remove(listener);
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine
    public void setViewFinder(SoundPhotoViewFinder viewFinder) {
        this.mViewFinder = viewFinder;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine
    public void setCameraDevice(CameraDeviceHandler cameraDeviceHandler) {
        this.mCameraDeviceHandler = cameraDeviceHandler;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine
    public synchronized boolean isDialogOpened() {
        return this.mCurrentState.getCaptureState() == StateMachine.CaptureState.STATE_STANDBY_DIALOG;
    }

    class State {
        protected StateMachine.CaptureState mCaptureState = StateMachine.CaptureState.STATE_NONE;

        public State() {
        }

        public void entry() {
        }

        public void exit() {
        }

        public String toString() {
            return mCaptureState == null ? StateMachine.CaptureState.STATE_NONE.toString() : mCaptureState.toString();
        }

        public boolean isSettingUiBeOpened() {
            return false;
        }

        public boolean canSelfTimerBeOpened() {
            return true;
        }

        public StateMachine.CaptureState getCaptureState() {
            return mCaptureState;
        }

        public void handleInitialize(Object... objects) {
        }

        public void handleResume(Object... objects) {
        }

        public void handleResumeTimeout(Object... objects) {
        }

        public void handlePause(Object... objects) {
        }

        public void handleFinalize(Object... objects) {
        }

        public void handleOnEvfPrepared(Object... objects) {
        }

        public void handleOnEvfPreparationFailed(Object... objects) {
        }

        public void handleOnAutoFocusDone(Object... objects) {
        }

        public void handleOnShutterDone(Object... objects) {
        }

        public void handleOnTakePictureDone(Object... objects) {
        }

        public void handleTouchContentProgressBar(Object... objects) {
            if (StateMachineController.this.mViewFinder != null) {
                StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_SHOW_INSTANT_VIEWER, StateMachineController.this.mLastSavingRequest.getImageData(), StateMachineController.this.mLastSavingRequest.common.mimeType, Integer.valueOf(StateMachineController.this.mLastSavingRequest.common.height), Integer.valueOf(StateMachineController.this.mLastSavingRequest.common.width), Integer.valueOf(StateMachineController.this.mLastSavingRequest.common.orientation), Boolean.valueOf(StateMachineController.this.mLastSavingRequest.photo.isFront()));
            }
        }

        public void handleOnStoreRequested(Object... objects) {
        }

        public synchronized void handleOnStoreCompleted(Object... objects) {
            if (StateMachineController.this.mViewFinder != null) {
                StoreDataResult result = (StoreDataResult) objects[0];
                StateMachineController.this.mSavingRequestList.remove(result.savingRequest);
                StateMachineController.this.doStoreComplete(result);
                if (StateMachineController.this.mLastSavingRequest != null && result != null && result.savingRequest != null && StateMachineController.this.mLastSavingRequest.getRequestId() == result.savingRequest.getRequestId()) {
                    StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_STORE_COMPLETED, result.uri, result.savingRequest.common.mimeType);
                }
            }
        }

        public void handleOnSoundCaptureCompleted(Object... objects) {
            if (StateMachineController.this.mViewFinder != null) {
                StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_SOUND_CAPTURE_COMPLETED, objects);
            }
        }

        public void handleOnRecordProgressUpdated(Object... objects) {
            if (StateMachineController.this.mViewFinder != null) {
                StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_RECORD_PROGRESS_UPDATED, objects);
            }
        }

        public void handleKeyFocusDown(Object... objects) {
        }

        public void handleKeyFocusUp(Object... objects) {
        }

        public void handleKeyCaptureDown(Object... objects) {
        }

        public void handleKeyCaptureUp(Object... objects) {
        }

        public void handleKeyZoomInDown(Object... objects) {
        }

        public void handleKeyZoomOutDown(Object... objects) {
        }

        public void handleKeyZoomUp(Object... objects) {
        }

        public void handleKeyMenu(Object... objects) {
        }

        public void handleKeyBack(Object... objects) {
        }

        public void handlePrepareTouchZoom(Object... objects) {
        }

        public void handleOnPrepareTouchZoomTimeouted(Object... objects) {
        }

        public void handleStartTouchZoom(Object... objects) {
        }

        public void handleStopTouchZoom(Object... objects) {
        }

        public void handleCancelTouchZoom(Object... objects) {
        }

        public void handleCaptureButtonTouch(Object... objects) {
        }

        public void handleCaptureButtonRelease(Object... objects) {
        }

        public void handleCaptureButtonCancel(Object... objects) {
        }

        public void handleCaptureButtonLongPress(Object... objects) {
        }

        public void handleScreenClear(Object... objects) {
        }

        public void handleStartAfSearchInTouch(Object... objects) {
        }

        public void handleStartAfSearchInTouchStop(Object... objects) {
        }

        public void handleDialogOpened(Object... objects) {
        }

        public void handleDialogClosed(Object... objects) {
        }

        public void handleStorageError(Object... objects) {
        }

        public void handleStorageMounted(Object... objects) {
        }

        public void handleStorageShouldChange(Object... objects) {
        }

        public void handleRequestSetupHeadUpDisplay(Object... objects) {
            StateMachineController.this.mHandler.postDelayed(new ReTrySetupHeadUpDisplayTask(), 100L);
        }

        class ReTrySetupHeadUpDisplayTask implements Runnable {
            ReTrySetupHeadUpDisplayTask() {
            }

            @Override // java.lang.Runnable
            public void run() {
                StateMachineController.this.sendEvent(StateMachine.TransitterEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, (Object[]) null);
            }
        }

        public void handleSetFocusPosition(Object... objects) {
        }

        public void handleOnPhotoStackInitialized(Object... objects) {
        }

        public void handleOnFaceDetected(Object... objects) {
        }

        public void handleOnOrientationChanged(Object... objects) {
        }

        public void handleOnPreviewFrameUpdated(Object... objects) {
        }

        public void handleOnPreviewFrame(Object... objects) {
            byte[] data = (byte[]) objects[0];
            int format = ((Integer) objects[1]).intValue();
            Rect rect = (Rect) objects[2];
            if (rect != null) {
                PreviewFrameStore.FrameInfo originalInfo = StateMachineController.this.mPreviewFrameStore.getFrameInfo();
                if (originalInfo == null || originalInfo.rect.width() != rect.width() || originalInfo.rect.height() != rect.height() || originalInfo.format != format) {
                    StateMachineController.this.mPreviewFrameStore.setFrameInfo(new PreviewFrameStore.FrameInfo(rect, format));
                }
                StateMachineController.this.mPreviewFrameStore.push(data);
            }
        }

        public void handleOnSwitchCamera(Object... objects) {
        }

        public void handleOnRequestResetAudioSampleData(Object[] objects) throws IllegalStateException {
            if (StateMachineController.this.mAudioSampleDataStore != null && StateMachineController.this.mAudioSampleDataStore.nowBuffering()) {
                try {
                    StateMachineController.this.mAudioSampleDataStore.stopBuffering();
                    StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_CLEAR_INDICATOR_PROGRESS, new Object[0]);
                    StateMachineController.this.mAudioSampleDataStore.startBuffering();
                } catch (InterruptedException e) {
                    CameraLogger.w(StateMachineController.TAG, "mAudioSampleDataStore.stopBuffering() is interupted.");
                }
            }
        }
    }

    class StateNone extends State {
        public StateNone() {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_NONE;
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleInitialize(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StateInitialize(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePause(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StatePause(), objects);
        }
    }

    class StateInitialize extends State {
        public StateInitialize() {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_INITIALIZE;
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleResume(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StateResume(), objects);
        }
    }

    class StateResume extends State {
        private static final String TAG = "StateMachine.StateResume";

        public StateResume() {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_RESUME;
            StateMachineController.this.mHandler.removeCallbacks(StateMachineController.this.mNotifyResumeTimeoutTask);
            StateMachineController.this.mHandler.postDelayed(StateMachineController.this.mNotifyResumeTimeoutTask, 5000L);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleOnEvfPrepared(Object... objects) {
            StateMachineController.this.mActivity.notifyLaunch();
            requestToStartLiveViewFinder((SurfaceHolder) objects[0]);
            if (!StateMachineController.this.mAudioSampleDataStore.startBuffering()) {
                StateMachineController.this.showRecordingErrorDialog();
            } else {
                StateMachineController.this.mCameraDeviceHandler.startPreviewFrameCapturing();
                StateMachineController.this.mAudioSampleDataStore.setBufferPositionUpdateListener(StateMachineController.this);
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleOnEvfPreparationFailed(Object... objects) {
            CameraLogger.d(TAG, "handleOnEvfPreparationFailed() E");
            StateMachineController.this.mCameraDeviceHandler.requestStartCameraOpen(StateMachineController.this.mActivity, StateMachineController.this.mSettingPreferences.getCurrentPreference().capturingMode.cameraId);
            CameraLogger.d(TAG, "handleOnEvfPreparationFailed() X");
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleResumeTimeout(Object... objects) {
            CameraLogger.errorLogForNonUserVariant(TAG, "[CameraNotAvailable] resume timeout.");
            StateMachineController.this.showCameraNotAvailableError();
            StateMachineController.this.changeTo(StateMachineController.this.new StateWarning(), new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePause(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StatePause(), objects);
        }

        private void requestToStartLiveViewFinder(SurfaceHolder surface) {
            try {
                startLiveViewFinderOnResume(surface);
            } catch (IllegalStateException e) {
            }
        }

        private void startLiveViewFinderOnResume(SurfaceHolder targetSurface) {
            StateMachineController.this.mCameraDeviceHandler.startLiveViewFinder(targetSurface);
            Rect previewRect = StateMachineController.this.mCameraDeviceHandler.getPreviewRect();
            if (previewRect == null) {
                throw new IllegalStateException("Preview is null.");
            }
            if (previewRect.isEmpty()) {
                throw new IllegalStateException("Preview is empty.");
            }
            Rect surfaceRect = LayoutDependencyResolver.getSurfaceViewRect(StateMachineController.this.mActivity, previewRect.width() / previewRect.height(), StateMachineController.this.mActivity.getScreenAspect());
            PositionConverter.getInstance().init(false, surfaceRect, previewRect);
            PositionConverter.getInstance().setSurfaceSize(surfaceRect.width(), surfaceRect.height());
            PositionConverter.getInstance().setPreviewSize(previewRect.width(), previewRect.height());
            StateMachineController.this.mActivity.requestPostLazyInitializationTaskExecute();
            StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(true), new Object[0]);
            if (StateMachineController.this.mActivity.shouldChangeStorageForSdUngranted() && StateMachineController.this.mViewFinder != null) {
                StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_SHOW_CHANGE_INTERNAL_STORAGE_MESSAGE, new Object[0]);
            }
        }
    }

    class StatePhotoBase extends State {
        public StatePhotoBase() {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_PHOTO_BASE;
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleOnOrientationChanged(Object... objects) {
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_ORIENTATION_CHANGED, objects[0]);
        }
    }

    class StatePhotoZoomingBase extends StatePhotoBase {
        public StatePhotoZoomingBase() {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_PHOTO_ZOOMING_BASE;
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleOnFaceDetected(Object... objects) {
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_FACE_DETECTED, objects[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleTouchContentProgressBar(Object... objects) {
        }
    }

    class StateStandby extends StatePhotoBase {
        private static final String TAG = "StateMachine.StateStandby";

        public StateStandby() {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_STANDBY;
            if (StateMachineController.this.mCameraDeviceHandler.startPreview() && !StateMachineController.this.mAudioSampleDataStore.startBuffering()) {
                StateMachineController.this.showRecordingErrorDialog();
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void entry() {
            if (StateMachineController.this.mViewFinder.isHeadUpDisplayReady()) {
                StateMachineController.this.mActivity.getStorageManager().updateRemain(0L, false);
                if (!StateMachineController.this.mActivity.getStorageManager().isReady()) {
                    StateMachineController.this.mHandler.post(new Runnable() { // from class: com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.StateStandby.1
                        @Override // java.lang.Runnable
                        public void run() {
                            StateMachineController.this.sendEvent(StateMachine.TransitterEvent.EVENT_STORAGE_ERROR, (Object[]) null);
                        }
                    });
                } else if (!StateMachineController.this.mAudioSampleDataStore.startBuffering()) {
                    StateMachineController.this.showRecordingErrorDialog();
                }
            }
        }

        public StateStandby(boolean withExtensionFeatures) {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_STANDBY;
            if (StateMachineController.this.mCameraDeviceHandler.startPreview()) {
                if (withExtensionFeatures) {
                    StateMachineController.this.mCameraDeviceHandler.startFaceDetection();
                }
                if (StateMachineController.this.mActivity != null) {
                    StateMachineController.this.mActivity.enableAutoOffTimer();
                }
                StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_ORIENTATION_CHANGED, Integer.valueOf(StateMachineController.this.getSensorOrientation()));
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleRequestSetupHeadUpDisplay(Object... objects) {
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleDialogOpened(Object... objects) {
            StateMachineController.this.changeTo(new StatePhotoStandbyDialog(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleKeyFocusDown(Object... objects) {
            if (!StateMachineController.this.isSelfTimerEnable() && StateMachineController.this.mViewFinder.isSetupHeadupDisplayInvoked() && StateMachineController.this.startAutoFocus()) {
                StateMachineController.this.changeTo(new StatePhotoAfSearch(), objects);
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleKeyCaptureDown(Object... objects) {
            if (StateMachineController.this.isSelfTimerEnable() && StateMachineController.this.mViewFinder.isSetupHeadupDisplayInvoked()) {
                int duration = ((SelfTimer) StateMachineController.this.mSettingPreferences.getCurrentPreference().selfTimer.get()).getDurationInMillisecond();
                StateMachineController.this.changeTo(new StatePhotoSelfTimerCountdown(duration), new Object[0]);
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleCaptureButtonTouch(Object... objects) {
            if (!StateMachineController.this.isSelfTimerEnable() && StateMachineController.this.mActivity.updateRemain() && StateMachineController.this.startAutoFocus()) {
                StateMachineController.this.changeTo(new StatePhotoAfSearchInTouch(false), objects);
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleCaptureButtonCancel(Object... objects) {
            if (!StateMachineController.this.isSelfTimerEnable()) {
                StateMachineController.this.mCameraDeviceHandler.resetFocusMode();
                StateMachineController.this.mCameraDeviceHandler.startFaceDetection();
                StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_AF_CANCELED, new Object[0]);
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleCaptureButtonRelease(Object... objects) {
            if (StateMachineController.this.isSelfTimerEnable() && StateMachineController.this.mActivity.updateRemain()) {
                int duration = ((SelfTimer) StateMachineController.this.mSettingPreferences.getCurrentPreference().selfTimer.get()).getDurationInMillisecond();
                StateMachineController.this.changeTo(new StatePhotoSelfTimerCountdown(duration), new Object[0]);
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleScreenClear(Object... objects) {
            handleCaptureButtonCancel(objects);
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED, new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleKeyZoomInDown(Object... objects) {
            Camera.Parameters params = StateMachineController.this.mCameraDeviceHandler.getLatestCachedParameters();
            if (params != null) {
                handleScreenClear(objects);
                if (StateMachineController.this.isSmoothZoomEnabled()) {
                    StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoZooming(), objects);
                    StateMachineController.this.doZoomIn();
                } else {
                    StateMachineController.this.mActivity.getMessagePopup().showZoomHelpMessage(false);
                }
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleKeyZoomOutDown(Object... objects) {
            Camera.Parameters params = StateMachineController.this.mCameraDeviceHandler.getLatestCachedParameters();
            if (params != null) {
                handleScreenClear(objects);
                if (StateMachineController.this.isSmoothZoomEnabled()) {
                    StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoZooming(), objects);
                    StateMachineController.this.doZoomOut();
                } else {
                    StateMachineController.this.mActivity.getMessagePopup().showZoomHelpMessage(false);
                }
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePause(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StatePause(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleStorageError(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StateWarning(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleOnFaceDetected(Object... objects) {
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_FACE_DETECTED, objects[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleSetFocusPosition(Object... objects) {
            StateMachineController.this.mCameraDeviceHandler.setFocusPosition((PointF) objects[1]);
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_SELECTED, objects[0], objects[2]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePrepareTouchZoom(Object... objects) {
            if (!StateMachineController.this.isSmoothZoomEnabled()) {
                StateMachineController.this.mActivity.getMessagePopup().showZoomHelpMessage(false);
                return;
            }
            StateMachineController.this.mCurrentZoomLength = StateMachineController.this.mCameraDeviceHandler.getLatestCachedParameters().getZoom();
            StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoZoomingInTouch(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleStorageShouldChange(Object... objects) {
            StateMachineController.this.switchStorage();
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleOnSwitchCamera(Object... objects) {
            StateMachineController.this.switchCamera();
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public boolean isSettingUiBeOpened() {
            return true;
        }

        public void handleRestartViewFinder(Object... objects) throws IOException {
            SurfaceHolder surface = (SurfaceHolder) objects[0];
            StateMachineController.this.mCameraDeviceHandler.startLiveViewFinder(surface);
            StateMachineController.this.mCameraDeviceHandler.startFaceDetection();
            CameraLogger.d(TAG, "handleOnEvfPrepared() X");
        }
    }

    class StatePhotoZooming extends StatePhotoZoomingBase {
        public StatePhotoZooming() {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_PHOTO_ZOOMING;
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleKeyZoomUp(Object... objects) {
            StateMachineController.this.doStopZoom();
            StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(true), SoundPhotoViewFinder.UiComponentKind.ZOOM_BAR);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePause(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StatePause(), objects);
        }
    }

    class StatePhotoStandbyDialog extends StatePhotoBase {
        private StateMachine.CaptureState mNextCaptureState;

        public StatePhotoStandbyDialog() {
            super();
            this.mNextCaptureState = StateMachine.CaptureState.STATE_NONE;
            this.mCaptureState = StateMachine.CaptureState.STATE_STANDBY_DIALOG;
            if (StateMachineController.this.mActivity != null) {
                StateMachineController.this.mActivity.enableAutoOffTimer();
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void entry() {
            if (Flash.LED_ON.equals(StateMachineController.this.mSettingPreferences.getCurrentPreference().flash.get())) {
                StateMachineController.this.mCameraDeviceHandler.setTorch(false);
            }
            super.entry();
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void exit() {
            if (Flash.LED_ON.equals(StateMachineController.this.mSettingPreferences.getCurrentPreference().flash.get()) && this.mNextCaptureState != StateMachine.CaptureState.STATE_PAUSE) {
                StateMachineController.this.mCameraDeviceHandler.setTorch(true);
            }
            super.exit();
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleDialogOpened(Object... objects) {
            if (objects != null && objects.length != 0) {
                SoundPhotoViewFinder.UiComponentKind kind = (SoundPhotoViewFinder.UiComponentKind) objects[0];
                StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_UPDATE_DIALOGS, kind);
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleDialogClosed(Object... objects) {
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_CLOSE_ENTIRE_HIERARCHY_DIALOGS, new Object[0]);
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_CLEAR_INDICATOR_PROGRESS, new Object[0]);
            this.mNextCaptureState = StateMachine.CaptureState.STATE_STANDBY;
            StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(true), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleKeyBack(Object... objects) {
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_CLOSE_CURRENT_DIALOGS, new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePause(Object... objects) {
            this.mNextCaptureState = StateMachine.CaptureState.STATE_PAUSE;
            StateMachineController.this.changeTo(StateMachineController.this.new StatePause(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleStorageShouldChange(Object... objects) {
            StateMachineController.this.switchStorage();
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleOnSoundCaptureCompleted(Object... objects) {
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_SOUND_CAPTURE_COMPLETED, objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public boolean isSettingUiBeOpened() {
            return true;
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleStorageMounted(Object... objects) {
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_UPDATE_DIALOGS, SoundPhotoViewFinder.UiComponentKind.SETTING_DIALOG);
        }
    }

    class StatePhotoAfSearch extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePhotoAfSearch";

        public StatePhotoAfSearch() {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_PHOTO_AF_SEARCH;
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleOnAutoFocusDone(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoAfDone(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleKeyFocusUp(Object... objects) {
            StateMachineController.this.cancelAutoFocus(false);
            StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(true), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleKeyCaptureDown(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoCaptureWaitForAfDone(true), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePause(Object... objects) {
            StateMachineController.this.cancelAutoFocus(true);
            StateMachineController.this.changeTo(StateMachineController.this.new StatePause(), objects);
        }
    }

    class StatePhotoAfSearchInTouch extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePhotoAfSearchInTouch";
        private boolean mIsAutoFocusAlreadyCanceled;
        private boolean mIsPreparePinchZoomAlreadyTimeouted;

        public StatePhotoAfSearchInTouch(boolean isAutoFocusAlreadyCanceled) {
            super();
            this.mIsPreparePinchZoomAlreadyTimeouted = false;
            this.mCaptureState = StateMachine.CaptureState.STATE_PHOTO_AF_SEARCH_IN_TOUCH;
            this.mIsAutoFocusAlreadyCanceled = isAutoFocusAlreadyCanceled;
            StateMachineController.this.mHandler.postDelayed(new Runnable() { // from class: com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.StatePhotoAfSearchInTouch.1
                @Override // java.lang.Runnable
                public void run() {
                    StateMachineController.this.sendEvent(StateMachine.TransitterEvent.EVENT_ON_PREPARE_TOUCH_ZOOM_TIMEOUTED, new Object[0]);
                }
            }, 100L);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleOnAutoFocusDone(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoAfDoneInTouch(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleCaptureButtonCancel(Object... objects) {
            if (!this.mIsAutoFocusAlreadyCanceled) {
                StateMachineController.this.cancelAutoFocus(false);
                this.mIsAutoFocusAlreadyCanceled = true;
            }
            StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(true), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleScreenClear(Object... objects) {
            handleCaptureButtonCancel(objects);
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED, new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleStartAfSearchInTouch(Object... objects) {
            if (!this.mIsAutoFocusAlreadyCanceled) {
                StateMachineController.this.cancelAutoFocus(false);
                this.mIsAutoFocusAlreadyCanceled = true;
            }
            StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoAfSearchInTouchDraggingFocusPosition(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleStartAfSearchInTouchStop(Object... objects) {
            if (this.mIsAutoFocusAlreadyCanceled) {
                StateMachineController.this.startAutoFocus();
                this.mIsAutoFocusAlreadyCanceled = false;
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePrepareTouchZoom(Object... objects) {
            if (!this.mIsPreparePinchZoomAlreadyTimeouted && StateMachineController.this.isSmoothZoomEnabled()) {
                if (!this.mIsAutoFocusAlreadyCanceled) {
                    StateMachineController.this.cancelAutoFocus(true);
                    this.mIsAutoFocusAlreadyCanceled = true;
                }
                StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoZoomingInTouch(), objects);
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleOnPrepareTouchZoomTimeouted(Object... objects) {
            this.mIsPreparePinchZoomAlreadyTimeouted = true;
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleCaptureButtonRelease(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoCaptureWaitForAfDone(false), objects);
            if (this.mIsAutoFocusAlreadyCanceled) {
                StateMachineController.this.startAutoFocus();
                this.mIsAutoFocusAlreadyCanceled = false;
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePause(Object... objects) {
            if (!this.mIsAutoFocusAlreadyCanceled) {
                StateMachineController.this.cancelAutoFocus(true);
                this.mIsAutoFocusAlreadyCanceled = true;
            }
            StateMachineController.this.changeTo(StateMachineController.this.new StatePause(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleSetFocusPosition(Object... objects) {
            if (this.mIsAutoFocusAlreadyCanceled) {
                StateMachineController.this.mCameraDeviceHandler.setFocusPosition((PointF) objects[1]);
            }
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_SELECTED, objects[0], objects[2]);
        }
    }

    class StatePhotoAfSearchInTouchDraggingFocusPosition extends StatePhotoBase {
        public StatePhotoAfSearchInTouchDraggingFocusPosition() {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_PHOTO_AF_SEARCH_IN_TOUCH_DRAGGING_FOCUS_POSITION;
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleStartAfSearchInTouchStop(Object... objects) {
            StateMachineController.this.startAutoFocus();
            StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoAfSearchInTouch(false), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleCaptureButtonTouch(Object... objects) {
            if (StateMachineController.this.startAutoFocus()) {
                StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoAfSearchInTouch(false), objects);
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleCaptureButtonCancel(Object... objects) {
            StateMachineController.this.mCameraDeviceHandler.resetFocusMode();
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED, new Object[0]);
            StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(true), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleScreenClear(Object... objects) {
            handleCaptureButtonCancel(objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleCaptureButtonRelease(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoCaptureWaitForAfDone(false), objects);
            StateMachineController.this.startAutoFocus();
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePause(Object... objects) {
            StateMachineController.this.mCameraDeviceHandler.resetFocusMode();
            StateMachineController.this.changeTo(StateMachineController.this.new StatePause(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleSetFocusPosition(Object... objects) {
            StateMachineController.this.mCameraDeviceHandler.setFocusPosition((PointF) objects[1]);
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_SELECTED, objects[0], objects[2]);
        }
    }

    class StatePhotoZoomingInTouch extends StatePhotoZoomingBase {
        private final int mStartZoomStep;

        public StatePhotoZoomingInTouch() {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_PHOTO_ZOOMING_IN_TOUCH;
            this.mStartZoomStep = StateMachineController.this.mCameraDeviceHandler.getLatestCachedParameters().getZoom();
            StateMachineController.this.mCurrentZoomLength = StateMachineController.this.mCameraDeviceHandler.getLatestCachedParameters().getZoom();
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleStartTouchZoom(Object... objects) {
            float scaleLength = ((Float) objects[0]).floatValue();
            StateMachineController.this.doZoom(this.mStartZoomStep, scaleLength);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleStopTouchZoom(Object... objects) {
            StateMachineController.this.doStopZoom();
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleCancelTouchZoom(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(true), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleScreenClear(Object... objects) {
            handleCaptureButtonCancel(objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePause(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StatePause(), objects);
        }
    }

    class StatePhotoAfDone extends StatePhotoBase {
        public StatePhotoAfDone() {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_PHOTO_AF_DONE;
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleKeyCaptureDown(Object... objects) {
            StateMachineController.this.doCapture();
            StateMachineController.this.changeTo(new StatePhotoCapture(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleKeyFocusUp(Object... objects) {
            StateMachineController.this.cancelAutoFocus(false);
            StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(true), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePause(Object... objects) {
            StateMachineController.this.cancelAutoFocus(true);
            StateMachineController.this.changeTo(StateMachineController.this.new StatePause(), objects);
        }
    }

    class StatePhotoAfDoneInTouch extends StatePhotoBase {
        public StatePhotoAfDoneInTouch() {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_PHOTO_AF_DONE_IN_TOUCH;
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleCaptureButtonRelease(Object... objects) {
            StateMachineController.this.doCapture();
            StateMachineController.this.changeTo(new StatePhotoCapture(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleCaptureButtonCancel(Object... objects) {
            StateMachineController.this.cancelAutoFocus(false);
            StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(true), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleScreenClear(Object... objects) {
            handleCaptureButtonCancel(objects);
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED, new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleStartAfSearchInTouch(Object... objects) {
            StateMachineController.this.cancelAutoFocus(false);
            StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoAfSearchInTouch(true), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePause(Object... objects) {
            StateMachineController.this.cancelAutoFocus(true);
            StateMachineController.this.changeTo(StateMachineController.this.new StatePause(), objects);
        }
    }

    class StatePhotoCaptureWaitForAfDone extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePhotoCaptureWaitForAfDone";
        private final boolean mIsCalledByKeyEvent;
        private boolean mIsReleaseShutterKey;

        public StatePhotoCaptureWaitForAfDone(boolean isCalledByKeyEvent) {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE;
            this.mIsCalledByKeyEvent = isCalledByKeyEvent;
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_HIGHLIGHT_CAPTURED_SOUND_LEVEL, new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleKeyCaptureUp(Object... objects) {
            this.mIsReleaseShutterKey = true;
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleOnAutoFocusDone(Object... objects) {
            if (this.mIsReleaseShutterKey || !this.mIsCalledByKeyEvent) {
                StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoAfDone(), objects);
                StateMachineController.this.doCapture();
                StateMachineController.this.changeTo(new StatePhotoCapture(), objects);
            } else {
                StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoAfDone(), objects);
                StateMachineController.this.doCapture();
                StateMachineController.this.changeTo(new StatePhotoCapture(), objects);
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePause(Object... objects) {
            StateMachineController.this.cancelAutoFocus(true);
            StateMachineController.this.changeTo(StateMachineController.this.new StatePause(), objects);
        }
    }

    class StatePhotoCapture extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePhotoCapture";
        private AudioData mAudio;
        private final boolean mContinuous;
        private boolean mIsMemoryErrorOccured;
        private boolean mIsNextCaptureRequired;
        private PreviewFrameData mPreviewFrames;

        public StatePhotoCapture() {
            this(false);
        }

        public StatePhotoCapture(boolean continuous) {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_PHOTO_CAPTURE;
            this.mContinuous = continuous;
            this.mIsMemoryErrorOccured = false;
            this.mIsNextCaptureRequired = false;
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_HIGHLIGHT_CAPTURED_SOUND_LEVEL, new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleOnShutterDone(Object... objects) {
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_CAPTURE_FEEDBACK, new Object[0]);
            PhotoSavingRequest request = (PhotoSavingRequest) objects[0];
            BlockingQueue<NativeByteBufferHolder> audioSamples = StateMachineController.this.mAudioSampleDataStore.get();
            this.mAudio = new AudioData(audioSamples, SoundPhotoConstants.SOUND_SAMPLE_RATE, 2, SoundPhotoConstants.SOUND_BIT_PER_SECONDS);
            StateMachineController.this.setOnSoundCaptureCompleteListener(this.mAudio);
            if (StateMachineController.this.mPreviewFrameStore.isPreviewFrameExist()) {
                PreviewFrameStore.FrameInfo frameInfo = StateMachineController.this.mPreviewFrameStore.getFrameInfo();
                this.mPreviewFrames = new PreviewFrameData(frameInfo.rect.width(), frameInfo.rect.height(), frameInfo.format, StateMachineController.this.mPreviewFrameStore.get());
            }
            if (!this.mContinuous) {
                StateMachineController.this.mViewFinder.onCaptureDone();
                synchronized (this) {
                    request.setRequestId(StateMachineController.this.mViewFinder.getRequestId(true));
                }
            } else {
                synchronized (this) {
                    request.setRequestId(StateMachineController.this.mViewFinder.getRequestId(false));
                }
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleKeyCaptureDown(Object... objects) {
            if (!StateMachineController.this.isAutoReviewEnabled() && StateMachineController.this.canCapture()) {
                this.mIsNextCaptureRequired = true;
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleCaptureButtonRelease(Object... objects) {
            if (!StateMachineController.this.isAutoReviewEnabled() && StateMachineController.this.canCapture()) {
                this.mIsNextCaptureRequired = true;
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleOnTakePictureDone(Object... objects) {
            PhotoSavingRequest request = (PhotoSavingRequest) objects[0];
            if (!this.mIsNextCaptureRequired) {
                StateMachineController.this.cancelAutoFocus(true);
                SoundPhotoContentsIntegrator.SoundPhotoContent content = StateMachineController.this.mContentsIntegrator.createContent(this.mAudio, this.mPreviewFrames, request);
                this.mAudio = null;
                this.mPreviewFrames = null;
                StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(true), new Object[0]);
                if (!this.mContinuous && StateMachineController.this.isAutoReviewEnabled()) {
                    StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_SHOW_AUTO_REVIEW, content);
                }
                content.store(StateMachineController.this.mActivity.getSavingTaskManager());
                StateMachineController.this.mSavingRequestList.add(request);
            } else {
                if (this.mIsMemoryErrorOccured) {
                    StateMachineController.this.mViewFinder.onCaptureDone();
                    StateMachineController.this.cancelAutoFocus(true);
                    StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(false), new Object[0]);
                    StateMachineController.this.changeTo(StateMachineController.this.new StateWarning(), new Object[0]);
                    if (this.mAudio != null) {
                        this.mAudio.clearSamples();
                        this.mAudio = null;
                    }
                    if (this.mPreviewFrames != null) {
                        this.mPreviewFrames.clear();
                        this.mPreviewFrames = null;
                        return;
                    }
                    return;
                }
                SoundPhotoContentsIntegrator.SoundPhotoContent content2 = StateMachineController.this.mContentsIntegrator.createContent(this.mAudio, this.mPreviewFrames, request);
                this.mAudio = null;
                this.mPreviewFrames = null;
                content2.store(StateMachineController.this.mActivity.getSavingTaskManager());
                StateMachineController.this.mSavingRequestList.add(request);
                if (StateMachineController.this.mCameraDeviceHandler.startPreview()) {
                    StateMachineController.this.doCapture();
                    StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoCapture(true), new Object[0]);
                } else {
                    return;
                }
            }
            if (!StateMachineController.this.isAutoReviewEnabled()) {
                StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_SET_EARLY_THUMBNAIL, ThumbnailUtil.createThumbnailViewFromJpeg(StateMachineController.this.mActivity, request.getImageData(), StateMachineController.this.mLastSavingRequest.common.orientation));
                StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION, Integer.valueOf(request.getRequestId()));
            }
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_NOTIFY_CAPTURE_DONE_TO_SOUND_LEVEL_INDICATOR, new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleStorageError(Object... objects) {
            this.mIsMemoryErrorOccured = true;
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleTouchContentProgressBar(Object... objects) {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePause(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StatePause(), objects);
            if (this.mAudio != null) {
                this.mAudio.clearSamples();
                this.mAudio = null;
            }
            if (this.mPreviewFrames != null) {
                this.mPreviewFrames.clear();
                this.mPreviewFrames = null;
            }
        }
    }

    class StatePhotoSelfTimerCountdown extends StatePhotoBase {
        private final ContdownFinishEvent mContdownFinishEvent;
        private final SelfTimerFeedback mFeedback;
        private final int mTimerDuration;

        public StatePhotoSelfTimerCountdown(int timerDuration) {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_PHOTO_SELFTIMER_COUNTDOWN;
            this.mTimerDuration = timerDuration;
            this.mFeedback = new SelfTimerFeedback(this.mTimerDuration, new LedLightImpl());
            this.mContdownFinishEvent = new ContdownFinishEvent();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void recoverFlash() {
            StateMachineController.this.sendStaticEvent(StateMachine.StaticEvent.EVENT_ON_SETTING_CHANGED, new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void entry() {
            StateMachineController.this.mHandler.postDelayed(this.mContdownFinishEvent, this.mTimerDuration);
            if (StateMachineController.this.mCameraDeviceHandler.getCameraId() == 0 && !Flash.OFF.equals(StateMachineController.this.mSettingPreferences.getCurrentPreference().flash.get())) {
                this.mFeedback.start(0);
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void exit() {
            this.mFeedback.stop();
            StateMachineController.this.mHandler.removeCallbacks(this.mContdownFinishEvent);
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_SELFTIMER_FINISH, new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleKeyFocusDown(Object... objects) {
            recoverFlash();
            if (StateMachineController.this.startAutoFocus()) {
                StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoAfSearch(), objects);
            } else {
                StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(false), new Object[0]);
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleScreenClear(Object... objects) {
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED, new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleKeyCaptureDown(Object... objects) {
            recoverFlash();
            if (StateMachineController.this.startAutoFocus()) {
                StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoCaptureWaitForAfDone(true), new Object[0]);
            } else {
                StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(false), new Object[0]);
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleCaptureButtonRelease(Object... objects) {
            recoverFlash();
            if (StateMachineController.this.startAutoFocus()) {
                StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoCaptureWaitForAfDone(false), new Object[0]);
            } else {
                StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(false), new Object[0]);
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleCaptureButtonCancel(Object... objects) {
            recoverFlash();
            StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(true), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleKeyBack(Object... objects) {
            recoverFlash();
            StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(true), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePause(Object... objects) {
            recoverFlash();
            StateMachineController.this.changeTo(StateMachineController.this.new StatePause(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleStorageError(Object... objects) {
            recoverFlash();
            StateMachineController.this.changeTo(StateMachineController.this.new StateWarning(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleOnFaceDetected(Object... objects) {
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_FACE_DETECTED, objects[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleSetFocusPosition(Object... objects) {
            mCameraDeviceHandler.setFocusPosition((PointF) objects[1]);
            mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_SELECTED, objects[0], objects[2]);
        }

        private class LedLightImpl implements LedLight {
            private LedLightImpl() {
            }

            @Override // com.sonyericsson.cameracommon.selftimerfeedback.LedLight
            public void turnOn() {
                mCameraDeviceHandler.setTorch(true);
            }

            @Override // com.sonyericsson.cameracommon.selftimerfeedback.LedLight
            public void turnOff() {
                mCameraDeviceHandler.setTorch(false);
            }
        }

        private class ContdownFinishEvent implements Runnable {
            private ContdownFinishEvent() {
            }

            @Override // java.lang.Runnable
            public void run() {
                StatePhotoSelfTimerCountdown.this.recoverFlash();
                if (StateMachineController.this.startAutoFocus()) {
                    StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoCaptureWaitForAfDone(true), new Object[0]);
                } else {
                    StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(true), new Object[0]);
                }
            }
        }
    }

    class StatePause extends StatePhotoBase {
        private static final String TAG = "StateMachine.StatePause";

        public StatePause() throws IllegalStateException {
            super();
            mCaptureState = StateMachine.CaptureState.STATE_PAUSE;
            StateMachineController.this.mCameraDeviceHandler.stopFaceDetection();
            StateMachineController.this.mCameraDeviceHandler.stopLiveViewFinder();
            try {
                StateMachineController.this.mAudioSampleDataStore.stopBuffering();
                if (StateMachineController.this.mViewFinder != null) {
                    StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_CLEAR_INDICATOR_PROGRESS, new Object[0]);
                }
            } catch (InterruptedException e) {
                CameraLogger.e(TAG, "Interrupted AudioSampleDataStore.stopBuffering()");
            }
            StateMachineController.this.mCameraDeviceHandler.stopPreviewFrameCapturing();
            StateMachineController.this.mPreviewFrameStore.clear();
            StateMachineController.this.mSettingPreferences.suspend();
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleResume(Object... objects) {
            Camera.Parameters params = StateMachineController.this.mCameraDeviceHandler.getLatestCachedParameters();
            if (params != null) {
                StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_CAMERA_MODE_CHANGED_TO, 1);
            }
            StateMachineController.this.changeTo(StateMachineController.this.new StateResume(), new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleFinalize(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StateFinalize(), objects);
        }

        public void handleRestartViewFinder(Object... objects) throws IOException {
            SurfaceHolder surface = (SurfaceHolder) objects[0];
            StateMachineController.this.mCameraDeviceHandler.startLiveViewFinder(surface);
            StateMachineController.this.mCameraDeviceHandler.startFaceDetection();
            CameraLogger.d(TAG, "handleOnEvfPrepared() X");
        }
    }

    class StateWarning extends StatePhotoBase {
        public StateWarning() throws IllegalStateException {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_WARNING;
            try {
                StateMachineController.this.mAudioSampleDataStore.stopBuffering();
                if (StateMachineController.this.mViewFinder != null) {
                    StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_CLEAR_INDICATOR_PROGRESS, new Object[0]);
                }
            } catch (InterruptedException e) {
                CameraLogger.e(StateMachineController.TAG, "Interrupted mAudioSampleDataStore.stopBuffering()");
            }
            StateMachineController.this.mContentsIntegrator.cancelAll();
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleCaptureButtonRelease(Object... objects) {
            StateMachineController.this.mViewFinder.onCaptureDone();
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleDialogOpened(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StatePhotoStandbyDialog(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleRequestSetupHeadUpDisplay(Object... objects) {
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePause(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StatePause(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleStorageMounted(Object... objects) {
            StateMachineController.this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_CLEAR_INDICATOR_PROGRESS, new Object[0]);
            StateMachineController.this.changeTo(StateMachineController.this.new StateStandby(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleStorageShouldChange(Object... objects) {
            StateMachineController.this.switchStorage();
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public boolean isSettingUiBeOpened() {
            return true;
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleOnSwitchCamera(Object... objects) {
            StateMachineController.this.switchCamera();
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleKeyZoomInDown(Object... objects) {
            StateMachineController.this.mActivity.getMessagePopup().showZoomHelpMessage(false);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleKeyZoomOutDown(Object... objects) {
            StateMachineController.this.mActivity.getMessagePopup().showZoomHelpMessage(false);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePrepareTouchZoom(Object... objects) {
            StateMachineController.this.mActivity.getMessagePopup().showZoomHelpMessage(false);
        }
    }

    class StateFinalize extends State {
        public StateFinalize() {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_FINALIZE;
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleRequestSetupHeadUpDisplay(Object... objects) {
        }
    }

    class StateCameraSwitching extends State {
        public StateCameraSwitching() {
            super();
            this.mCaptureState = StateMachine.CaptureState.STATE_CAMERA_SWITCHING;
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleOnEvfPrepared(Object... objects) {
            SurfaceHolder surface = (SurfaceHolder) objects[0];
            StateMachineController.this.onCameraSwitchingCompleted(surface);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handleOnEvfPreparationFailed(Object... objects) {
            CameraLogger.d(StateMachineController.TAG, "handleOnEvfPreparationFailed() E");
            StateMachineController.this.mCameraDeviceHandler.requestStartCameraOpen(StateMachineController.this.mActivity, StateMachineController.this.mSettingPreferences.getCurrentPreference().capturingMode.cameraId);
            CameraLogger.d(StateMachineController.TAG, "handleOnEvfPreparationFailed() X");
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public void handlePause(Object... objects) {
            StateMachineController.this.changeTo(StateMachineController.this.new StatePause(), objects);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.State
        public boolean canSelfTimerBeOpened() {
            return false;
        }
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine
    public synchronized void sendEvent(StateMachine.TransitterEvent transitter, Object... objects) {
        switch (transitter) {
            case EVENT_INITIALIZE:
                this.mCurrentState.handleInitialize(objects);
                break;
            case EVENT_RESUME:
                this.mCurrentState.handleResume(objects);
                break;
            case EVENT_RESUME_TIMEOUT:
                this.mCurrentState.handleResumeTimeout(objects);
                break;
            case EVENT_PAUSE:
                this.mCurrentState.handlePause(objects);
                break;
            case EVENT_FINALIZE:
                this.mCurrentState.handleFinalize(objects);
                break;
            case EVENT_ON_EVF_PREPARED:
                this.mCurrentState.handleOnEvfPrepared(objects);
                break;
            case EVENT_ON_EVF_PREPARATION_FAILED:
                this.mCurrentState.handleOnEvfPreparationFailed(objects);
                break;
            case EVENT_ON_AUTO_FOCUS_DONE:
                this.mCurrentState.handleOnAutoFocusDone(objects);
                break;
            case EVENT_ON_SHUTTER_DONE:
                this.mCurrentState.handleOnShutterDone(objects);
                break;
            case EVENT_ON_TAKE_PICTURE_DONE:
                this.mCurrentState.handleOnTakePictureDone(objects);
                break;
            case EVENT_TOUCH_CONTENT_PROGRESS_BAR:
                this.mCurrentState.handleTouchContentProgressBar(new Object[0]);
                break;
            case EVENT_ON_STORE_REQUESTED:
                this.mCurrentState.handleOnStoreRequested(objects);
                break;
            case EVENT_ON_STORE_COMPLETED:
                this.mCurrentState.handleOnStoreCompleted(objects);
                break;
            case EVENT_ON_SOUND_CAPTURE_COMPLETED:
                this.mCurrentState.handleOnSoundCaptureCompleted(objects);
                break;
            case EVENT_REQUEST_RESET_CAPTURED_AUDIO_SAMPLE_DATA:
                this.mCurrentState.handleOnRequestResetAudioSampleData(objects);
                break;
            case EVENT_KEY_FOCUS_DOWN:
                this.mCurrentState.handleKeyFocusDown(objects);
                break;
            case EVENT_KEY_FOCUS_UP:
                this.mCurrentState.handleKeyFocusUp(objects);
                break;
            case EVENT_KEY_CAPTURE_DOWN:
                this.mCurrentState.handleKeyCaptureDown(objects);
                break;
            case EVENT_KEY_CAPTURE_UP:
                this.mCurrentState.handleKeyCaptureUp(objects);
                break;
            case EVENT_KEY_ZOOM_IN_DOWN:
                this.mCurrentState.handleKeyZoomInDown(objects);
                break;
            case EVENT_KEY_ZOOM_OUT_DOWN:
                this.mCurrentState.handleKeyZoomOutDown(objects);
                break;
            case EVENT_KEY_ZOOM_UP:
                this.mCurrentState.handleKeyZoomUp(objects);
                break;
            case EVENT_KEY_MENU:
                this.mCurrentState.handleKeyMenu(objects);
                break;
            case EVENT_KEY_BACK:
                this.mCurrentState.handleKeyBack(objects);
                break;
            case EVENT_PREPARE_TOUCH_ZOOM:
                this.mCurrentState.handlePrepareTouchZoom(objects);
                break;
            case EVENT_ON_PREPARE_TOUCH_ZOOM_TIMEOUTED:
                this.mCurrentState.handleOnPrepareTouchZoomTimeouted(objects);
                break;
            case EVENT_START_TOUCH_ZOOM:
                this.mCurrentState.handleStartTouchZoom(objects);
                break;
            case EVENT_STOP_TOUCH_ZOOM:
                this.mCurrentState.handleStopTouchZoom(objects);
                break;
            case EVENT_CANCEL_TOUCH_ZOOM:
                this.mCurrentState.handleCancelTouchZoom(objects);
                break;
            case EVENT_CAPTURE_BUTTON_TOUCH:
                this.mCurrentState.handleCaptureButtonTouch(objects);
                break;
            case EVENT_CAPTURE_BUTTON_RELEASE:
                this.mCurrentState.handleCaptureButtonRelease(objects);
                break;
            case EVENT_CAPTURE_BUTTON_CANCEL:
                this.mCurrentState.handleCaptureButtonCancel(objects);
                break;
            case EVENT_SCREEN_CLEAR:
                this.mCurrentState.handleScreenClear(objects);
                break;
            case EVENT_START_AF_SEARCH_IN_TOUCH:
                this.mCurrentState.handleStartAfSearchInTouch(objects);
                break;
            case EVENT_START_AF_SEARCH_IN_TOUCH_STOP:
                this.mCurrentState.handleStartAfSearchInTouchStop(objects);
                break;
            case EVENT_DIALOG_OPENED:
                this.mCurrentState.handleDialogOpened(objects);
                break;
            case EVENT_DIALOG_CLOSED:
                this.mCurrentState.handleDialogClosed(objects);
                break;
            case EVENT_STORAGE_ERROR:
                this.mCurrentState.handleStorageError(objects);
                break;
            case EVENT_STORAGE_MOUNTED:
                this.mCurrentState.handleStorageMounted(objects);
                break;
            case EVENT_STORAGE_SHOULD_CHANGE:
                this.mCurrentState.handleStorageShouldChange(objects);
                break;
            case EVENT_SET_FOCUS_POSITION:
                this.mCurrentState.handleSetFocusPosition(objects);
                break;
            case EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:
                this.mCurrentState.handleRequestSetupHeadUpDisplay(objects);
                break;
            case EVENT_ON_PREVIEW_FRAME_UPDATED:
                this.mCurrentState.handleOnPreviewFrameUpdated(objects);
                break;
            case EVENT_ON_PREVIEW_FRAME:
                this.mCurrentState.handleOnPreviewFrame(objects);
                break;
            case EVENT_ON_SWITCH_CAMERA:
                this.mCurrentState.handleOnSwitchCamera(objects);
                break;
        }
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine
    public synchronized void sendStaticEvent(StateMachine.StaticEvent staticEvent, Object... objects) {
        switch (staticEvent) {
            case EVENT_ON_PHOTO_STACK_INITIALIZED:
                this.mContentsViewController = (ContentsViewController) objects[0];
                break;
            case EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:
                calculateRemainStorage(true, true);
                break;
            case EVENT_ON_FACE_DETECTED:
                this.mCurrentState.handleOnFaceDetected(objects);
                break;
            case EVENT_ON_ZOOM_CHANGED:
                int zoomValue = ((Integer) objects[0]).intValue();
                boolean stopped = ((Boolean) objects[1]).booleanValue();
                Camera camera = (Camera) objects[2];
                onZoomChange(zoomValue, stopped, camera);
                break;
            case EVENT_ON_ORIENTATION_CHANGED:
                this.mCurrentState.handleOnOrientationChanged(objects);
                break;
            case EVENT_ON_RECORD_PROGRESS_UPDATED:
                this.mCurrentState.handleOnRecordProgressUpdated(objects);
                break;
            case EVENT_ON_SETTING_CHANGED:
                this.mSettingPreferences.getCurrentPreference().apply(this.mCameraDeviceHandler, false);
                break;
            case EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:
                this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_LAZY_INITIALIZATION_TASK_RUN, new Object[0]);
                break;
            case EVENT_ON_DEVICE_ERROR:
                StateMachine.ErrorCode error = (StateMachine.ErrorCode) objects[0];
                Exception exception = (Exception) objects[1];
                onDeviceError(error, exception);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void changeTo(State nextState, Object... objects) {
        this.mCurrentState.exit();
        this.mCurrentState = nextState;
        for (StateMachine.OnStateChangedListener listener : this.mOnStateChangedListenerSet) {
            listener.onStateChanged(this.mCurrentState.getCaptureState(), objects);
        }
        this.mCurrentState.entry();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean startAutoFocus() {
        if (this.mActivity != null && (!this.mActivity.updateRemain() || !canCapture())) {
            return false;
        }
        this.mCameraDeviceHandler.autoFocus();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelAutoFocus(boolean isResetFocusModeNecessary) {
        if (isResetFocusModeNecessary) {
            this.mCameraDeviceHandler.resetFocusMode();
        }
        this.mCameraDeviceHandler.cancelAutoFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doCapture() {
        this.mLastSavingRequest = createPhotoSavingRequest(SavingTaskManager.SavedFileType.PHOTO);
        if (this.mLastSavingRequest != null) {
            this.mCameraDeviceHandler.applySavingRequest(this.mLastSavingRequest, this.mCameraDeviceHandler.getLatestCachedParameters());
            this.mCameraDeviceHandler.takePicture(this.mLastSavingRequest);
        }
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine
    public synchronized boolean canSettingUiBeOpened() {
        return this.mCurrentState.isSettingUiBeOpened();
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine
    public synchronized boolean canModeSelectorBeOpened() {
        return mCurrentState.isSettingUiBeOpened();
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine
    public synchronized boolean canSelfTimerBeOpened() {
        return this.mCurrentState.canSelfTimerBeOpened();
    }

    private class ErrorDialogListener implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener {
        private ErrorDialogListener() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface arg0) {
            StateMachineController.this.mActivity.abort(true);
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface arg0, int arg1) {
            StateMachineController.this.mActivity.abort(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showRecordingErrorDialog() {
        changeTo(new StateWarning(), new Object[0]);
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.2
            @Override // java.lang.Runnable
            public void run() {
                ErrorDialogListener listener = new ErrorDialogListener();
                StateMachineController.this.mActivity.getMessagePopup().showOk(R.string.cam_strings_error_capture_txt, R.string.cam_strings_error_dialog_title_txt, false, R.string.cam_strings_ok_txt, listener, listener);
            }
        });
    }

    private int getOrientation() {
        int degree = this.mActivity.getSensorOrientationDegree();
        int sensorOrientation = RotationUtil.getNormalizedRotation(degree);
        Camera.CameraInfo info = new Camera.CameraInfo();
        Camera.getCameraInfo(this.mSettingPreferences.getCurrentPreference().capturingMode.cameraId, info);
        if (info.facing == 1) {
            int orientation = ((info.orientation + 360) - sensorOrientation) % 360;
            return orientation;
        }
        int orientation2 = (info.orientation + sensorOrientation) % 360;
        return orientation2;
    }

    private PhotoSavingRequest createPhotoSavingRequest(SavingTaskManager.SavedFileType savedFileType) {
        TakenStatusPhoto.Facing facing;
        long takenTimeMillis = System.currentTimeMillis();
        int orientation = getOrientation();
        Location location = this.mActivity.getGeoTagManager().getCurrentLocation();
        Rect pictureRect = this.mCameraDeviceHandler.getPictureRect();
        if (pictureRect == null) {
            return null;
        }
        if (this.mSettingPreferences.getCurrentPreference().capturingMode == CapturingMode.FRONT) {
            facing = TakenStatusPhoto.Facing.FRONT;
        } else {
            facing = TakenStatusPhoto.Facing.BACK;
        }
        PhotoSavingRequest savingRequest = new PhotoSavingRequest(new TakenStatusCommon(takenTimeMillis, orientation, location, pictureRect.width(), pictureRect.height(), MediaSavingConstants.MEDIA_TYPE_JPEG_MIME, MediaSavingConstants.MEDIA_TYPE_JPEG_EXT, savedFileType, null, "", true, isSuperResolutionZoom()), new TakenStatusPhoto(facing));
        savingRequest.addCallback(this);
        return savingRequest;
    }

    public void onShutterDone(PhotoSavingRequest savingRequest) {
        this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_CAPTURE_FEEDBACK, new Object[0]);
        sendEvent(StateMachine.TransitterEvent.EVENT_ON_SHUTTER_DONE, savingRequest);
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest.StoreDataCallback
    public void onStoreComplete(StoreDataResult result) {
        sendEvent(StateMachine.TransitterEvent.EVENT_ON_STORE_COMPLETED, result);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doStoreComplete(StoreDataResult result) {
        final int requestId = result.savingRequest.getRequestId();
        final boolean resultCode = result.isSuccess();
        final Uri originalUri = result.uri;
        this.mActivity.getStorageManager().updateRemain(0L, false);
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.3
            @Override // java.lang.Runnable
            public void run() {
                if (!resultCode && StateMachineController.this.mActivity.getStorageManager().isCurrentStorageExternal() && !StorageUtil.isSDCardWritable(StateMachineController.this.mActivity)) {
                    StateMachineController.this.mActivity.getMessagePopup().showSdCardCorruptedErrorPhoto();
                }
                synchronized (StateMachineController.this) {
                    if (StateMachineController.this.mContentsViewController != null) {
                        if (requestId == -1 || !resultCode) {
                            StateMachineController.this.mContentsViewController.reload();
                        } else {
                            StateMachineController.this.mContentsViewController.addContent(requestId, originalUri);
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doZoomIn() {
        this.mCameraDeviceHandler.startSmoothZoom(this.mCameraDeviceHandler.getMaxZoom());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doZoomOut() {
        this.mCameraDeviceHandler.startSmoothZoom(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doStopZoom() {
        this.mCameraDeviceHandler.stopSmoothZoom();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doZoom(int startZoomValue, float scaleLength) {
        int currentZoom = this.mCameraDeviceHandler.getLatestCachedParameters().getZoom();
        int zoomMax = this.mCameraDeviceHandler.getMaxZoom();
        if (scaleLength <= 0.0f || currentZoom != zoomMax || startZoomValue >= zoomMax) {
            this.mCurrentZoomLength = ZoomController.getZoomValue(currentZoom, scaleLength);
            if (this.mCurrentZoomLength < 0.0f) {
                this.mCurrentZoomLength = 0.0f;
            } else if (this.mCurrentZoomLength > zoomMax) {
                this.mCurrentZoomLength = zoomMax;
            }
            this.mCameraDeviceHandler.startSmoothZoom(Math.round(this.mCurrentZoomLength));
        }
    }

    private void onZoomChange(int zoomValue, boolean stopped, Camera camera) {
        this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_ZOOM_CHANGED, Integer.valueOf(zoomValue));
    }

    private void onDeviceError(StateMachine.ErrorCode error, Exception exception) {
        switch (error) {
            case ERROR_ON_START_PREVIEW:
                PowerManager pm = (PowerManager) this.mActivity.getSystemService("power");
                if (pm.isScreenOn()) {
                    CameraLogger.e(TAG, "onDeviceError(): [Screen backlight is ON.");
                    showCameraNotAvailableError();
                    break;
                } else {
                    this.mActivity.finishUrgently();
                    break;
                }
        }
    }

    private void calculateRemainStorage(boolean updateUi, boolean notify) {
        if (this.mCameraDeviceHandler != null && this.mViewFinder != null && this.mCameraDeviceHandler.getPictureRect() != null) {
            long capacity = this.mActivity.getStorageManager().updateRemain(0L, notify);
            if (updateUi) {
                if (capacity > 153600) {
                    this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_HIDE_REMAIN_INDICATOR, new Object[0]);
                } else {
                    this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_REQUEST_SHOW_REMAIN_INDICATOR, new Object[0]);
                }
            }
            if (capacity <= 61440) {
                this.mHandler.post(new Runnable() { // from class: com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.4
                    @Override // java.lang.Runnable
                    public void run() {
                        StateMachineController.this.sendEvent(StateMachine.TransitterEvent.EVENT_STORAGE_ERROR, new Object[0]);
                        if (StateMachineController.this.mActivity != null) {
                            StateMachineController.this.mActivity.disableAutoOffTimer();
                        }
                    }
                });
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.StorageController.StorageListener
    public synchronized void onStorageStateChanged(StorageUtil.CameraStorageType storage) {
        if (this.mActivity != null) {
            this.mActivity.getCommonSettings().setSelectability(CommonSettingKey.SAVE_DESTINATION, this.mActivity.getStorageManager().isToggledStorageReady());
            if (!this.mActivity.getStorageManager().isReady()) {
                sendEvent(StateMachine.TransitterEvent.EVENT_STORAGE_ERROR, new Object[0]);
                this.mActivity.disableAutoOffTimer();
            } else {
                sendEvent(StateMachine.TransitterEvent.EVENT_STORAGE_MOUNTED, new Object[0]);
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.StorageController.StorageListener
    public synchronized void onDestinationToSaveChanged() {
        if (this.mActivity.getStorageManager().isReady()) {
            sendEvent(StateMachine.TransitterEvent.EVENT_STORAGE_MOUNTED, new Object[0]);
        } else {
            sendEvent(StateMachine.TransitterEvent.EVENT_STORAGE_ERROR, new Object[0]);
        }
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.StorageController.StorageListener
    public void onAvailableSizeUpdated(long available) {
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.contents.AudioSampleDataStore.OnBufferPositionUpdateListener
    public void onBufferPositionUpdated(final int milliSec, final int volume) {
        this.mHandler.post(new Runnable() { // from class: com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.5
            @Override // java.lang.Runnable
            public void run() {
                StateMachineController.this.sendStaticEvent(StateMachine.StaticEvent.EVENT_ON_RECORD_PROGRESS_UPDATED, Integer.valueOf(milliSec), Integer.valueOf(volume));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnSoundCaptureCompleteListener(AudioData audioData) {
        if (audioData != null) {
            audioData.setOnAudioCaptureFinishedListener(this);
        }
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.contents.AudioData.OnAudioCaptureFinishedListener
    public void onAudioCaptureFinished(final AudioData sender, final ByteBuffer audioData) {
        sender.setOnAudioCaptureFinishedListener(null);
        this.mHandler.post(new Runnable() { // from class: com.sonymobile.android.addoncamera.soundphoto.controller.StateMachineController.6
            @Override // java.lang.Runnable
            public void run() {
                StateMachineController.this.sendEvent(StateMachine.TransitterEvent.EVENT_ON_SOUND_CAPTURE_COMPLETED, sender, audioData);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSensorOrientation() {
        BaseActivity.LayoutOrientation sesorOrientation = this.mActivity.getLastDetectedOrientation();
        if (sesorOrientation == BaseActivity.LayoutOrientation.Portrait) {
            return 1;
        }
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCameraNotAvailableError() {
        if (this.mCameraDeviceHandler.isCameraDisabled()) {
            this.mActivity.getMessagePopup().showCameraDisabledMessage();
        } else {
            this.mActivity.getMessagePopup().showDeviceErrorMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchStorage() {
        if (this.mActivity != null) {
            CommonSettingValue current = this.mActivity.getCommonSettings().get(CommonSettingKey.SAVE_DESTINATION);
            if (current == SaveDestination.SDCARD) {
                this.mActivity.getCommonSettings().set(SaveDestination.EMMC);
                this.mActivity.getStorageManager().setCurrentStorage(StorageUtil.CameraStorageType.INTERNAL);
            } else {
                this.mActivity.getCommonSettings().set(SaveDestination.SDCARD);
                this.mActivity.getStorageManager().setCurrentStorage(StorageUtil.CameraStorageType.EXTERNAL_CARD);
            }
            this.mActivity.getStorageManager().requestCheckAll();
        }
    }

    private boolean isSuperResolutionZoom() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAutoReviewEnabled() {
        return this.mSettingPreferences.getCurrentPreference().autoReview.get() != AutoReview.OFF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSelfTimerEnable() {
        return this.mSettingPreferences.getCurrentPreference().selfTimer.get() != SelfTimer.OFF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean canCapture() {
        return this.mActivity.getSavingTaskManager().canPushStoreTask() && this.mContentsIntegrator.canCreateNewContent();
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine
    public void onDeviceOpened(Camera.Parameters cameraParams, CapturingMode mode) {
        this.mSettingPreferences.initialize(mode, cameraParams);
        this.mSettingPreferences.changeCapturingMode(mode);
        this.mSettingPreferences.getCurrentPreference().apply(this.mCameraDeviceHandler, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCameraSwitchingCompleted(SurfaceHolder surface) throws IllegalStateException {
        if (this.mCameraDeviceHandler.isImmediateReleaseRequested()) {
            CameraLogger.errorLogForNonUserVariant(TAG, "[CameraNotAvailable] request to release camera device.");
            moveToCameraNotAvailable();
            return;
        }
        if (!this.mCameraDeviceHandler.waitForCameraInitialization()) {
            this.mCameraDeviceHandler.requestStartCameraOpen(this.mActivity, this.mNextCapturingMode.cameraId);
            if (!this.mCameraDeviceHandler.waitForCameraInitialization()) {
                this.mActivity.getMessagePopup().showErrorUncancelable(R.string.cam_strings_error_device_not_available_txt, R.string.cam_strings_error_dialog_title_txt, false);
                changeTo(new StateWarning(), new Object[0]);
                return;
            }
        }
        this.mCameraDeviceHandler.startLiveViewFinder(surface);
        Rect previewRect = this.mCameraDeviceHandler.getPreviewRect();
        if (previewRect == null) {
            CameraLogger.errorLogForNonUserVariant(TAG, "[CameraNotAvailable] Camera device is released.");
            moveToCameraNotAvailable();
            return;
        }
        Rect surfaceRect = LayoutDependencyResolver.getSurfaceViewRect(this.mActivity, previewRect.width() / previewRect.height(), this.mActivity.getScreenAspect());
        PositionConverter.getInstance().init(false, surfaceRect, previewRect);
        PositionConverter.getInstance().setSurfaceSize(surfaceRect.width(), surfaceRect.height());
        PositionConverter.getInstance().setPreviewSize(previewRect.width(), previewRect.height());
        this.mActivity.requestPostLazyInitializationTaskExecute();
        this.mAudioSampleDataStore.startBuffering();
        this.mCameraDeviceHandler.startPreviewFrameCapturing();
        this.mAudioSampleDataStore.setBufferPositionUpdateListener(this);
        changeTo(new StateStandby(true), new Object[0]);
    }

    private void moveToCameraNotAvailable() {
        showCameraNotAvailableError();
        changeTo(new StateWarning(), new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchCamera() {
        CapturingMode nextMode;
        CapturingMode currentMode = this.mSettingPreferences.getCurrentPreference().capturingMode;
        switch (currentMode) {
            case FRONT:
                nextMode = CapturingMode.MAIN;
                break;
            case MAIN:
                nextMode = CapturingMode.FRONT;
                break;
            default:
                nextMode = CapturingMode.MAIN;
                break;
        }
        changeTo(new StateCameraSwitching(), new Object[0]);
        this.mNextCapturingMode = nextMode;
        this.mCameraDeviceHandler.releaseCameraInstance();
        this.mSettingPreferences.changeCapturingMode(nextMode);
        if (!this.mCameraDeviceHandler.isOpenDeviceThreadAlive()) {
            this.mCameraDeviceHandler.requestStartCameraOpen(this.mActivity, this.mNextCapturingMode.cameraId);
        }
        this.mViewFinder.checkSurfaceSize();
        this.mSettingPreferences.changeCapturingMode(nextMode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSmoothZoomEnabled() {
        return this.mSettingPreferences.getCurrentPreference().capturingMode != CapturingMode.FRONT;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine
    public synchronized StateMachine.CaptureState getCurrentCaptureState() {
        return this.mCurrentState.getCaptureState();
    }
}
