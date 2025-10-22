package com.sonyericsson.cameracommon.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Point;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import androidx.annotation.Nullable;
import android.util.SparseArray;
import android.view.Display;
import android.view.OrientationEventListener;
import android.view.WindowManager;
import android.widget.CompoundButton;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.appsui.CameraCommonProviderConstants;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingConstants;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.intent.IntentConstants;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.mediasaving.location.LocationSettingsReader;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.messagepopup.MessagePopupStateListener;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.settings.AutoReviewSettings;
import com.sonyericsson.cameracommon.systemmonitor.BatteryChangedReceiver;
import com.sonyericsson.cameracommon.systemmonitor.ThermalAlertReceiver;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.OneShotUtility;
import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import com.sonyericsson.cameracommon.utility.PermissionsUtil;
import com.sonyericsson.cameracommon.utility.ProductConfig;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public abstract class BaseActivity extends Activity implements MessagePopupStateListener, ThermalAlertReceiver.ThermalAlertReceiverListener, TerminateListener, BatteryChangedReceiver.BatteryChangedReceiverListener {
    private static final int AUTO_OFF_TIMER_TIMEOUT_COUNT = 180000;
    public static final String INTENT_SUBJECT_START_SECURE = "start-secure";
    private static final long ON_RESUME_DELAY_NON_SECURE_MILLIS = 15;
    private static final long ON_RESUME_DELAY_SECURE_MILLIS = 30;
    private static final int RESULT_AUTO_OFF_TIMER = 2;
    public static final String SP_SECURITY_DIALOG_CHECKED = "security-dialog-checked";
    public static final String SP_SECURITY_DIALOG_CONTEXTUAL_SETTING_CHECKED = "security-dialog-contextual_setting-checked";
    public static final String TAG = "BaseActivity";
    private SparseArray<PreferenceManager.OnActivityResultListener> mActivityResultListeners;
    boolean mAddToMediaStore;
    Timer mAutoOffTimer;
    protected AutoReviewSettings mAutoReviewSettings;
    protected BatteryChangedReceiver mBatteryChangedReceiver;
    protected CommonSettings mCommonSettings;
    private Uri mExtraOutput;
    protected GeotagManager mGeotagManager;
    private LocationSettingsReader mLocationSettingsReader;
    private Handler mMainHandler;
    protected MessagePopup mMessagePopup;
    private OrientationEventListener mOrientationEventListener;
    protected SavingTaskManager mSavingTaskManager;
    private LayoutDependencyResolver.ScreenAspect mScreenAspect;
    protected StorageController mStorageController;
    protected CameraStorageManager mStorageManager;
    protected TerminateListener mTerminateListener;
    protected ThermalAlertReceiver mThermalAlertReceiver;
    private boolean mIsAutoOffTimerEnabled = true;
    private boolean mLaunchAsOneShot = false;
    private boolean mLaunchAsOneShotPhoto = false;
    private boolean mLaunchAsOneShotPhotoSecure = false;
    private boolean mLaunchAsOneShotVideo = false;
    private LayoutOrientation mLastDetectedOrientation = LayoutOrientation.Landscape;
    private Set<LayoutOrientationChangedListener> mLayoutOrientationChangedListenerSet = new CopyOnWriteArraySet();
    private int mSensorOrientationDegree = -1;
    private int mLastOrientationDegree = -1;
    private int mLastDeterminedOrientationDegree = -1;
    protected LaunchedBy mLaunchedBy = LaunchedBy.UNKNOWN;
    protected boolean mIsKeyguardAvailable = false;
    private boolean mIsReceiverResistered = false;
    private final BroadcastReceiver mExtendedBroadcastReceiver = new StorageBroadcastReceiver();
    private Set<StorageEventListener> mStorageListenerSet = new CopyOnWriteArraySet();
    Handler mHandler = new Handler();

    @Nullable
    private KeyguardManager mKeyguardManager = null;
    private boolean mSkippedFirstOnResume = false;
    private boolean mIsSdPermissionFinished = false;
    private final Runnable mOnResumeTasks = new Runnable() { // from class: com.sonyericsson.cameracommon.activity.BaseActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (BaseActivity.this.mSkippedFirstOnResume) {
                BaseActivity.this.mSkippedFirstOnResume = false;
                BaseActivity.this.onResumeTasks();
            }
        }
    };

    public enum ExtraOperation {
        NONE,
        CONTEXTUAL_SETTING,
        APPS_UI
    }

    public enum LaunchedBy {
        UNKNOWN,
        INTENT,
        HISTORY,
        VIEWER,
        INFORMATION,
        VIDEO_EDITOR
    }

    public enum LayoutOrientation {
        Unknown,
        Portrait,
        Landscape,
        ReversePortrait,
        ReverseLandscape
    }

    public interface LayoutOrientationChangedListener {
        void onLayoutOrientationChanged(LayoutOrientation layoutOrientation);
    }

    public interface StorageEventListener {
        void onMediaScanFinished();

        void onStorageCheckRequested(String str, StorageUtil.CameraStorageType cameraStorageType);
    }

    protected abstract void abort();

    public abstract RotatableDialog getCallingDialog();

    protected abstract ParamSharedPrefWrapper getParamSharedPrefWrapper();

    public abstract boolean isAlertDialogOpened();

    public abstract boolean isDualStorageAvailable();

    public abstract boolean isMenuAvailable();

    protected abstract void resumeAll();

    public abstract void setAlertDialogIsOpened(boolean z);

    private class StorageBroadcastReceiver extends BroadcastReceiver {
        private StorageBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context content, Intent intent) {
            String action = intent.getAction();
            try {
                if (action.equals("android.intent.action.MEDIA_MOUNTED")) {
                    BaseActivity.this.notifyStorageStatusChanged(action, intent.getData());
                    return;
                }
                if (action.equals("android.intent.action.MEDIA_UNMOUNTED")) {
                    BaseActivity.this.notifyStorageStatusChanged(action, intent.getData());
                } else if (action.equals("android.intent.action.MEDIA_EJECT")) {
                    BaseActivity.this.notifyStorageStatusChanged(action, intent.getData());
                } else if (action.equals("android.intent.action.MEDIA_SCANNER_FINISHED")) {
                    BaseActivity.this.notifyStorageStatusChanged(action, intent.getData());
                }
            } catch (Exception e) {
            	CameraLogger.e(TAG, "BaseActivity::onReceive() failed: " + e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyStorageStatusChanged(String action, Uri uri) throws NoSuchMethodException, SecurityException {
        for (StorageEventListener listener : this.mStorageListenerSet) {
            String storage = uri.getPath();
            if (action.equals("android.intent.action.MEDIA_SCANNER_FINISHED")) {
                listener.onMediaScanFinished();
            } else {
                StorageUtil.CameraStorageType type = StorageUtil.getStorageTypeFromPath(storage, this);
                if (type != StorageUtil.CameraStorageType.UNKNOWN) {
                    listener.onStorageCheckRequested(action, type);
                }
            }
        }
    }

    public void addStorageListener(StorageEventListener listener) {
        if (!this.mStorageListenerSet.contains(listener) && listener != null) {
            this.mStorageListenerSet.add(listener);
        }
    }

    public void removeStorageListener(StorageEventListener listener) {
        if (this.mStorageListenerSet.contains(listener)) {
            this.mStorageListenerSet.remove(listener);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        checkOneShot();
        this.mLaunchedBy = LaunchedBy.INTENT;
        createMessagePopup();
        this.mMessagePopup.setMessagePopupStateListener(this);
        addOrienationListener(this.mMessagePopup);
        createThermalAlertReceiver();
        this.mAutoReviewSettings = new AutoReviewSettings();
        createCommonSettings();
        this.mLocationSettingsReader = new LocationSettingsReader();
    }

    public LayoutDependencyResolver.ScreenAspect getScreenAspect() {
        if (this.mScreenAspect == null) {
            WindowManager wm = (WindowManager) getSystemService(Context.WINDOW_SERVICE);
            Display display = wm.getDefaultDisplay();
            Point size = new Point();
            display.getRealSize(size);
            float screenAspectRatio = (Math.max(size.y, size.x) * 1.0f) / Math.min(size.y, size.x);
            if (Math.abs(screenAspectRatio - 2.0f) < 0.01f) {
                this.mScreenAspect = LayoutDependencyResolver.ScreenAspect.EIGHTEEN_NINE;
            } else if (Math.abs(screenAspectRatio - 1.7777778f) < 0.01f) {
                this.mScreenAspect = LayoutDependencyResolver.ScreenAspect.SIXTEEN_NINE;
            } else {
                this.mScreenAspect = LayoutDependencyResolver.ScreenAspect.NOT_DEFINED;
            }
        }
        return this.mScreenAspect;
    }

    protected void createCommonSettings() {
        if (this.mCommonSettings == null) {
            this.mCommonSettings = new CommonSettings(getContentResolver(), this, getAuthority());
        }
    }

    protected void createMessagePopup() {
        this.mMessagePopup = new MessagePopup(this, this);
    }

    protected void createThermalAlertReceiver() {
        this.mThermalAlertReceiver = new ThermalAlertReceiver(this, this.mMessagePopup, this, getParamSharedPrefWrapper());
    }

    protected void createBatteryChangedReceiver() {
        this.mBatteryChangedReceiver = new BatteryChangedReceiver(this, this);
    }

    @Override // android.app.Activity
    protected final void onResume() {
        if (this.mMainHandler == null) {
            this.mMainHandler = new Handler(getMainLooper());
        }
        this.mMainHandler.removeCallbacks(this.mOnResumeTasks);
        if (isKeyguardLocked() && !this.mSkippedFirstOnResume) {
            this.mSkippedFirstOnResume = true;
            long delay = isKeyguardSecure() ? ON_RESUME_DELAY_SECURE_MILLIS : ON_RESUME_DELAY_NON_SECURE_MILLIS;
            this.mMainHandler.postDelayed(this.mOnResumeTasks, delay);
        } else {
            this.mSkippedFirstOnResume = false;
            onResumeTasks();
        }
        super.onResume();
    }

    protected void onResumeTasks() {
        this.mMessagePopup.onResume();
        registerIntentFilter("android.intent.action.MEDIA_MOUNTED", "file");
        registerIntentFilter("android.intent.action.MEDIA_UNMOUNTED", "file");
        registerIntentFilter("android.intent.action.MEDIA_EJECT", "file");
        registerIntentFilter("android.intent.action.MEDIA_SCANNER_FINISHED", "file");
        getWindow().clearFlags(2048);
        getWindow().addFlags(1024);
        getWindow().addFlags(256);
        getWindow().addFlags(512);
        loadCommonSettings();
        this.mLocationSettingsReader.readLocationSettings(this);
        enableAutoOffTimer();
        this.mSensorOrientationDegree = getOrientationDegree(LayoutOrientation.Unknown);
        addStorageListener(this.mStorageManager);
    }

    protected void loadCommonSettings() {
        getCommonSettings().load();
    }

    private void registerIntentFilter(String intent, String file) {
        IntentFilter intentFilter = new IntentFilter(intent);
        if (file != null) {
            intentFilter.addDataScheme(file);
        }
        registerReceiver(this.mExtendedBroadcastReceiver, intentFilter);
        this.mIsReceiverResistered = true;
    }

    @Override // android.app.Activity
    protected final void onPause() {
        if (this.mMainHandler != null) {
            this.mMainHandler.removeCallbacks(this.mOnResumeTasks);
        }
        if (!this.mSkippedFirstOnResume) {
            onPauseTasks();
        }
        super.onPause();
    }

    protected void onPauseTasks() {
        if (this.mIsReceiverResistered) {
            unregisterReceiver(this.mExtendedBroadcastReceiver);
            this.mIsReceiverResistered = false;
        }
        disableAutoOffTimer();
        unmuteSound(3);
        if (getCommonSettings() != null) {
            getCommonSettings().suspend();
        }
        this.mMessagePopup.onPause();
        this.mMessagePopup.release();
        disableOrientation();
        removeStorageListener(this.mStorageManager);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            super.onDestroy();
            this.mStorageListenerSet.clear();
            removeOrienationListener(this.mMessagePopup);
            this.mMessagePopup.releaseContext();
            this.mMessagePopup = null;
            this.mLayoutOrientationChangedListenerSet.clear();
        } catch (Exception e) {
            CameraLogger.e(TAG, "BaseActivity::onDestroy() failed: " + e.getMessage());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onSearchRequested() {
        return false;
    }

    private void muteSound(int streamType) {
        AudioManager m;
        if (Build.VERSION.SDK_INT < 8 || (m = (AudioManager) getSystemService(Context.AUDIO_SERVICE)) == null || m.requestAudioFocus(null, streamType, 1) == 1) {
        }
    }

    private void unmuteSound(int streamType) {
        AudioManager m;
        if (Build.VERSION.SDK_INT < 8 || (m = (AudioManager) getSystemService(Context.AUDIO_SERVICE)) == null || m.abandonAudioFocus(null) == 1) {
        }
    }

    public void pauseAudioPlayback() {
        Intent i = new Intent(IntentConstants.BroadcastIntent.ACTION_MUSICSERVICE_COMMAND);
        i.putExtra(IntentConstants.BroadcastIntent.MUSICSERVICE_COMMAND, IntentConstants.BroadcastIntent.MUSICSERVICE_COMMAND_PAUSE);
        sendBroadcast(i);
        muteSound(3);
    }

    protected boolean startAutoOffTimer() {
        return startAutoOffTimer(180000);
    }

    protected final synchronized boolean startAutoOffTimer(int autoOffTimeoutDuration) {
        boolean z = false;
        synchronized (this) {
            if (this.mIsAutoOffTimerEnabled && this.mAutoOffTimer == null) {
                this.mAutoOffTimer = new Timer(true);
                this.mAutoOffTimer.schedule(new AutoOffTimerTask(), autoOffTimeoutDuration);
                z = true;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void stopAutoOffTimer() {
        if (this.mAutoOffTimer != null) {
            this.mAutoOffTimer.cancel();
            this.mAutoOffTimer.purge();
            this.mAutoOffTimer = null;
        }
    }

    public final void enableAutoOffTimer() {
        this.mIsAutoOffTimerEnabled = true;
        startAutoOffTimer();
    }

    public final void disableAutoOffTimer() {
        stopAutoOffTimer();
        this.mIsAutoOffTimerEnabled = false;
    }

    public final synchronized void restartAutoOffTimer() {
        stopAutoOffTimer();
        startAutoOffTimer();
    }

    private class AutoOffTimerTask extends TimerTask {
        private AutoOffTimerTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            BaseActivity.this.stopAutoOffTimer();
            BaseActivity.this.mHandler.post(new Runnable() { // from class: com.sonyericsson.cameracommon.activity.BaseActivity.AutoOffTimerTask.1
                @Override // java.lang.Runnable
                public void run() {
                    BaseActivity.this.setResult(2);
                    BaseActivity.this.abort();
                }
            });
        }
    }

    public MessagePopup getMessagePopup() {
        return this.mMessagePopup;
    }

    public SavingTaskManager getSavingTaskManager() {
        return this.mSavingTaskManager;
    }

    public GeotagManager getGeoTagManager() {
        return this.mGeotagManager;
    }

    public CommonSettings getCommonSettings() {
        return this.mCommonSettings;
    }

    public AutoReviewSettings getAutoReviewSettings() {
        return this.mAutoReviewSettings;
    }

    protected void keepScreenOn() {
        getWindow().addFlags(128);
    }

    protected void clearKeepScreenOn() {
        getWindow().clearFlags(128);
    }

    @Override // com.sonyericsson.cameracommon.messagepopup.MessagePopupStateListener
    public void msgPopupOpened() {
    }

    @Override // com.sonyericsson.cameracommon.messagepopup.MessagePopupStateListener
    public void msgPopupCanceled() {
    }

    public void enableOrientation() {
        if (this.mOrientationEventListener == null) {
            this.mOrientationEventListener = new ExtendedOrientationEventListener(this);
            this.mOrientationEventListener.enable();
        }
    }

    public void disableOrientation() {
        if (this.mOrientationEventListener != null) {
            this.mOrientationEventListener.disable();
            this.mOrientationEventListener = null;
        }
    }

    public void addOrienationListener(LayoutOrientationChangedListener listener) {
        this.mLayoutOrientationChangedListenerSet.add(listener);
    }

    public void removeOrienationListener(LayoutOrientationChangedListener listener) {
        this.mLayoutOrientationChangedListenerSet.remove(listener);
    }

    private class ExtendedOrientationEventListener extends OrientationEventListener {
        public ExtendedOrientationEventListener(Context context) {
            super(context);
        }

        @Override // android.view.OrientationEventListener
        public void onOrientationChanged(int orientation) {
            if (orientation != -1) {
                BaseActivity.this.mSensorOrientationDegree = orientation;
            }
            if (orientation != BaseActivity.this.mLastOrientationDegree) {
                BaseActivity.this.mLastOrientationDegree = orientation;
                if (BaseActivity.this.mLastOrientationDegree != -1) {
                    BaseActivity.this.mLastDeterminedOrientationDegree = BaseActivity.this.mLastOrientationDegree;
                }
                BaseActivity.this.notifyLayoutOrientationChanged(BaseActivity.this.getLayoutOrientation());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyLayoutOrientationChanged(LayoutOrientation orientation) {
        if (orientation != this.mLastDetectedOrientation && orientation != LayoutOrientation.Unknown) {
            this.mLastDetectedOrientation = orientation;
            for (LayoutOrientationChangedListener listener : this.mLayoutOrientationChangedListenerSet) {
                listener.onLayoutOrientationChanged(this.mLastDetectedOrientation);
            }
        }
    }

    public LayoutOrientation getLayoutOrientation() {
        int orientation = this.mLastOrientationDegree;
        if (orientation == -1) {
            orientation = this.mLastDeterminedOrientationDegree;
        }
        if (orientation == -1) {
            return LayoutOrientation.Unknown;
        }
        int orientation2 = (orientation + (360 - ProductConfig.getMountAngle(this))) % 360;
        boolean nowPortrait = this.mLastDetectedOrientation == LayoutOrientation.Portrait || this.mLastDetectedOrientation == LayoutOrientation.ReversePortrait;
        int margin = nowPortrait ? 60 : 30;
        if (in(orientation2, 90 - margin, margin + 90)) {
            return LayoutOrientation.Portrait;
        }
        if (in(orientation2, margin + 90, 270 - margin)) {
            return LayoutOrientation.ReverseLandscape;
        }
        if (in(orientation2, 270 - margin, margin + 270)) {
            return LayoutOrientation.ReversePortrait;
        }
        return LayoutOrientation.Landscape;
    }

    public void setLayoutOrientation(LayoutOrientation orientation) {
        int orientationDegree = getOrientationDegree(orientation);
        this.mSensorOrientationDegree = orientationDegree;
        this.mLastOrientationDegree = orientationDegree;
        this.mLastDeterminedOrientationDegree = orientationDegree;
    }

    private static boolean in(int testee, int lower, int upper) {
        return testee >= lower && testee < upper;
    }

    public int getConfigurationOrientation() {
        switch (this.mLastDeterminedOrientationDegree) {
            case 1:
                return 1;
            default:
                return 2;
        }
    }

    private int getOrientationDegree(LayoutOrientation fixed) {
        int degree;
        switch (fixed) {
            case Unknown:
            case Landscape:
                degree = 0;
                break;
            case Portrait:
                degree = 90;
                break;
            case ReverseLandscape:
                degree = 180;
                break;
            case ReversePortrait:
                degree = 270;
                break;
            default:
                return -1;
        }
        return (degree + ProductConfig.getMountAngle(this)) % 360;
    }

    public int getOrientation() {
        LayoutOrientation orientation = this.mLastDetectedOrientation;
        if (orientation == LayoutOrientation.Unknown) {
            orientation = getLayoutOrientation();
        }
        switch (orientation) {
            case Landscape:
            case ReverseLandscape:
            case ReversePortrait:
                return 2;
            case Portrait:
                return 1;
            default:
                return 0;
        }
    }

    public int getOrientationDegree() {
        if (this.mLastOrientationDegree != -1) {
            return this.mLastOrientationDegree;
        }
        if (this.mLastDeterminedOrientationDegree != -1) {
            return this.mLastDeterminedOrientationDegree;
        }
        return 270;
    }

    public int getSensorOrientationDegree() {
        return this.mSensorOrientationDegree;
    }

    public LayoutOrientation getLastDetectedOrientation() {
        return this.mLastDetectedOrientation;
    }

    public CameraStorageManager getStorageManager() {
        return this.mStorageManager;
    }

    public StorageController getStorageController() {
        return this.mStorageController;
    }

    private void checkOneShot() {
        Intent intent = getIntent();
        String action = intent.getAction();
        if (action == null) {
            CameraLogger.e(TAG, "setRequestedMode: getAction() == null ");
            intent.setAction("android.intent.action.MAIN");
            action = intent.getAction();
        }
        if (action.equals("android.media.action.IMAGE_CAPTURE")) {
            this.mLaunchAsOneShotPhoto = true;
        } else if (action.equals("android.media.action.IMAGE_CAPTURE_SECURE")) {
            this.mLaunchAsOneShotPhotoSecure = true;
        } else if (action.equals("android.media.action.VIDEO_CAPTURE")) {
            this.mLaunchAsOneShotVideo = true;
        }
        if (this.mLaunchAsOneShotPhoto || this.mLaunchAsOneShotPhotoSecure || this.mLaunchAsOneShotVideo) {
            this.mLaunchAsOneShot = true;
        }
        Bundle extra = intent.getExtras();
        if (extra != null && this.mLaunchAsOneShot) {
            for (String str : extra.keySet()) {
            }
            this.mExtraOutput = (Uri) extra.getParcelable("output");
            this.mAddToMediaStore = extra.getBoolean(OneShotUtility.KEY_ADD_TO_MEDIA_STORE);
        } else {
            this.mExtraOutput = null;
            this.mAddToMediaStore = true;
        }
        if (this.mExtraOutput != null) {
        }
    }

    public boolean isOneShot() {
        return this.mLaunchAsOneShot;
    }

    public boolean isOneShotPhoto() {
        return this.mLaunchAsOneShotPhoto;
    }

    public boolean isOneShotPhotoSecure() {
        return this.mLaunchAsOneShotPhotoSecure;
    }

    public boolean isOneShotVideo() {
        return this.mLaunchAsOneShotVideo;
    }

    public Uri getExtraOutput() {
        return this.mExtraOutput;
    }

    public boolean hasExtraOutputPath() {
        if (this.mExtraOutput == null) {
            return false;
        }
        String fixedStoragePath = StorageUtil.getPathFromUri(this, this.mExtraOutput);
        return fixedStoragePath != null;
    }

    public boolean shouldAddToMediaStore() {
        return this.mAddToMediaStore;
    }

    public boolean isGpsLocationAllowed() {
        return this.mLocationSettingsReader.getIsGpsLocationAllowed();
    }

    public boolean isNetworkLocationAllowed() {
        return this.mLocationSettingsReader.getIsNetworkLocationAllowed();
    }

    public boolean isDeviceInSecurityLock() {
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            return false;
        }
        String subject = extras.getString("android.intent.extra.SUBJECT");
        KeyguardManager keyguadManager = (KeyguardManager) getSystemService("keyguard");
        boolean restrictedMode = keyguadManager.isKeyguardLocked();
        return INTENT_SUBJECT_START_SECURE.equals(subject) && restrictedMode;
    }

    public boolean isAlreadyHighTemperature() {
        return this.mThermalAlertReceiver.isAlreadyHighTemperature();
    }

    public boolean isThermalWarningState() {
        return this.mThermalAlertReceiver.isWarningState();
    }

    public boolean isThermalWarningExtraState() {
        return this.mThermalAlertReceiver.isWarningExtraState();
    }

    public boolean isThermalWarningReceived() {
        return this.mThermalAlertReceiver.isThermalWarningReceived();
    }

    protected void callOnCreate(Bundle arg0) {
        super.onCreate(arg0);
    }

    protected void callOnStart() {
        super.onStart();
    }

    protected void callOnRestart() {
        super.onRestart();
    }

    protected void callOnPause() {
        super.onPause();
    }

    protected void callOnResume() {
        super.onResume();
    }

    protected void callOnStop() {
        super.onStop();
    }

    protected void callOnDestroy() {
        super.onDestroy();
    }

    public boolean updateRemain() {
        long reservedSize = this.mSavingTaskManager.getExpectedTotalSavedPicturesSize();
        this.mStorageManager.updateRemain(reservedSize, false);
        boolean isReady = this.mStorageManager.isReady();
        return isReady;
    }

    public enum LifeCycleIds {
        ON_CREATE(MeasurePerformance.PerformanceIds.ON_CREATE, "onCreate()"),
        ON_NEW_INTENT(MeasurePerformance.PerformanceIds.ON_NEW_INTENT, "onNewIntent()"),
        ON_START(MeasurePerformance.PerformanceIds.ON_START, "onStart()"),
        ON_RESTART(MeasurePerformance.PerformanceIds.ON_RESTART, "onRestart()"),
        ON_RESUME(MeasurePerformance.PerformanceIds.ON_RESUME, "onResume()"),
        ON_PAUSE(MeasurePerformance.PerformanceIds.ON_PAUSE, "onPause()"),
        ON_STOP(MeasurePerformance.PerformanceIds.ON_STOP, "onStop()"),
        ON_DESTROY(MeasurePerformance.PerformanceIds.ON_DESTROY, "onDestroy()");

        private final String mLog;
        private final MeasurePerformance.PerformanceIds mPerformanceIds;

        LifeCycleIds(MeasurePerformance.PerformanceIds performanceIds, String log) {
            this.mPerformanceIds = performanceIds;
            this.mLog = log;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.mLog;
        }
    }

    public void logLifeCycleIn(String tag, LifeCycleIds lifeCycle) {
        MeasurePerformance.measureTime(lifeCycle.mPerformanceIds, true);
        MeasurePerformance.measureResource("Start " + lifeCycle);
        if (lifeCycle == LifeCycleIds.ON_CREATE || lifeCycle == LifeCycleIds.ON_DESTROY) {
        }
    }

    public void logLifeCycleOut(String tag, LifeCycleIds lifeCycle) {
        MeasurePerformance.measureResource("End " + lifeCycle);
        MeasurePerformance.measureTime(lifeCycle.mPerformanceIds, false);
        if (lifeCycle == LifeCycleIds.ON_PAUSE) {
            MeasurePerformance.outResult();
        }
    }

    public void readLocationSettings() {
        this.mLocationSettingsReader.readLocationSettings(this);
    }

    @SuppressLint({"NewApi"})
    public boolean isInLockTaskMode() {
        ActivityManager am = (ActivityManager) getSystemService(CameraCommonProviderConstants.CapturingModeColumns.ACTIVITY);
        if (23 <= Build.VERSION.SDK_INT) {
            return am.getLockTaskModeState() != 0;
        }
        if (21 <= Build.VERSION.SDK_INT) {
            return am.isInLockTaskMode();
        }
        return false;
    }

    public LaunchedBy getLaunchedBy() {
        return this.mLaunchedBy;
    }

    private boolean addActivityResultListener(int requestCode, PreferenceManager.OnActivityResultListener listener) {
        if (this.mActivityResultListeners == null) {
            this.mActivityResultListeners = new SparseArray<>();
        }
        if (this.mActivityResultListeners.get(requestCode) != null) {
            return false;
        }
        this.mActivityResultListeners.put(requestCode, listener);
        return true;
    }

    public boolean startActivityForResult(Intent intent, int requestCode, PreferenceManager.OnActivityResultListener listener) {
        if (!addActivityResultListener(requestCode, listener)) {
            return false;
        }
        startActivityForResult(intent, requestCode);
        return true;
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int requestCode, Bundle options) {
        saveLocalCache();
        super.startActivityForResult(intent, requestCode, options);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        reconstructLocalCache();
        if (16 == requestCode && resultCode == -1) {
            this.mIsSdPermissionFinished = true;
        }
        if (this.mActivityResultListeners != null) {
            PreferenceManager.OnActivityResultListener listener = this.mActivityResultListeners.get(requestCode);
            if (listener != null && listener.onActivityResult(requestCode, resultCode, data)) {
                this.mActivityResultListeners.remove(requestCode);
            }
            if (this.mActivityResultListeners.size() == 0) {
                this.mActivityResultListeners = null;
            }
        }
    }

    public void showContextualSettingsSecurityDialog(Runnable runnable) {
        if (!getParamSharedPrefWrapper().getParamFromSP(SP_SECURITY_DIALOG_CONTEXTUAL_SETTING_CHECKED, false)) {
            SecurityDialogListener listener = new SecurityDialogListener(SP_SECURITY_DIALOG_CONTEXTUAL_SETTING_CHECKED, runnable);
            this.mMessagePopup.showContextualSettingsSecurityDialog(this, listener, listener);
        }
    }

    public void showSecurityOkOrCancelDialog(Runnable runOnOk, Runnable runOnCancel) {
        this.mMessagePopup.showSecurityOkOrCancelDialog(this, runOnOk, runOnCancel, runOnCancel);
    }

    public void showScreenPinningOkDialog(Runnable runOnDismiss) {
        this.mMessagePopup.showScreenPinningOkDialog(this, runOnDismiss);
    }

    private class SecurityDialogListener implements Runnable, CompoundButton.OnCheckedChangeListener {
        private boolean mIsItemChecked;
        private final Runnable mRunnable;
        private final String mSharedPrefsKey;

        public SecurityDialogListener(String key, Runnable runnable) {
            this.mSharedPrefsKey = key;
            this.mRunnable = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mIsItemChecked) {
                BaseActivity.this.getParamSharedPrefWrapper().setParamToSP(this.mSharedPrefsKey, this.mIsItemChecked);
            }
            this.mRunnable.run();
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton arg0, boolean arg1) {
            this.mIsItemChecked = arg1;
        }
    }

    public boolean requestStartActivity(Intent intent, Bundle options, boolean isFromInformationActivity) {
        boolean result = false;
        try {
            if (options != null) {
                startActivity(intent, options);
            } else {
                startActivity(intent);
            }
            result = true;
            return true;
        } catch (ActivityNotFoundException e) {
            CameraLogger.e(TAG, "Failed to launch the AddOn application. Message : " + e.getMessage());
            return result;
        }
    }

    public boolean checkAndRequestSelfPermissions(int requestCode, final String[] permissions) {
        boolean result = PermissionsUtil.checkAndRequestSelfPermissions(this, requestCode, permissions);
        if (result) {
            PreferenceManager.OnActivityResultListener listener = new PreferenceManager.OnActivityResultListener() { // from class: com.sonyericsson.cameracommon.activity.BaseActivity.2
                @Override // android.preference.PreferenceManager.OnActivityResultListener
                public boolean onActivityResult(int requestCode2, int resultCode, Intent data) {
                    switch (requestCode2) {
                        case 12:
                            if (resultCode == -1) {
                                List<String> notGrantedPermission = new ArrayList<>();
                                PermissionsUtil.getSelfPermissions(BaseActivity.this, permissions, null, notGrantedPermission);
                                if (notGrantedPermission.size() > 0) {
                                    BaseActivity.this.finish();
                                    break;
                                }
                            }
                            break;
                    }
                    return true;
                }
            };
            addActivityResultListener(requestCode, listener);
        }
        return result;
    }

    protected boolean isSdPermissionFinished() {
        return this.mIsSdPermissionFinished;
    }

    protected void resetSdPermissionFinished() {
        this.mIsSdPermissionFinished = false;
    }

    public boolean isLaunchedByPowerKeyDoubleTap() {
        Intent intent = getIntent();
        if (intent != null) {
            String launchSource = intent.getStringExtra(IntentConstants.EXTRA_CAMERA_LAUNCH_SOURCE);
            if (IntentConstants.CAMERA_LAUNCH_SOURCE_POWER_DOUBLE_TAP.equals(launchSource)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sonyericsson.cameracommon.systemmonitor.BatteryChangedReceiver.BatteryChangedReceiverListener
    public void onReachBatteryLimit(boolean isOnStartup) {
    }

    @Override // com.sonyericsson.cameracommon.systemmonitor.BatteryChangedReceiver.BatteryChangedReceiverListener
    public void onReachLowBattery() {
    }

    @Override // com.sonyericsson.cameracommon.systemmonitor.BatteryChangedReceiver.BatteryChangedReceiverListener
    public void onBatteryLevelChanged(int level) {
    }

    public int getBatteryLevel() {
        return this.mBatteryChangedReceiver.getBatteryLevel();
    }

    public boolean isAlreadyBcl() {
        return this.mBatteryChangedReceiver.isAlreadyBcl();
    }

    protected boolean isKeyguardLocked() {
        if (this.mKeyguardManager == null) {
            this.mKeyguardManager = (KeyguardManager) getSystemService("keyguard");
        }
        if (this.mKeyguardManager != null) {
            return this.mKeyguardManager.isKeyguardLocked();
        }
        return false;
    }

    protected boolean isKeyguardSecure() {
        if (this.mKeyguardManager == null) {
            this.mKeyguardManager = (KeyguardManager) getSystemService(android.content.Context.KEYGUARD_SERVICE);
        }
        if (this.mKeyguardManager != null) {
            return this.mKeyguardManager.isKeyguardSecure();
        }
        return false;
    }

    protected String getAuthority() {
        return CommonSettingConstants.getAuthority();
    }

    public void reconstructLocalCache() {
    }

    public void saveLocalCache() {
    }
}
