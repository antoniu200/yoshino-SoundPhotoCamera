package com.sonyericsson.cameracommon.systemmonitor;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.rotatableview.RotatableToast;
import com.sonyericsson.cameracommon.utility.BrandConfig;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import com.sonyericsson.cameracommon.utility.PerfLog;
import com.sonyericsson.psm.sysmonservice.ISysmonService;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class ThermalAlertReceiver extends BroadcastReceiver {
    private static final String ACTION_CAMERA_COOLED_DOWN_NORMAL = "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL";
    private static final String ACTION_CAMERA_HEATED_CLOSE_TO_SHUTDOWN = "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN";
    private static final String ACTION_CAMERA_HEATED_OVER_CRITICAL = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL";
    private static final String ACTION_CAMERA_HEATED_OVER_LOW_TEMP_BURN = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN";
    private static final String ACTION_CAMERA_LOW_TEMP_BURN_TIMER_RESET = "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET";
    private static final String ACTION_CAMERA_LOW_TEMP_BURN_TIMER_SET = "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET";
    private static final int CAMERA_CRITICAL = 604;
    private static final int CAMERA_HEATED_CLOSE_TO_SHUTDOWN = 620;
    private static final String CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC";
    private static final int CAMERA_LOW_TEMP_BURN = 610;
    private static final int CAMERA_NORMAL = 600;
    private static final int CAMERA_WARNING = 603;
    private static final int CAMERA_WARNING_EXTRA = 601;
    private static final int INVALID_LOW_TEMP_BURN_TIMEOUT_DURATION = -1;
    private static final String KEY_LOW_TEMP_BURN_TIMER_DURATION_SEC = "com.sonyericsson.psm.extra.TIMEOUT_SEC";
    private static final int LOW_TEMP_BURN_TIMER_LIMIT_MILLIS = 1800000;
    private static final String SHARED_PREFS_KEY_THERMAL_WARNING_DISABLED = "THERMAL_WARNING_DISABLED";
    private static final String SYSMON_SERVICE = "com.sonyericsson.psm.sysmonservice";
    private static final String SYSMON_SERVICE_CLASS = "com.sonyericsson.psm.sysmonservice.SysmonService";
    public static final String TAG = "ThermalAlertReceiver";
    private static final int VARIABLE_LOW_TEMP_BURN_TIMEOUT_DURATION_NOT_SUPPORTED = 0;
    private final Activity mActivity;
    private boolean mIsBindSysmonService;
    private final ThermalAlertReceiverListener mListener;
    private final LowTempBurnTimeoutTimerWrapper mLowTempBurnTimerFixedDuration;
    private final LowTempBurnTimeoutTimerWrapper mLowTempBurnTimerVariableDuration;
    private final MessagePopup mMessagePopup;
    private final ParamSharedPrefWrapper mParamSharedPrefWrapper;
    private ISysmonService mSysmonService;
    private RotatableDialog mThermalWarningDialog;
    private boolean mIsAlreadyHighTemperature = false;
    private boolean mIsWarningState = false;
    private boolean mIsWarningExtraState = false;
    private boolean mIsWarningReceived = false;
    private final ServiceConnection mServiceConnectionSysmon = new ServiceConnectionSysmon();

    public interface ThermalAlertReceiverListener {
        void onNotifyThermalNormal();

        void onNotifyThermalWarning(boolean z);

        void onNotifyThermalWarningExtra(boolean z);

        void onReachHighTemperature(boolean z);
    }

    public boolean isAlreadyHighTemperature() {
        return this.mIsAlreadyHighTemperature;
    }

    public boolean isWarningState() {
        return this.mIsWarningState;
    }

    public boolean isThermalWarningReceived() {
        return this.mIsWarningReceived;
    }

    public boolean isWarningExtraState() {
        return this.mIsWarningExtraState | this.mIsWarningState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkStartupStatus(int status, String service) {
        this.mIsAlreadyHighTemperature = false;
        switch (status) {
            case CAMERA_NORMAL /* 600 */:
                changeToNormalState();
                break;
            case CAMERA_WARNING_EXTRA /* 601 */:
                changeToWarningExtraState(true);
                break;
            case CAMERA_WARNING /* 603 */:
                this.mIsAlreadyHighTemperature = true;
                finishOnStartup();
                break;
            case CAMERA_CRITICAL /* 604 */:
                this.mIsAlreadyHighTemperature = true;
                finishOnStartup();
                break;
            case CAMERA_HEATED_CLOSE_TO_SHUTDOWN /* 620 */:
                changeToWarningState(true);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkLowTempBurnTimeoutTimerDuration(int thermalLevel, int durationSec) {
        if (durationSec == 0) {
            if (thermalLevel == CAMERA_LOW_TEMP_BURN) {
                this.mLowTempBurnTimerFixedDuration.requestTimeMillis(1800000L);
            }
        } else if (durationSec != -1) {
            this.mLowTempBurnTimerVariableDuration.requestTimeMillis(durationSec * 1000);
        }
    }

    class ServiceConnectionSysmon implements ServiceConnection {
        ServiceConnectionSysmon() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            ThermalAlertReceiver.this.mSysmonService = ISysmonService.Stub.asInterface(service);
            if (ThermalAlertReceiver.this.mSysmonService != null) {
                try {
                    int thermalLevel = ThermalAlertReceiver.this.mSysmonService.getThermalLevelForCamera();
                    ThermalAlertReceiver.this.checkStartupStatus(thermalLevel, "sysmon");
                    int timeoutSec = ThermalAlertReceiver.this.mSysmonService.getCameraLowTempBurnTimeoutSec();
                    ThermalAlertReceiver.this.checkLowTempBurnTimeoutTimerDuration(thermalLevel, timeoutSec);
                } catch (Exception e) {
                    CameraLogger.e(ThermalAlertReceiver.TAG, "sysmon ServiceConnection failed.", e);
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            ThermalAlertReceiver.this.mSysmonService = null;
        }
    }

    public ThermalAlertReceiver(Activity activity, MessagePopup messagePopup, ThermalAlertReceiverListener listener, ParamSharedPrefWrapper pref) {
        this.mThermalWarningDialog = null;
        this.mActivity = activity;
        this.mMessagePopup = messagePopup;
        this.mListener = listener;
        this.mParamSharedPrefWrapper = pref;
        this.mThermalWarningDialog = null;
        this.mLowTempBurnTimerFixedDuration = new LowTempBurnTimeoutTimerWrapper();
        this.mLowTempBurnTimerVariableDuration = new LowTempBurnTimeoutTimerWrapper();
    }

    public void onCreate() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ACTION_CAMERA_HEATED_OVER_CRITICAL);
        intentFilter.addAction(CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC);
        intentFilter.addAction(ACTION_CAMERA_HEATED_OVER_LOW_TEMP_BURN);
        intentFilter.addAction(ACTION_CAMERA_COOLED_DOWN_NORMAL);
        intentFilter.addAction(ACTION_CAMERA_HEATED_CLOSE_TO_SHUTDOWN);
        intentFilter.addAction(ACTION_CAMERA_LOW_TEMP_BURN_TIMER_SET);
        intentFilter.addAction(ACTION_CAMERA_LOW_TEMP_BURN_TIMER_RESET);
        this.mActivity.registerReceiver(this, intentFilter);
        this.mIsWarningExtraState = false;
    }

    public void onDestroy() {
        this.mActivity.unregisterReceiver(this);
    }

    public void onResume() {
        this.mIsAlreadyHighTemperature = false;
        this.mIsWarningExtraState = false;
        Intent intent = new Intent();
        intent.setClassName(SYSMON_SERVICE, SYSMON_SERVICE_CLASS);
        PerfLog.BIND_SYSMON_SERVICE.begin();
        this.mIsBindSysmonService = this.mActivity.bindService(intent, this.mServiceConnectionSysmon, 0);
        PerfLog.BIND_SYSMON_SERVICE.end();
        if (!this.mIsBindSysmonService) {
            this.mActivity.unbindService(this.mServiceConnectionSysmon);
        }
    }

    public void onPause() {
        this.mIsAlreadyHighTemperature = false;
        if (this.mIsBindSysmonService) {
            this.mIsBindSysmonService = false;
            this.mActivity.unbindService(this.mServiceConnectionSysmon);
        }
        this.mLowTempBurnTimerFixedDuration.cancel();
        this.mLowTempBurnTimerVariableDuration.cancel();
        this.mIsWarningReceived = false;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int durationSec;
        if (this.mIsBindSysmonService && !this.mIsAlreadyHighTemperature) {
            String action = intent.getAction();
            if (ACTION_CAMERA_HEATED_OVER_CRITICAL.equals(action)) {
                this.mLowTempBurnTimerFixedDuration.cancel();
                this.mLowTempBurnTimerVariableDuration.cancel();
                this.mIsAlreadyHighTemperature = true;
                if (this.mThermalWarningDialog != null) {
                    this.mThermalWarningDialog.dismiss();
                }
                showDialogCritical();
                return;
            }
            if (ACTION_CAMERA_COOLED_DOWN_NORMAL.equals(action)) {
                this.mLowTempBurnTimerFixedDuration.cancel();
                changeToNormalState();
                return;
            }
            if (ACTION_CAMERA_HEATED_OVER_LOW_TEMP_BURN.equals(action)) {
                this.mLowTempBurnTimerFixedDuration.requestTimeMillis(1800000L);
                return;
            }
            if (ACTION_CAMERA_HEATED_CLOSE_TO_SHUTDOWN.equals(action)) {
                if (!this.mParamSharedPrefWrapper.getParamFromSP(getSharedPrefsKeyForThermalWarningDialog(), false)) {
                    showDialogWarning();
                }
                changeToWarningState(false);
            } else {
                if (ACTION_CAMERA_LOW_TEMP_BURN_TIMER_SET.equals(action)) {
                    Bundle bundle = intent.getExtras();
                    if (bundle != null && (durationSec = bundle.getInt(KEY_LOW_TEMP_BURN_TIMER_DURATION_SEC, -1)) != -1) {
                        this.mLowTempBurnTimerVariableDuration.requestTimeMillis(durationSec * 1000);
                        return;
                    }
                    return;
                }
                if (ACTION_CAMERA_LOW_TEMP_BURN_TIMER_RESET.equals(action)) {
                    this.mLowTempBurnTimerVariableDuration.cancel();
                } else if (CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC.equals(action)) {
                    changeToWarningExtraState(false);
                }
            }
        }
    }

    private void finishOnStartup() {
        this.mListener.onReachHighTemperature(true);
        this.mMessagePopup.showRotatableToastMessageAndAbort(R.string.cam_strings_error_high_temp_already_high_txt, 1, RotatableToast.ToastPosition.CENTER);
    }

    private class ThermalWarningDialogCloseListener implements DialogInterface.OnClickListener, DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
        private Runnable mTask;

        public ThermalWarningDialogCloseListener(Runnable task) {
            this.mTask = task;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int arg1) {
            ThermalAlertReceiver.this.mActivity.runOnUiThread(this.mTask);
            ThermalAlertReceiver.this.mThermalWarningDialog = null;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface arg0) {
            ThermalAlertReceiver.this.mThermalWarningDialog = null;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface arg0) {
            ThermalAlertReceiver.this.mThermalWarningDialog = null;
        }
    }

    private void showDialogWarning() {
        LayoutInflater inflater = this.mActivity.getLayoutInflater();
        if (inflater != null) {
            View thermalWarningView = inflater.inflate(R.layout.thermal_warning_popup_content, (ViewGroup) null);
            TextView header = (TextView) thermalWarningView.findViewById(R.id.header_text);
            header.setText(getThermalWarningString());
            CheckBoxListener checkBoxListener = new CheckBoxListener(this.mParamSharedPrefWrapper, getSharedPrefsKeyForThermalWarningDialog());
            ThermalWarningDialogCloseListener closeListener = new ThermalWarningDialogCloseListener(checkBoxListener);
            CheckBox checkBox = (CheckBox) thermalWarningView.findViewById(R.id.check_box);
            checkBox.setOnCheckedChangeListener(checkBoxListener);
            checkBox.setChecked(true);
            this.mThermalWarningDialog = this.mMessagePopup.showOkAndCustomView(thermalWarningView, R.string.cam_strings_dialog_high_temp_title_txt, false, R.string.cam_strings_ok_txt, closeListener, closeListener);
            if (this.mThermalWarningDialog != null) {
                this.mThermalWarningDialog.setOnDismissListener(closeListener);
            }
        }
    }

    private String getSharedPrefsKeyForThermalWarningDialog() {
        return "THERMAL_WARNING_DISABLED_" + this.mActivity.getPackageName();
    }

    protected static class CheckBoxListener implements CompoundButton.OnCheckedChangeListener, Runnable {
        private boolean mIsItemChecked = false;
        private final ParamSharedPrefWrapper mSharedPrefs;
        private final String mSharedPrefsKey;

        public CheckBoxListener(ParamSharedPrefWrapper shardPrefs, String sharedPrefsKey) {
            this.mSharedPrefs = shardPrefs;
            this.mSharedPrefsKey = sharedPrefsKey;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            this.mIsItemChecked = isChecked;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mSharedPrefs.setParamToSP(this.mSharedPrefsKey, this.mIsItemChecked);
        }
    }

    private int getThermalWarningString() {
        return BrandConfig.isVerizonBrand() ? R.string.cam_strings_error_high_temp_info_vzw_txt : R.string.cam_strings_error_high_temp_info_txt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDialogCritical() {
        this.mListener.onReachHighTemperature(false);
        this.mMessagePopup.showThermalCritical();
    }

    private class LowTempBurnTimeoutTimerWrapper {
        static final long INVALID_TIMER_TIME = -1;
        private Timer mTimer;
        private long mTimerToBeExpiredTimeMillis;

        private LowTempBurnTimeoutTimerWrapper() {
            this.mTimer = null;
            this.mTimerToBeExpiredTimeMillis = -1L;
        }

        private long getRemainedTimeMillis() {
            if (this.mTimerToBeExpiredTimeMillis == -1) {
                return -1L;
            }
            long remainedTimeMillis = this.mTimerToBeExpiredTimeMillis - System.currentTimeMillis();
            if (remainedTimeMillis <= 0) {
                return -1L;
            }
            return remainedTimeMillis;
        }

        public final synchronized void requestTimeMillis(long durationTimeMillis) {
            long remainedTimeMillis = getRemainedTimeMillis();
            if (remainedTimeMillis == -1 || remainedTimeMillis >= durationTimeMillis) {
                cancel();
                this.mTimer = new Timer(true);
                this.mTimer.schedule(new LowTempBurnTimerTask(), durationTimeMillis);
                this.mTimerToBeExpiredTimeMillis = System.currentTimeMillis() + durationTimeMillis;
            }
        }

        public final synchronized void cancel() {
            if (this.mTimer != null) {
                this.mTimer.cancel();
                this.mTimer.purge();
                this.mTimer = null;
                this.mTimerToBeExpiredTimeMillis = -1L;
            }
        }

        private class LowTempBurnTimerTask extends TimerTask {
            private final Handler mHandler;

            private LowTempBurnTimerTask() {
                this.mHandler = new Handler();
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                cancel();
                this.mHandler.post(new Runnable() { // from class: com.sonyericsson.cameracommon.systemmonitor.ThermalAlertReceiver.LowTempBurnTimeoutTimerWrapper.LowTempBurnTimerTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ThermalAlertReceiver.this.mIsAlreadyHighTemperature = true;
                        ThermalAlertReceiver.this.showDialogCritical();
                    }
                });
            }
        }
    }

    private void changeToNormalState() {
        this.mIsWarningState = false;
        this.mListener.onNotifyThermalNormal();
    }

    private void changeToWarningState(boolean isOnStartup) {
        this.mIsWarningState = true;
        this.mIsWarningReceived = true;
        this.mListener.onNotifyThermalWarning(isOnStartup);
        this.mListener.onNotifyThermalWarningExtra(isOnStartup);
    }

    private void changeToWarningExtraState(boolean isOnStartup) {
        this.mIsWarningExtraState = true;
        this.mListener.onNotifyThermalWarningExtra(isOnStartup);
    }
}