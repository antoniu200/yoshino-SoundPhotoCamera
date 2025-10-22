package com.sonymobile.cameracommon.research;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.ArrayMap;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.device.CameraExtensionValues;
import com.sonyericsson.cameracommon.intent.IntentConstants;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.research.googleanalytics.GoogleAnalyticsUtil;
import com.sonymobile.cameracommon.research.idd.IddUtil;
import com.sonymobile.cameracommon.research.parameters.CustomDimension;
import com.sonymobile.cameracommon.research.parameters.Event;
import com.sonymobile.cameracommon.research.parameters.Screen;
import com.sonymobile.cameracommon.research.parameters.ShootingLabel;
import com.sonymobile.gagtmhelper.GaGtmExceptionParser;
import com.sonymobile.getmore.api.ContributionContract;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class ResearchUtil {
    private static final int MAX_NUM_SHOOTING_INFO = 100;
    private static final String OVER_MAX_NUM_SHOOTING_INFO = "_OVER_MAX_NUM";
    public static final String TAG = "ResearchUtil";
    private static final ResearchUtil sInstance = new ResearchUtil();
    private CurrentUserOperationHolder mUserOperationInfo = null;
    private PanoramaInfo mPanoramaInfo = null;
    private Context mContext = null;
    private boolean mIsViewEventSent = false;
    private boolean mIsFailedToOpenCamera = false;
    private int mCountRecordResume = 0;
    private int mCountRecordSnapshot = 0;
    private ExecutorService mBackWorker = null;
    private TemporarySettingValues mTemporarySettingValues = null;
    private AfDoneKeepingTimeHolder mAfDoneKeepingTimeHolder = null;

    static /* synthetic */ int access$2708(ResearchUtil x0) {
        int i = x0.mCountRecordResume;
        x0.mCountRecordResume = i + 1;
        return i;
    }

    static /* synthetic */ int access$2808(ResearchUtil x0) {
        int i = x0.mCountRecordSnapshot;
        x0.mCountRecordSnapshot = i + 1;
        return i;
    }

    private class CurrentUserOperationHolder {
        private StringBuffer mLabelInfo;
        private int mShootingNum;
        private Event.UserOperation mUserOperation;

        private CurrentUserOperationHolder() {
            this.mUserOperation = null;
            this.mShootingNum = 0;
            this.mLabelInfo = null;
        }

        public void setUserOperation(Event.UserOperation operation) {
            setUserOperation(operation, null, null);
        }

        public void setUserOperation(Event.UserOperation operation, List<ShootingLabel.Parameter> params, Map<String, String> settings) {
            ShootingLabel.Parameter p;
            if (this.mLabelInfo == null) {
                this.mLabelInfo = new StringBuffer();
            }
            if (operation.isShooting()) {
                Map<String, String> paramSet = new ArrayMap<>();
                if (ResearchUtil.this.mTemporarySettingValues != null) {
                    for (ShootingLabel.Parameter param : ResearchUtil.this.mTemporarySettingValues.getParameterList()) {
                        paramSet.put(param.getClass().getSimpleName(), param.toString());
                    }
                }
                if (params != null) {
                    for (ShootingLabel.Parameter param2 : params) {
                        paramSet.put(param2.getClass().getSimpleName(), param2.toString());
                    }
                }
                if (ResearchUtil.this.mAfDoneKeepingTimeHolder != null && (p = ResearchUtil.this.mAfDoneKeepingTimeHolder.getParameter()) != null) {
                    paramSet.put(p.getClass().getSimpleName(), p.toString());
                }
                ResearchUtil researchUtil = ResearchUtil.this;
                Event.Category category = Event.Category.ALL_SETTINGS_PHOTO;
                if (settings == null) {
                    settings = new ArrayMap<>();
                }
                researchUtil.sendEventAllSettings(category, paramSet, settings);
                if (ResearchUtil.this.mTemporarySettingValues != null) {
                    if (this.mShootingNum == 100) {
                        this.mLabelInfo.append(ResearchUtil.OVER_MAX_NUM_SHOOTING_INFO);
                    } else if (this.mShootingNum <= 100) {
                        this.mLabelInfo.append(ShootingLabel.convertParameterToString(ResearchUtil.this.mTemporarySettingValues.getParameterList()));
                        if (params != null) {
                            this.mLabelInfo.append(ShootingLabel.convertParameterToString(params));
                        }
                        if (ResearchUtil.this.mAfDoneKeepingTimeHolder != null) {
                            ShootingLabel.Parameter p2 = ResearchUtil.this.mAfDoneKeepingTimeHolder.getParameter();
                            if (p2 != null) {
                                this.mLabelInfo.append(p2.getConvertedCharacter());
                            }
                            ResearchUtil.this.mAfDoneKeepingTimeHolder.clear();
                        }
                    }
                }
                this.mShootingNum++;
            }
            if (this.mUserOperation == null || this.mUserOperation == Event.CaptureOperation.EMPTY) {
                this.mUserOperation = operation;
            }
            this.mUserOperation = operation.updateOperation(this.mUserOperation);
        }

        public void setViewerLaunched() {
            if (this.mUserOperation == null) {
                this.mUserOperation = Event.CaptureOperation.EMPTY;
            }
            setUserOperation(this.mUserOperation.getViewer());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendUserOperation() {
            Event.UserOperation userOperation = this.mUserOperation;
            StringBuffer stringBuffer = this.mLabelInfo;
            if (userOperation != null && stringBuffer != null) {
                String shootingNum = String.valueOf(this.mShootingNum);
                GoogleAnalyticsUtil.sendEvent(userOperation.getCategory(), userOperation.toString(), shootingNum + "_Shots" + stringBuffer.toString(), 0L);
            }
            clear();
        }

        public void clear() {
            this.mUserOperation = null;
            this.mShootingNum = 0;
            this.mLabelInfo = null;
        }
    }

    private static class PanoramaInfo {
        private int mSuccessNum;
        private int mTryNum;
        private Event.ViewerLaunched mViewerLaunched;

        private PanoramaInfo() {
            this.mTryNum = 0;
            this.mSuccessNum = 0;
            this.mViewerLaunched = Event.ViewerLaunched.NOT_LAUNCHED;
        }

        public void tryPanorama() {
            this.mTryNum++;
        }

        public void succeedInPanorama() {
            this.mSuccessNum++;
        }

        public void setViewerLaunched() {
            this.mViewerLaunched = Event.ViewerLaunched.LAUNCHED;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendPanoramaInfo() throws IOException {
            if (this.mTryNum > 0 || this.mViewerLaunched == Event.ViewerLaunched.LAUNCHED) {
                String tryNum = String.valueOf(this.mTryNum);
                String succeessNum = String.valueOf(this.mSuccessNum);
                GoogleAnalyticsUtil.sendEvent(Event.Category.PANORAMA, tryNum + "_try", succeessNum + "_success", this.mViewerLaunched.mValue);
                IddUtil.sendEvent(Event.Category.PANORAMA, tryNum + "_try", succeessNum + "_success", this.mViewerLaunched.mValue);
            }
            clear();
        }

        public void clear() {
            this.mTryNum = 0;
            this.mSuccessNum = 0;
            this.mViewerLaunched = Event.ViewerLaunched.NOT_LAUNCHED;
        }
    }

    private static class BackWorkerThreadFactory implements ThreadFactory {
        private BackWorkerThreadFactory() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable r) {
            Thread thread = new Thread(r);
            thread.setName("R-Thread");
            thread.setPriority(1);
            return thread;
        }
    }

    private ResearchUtil() {
    }

    public static ResearchUtil getInstance() {
        return sInstance;
    }

    public void onCreate(Context context) {
        this.mContext = context;
        if (this.mBackWorker == null) {
            this.mBackWorker = Executors.newSingleThreadExecutor(new BackWorkerThreadFactory());
        }
        this.mBackWorker.execute(new OnCreateTask());
    }

    private class OnCreateTask implements Runnable {
        private OnCreateTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GoogleAnalyticsUtil.onCreate(ResearchUtil.this.mContext);
            IddUtil.onCreate(ResearchUtil.this.mContext);
        }
    }

    public void onResume(boolean isPanorama) {
        this.mBackWorker.execute(new OnResumeTask(isPanorama));
    }

    private class OnResumeTask implements Runnable {
        private final boolean mIsPanorama;

        private OnResumeTask(boolean isPanorama) {
            this.mIsPanorama = isPanorama;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mIsPanorama) {
                ResearchUtil.this.mUserOperationInfo = null;
                ResearchUtil.this.mPanoramaInfo = new PanoramaInfo();
            } else {
                ResearchUtil.this.mUserOperationInfo = new CurrentUserOperationHolder();
                ResearchUtil.this.mPanoramaInfo = null;
            }
            GoogleAnalyticsUtil.onResume();
            IddUtil.onResume();
        }
    }

    public void onPause(boolean isSameActivity) {
        this.mBackWorker.execute(new OnPauseTask(isSameActivity));
    }

    private class OnPauseTask implements Runnable {
        private final boolean mIsSameActivity;

        private OnPauseTask(boolean isSameActivity) {
            this.mIsSameActivity = isSameActivity;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            ResearchUtil.this.mIsViewEventSent = false;
            if (ResearchUtil.this.mUserOperationInfo != null) {
                ResearchUtil.this.mUserOperationInfo.sendUserOperation();
            }
            if (ResearchUtil.this.mPanoramaInfo != null) {
                ResearchUtil.this.mPanoramaInfo.sendPanoramaInfo();
            }
            GoogleAnalyticsUtil.onPause(this.mIsSameActivity);
            IddUtil.onPause(this.mIsSameActivity);
            ResearchUtil.this.clearTemporarySettingValues();
        }
    }

    public void onDestroy() throws ExecutionException, InterruptedException, TimeoutException {
        Future<Boolean> future = this.mBackWorker.submit(new OnDestroyTask(this.mContext));
        try {
            future.get(1000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            CameraLogger.e(TAG, "OnDestroyTask has been interrupted.", e);
        } catch (ExecutionException e2) {
            CameraLogger.e(TAG, "OnDestroyTask failed.", e2);
        } catch (TimeoutException e3) {
            CameraLogger.e(TAG, "OnDestroyTask is Timeout.", e3);
        }
    }

    private static class OnDestroyTask implements Callable<Boolean> {
        private final Context mContextInner;

        private OnDestroyTask(Context context) {
            this.mContextInner = context;
        }

        @Override // java.util.concurrent.Callable
        public Boolean call() {
            GoogleAnalyticsUtil.onDestroy(this.mContextInner);
            IddUtil.onDestroy(this.mContextInner);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLaunchedBy(BaseActivity activity, BaseActivity.LaunchedBy launchedBy) {
        CustomDimension.GALaunchedBy gaLaunchedBy = CustomDimension.GALaunchedBy.OTHER;
        switch (launchedBy) {
            case INTENT:
                Intent intent = activity.getIntent();
                boolean isOneShot = activity.isOneShot();
                boolean isLaunchedByPowerKeyDoubleTap = activity.isLaunchedByPowerKeyDoubleTap();
                boolean hasExtra = intent.hasExtra(IntentConstants.EXTRA_CAPTURING_MODE);
                boolean hasCategory = intent.hasCategory("android.intent.category.LAUNCHER");
                if (hasExtra && hasCategory) {
                    gaLaunchedBy = CustomDimension.GALaunchedBy.MODE_SELECTOR;
                    break;
                } else if (isOneShot) {
                    gaLaunchedBy = CustomDimension.GALaunchedBy.ONE_SHOT_APP;
                    break;
                } else if (isLaunchedByPowerKeyDoubleTap) {
                    gaLaunchedBy = CustomDimension.GALaunchedBy.POWER_KEY_DOUBLE_TAP;
                    break;
                } else {
                    gaLaunchedBy = CustomDimension.GALaunchedBy.HOME;
                    break;
                }
            case VIEWER:
                gaLaunchedBy = CustomDimension.GALaunchedBy.VIEWER;
                break;
        }
        GoogleAnalyticsUtil.setCustomDimension(CustomDimension.GTM_KEY_LAUNCHED_BY, gaLaunchedBy.toString());
        IddUtil.setLaunchedBy(gaLaunchedBy.toString());
        XperiaTipsLaunchTrigger.setLaunchTriggerEvent(this.mContext, gaLaunchedBy);
    }

    public void sendView(BaseActivity activity, BaseActivity.LaunchedBy launchedBy, Screen screen) {
        this.mBackWorker.execute(new SendViewWithActivityTask(activity, launchedBy, screen));
    }

    private class SendViewWithActivityTask implements Runnable {
        private final BaseActivity mActivity;
        private final BaseActivity.LaunchedBy mLaunchedBy;
        private final Screen mScreen;

        private SendViewWithActivityTask(BaseActivity activity, BaseActivity.LaunchedBy launchedBy, Screen screen) {
            this.mActivity = activity;
            this.mLaunchedBy = launchedBy;
            this.mScreen = screen;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!ResearchUtil.this.mIsViewEventSent) {
                ResearchUtil.this.setLaunchedBy(this.mActivity, this.mLaunchedBy);
                GoogleAnalyticsUtil.sendView(this.mScreen);
                IddUtil.setView(this.mScreen);
                ResearchUtil.this.mIsViewEventSent = true;
            }
        }
    }

    public void sendView(CustomDimension.GALaunchedBy launchedBy, Screen screen) {
        this.mBackWorker.execute(new SendViewTask(launchedBy, screen));
    }

    private class SendViewTask implements Runnable {
        private final CustomDimension.GALaunchedBy mGaLaunchedBy;
        private final Screen mScreen;

        private SendViewTask(CustomDimension.GALaunchedBy gaLaunchedBy, Screen screen) {
            this.mGaLaunchedBy = gaLaunchedBy;
            this.mScreen = screen;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!ResearchUtil.this.mIsViewEventSent || this.mGaLaunchedBy == CustomDimension.GALaunchedBy.SAME_ACTIVITY) {
                GoogleAnalyticsUtil.setCustomDimension(CustomDimension.GTM_KEY_LAUNCHED_BY, this.mGaLaunchedBy.toString());
                IddUtil.setLaunchedBy(this.mGaLaunchedBy.toString());
                XperiaTipsLaunchTrigger.setLaunchTriggerEvent(ResearchUtil.this.mContext, this.mGaLaunchedBy);
                GoogleAnalyticsUtil.sendView(this.mScreen);
                IddUtil.setView(this.mScreen);
                ResearchUtil.this.mIsViewEventSent = true;
            }
        }
    }

    public void sendThermalEvent(boolean isOnStartup, boolean isRecording) {
        Event.ThermalMitigation thermalMitigation = Event.ThermalMitigation.getType(isOnStartup);
        Event.ForceQuit forceQuit = Event.ForceQuit.getType(isRecording);
        sendEvent(Event.Category.THERMAL_MITIGATION, thermalMitigation, forceQuit);
    }

    public void sendCoolModeEvent(Event.CoolMode coolMode, boolean isRecording) {
        Event.ForceQuit forceQuit = Event.ForceQuit.getType(isRecording);
        sendEvent(Event.Category.THERMAL_MITIGATION, coolMode, forceQuit);
    }

    public void sendLowBatteryEvent(boolean isOnStartup, boolean isRecording) {
        Event.LowBatteryMitigation lowBatteryMitigation = Event.LowBatteryMitigation.getType(isOnStartup);
        Event.ForceQuit forceQuit = Event.ForceQuit.getType(isRecording);
        sendEvent(Event.Category.LOWBATTERY_MITIGATION, lowBatteryMitigation, forceQuit);
    }

    public void sendSlowMotionEvent(String slowMotion, int num) {
        sendEvent(Event.Category.SLOW_MOTION, slowMotion, String.valueOf(num));
    }

    public void setCameraNotAvailableFailedToOpen() {
        this.mBackWorker.execute(new UpdateFailedToOpenCameraFlagTask());
    }

    private class UpdateFailedToOpenCameraFlagTask implements Runnable {
        private UpdateFailedToOpenCameraFlagTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ResearchUtil.this.mIsFailedToOpenCamera = true;
        }
    }

    public void sendCameraNotAvailableEvent() {
        this.mBackWorker.execute(new SendCameraNotAvailableEventTask());
    }

    private class SendCameraNotAvailableEventTask implements Runnable {
        private SendCameraNotAvailableEventTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Event.CameraNotAvailable cameraNotAvailable = Event.CameraNotAvailable.getType(ResearchUtil.this.mIsFailedToOpenCamera);
            ResearchUtil.this.sendEvent(Event.Category.CAMERA_NOT_AVAILABLE, cameraNotAvailable.toString(), (String) null);
            ResearchUtil.this.mIsFailedToOpenCamera = false;
        }
    }

    public void sendSettingsCommon(CommonSettingValue commonValue) {
        this.mBackWorker.execute(new SendSettingsCommonValueTask(commonValue));
    }

    private class SendSettingsCommonValueTask implements Runnable {
        private final CommonSettingValue mValue;

        private SendSettingsCommonValueTask(CommonSettingValue value) {
            this.mValue = value;
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (this.mValue.getCommonSettingKey()) {
                case AUTO_REVIEW_FOR_CAMERA_UI:
                case GEO_TAG:
                case TOUCH_CAPTURE:
                case TOUCH_CAPTURE_FOR_CAMERA_UI:
                case VOLUME_KEY:
                case SHUTTER_SOUND:
                case SAVE_DESTINATION:
                case FAST_CAPTURE:
                case GRID_LINE:
                case HELP_GUIDE:
                    String key = this.mValue.getCommonSettingKey().toString();
                    String value = this.mValue.toString();
                    ResearchUtil.this.sendEvent(Event.Category.SETTINGS_COMMON, key, value);
                    break;
            }
        }
    }

    public void sendSettingsCommon(String key) {
        this.mBackWorker.execute(new SendSettingsCommonKeyTask(key));
    }

    private class SendSettingsCommonKeyTask implements Runnable {
        private final String mKey;

        private SendSettingsCommonKeyTask(String key) {
            this.mKey = key;
        }

        @Override // java.lang.Runnable
        public void run() {
            ResearchUtil.this.sendEvent(Event.Category.SETTINGS_COMMON, this.mKey, (String) null);
        }
    }

    public void setViewerLaunched() {
        this.mBackWorker.execute(new SetViewerLaunchedTask());
    }

    private class SetViewerLaunchedTask implements Runnable {
        private SetViewerLaunchedTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ResearchUtil.this.mUserOperationInfo != null) {
                ResearchUtil.this.mUserOperationInfo.setViewerLaunched();
            }
            if (ResearchUtil.this.mPanoramaInfo != null) {
                ResearchUtil.this.mPanoramaInfo.setViewerLaunched();
            }
        }
    }

    public void sendRecordingEvent(Event.UserOperation userOperation, boolean isThermalStop, boolean isLowBatteryStop, int recTimeMillis, boolean isLaunchViewerAfterRec) {
        sendRecordingEvent(userOperation, isThermalStop, isLowBatteryStop, recTimeMillis, isLaunchViewerAfterRec, null);
    }

    public void sendRecordingEvent(Event.UserOperation userOperation, boolean isThermalStop, boolean isLowBatteryStop, int recTimeMillis, boolean isLaunchViewerAfterRec, Map<String, String> settings) {
        this.mBackWorker.execute(new SendRecordingEventTask(userOperation, isThermalStop, isLowBatteryStop, recTimeMillis, isLaunchViewerAfterRec, settings));
    }

    private class SendRecordingEventTask implements Runnable {
        private final boolean mIsLaunchViewerAfterRec;
        private final boolean mIsLowBatteryStop;
        private final boolean mIsThermalStop;
        private final int mRecTimeMillis;
        private final Map<String, String> mSettings;
        private final Event.UserOperation mUserOperation;

        private SendRecordingEventTask(Event.UserOperation userOperation, boolean isThermalStop, boolean isLowBatteryStop, int recTimeMillis, boolean isLaunchViewerAfterRec, Map<String, String> settings) {
            this.mUserOperation = userOperation;
            this.mIsThermalStop = isThermalStop;
            this.mIsLowBatteryStop = isLowBatteryStop;
            this.mRecTimeMillis = recTimeMillis;
            this.mIsLaunchViewerAfterRec = isLaunchViewerAfterRec;
            this.mSettings = settings;
        }

        @Override // java.lang.Runnable
        public void run() {
            Event.StopOperation stopOperation = Event.StopOperation.getType(this.mIsThermalStop, this.mIsLowBatteryStop);
            int recTimeSec = this.mRecTimeMillis / 1000;
            if (recTimeSec >= 0) {
                if (!this.mIsLaunchViewerAfterRec && this.mUserOperation != null) {
                    ResearchUtil.this.setUserOperation(this.mUserOperation);
                }
                Map<String, String> paramSet = new ArrayMap<>();
                if (ResearchUtil.this.mTemporarySettingValues != null) {
                    for (ShootingLabel.Parameter param : ResearchUtil.this.mTemporarySettingValues.getParameterListForRecording()) {
                        paramSet.put(param.getClass().getSimpleName(), param.toString());
                    }
                }
                paramSet.put("rec_time", String.valueOf(recTimeSec));
                paramSet.put("resume", String.valueOf(ResearchUtil.this.mCountRecordResume));
                paramSet.put(CameraExtensionValues.EX_SCENE_DETECTION_SNAPSHOT, String.valueOf(ResearchUtil.this.mCountRecordSnapshot));
                paramSet.put("stop_factor", stopOperation.toString());
                if (this.mSettings == null || TextUtils.isEmpty(this.mSettings.get("VIDEO_SIZE"))) {
                    paramSet.put("video_size", "Other");
                } else {
                    paramSet.put("video_size", this.mSettings.get("VIDEO_SIZE"));
                }
                ResearchUtil.this.sendEventAllSettings(Event.Category.ALL_SETTINGS_VIDEO, paramSet, this.mSettings == null ? new ArrayMap() : this.mSettings);
                StringBuffer labelInfo = new StringBuffer();
                labelInfo.append(String.valueOf(recTimeSec));
                labelInfo.append("_Sec_");
                labelInfo.append(String.valueOf(ResearchUtil.this.mCountRecordResume));
                labelInfo.append("_Resume_");
                labelInfo.append(String.valueOf(ResearchUtil.this.mCountRecordSnapshot));
                labelInfo.append("_Snapshot_");
                ResearchUtil.this.mCountRecordResume = 0;
                ResearchUtil.this.mCountRecordSnapshot = 0;
                if (ResearchUtil.this.mTemporarySettingValues != null) {
                    labelInfo.append(ResearchUtil.this.mTemporarySettingValues.toStringForRecording());
                    ResearchUtil.this.mTemporarySettingValues.clearRecordingMaxFaceNum();
                }
                if (this.mSettings == null || TextUtils.isEmpty(this.mSettings.get("VIDEO_SIZE"))) {
                    labelInfo.append(getVideoSizeEventLabel("Other"));
                } else {
                    labelInfo.append(getVideoSizeEventLabel(this.mSettings.get("VIDEO_SIZE")));
                }
                ResearchUtil.this.sendEvent(Event.Category.RECORDING, stopOperation.toString(), labelInfo.toString());
            }
        }

        private String getVideoSizeEventLabel(String videoSize) {
            if (TextUtils.isEmpty(videoSize) || videoSize.equals("Other")) {
                return "_V0";
            }
            switch (VideoSize.getVideoSize(videoSize)) {
            }
            return "_V0";
        }
    }

    public void incrementCountRecordResume() {
        this.mBackWorker.execute(new IncrementCountRecordResumeTask());
    }

    private class IncrementCountRecordResumeTask implements Runnable {
        private IncrementCountRecordResumeTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ResearchUtil.access$2708(ResearchUtil.this);
        }
    }

    public void incrementCountSnapshotInRecording() {
        this.mBackWorker.execute(new IncrementCountSnapshotInRecordingTask());
    }

    private class IncrementCountSnapshotInRecordingTask implements Runnable {
        private IncrementCountSnapshotInRecordingTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ResearchUtil.access$2808(ResearchUtil.this);
        }
    }

    public void setUserOperation(Event.UserOperation operation) {
        setUserOperation(operation, null, null);
    }

    public void setUserOperation(Event.UserOperation operation, List<ShootingLabel.Parameter> params, Map<String, String> settings) {
        this.mBackWorker.execute(new SetUserOperationTask(operation, params, settings));
    }

    private class SetUserOperationTask implements Runnable {
        private final List<ShootingLabel.Parameter> mParams;
        private final Map<String, String> mSettings;
        private final Event.UserOperation mUserOperation;

        private SetUserOperationTask(Event.UserOperation userOperation, List<ShootingLabel.Parameter> params, Map<String, String> settings) {
            this.mUserOperation = userOperation;
            this.mParams = params;
            this.mSettings = settings;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ResearchUtil.this.mUserOperationInfo != null) {
                ResearchUtil.this.mUserOperationInfo.setUserOperation(this.mUserOperation, this.mParams, this.mSettings);
            }
        }
    }

    public void tryPanorama() {
        this.mBackWorker.execute(new TryPanoramaTask());
    }

    private class TryPanoramaTask implements Runnable {
        private TryPanoramaTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ResearchUtil.this.mPanoramaInfo != null) {
                ResearchUtil.this.mPanoramaInfo.tryPanorama();
            }
        }
    }

    public void succeedInPanorama() {
        this.mBackWorker.execute(new SucceedInPanoramaTask());
    }

    private class SucceedInPanoramaTask implements Runnable {
        private SucceedInPanoramaTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ResearchUtil.this.mPanoramaInfo != null) {
                ResearchUtil.this.mPanoramaInfo.succeedInPanorama();
            }
        }
    }

    public void sendEvent(Event.Category category, Event.Action action, Event.Label label) {
        sendEvent(category, action, label, 0L);
    }

    public void sendEvent(Event.Category category, Event.Action action, Event.Label label, long value) {
        String strAction = action == null ? null : action.toString();
        String strLabel = label != null ? label.toString() : null;
        sendEvent(category, strAction, strLabel, value);
    }

    public void sendEvent(Event.Category category, String action, String label) {
        sendEvent(category, action, label, 0L);
    }

    private void sendEvent(Event.Category category, String action, String label, long value) {
        this.mBackWorker.execute(new SendEventTask(category, action, label, value));
    }

    private static class SendEventTask implements Runnable {
        private final String mAction;
        private final Event.Category mCategory;
        private final String mLabel;
        private final long mValue;

        private SendEventTask(Event.Category category, String action, String label, long value) {
            this.mCategory = category;
            this.mAction = action;
            this.mLabel = label;
            this.mValue = value;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            GoogleAnalyticsUtil.sendEvent(this.mCategory, this.mAction, this.mLabel, this.mValue);
            IddUtil.sendEvent(this.mCategory, this.mAction, this.mLabel, this.mValue);
        }
    }

    private static class TemporarySettingValues {
        private float mZoomRatio = 1.0f;
        private int mOrientation = 0;
        private int mFaceNum = 0;
        private int mRecordingMaxFaceNum = 0;
        private int mPredictiveCaptureNum = 0;
        private Event.CaptureTrigger mCaptureTrigger = Event.CaptureTrigger.OTHER;

        public void updateZoomRatio(float val) {
            this.mZoomRatio = val;
        }

        public void updateOrientation(int val) {
            this.mOrientation = val;
        }

        public void updateFaceNum(int val) {
            this.mFaceNum = val;
        }

        public void updateRecordingMaxFaceNum(int val) {
            if (this.mRecordingMaxFaceNum < val) {
                this.mRecordingMaxFaceNum = val;
            }
        }

        public void updatePredictiveCaptureNum(int val) {
            this.mPredictiveCaptureNum = val;
        }

        public void updateCaptureTrigger(Event.CaptureTrigger trigger) {
            this.mCaptureTrigger = trigger;
        }

        public void clearFaceNum() {
            this.mFaceNum = 0;
        }

        public void clearRecordingMaxFaceNum() {
            this.mRecordingMaxFaceNum = 0;
        }

        public void clearCaptureTrigger() {
            this.mCaptureTrigger = Event.CaptureTrigger.OTHER;
        }

        private int roundZoomRatio() {
            if (this.mZoomRatio - 0.05f < 1.0f) {
                return 0;
            }
            return (int) this.mZoomRatio;
        }

        public String toString() {
            return "Z" + roundZoomRatio() + "_O" + this.mOrientation + "_F" + this.mFaceNum;
        }

        public String toStringForRecording() {
            return "Z" + roundZoomRatio() + "_O" + this.mOrientation + "_F" + this.mRecordingMaxFaceNum;
        }

        public List<ShootingLabel.Parameter> getParameterList() {
            ArrayList<ShootingLabel.Parameter> list = new ArrayList<>();
            list.add(ShootingLabel.getOrientationParameter(this.mOrientation));
            list.add(ShootingLabel.getZoomParameter(roundZoomRatio()));
            list.add(ShootingLabel.getFaceNumParameter(this.mFaceNum));
            list.add(ShootingLabel.getPredictiveCaptureNumParameter(this.mPredictiveCaptureNum));
            list.add(ShootingLabel.getCaptureTriggerParameter(this.mCaptureTrigger.toString()));
            return list;
        }

        public List<ShootingLabel.Parameter> getParameterListForRecording() {
            ArrayList<ShootingLabel.Parameter> list = new ArrayList<>();
            list.add(ShootingLabel.getOrientationParameter(this.mOrientation));
            list.add(ShootingLabel.getZoomParameter(roundZoomRatio()));
            list.add(ShootingLabel.getFaceNumParameter(this.mRecordingMaxFaceNum));
            return list;
        }
    }

    public void clearTemporarySettingValues() {
        this.mBackWorker.execute(new ClearTemporarySettingValuesTask());
    }

    private class ClearTemporarySettingValuesTask implements Runnable {
        private ClearTemporarySettingValuesTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ResearchUtil.this.mTemporarySettingValues = null;
        }
    }

    public void setZoomRatio(float zoomRatio) {
        this.mBackWorker.execute(new SetZoomRatioTask(zoomRatio));
    }

    private class SetZoomRatioTask implements Runnable {
        private final float mZoomRatio;

        public SetZoomRatioTask(float zoomRatio) {
            this.mZoomRatio = zoomRatio;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ResearchUtil.this.mTemporarySettingValues == null) {
                ResearchUtil.this.mTemporarySettingValues = new TemporarySettingValues();
            }
            ResearchUtil.this.mTemporarySettingValues.updateZoomRatio(this.mZoomRatio);
        }
    }

    public void setOrientation(int orientation) {
        this.mBackWorker.execute(new SetOrientationTask(orientation));
    }

    private class SetOrientationTask implements Runnable {
        private final int mOrientation;

        public SetOrientationTask(int orientation) {
            this.mOrientation = orientation;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ResearchUtil.this.mTemporarySettingValues == null) {
                ResearchUtil.this.mTemporarySettingValues = new TemporarySettingValues();
            }
            ResearchUtil.this.mTemporarySettingValues.updateOrientation(this.mOrientation);
        }
    }

    public void setFaceNum(int num) {
        this.mBackWorker.execute(new SetFaceNumTask(num));
    }

    private class SetFaceNumTask implements Runnable {
        private final int mNum;

        public SetFaceNumTask(int num) {
            this.mNum = num;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ResearchUtil.this.mTemporarySettingValues == null) {
                ResearchUtil.this.mTemporarySettingValues = new TemporarySettingValues();
            }
            ResearchUtil.this.mTemporarySettingValues.updateFaceNum(this.mNum);
        }
    }

    public void setRecordingMaxFaceNum(int num) {
        this.mBackWorker.execute(new SetRecordingMaxFaceNumTask(num));
    }

    private class SetRecordingMaxFaceNumTask implements Runnable {
        private final int mNum;

        public SetRecordingMaxFaceNumTask(int num) {
            this.mNum = num;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ResearchUtil.this.mTemporarySettingValues == null) {
                ResearchUtil.this.mTemporarySettingValues = new TemporarySettingValues();
            }
            ResearchUtil.this.mTemporarySettingValues.updateRecordingMaxFaceNum(this.mNum);
        }
    }

    public void clearFaceNum() {
        this.mBackWorker.execute(new ClearFaceNumTask());
    }

    private class ClearFaceNumTask implements Runnable {
        private ClearFaceNumTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ResearchUtil.this.mTemporarySettingValues == null) {
                ResearchUtil.this.mTemporarySettingValues = new TemporarySettingValues();
            }
            ResearchUtil.this.mTemporarySettingValues.clearFaceNum();
        }
    }

    public void setPredictiveCaptureNum(int predictiveCaptureNum) {
        this.mBackWorker.execute(new SetPredictiveCaptureNumTask(predictiveCaptureNum));
    }

    private class SetPredictiveCaptureNumTask implements Runnable {
        private final int mPredictiveCaptureNum;

        public SetPredictiveCaptureNumTask(int predictiveCaptureNum) {
            this.mPredictiveCaptureNum = predictiveCaptureNum;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ResearchUtil.this.mTemporarySettingValues == null) {
                ResearchUtil.this.mTemporarySettingValues = new TemporarySettingValues();
            }
            ResearchUtil.this.mTemporarySettingValues.updatePredictiveCaptureNum(this.mPredictiveCaptureNum);
        }
    }

    public void setCaptureTrigger(Event.CaptureTrigger trigger) {
        this.mBackWorker.execute(new SetCaptureTriggerTask(trigger));
    }

    private class SetCaptureTriggerTask implements Runnable {
        private final Event.CaptureTrigger mCaptureTrigger;

        public SetCaptureTriggerTask(Event.CaptureTrigger trigger) {
            this.mCaptureTrigger = trigger;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ResearchUtil.this.mTemporarySettingValues == null) {
                ResearchUtil.this.mTemporarySettingValues = new TemporarySettingValues();
            }
            ResearchUtil.this.mTemporarySettingValues.updateCaptureTrigger(this.mCaptureTrigger);
        }
    }

    public void clearCaptureTrigger() {
        this.mBackWorker.execute(new ClearCaptureTriggerTask());
    }

    private class ClearCaptureTriggerTask implements Runnable {
        private ClearCaptureTriggerTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ResearchUtil.this.mTemporarySettingValues == null) {
                ResearchUtil.this.mTemporarySettingValues = new TemporarySettingValues();
            }
            ResearchUtil.this.mTemporarySettingValues.clearCaptureTrigger();
        }
    }

    private static class AfDoneKeepingTimeHolder {
        private boolean mContinuousCapture;
        private long mTimeAfDone;
        private long mTimeCapture;

        private AfDoneKeepingTimeHolder() {
            this.mContinuousCapture = false;
            this.mTimeAfDone = 0L;
            this.mTimeCapture = 0L;
        }

        public void updateContinuousCapture(boolean continuousCapture) {
            this.mContinuousCapture = continuousCapture;
        }

        public void updateTimeAfDone(long time) {
            this.mTimeAfDone = time;
        }

        public void updateTimeCapture(long time) {
            this.mTimeCapture = time;
        }

        public ShootingLabel.Parameter getParameter() {
            Event.TimeFromAfDoneToCaptureStart type;
            if (this.mContinuousCapture) {
                type = Event.TimeFromAfDoneToCaptureStart.CONTINUOUS_CAPTURE;
            } else if (this.mTimeAfDone == 0) {
                type = Event.TimeFromAfDoneToCaptureStart.NOT_TARGET;
            } else {
                if (CameraLogger.isUserdebugOrEngBuild) {
                    CameraLogger.p(ResearchUtil.TAG, "AfDoneKeepingTime: " + (this.mTimeCapture - this.mTimeAfDone));
                }
                type = Event.TimeFromAfDoneToCaptureStart.getType(this.mTimeCapture - this.mTimeAfDone);
            }
            return ShootingLabel.getAfDoneKeepingTimeParameter(type.toString());
        }

        public void clear() {
            this.mTimeAfDone = 0L;
            this.mTimeCapture = 0L;
            this.mContinuousCapture = false;
        }
    }

    public void setContinuousCapture() {
        this.mBackWorker.execute(new SetContinuousCaptureTask());
    }

    private class SetContinuousCaptureTask implements Runnable {
        private SetContinuousCaptureTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ResearchUtil.this.mAfDoneKeepingTimeHolder == null) {
                ResearchUtil.this.mAfDoneKeepingTimeHolder = new AfDoneKeepingTimeHolder();
            }
            ResearchUtil.this.mAfDoneKeepingTimeHolder.updateContinuousCapture(true);
        }
    }

    public void setTimeAfDone() {
        long time = System.currentTimeMillis();
        setTime(true, time);
    }

    public void setTimeCaptureStart() {
        long time = System.currentTimeMillis();
        setTime(false, time);
    }

    private void setTime(boolean isStart, long time) {
        this.mBackWorker.execute(new SetTimeTask(isStart, time));
    }

    private class SetTimeTask implements Runnable {
        private final boolean mIsStart;
        private final long mTime;

        public SetTimeTask(boolean isStart, long time) {
            this.mIsStart = isStart;
            this.mTime = time;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ResearchUtil.this.mAfDoneKeepingTimeHolder == null) {
                ResearchUtil.this.mAfDoneKeepingTimeHolder = new AfDoneKeepingTimeHolder();
            }
            if (this.mIsStart) {
                ResearchUtil.this.mAfDoneKeepingTimeHolder.updateTimeAfDone(this.mTime);
            } else {
                ResearchUtil.this.mAfDoneKeepingTimeHolder.updateTimeCapture(this.mTime);
            }
        }
    }

    private enum XperiaTipsLaunchTrigger {
        HW_KEY_SLEEP_OR_LOCK,
        HW_KEY_OTHER,
        SHORTCUT_LOCKSCREEN,
        POWER_KEY_DOUBLE_PRESS,
        HOME_APP,
        NOT_TARGET;

        private static final String EVENT_NAME = "launch_trigger";

        /* JADX INFO: Access modifiers changed from: private */
        public static void setLaunchTriggerEvent(Context context, CustomDimension.GALaunchedBy launchedBy) {
            XperiaTipsLaunchTrigger launchTrigger;
            if (launchedBy == CustomDimension.GALaunchedBy.HW_CAMERA_KEY_LOCK) {
                launchTrigger = HW_KEY_SLEEP_OR_LOCK;
            } else if (launchedBy == CustomDimension.GALaunchedBy.HW_CAMERA_KEY) {
                launchTrigger = HW_KEY_OTHER;
            } else if (launchedBy == CustomDimension.GALaunchedBy.LOCK_SCREEN) {
                launchTrigger = SHORTCUT_LOCKSCREEN;
            } else if (launchedBy == CustomDimension.GALaunchedBy.POWER_KEY_DOUBLE_TAP) {
                launchTrigger = POWER_KEY_DOUBLE_PRESS;
            } else if (launchedBy == CustomDimension.GALaunchedBy.HOME) {
                launchTrigger = HOME_APP;
            } else {
                return;
            }
            try {
                ContentValues v = new ContentValues();
                v.put("name", EVENT_NAME);
                v.put("data", launchTrigger.toString());
                context.getContentResolver().insert(ContributionContract.Event.CONTENT_URI, v);
            } catch (Exception e) {
            } catch (NoClassDefFoundError e2) {
                CameraLogger.e(ResearchUtil.TAG, "Not found getmore api : " + e2);
            }
        }
    }

    public void sendSelfTimerCancelledEvent(Event.SelfTimerTrigger trigger) {
        sendEvent(Event.Category.SELFTIMER_CANCELLED, trigger, (Event.Label) null);
    }

    public void sendPerformanceData(String key, long millis, boolean isHeated) {
        sendPerformanceData(key, millis, isHeated, null);
    }

    public void sendPerformanceData(String key, long millis, boolean isHeated, String batteryLevel) {
        this.mBackWorker.execute(new SendPerformanceDataTask(key, millis, isHeated, batteryLevel));
    }

    private static class SendPerformanceDataTask implements Runnable {
        private final String mBatteryLevel;
        private final boolean mIsHeated;
        private final String mKey;
        private final long mMillis;

        private SendPerformanceDataTask(String key, long millis, boolean isHeated, String batteryLevel) {
            this.mKey = key;
            this.mMillis = millis;
            this.mIsHeated = isHeated;
            this.mBatteryLevel = batteryLevel;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            IddUtil.sendPerformanceData(this.mKey, this.mMillis, this.mIsHeated, this.mBatteryLevel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendEventAllSettings(Event.Category category, Map<String, String> env, Map<String, String> settings) {
        this.mBackWorker.execute(new SendEventAllSettingsTask(category, env, settings));
    }

    private static class SendEventAllSettingsTask implements Runnable {
        private final Event.Category mCategory;
        private final Map<String, String> mEnv;
        private final Map<String, String> mSettings;

        private SendEventAllSettingsTask(Event.Category category, Map<String, String> env, Map<String, String> settings) {
            this.mCategory = category;
            this.mEnv = env;
            this.mSettings = settings;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            IddUtil.sendEventAllSettings(this.mCategory, this.mEnv, this.mSettings);
        }
    }

    public void sendEventChangedSetting(String setting, String before, String after) {
        this.mBackWorker.execute(new SendEventChangedSettingTask(setting, before, after));
    }

    private static class SendEventChangedSettingTask implements Runnable {
        private final String mAfter;
        private final String mBefore;
        private final String mSetting;

        private SendEventChangedSettingTask(String setting, String before, String after) {
            this.mSetting = setting;
            this.mBefore = before;
            this.mAfter = after;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            IddUtil.sendEventChangedSetting(this.mSetting, this.mBefore, this.mAfter);
        }
    }

    public enum VideoSize {
        FOUR_K_UHD,
        FULL_HD,
        FULL_HD_60FPS,
        HD,
        VGA,
        FWVGA,
        QVGA,
        MMS;

        public static VideoSize getVideoSize(String videoSize) {
            return valueOf(videoSize);
        }
    }

    public void startCatchException(Context context) {
        this.mBackWorker.execute(new startCatchExceptionTask(context));
    }

    private static class startCatchExceptionTask implements Runnable {
        private Context mContext;

        private startCatchExceptionTask(Context context) {
            this.mContext = context;
        }

        @Override // java.lang.Runnable
        public void run() throws IllegalStateException {
            GaGtmExceptionParser.enableExceptionParsing(this.mContext);
        }
    }
}