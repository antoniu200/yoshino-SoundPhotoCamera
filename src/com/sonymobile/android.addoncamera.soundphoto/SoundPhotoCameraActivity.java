package com.sonymobile.android.addoncamera.soundphoto;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.KeyEvent;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.activity.BaseExtendedActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.values.SaveDestination;
import com.sonyericsson.cameracommon.commonsetting.values.TouchCapture;
import com.sonyericsson.cameracommon.constants.CommonConstants;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.sound.CameraActionSound;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import com.sonyericsson.cameracommon.utility.PresetConfigurationResolver;
import com.sonyericsson.cameracommon.utility.StaticConfigurationUtil;
import com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine;
import com.sonymobile.android.addoncamera.soundphoto.provider.SoundPhotoSettingsProvider;
import com.sonymobile.android.addoncamera.soundphoto.setting.CapturingMode;
import com.sonymobile.android.addoncamera.soundphoto.setting.Parameters;
import com.sonymobile.android.addoncamera.soundphoto.setting.SettingPreferenceManager;
import com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class SoundPhotoCameraActivity extends BaseExtendedActivity implements DialogInterface.OnCancelListener {
    public static final int AUTO_OFF_TIME_OUT_DURATION = 180000;
    public static final String CAPTURING_MODE_NAME = "capturing_mode_soundphoto";
    private static final int RECORDING_SOUND_DURATION_MILLIS = 700;
    public static final int SETUP_DEVICE_SETUP_WAIT_TIME = 100;
    public static final int SETUP_LAZY_EXECUTION_WAIT_TIME = 200;
    public static final String SHARED_PREFERENCE_NAME = "com.sonymobile.android.addoncamera.soundphoto_sharedprefs";
    static final String SHARED_PREFERENCE_VERSION = "0.0.0";
    public static final String SHARED_PREFS_KEY_ACCEPT_DISCLAIMER = "ACCEPT_DISCLAIMER";
    private static String TAG = SoundPhotoCameraActivity.class.getSimpleName();
    private static boolean mIsLaunchNotified = false;
    private static ExecutorService mLaunchAndFinishNotifyerService = Executors.newSingleThreadExecutor();
    private CameraActionSound mCameraActionSound;
    private CameraDeviceHandler mCameraDeviceHandler;
    private KeyEventTranslator mKeyEventTranslator;
    private Handler mPostEventHandler;
    private SettingPreferenceManager mSettingPreferences;
    private SoundPhotoParamSharedPrefWrapper mSharedPrefs;
    private StateMachine mStateMachine;
    private SoundPhotoViewFinder mViewFinder;
    private boolean mIsSetContentView = false;
    private final Map<String, String> mSaveSettingMap = new HashMap();
    private boolean mHasDisclaimerAccepted = false;
    private final String[] REQUESTED_PERMISSIONS = {"android.permission.CAMERA", "android.permission.RECORD_AUDIO", "android.permission.WRITE_EXTERNAL_STORAGE"};
    private ForceExitRequestReceiver mForceExitRequestReceiver = null;

    private static void logPerformance(String event) {
        Log.e("TraceLog", "[PERFORMANCE] [TIME = " + System.currentTimeMillis() + "] [" + TAG + "] [" + Thread.currentThread().getName() + " : " + event + "]");
    }

    @Override // com.sonyericsson.cameracommon.systemmonitor.ThermalAlertReceiver.ThermalAlertReceiverListener
    public void onReachHighTemperature(boolean isOnStartup) {
        if (this.mStateMachine != null) {
            this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_PAUSE, new Object[0]);
        }
        if (this.mCameraDeviceHandler != null) {
            this.mCameraDeviceHandler.releaseCameraInstance();
            this.mCameraDeviceHandler.setStateMachine(null);
            this.mCameraDeviceHandler = null;
        } else {
            CameraDeviceHandler.getInstance().releaseCameraInstance();
        }
    }

    @Override // com.sonyericsson.cameracommon.systemmonitor.ThermalAlertReceiver.ThermalAlertReceiverListener
    public void onNotifyThermalNormal() {
        if (this.mViewFinder != null) {
            this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_NOTIFY_THERMAL_NORMAL, new Object[0]);
        }
    }

    @Override // com.sonyericsson.cameracommon.systemmonitor.ThermalAlertReceiver.ThermalAlertReceiverListener
    public void onNotifyThermalWarning(boolean isOnStartup) {
        if (this.mViewFinder != null) {
            this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_NOTIFY_THERMAL_WARNING, new Object[0]);
        }
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseExtendedActivity, com.sonyericsson.cameracommon.activity.TerminateListener
    public void terminateApplication() {
        finish();
    }

    public SoundPhotoCameraActivity() {
        CameraLogger.setAppName("SoundPhotoCamera");
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration config) {
        super.onConfigurationChanged(config);
        if (config.orientation == 2 && this.mViewFinder != null && !this.mIsSetContentView) {
            this.mViewFinder.setContentView();
            this.mIsSetContentView = true;
        }
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseExtendedActivity, com.sonyericsson.cameracommon.activity.BaseActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STARTUP_TIME, true);
        logLifeCycleIn(TAG, BaseActivity.LifeCycleIds.ON_CREATE);
        super.onCreate(null);
        this.mThermalAlertReceiver.onCreate();
        setUpAll();
        registerForceExitRequestReceiver();
        logLifeCycleOut(TAG, BaseActivity.LifeCycleIds.ON_CREATE);
    }

    private void setUpAll() {
        setupCoreInstance();
        this.mStorageController = new StorageController(this.mViewFinder);
        this.mMessagePopup.setStorageDialogStateListener(this.mViewFinder);
        this.mStorageController.setMessegePopup(this.mMessagePopup);
        this.mStorageManager = new CameraStorageManager(this, this.mStorageController);
        if (getResources().getConfiguration().orientation == 2 && !this.mIsSetContentView) {
            this.mViewFinder.setContentView();
            this.mIsSetContentView = true;
        }
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_INITIALIZE, new Object[0]);
        this.mSavingTaskManager = new SavingTaskManager(this, this.mStorageManager, isOneShot());
        this.mGeotagManager = new GeotagManager(this);
        this.mPostEventHandler = new Handler();
        this.mStorageManager.addStorageListener(this.mStateMachine);
        this.mKeyEventTranslator = new KeyEventTranslator(getCommonSettings());
    }

    private void setupCoreInstance() {
        this.mSharedPrefs = new SoundPhotoParamSharedPrefWrapper(this, SHARED_PREFERENCE_NAME, "0.0.0");
        checkFirmwareVersionUpdated();
        this.mSettingPreferences = new SettingPreferenceManager(this.mSharedPrefs);
        this.mStateMachine = StateMachine.Factory.newInstance(this, this.mSettingPreferences);
        this.mViewFinder = SoundPhotoViewFinder.Factory.newInstance(this, this.mSettingPreferences);
        this.mStateMachine.setCameraDevice(CameraDeviceHandler.getInstance());
        this.mStateMachine.setViewFinder(this.mViewFinder);
        this.mViewFinder.setStateMachine(this.mStateMachine);
        this.mViewFinder.setCameraDevice(CameraDeviceHandler.getInstance());
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseExtendedActivity, android.app.Activity
    public void onStart() {
        logLifeCycleIn(TAG, BaseActivity.LifeCycleIds.ON_START);
        super.onStart();
        logLifeCycleOut(TAG, BaseActivity.LifeCycleIds.ON_START);
    }

    @Override // android.app.Activity
    public void onRestart() {
        logLifeCycleIn(TAG, BaseActivity.LifeCycleIds.ON_RESTART);
        super.onRestart();
        logLifeCycleOut(TAG, BaseActivity.LifeCycleIds.ON_RESTART);
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseExtendedActivity, com.sonyericsson.cameracommon.activity.BaseActivity
    public void onResumeTasks() {
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STARTUP_TIME, true);
        logLifeCycleIn(TAG, BaseActivity.LifeCycleIds.ON_RESUME);
        super.onResumeTasks();
        this.mStorageManager.resume(false);
        if (this.mViewFinder.getOrientation() == 2) {
            setLayoutOrientation(BaseActivity.LayoutOrientation.Landscape);
        } else {
            setLayoutOrientation(BaseActivity.LayoutOrientation.Portrait);
        }
        if (this.mPostEventHandler == null) {
            this.mPostEventHandler = new Handler();
        }
        this.mCameraActionSound = new CameraActionSound(this.mPostEventHandler);
        this.mCameraActionSound.load(2);
        this.mThermalAlertReceiver.onResume();
        if (isSdPermissionFinished() && this.mStorageController.getStorageState(StorageUtil.CameraStorageType.EXTERNAL_CARD) != StorageController.StorageState.UNGRANTED) {
            resetSdPermissionFinished();
            getCommonSettings().set(SaveDestination.SDCARD);
        }
        loadDestinationToSave();
        this.mGeotagManager.initGeotag(this);
        this.mViewFinder.startInflateTask();
        logLifeCycleOut(TAG, BaseActivity.LifeCycleIds.ON_RESUME);
    }

    private void loadDestinationToSave() {
        SaveDestination dst = (SaveDestination) getCommonSettings().get(CommonSettingKey.SAVE_DESTINATION);
        switch (dst) {
            case EMMC:
                this.mStorageManager.setCurrentStorage(StorageUtil.CameraStorageType.INTERNAL);
                break;
            case SDCARD:
                this.mStorageManager.setCurrentStorage(StorageUtil.CameraStorageType.EXTERNAL_CARD);
                break;
        }
    }

    public void setDestinationToSave(SaveDestination dstTo) {
        switch (dstTo) {
            case EMMC:
                this.mStorageManager.setCurrentStorage(StorageUtil.CameraStorageType.INTERNAL);
                break;
            case SDCARD:
                this.mStorageManager.setCurrentStorage(StorageUtil.CameraStorageType.EXTERNAL_CARD);
                break;
        }
        this.mStorageManager.requestCheckAll();
        getCommonSettings().set(dstTo);
        getCommonSettings().setSelectability(CommonSettingKey.SAVE_DESTINATION, getStorageManager().isToggledStorageReady());
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity
    public void resumeAll() {
        if (!StaticConfigurationUtil.isForceSound()) {
            pauseAudioPlayback();
        }
        mIsLaunchNotified = false;
        this.mCameraDeviceHandler = CameraDeviceHandler.getInstance();
        this.mCameraDeviceHandler.setActivityForeground(true);
        this.mCameraDeviceHandler.initialize();
        this.mCameraDeviceHandler.setErrorCallback(new CameraErrorCallbackImpl());
        this.mCameraDeviceHandler.setStateMachine(this.mStateMachine);
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_RESUME, new Object[0]);
        CapturingMode capturingMode = this.mSettingPreferences.getCurrentPreference().capturingMode;
        this.mCameraDeviceHandler.requestStartCameraOpen(this, capturingMode.cameraId);
        enableOrientation();
        keepScreenOn();
        this.mSavingTaskManager.onResume();
        checkAndRequestSelfPermissions(12, this.REQUESTED_PERMISSIONS);
    }

    public void requestPostLazyInitializationTaskExecute() {
        postEvent(new PostDeviceInitializationTask(this));
    }

    public void postEvent(Runnable runnable) {
        if (this.mPostEventHandler != null) {
            this.mPostEventHandler.post(runnable);
        }
    }

    public void postDelayedEvent(Runnable runnable, long delayTime) {
        if (this.mPostEventHandler != null) {
            this.mPostEventHandler.postDelayed(runnable, delayTime);
        }
    }

    public void cancelDelayedEvent(Runnable runnable) {
        if (this.mPostEventHandler != null) {
            this.mPostEventHandler.removeCallbacks(runnable);
        }
    }

    class LazyInitializationTask implements Runnable {
        private final SoundPhotoCameraActivity mActivity;

        LazyInitializationTask(SoundPhotoCameraActivity activity) {
            this.mActivity = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SoundPhotoCameraActivity.this.mStateMachine != null && SoundPhotoCameraActivity.this.mCameraDeviceHandler != null && SoundPhotoCameraActivity.this.mViewFinder != null) {
                if (SoundPhotoCameraActivity.this.mStateMachine.canCurrentStateHandleAsynchronizedTask()) {
                    SoundPhotoCameraActivity.this.mStateMachine.sendStaticEvent(StateMachine.StaticEvent.EVENT_ON_LAZY_INITIALIZATION_TASK_RUN, new Object[0]);
                    return;
                } else {
                    retry();
                    return;
                }
            }
            retry();
        }

        private void retry() {
            if (SoundPhotoCameraActivity.this.mPostEventHandler != null) {
                SoundPhotoCameraActivity.this.postDelayedEvent(SoundPhotoCameraActivity.this.new LazyInitializationTask(this.mActivity), 200L);
            }
        }
    }

    class PostDeviceInitializationTask implements Runnable {
        private final SoundPhotoCameraActivity mActivity;

        PostDeviceInitializationTask(SoundPhotoCameraActivity activity) {
            this.mActivity = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SoundPhotoCameraActivity.this.mStateMachine != null && SoundPhotoCameraActivity.this.mCameraDeviceHandler != null && SoundPhotoCameraActivity.this.mViewFinder != null) {
                if (SoundPhotoCameraActivity.this.mStateMachine.canCurrentStateHandleAsynchronizedTask()) {
                    SoundPhotoCameraActivity.this.mCameraDeviceHandler.prepareAdditionalFeatures(1, SoundPhotoCameraActivity.this);
                    SoundPhotoCameraActivity.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, new Object[0]);
                    if (SoundPhotoCameraActivity.this.mGeotagManager != null) {
                        SoundPhotoCameraActivity.this.mGeotagManager.setLocationAcquiredListener(SoundPhotoCameraActivity.this.mViewFinder);
                        SoundPhotoCameraActivity.this.mGeotagManager.notifyStatus();
                    }
                    SoundPhotoCameraActivity.this.postEvent(SoundPhotoCameraActivity.this.new LazyInitializationTask(this.mActivity));
                    return;
                }
                retry();
                return;
            }
            retry();
        }

        private void retry() {
            if (SoundPhotoCameraActivity.this.mPostEventHandler != null) {
                SoundPhotoCameraActivity.this.postDelayedEvent(SoundPhotoCameraActivity.this.new PostDeviceInitializationTask(this.mActivity), 100L);
            }
        }
    }

    public void requestSuspend() {
        finish();
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseExtendedActivity, com.sonyericsson.cameracommon.activity.BaseActivity
    public void onPauseTasks() {
        if (this.mCameraDeviceHandler != null) {
            this.mCameraDeviceHandler.setActivityForeground(false);
        }
        logLifeCycleIn(TAG, BaseActivity.LifeCycleIds.ON_PAUSE);
        notifyFinish();
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_PAUSE, new Object[0]);
        if (this.mCameraDeviceHandler != null) {
            this.mCameraDeviceHandler.releaseCameraInstance();
            this.mCameraDeviceHandler.setStateMachine(null);
            this.mCameraDeviceHandler = null;
        } else {
            CameraDeviceHandler.getInstance().releaseCameraInstance();
        }
        this.mThermalAlertReceiver.onPause();
        this.mGeotagManager.releaseResource();
        clearKeepScreenOn();
        this.mPostEventHandler = null;
        super.onPauseTasks();
        logLifeCycleOut(TAG, BaseActivity.LifeCycleIds.ON_PAUSE);
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseExtendedActivity, com.sonyericsson.cameracommon.activity.BaseActivity, android.app.Activity
    public void onStop() {
        logLifeCycleIn(TAG, BaseActivity.LifeCycleIds.ON_STOP);
        super.onStop();
        logLifeCycleOut(TAG, BaseActivity.LifeCycleIds.ON_STOP);
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseExtendedActivity, com.sonyericsson.cameracommon.activity.BaseActivity, android.app.Activity
    public void onDestroy() {
        logLifeCycleIn(TAG, BaseActivity.LifeCycleIds.ON_DESTROY);
        super.onDestroy();
        getDownAll();
        unregisterForceExitRequestReceiver();
        this.mThermalAlertReceiver.onDestroy();
        logLifeCycleOut(TAG, BaseActivity.LifeCycleIds.ON_DESTROY);
    }

    private void getDownAll() {
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_FINALIZE, new Object[0]);
        this.mStateMachine.setCameraDevice(null);
        this.mStateMachine.setViewFinder(null);
        this.mStorageManager.removeStorageListener(this.mStateMachine);
        this.mViewFinder.setStateMachine(null);
        this.mViewFinder.setCameraDevice(null);
        this.mStateMachine = null;
        this.mViewFinder = null;
        this.mPostEventHandler = null;
        this.mStorageManager.release();
        this.mGeotagManager.release();
        this.mIsSetContentView = false;
        this.mKeyEventTranslator = null;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        StateMachine.TransitterEvent zoomKeyEvent;
        KeyEventTranslator.TranslatedKeyCode translatedKeyCode = this.mKeyEventTranslator.translateKeyCodeOnDown(keyCode);
        if (this.mViewFinder.isOpenAutoReview()) {
            switch (keyCode) {
                case 24:
                case 25:
                    return false;
            }
        }
        if ((event.getRepeatCount() <= 0 || translatedKeyCode == KeyEventTranslator.TranslatedKeyCode.VOLUME) && !isFinishing()) {
            restartAutoOffTimer();
            switch (translatedKeyCode) {
                case ZOOM:
                    if (keyCode == 24) {
                        zoomKeyEvent = StateMachine.TransitterEvent.EVENT_KEY_ZOOM_IN_DOWN;
                    } else {
                        zoomKeyEvent = StateMachine.TransitterEvent.EVENT_KEY_ZOOM_OUT_DOWN;
                    }
                    this.mStateMachine.sendEvent(zoomKeyEvent, new Object[0]);
                    return true;
                case VOLUME:
                    return false;
                case FOCUS:
                    if (this.mStateMachine.isDialogOpened()) {
                        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_CLOSED, new Object[0]);
                    }
                    this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_FOCUS_DOWN, new Object[0]);
                    return true;
                case SHUTTER:
                    this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_CAPTURE_DOWN, new Object[0]);
                    return true;
                case FOCUS_AND_SHUTTER_UP_KEY:
                case FOCUS_AND_SHUTTER_DOWN_KEY:
                    if (this.mStateMachine.isDialogOpened()) {
                        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_CLOSED, new Object[0]);
                    }
                    this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_FOCUS_DOWN, new Object[0]);
                    this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_CAPTURE_DOWN, new Object[0]);
                    return true;
                case MENU:
                case BACK:
                case IGNORED:
                    return true;
                default:
                    return super.onKeyDown(keyCode, event);
            }
        }
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (isFinishing()) {
            return true;
        }
        restartAutoOffTimer();
        KeyEventTranslator.TranslatedKeyCode translatedKeyCode = this.mKeyEventTranslator.translateKeyCodeOnUp(keyCode);
        if (this.mViewFinder.isOpenAutoReview()) {
            switch (keyCode) {
            }
            return true;
        }
        if (this.mViewFinder.isCapturingModeSelectorOpened()) {
            switch (translatedKeyCode) {
                case FOCUS:
                case SHUTTER:
                case FOCUS_AND_SHUTTER_UP_KEY:
                case FOCUS_AND_SHUTTER_DOWN_KEY:
                case BACK:
                    this.mViewFinder.closeCapturingModeSelector();
                    break;
            }
            return true;
        }
        switch (translatedKeyCode) {
            case ZOOM:
                this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_ZOOM_UP, new Object[0]);
                break;
            case FOCUS:
                this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_FOCUS_UP, new Object[0]);
                break;
            case SHUTTER:
                this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_CAPTURE_UP, new Object[0]);
                break;
            case FOCUS_AND_SHUTTER_UP_KEY:
            case FOCUS_AND_SHUTTER_DOWN_KEY:
                this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_CAPTURE_UP, new Object[0]);
                this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_FOCUS_UP, new Object[0]);
                break;
            case MENU:
                this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_MENU, new Object[0]);
                break;
            case BACK:
                if (this.mStateMachine.isDialogOpened()) {
                    this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_BACK, new Object[0]);
                    break;
                } else {
                    abort();
                    break;
                }
        }
        return true;
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseExtendedActivity, com.sonyericsson.cameracommon.activity.BaseActivity
    public void abort() {
        abort(false);
    }

    public void abort(boolean isEmergency) {
        abort(true, isEmergency);
    }

    public void abort(boolean isFinshied, boolean isEmergency) {
        if (this.mStateMachine != null) {
            if (this.mStateMachine.canApplicationBeFinished()) {
                if (isFinshied) {
                    if (isEmergency) {
                        finishUrgently();
                        return;
                    } else {
                        finish();
                        return;
                    }
                }
                this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_PAUSE, new Object[0]);
                return;
            }
            this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_BACK, new Object[0]);
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialog) {
        finish();
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity
    public boolean startAutoOffTimer() {
        return startAutoOffTimer(AUTO_OFF_TIME_OUT_DURATION);
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity
    public boolean isMenuAvailable() {
        return this.mStateMachine.canSettingUiBeOpened();
    }

    public boolean isSelfTimerAvailable() {
        return this.mStateMachine.canSelfTimerBeOpened();
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity
    public boolean isDualStorageAvailable() {
        return false;
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseExtendedActivity
    protected Rect getPreviewSize() {
        return this.mCameraDeviceHandler.getPreviewRect();
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity
    public RotatableDialog getCallingDialog() {
        return getMessagePopup().showErrorUncancelable(R.string.cam_strings_error_message_during_voice_call_txt, R.string.cam_strings_error_message_during_voice_call_title_txt, false);
    }

    public void setTouchCapture(TouchCapture touchCapture) {
        this.mViewFinder.setTouchCapture(touchCapture);
    }

    public void notifyLaunch() {
        boolean z = true;
        if (this.mCameraActionSound != null) {
            mLaunchAndFinishNotifyerService.execute(new RecordingSoundTask(this.mCameraActionSound, z));
            mIsLaunchNotified = true;
        }
    }

    private void notifyFinish() {
        boolean z = false;
        if (this.mCameraActionSound != null) {
            if (mIsLaunchNotified) {
                mLaunchAndFinishNotifyerService.execute(new RecordingSoundTask(this.mCameraActionSound, z));
            }
            mLaunchAndFinishNotifyerService.execute(new ReleaseCameraActionSoundTask(this.mCameraActionSound));
            this.mCameraActionSound = null;
        }
        mIsLaunchNotified = false;
    }

    private class RecordingSoundTask implements Runnable {
        private final boolean mIsStart;
        private final CameraActionSound mMyCameraActionSound;

        private RecordingSoundTask(CameraActionSound cameraActionSound, boolean isStart) {
            this.mMyCameraActionSound = cameraActionSound;
            this.mIsStart = isStart;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (PresetConfigurationResolver.isShutterSoundEnabled(SoundPhotoCameraActivity.this)) {
                this.mMyCameraActionSound.play(this.mIsStart ? 2 : 3);
                Handler handler = SoundPhotoCameraActivity.this.mPostEventHandler;
                if (handler != null) {
                    handler.postDelayed(new OnRecordingSoundCompletedTask(), 700L);
                }
            }
        }
    }

    private static class ReleaseCameraActionSoundTask implements Runnable {
        private final CameraActionSound mMyCameraActionSound;

        private ReleaseCameraActionSoundTask(CameraActionSound cameraActionSound) {
            this.mMyCameraActionSound = cameraActionSound;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mMyCameraActionSound.release();
        }
    }

    private class OnRecordingSoundCompletedTask implements Runnable {
        private OnRecordingSoundCompletedTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SoundPhotoCameraActivity.this.mStateMachine != null) {
                SoundPhotoCameraActivity.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_REQUEST_RESET_CAPTURED_AUDIO_SAMPLE_DATA, new Object[0]);
            }
        }
    }

    private void checkFirmwareVersionUpdated() {
        String cachedVersion = this.mSharedPrefs.getParamFromSP(CommonConstants.FINGERPRINT, "");
        String currentVersion = Build.FINGERPRINT;
        if (!cachedVersion.equals(currentVersion)) {
            saveSettings();
            this.mSharedPrefs.clear();
            restoreSettings();
            this.mSharedPrefs.setParamFromSP(CommonConstants.FINGERPRINT, currentVersion);
        }
    }

    public void saveSettings() {
        String prefix;
        for (int i = 0; i < 2; i++) {
            if (i == 0) {
                prefix = CapturingMode.MAIN.toString();
            } else {
                prefix = CapturingMode.FRONT.toString();
            }
            String key = prefix + "-" + Parameters.FLASH;
            String value = this.mSharedPrefs.getParamFromSP(key, "");
            this.mSaveSettingMap.put(key, value);
        }
    }

    public void restoreSettings() {
        String prefix;
        for (int i = 0; i < 2; i++) {
            if (i == 0) {
                prefix = CapturingMode.MAIN.toString();
            } else {
                prefix = CapturingMode.FRONT.toString();
            }
            String key = prefix + "-" + Parameters.FLASH;
            String value = this.mSaveSettingMap.get(key);
            this.mSharedPrefs.setParamFromSP(key, value);
        }
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity
    protected ParamSharedPrefWrapper getParamSharedPrefWrapper() {
        return new ParamSharedPrefWrapper(this, SHARED_PREFERENCE_NAME, "0.0.0");
    }

    private class CameraErrorCallbackImpl implements Camera.ErrorCallback {
        private CameraErrorCallbackImpl() {
        }

        @Override // android.hardware.Camera.ErrorCallback
        public void onError(int code, Camera camera) {
            CameraLogger.e(SoundPhotoCameraActivity.TAG, "Camera error occurred. Error code = " + code);
            if (code != 2) {
                SoundPhotoCameraActivity.this.getMessagePopup().showErrorUncancelable(R.string.cam_strings_error_fatal_txt, R.string.cam_strings_error_dialog_title_txt, false);
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus) {
            requestToRestoreNavigationBar();
        }
    }

    private void requestToRestoreNavigationBar() {
        if (this.mViewFinder != null) {
            this.mViewFinder.sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_ON_NOTIFY_RESTORE_NAVIGATION_BAR_PREVIOUS_VISIBILITY, new Object[0]);
        }
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseExtendedActivity
    protected void prepareFinish() {
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_PAUSE, new Object[0]);
    }

    @Override // com.sonyericsson.cameracommon.systemmonitor.ThermalAlertReceiver.ThermalAlertReceiverListener
    public void onNotifyThermalWarningExtra(boolean isOnStartup) {
    }

    private void registerForceExitRequestReceiver() {
        IntentFilter filter = new IntentFilter(CommonConstants.INTENT_ACTION_FORCE_EXIT_REQUEST);
        this.mForceExitRequestReceiver = new ForceExitRequestReceiver();
        registerReceiver(this.mForceExitRequestReceiver, filter);
    }

    private void unregisterForceExitRequestReceiver() {
        if (this.mForceExitRequestReceiver != null) {
            unregisterReceiver(this.mForceExitRequestReceiver);
            this.mForceExitRequestReceiver = null;
        }
    }

    private class ForceExitRequestReceiver extends BroadcastReceiver {
        private ForceExitRequestReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null && CommonConstants.INTENT_ACTION_FORCE_EXIT_REQUEST.equals(intent.getAction())) {
                SoundPhotoCameraActivity.this.finish();
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity
    protected String getAuthority() {
        return SoundPhotoSettingsProvider.getSpecificAuthority();
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity
    public void reconstructLocalCache() {
        if (this.mViewFinder != null) {
            this.mViewFinder.reconstructLocalCache();
        }
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity
    public void saveLocalCache() {
        if (this.mViewFinder != null) {
            this.mViewFinder.saveLocalCache();
        }
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseExtendedActivity
    protected void showAndConfirmDisclaimer() {
        this.mHasDisclaimerAccepted = false;
        if (!this.mSharedPrefs.getParamFromSP(SHARED_PREFS_KEY_ACCEPT_DISCLAIMER, false)) {
            this.mMessagePopup.showDisclaimer(this, new DialogInterface.OnClickListener() { // from class: com.sonymobile.android.addoncamera.soundphoto.SoundPhotoCameraActivity.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface arg0, int which) {
                    SoundPhotoCameraActivity.this.mHasDisclaimerAccepted = true;
                    SoundPhotoCameraActivity.this.mSharedPrefs.setParamFromSP(SoundPhotoCameraActivity.SHARED_PREFS_KEY_ACCEPT_DISCLAIMER, true);
                }
            }, new DialogInterface.OnClickListener() { // from class: com.sonymobile.android.addoncamera.soundphoto.SoundPhotoCameraActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface arg0, int which) {
                    SoundPhotoCameraActivity.this.onBackPressed();
                }
            }, new DialogInterface.OnDismissListener() { // from class: com.sonymobile.android.addoncamera.soundphoto.SoundPhotoCameraActivity.3
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialog) {
                    if (!SoundPhotoCameraActivity.this.mHasDisclaimerAccepted) {
                        SoundPhotoCameraActivity.this.onBackPressed();
                    }
                }
            });
        }
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseExtendedActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mStateMachine.canApplicationBeFinished()) {
            terminateApplication();
        } else {
            this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_KEY_BACK, (Object[]) null);
        }
    }
}
