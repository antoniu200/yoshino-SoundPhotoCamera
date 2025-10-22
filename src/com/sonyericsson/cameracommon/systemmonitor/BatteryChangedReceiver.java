package com.sonyericsson.cameracommon.systemmonitor;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.core.app.NotificationCompat;

/* loaded from: classes.dex */
public class BatteryChangedReceiver extends BroadcastReceiver {
    private static final boolean BATTERY_CHECK_ENABLED;
    private static final String SHARED_PREFS_KEY_BATTERY_WARNING_DISABLED = "BATTERY_WARNING_DISABLED";
    private static final String TAG = "BatteryChangedReceiver";
    private static final int THRESHOLD_BATTERY_LEVEL;
    public static final int THRESHOLD_LOW_BATTERY_LEVEL;
    private final Context mContext;
    private final Handler mHandler;
    private final BatteryChangedReceiverListener mListener;
    private boolean mIsAlreadyBcl = false;
    private boolean mIsOnPause = false;
    private int mBatteryLevel = 100;
    private int mBatteryStatus = 1;
    private int mPlugType = 0;
    private int mBatteryTemperature = 0;
    private int mHealth = 1;

    public interface BatteryChangedReceiverListener {
        void onBatteryLevelChanged(int i);

        void onReachBatteryLimit(boolean z);

        void onReachLowBattery();
    }

    static {
        if ("msm8996".equalsIgnoreCase(Build.BOARD) || "sdm845".equalsIgnoreCase(Build.BOARD)) {
            THRESHOLD_BATTERY_LEVEL = 5;
            THRESHOLD_LOW_BATTERY_LEVEL = 15;
            BATTERY_CHECK_ENABLED = true;
        } else {
            THRESHOLD_BATTERY_LEVEL = 1;
            THRESHOLD_LOW_BATTERY_LEVEL = 15;
            BATTERY_CHECK_ENABLED = true;
        }
    }

    public BatteryChangedReceiver(Context context, BatteryChangedReceiverListener listener) {
        this.mContext = context;
        this.mListener = listener;
        this.mHandler = new Handler(context.getMainLooper());
    }

    public void onCreate() {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        intentFilter.setPriority(999);
        this.mContext.registerReceiver(this, intentFilter);
    }

    public void onDestroy() {
        this.mContext.unregisterReceiver(this);
    }

    public void onResume() {
        this.mIsAlreadyBcl = false;
        this.mIsOnPause = false;
    }

    public void onPause() {
        this.mIsAlreadyBcl = false;
        this.mIsOnPause = true;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!this.mIsOnPause) {
            String action = intent.getAction();
            if (action.equals("android.intent.action.BATTERY_CHANGED")) {
                int oldBatteryLevel = this.mBatteryLevel;
                this.mBatteryLevel = intent.getIntExtra("level", 100);
                int i = this.mBatteryStatus;
                this.mBatteryStatus = intent.getIntExtra(NotificationCompat.CATEGORY_STATUS, 1);
                int oldPlugType = this.mPlugType;
                this.mPlugType = intent.getIntExtra("plugged", 0);
                int i2 = this.mBatteryTemperature;
                this.mBatteryTemperature = intent.getIntExtra("temperature", 0);
                int i3 = this.mHealth;
                this.mHealth = intent.getIntExtra("health", 1);
                if (this.mPlugType != 0) {
                }
                if (oldPlugType == 0) {
                }
                if (!checkBcl(this.mBatteryLevel, false)) {
                    if (isCheckEnabled() && this.mBatteryLevel <= THRESHOLD_LOW_BATTERY_LEVEL && oldBatteryLevel > THRESHOLD_LOW_BATTERY_LEVEL && oldBatteryLevel != this.mBatteryLevel) {
                        notifyLowBattery();
                    }
                    notifyBatteryLevel(this.mBatteryLevel);
                }
            }
        }
    }

    public void checkStartupStatus() {
        this.mIsAlreadyBcl = false;
        BatteryManager bm = (BatteryManager) this.mContext.getSystemService(Context.BATTERY_SERVICE);
        this.mBatteryLevel = bm.getIntProperty(4);
        if (!checkBcl(this.mBatteryLevel, true)) {
            if (isCheckEnabled() && this.mBatteryLevel <= THRESHOLD_LOW_BATTERY_LEVEL) {
                notifyLowBattery();
            }
            notifyBatteryLevel(this.mBatteryLevel);
        }
    }

    private boolean checkBcl(int percentage, final boolean isOnStartup) {
        if (!this.mIsAlreadyBcl && isCheckEnabled() && percentage <= THRESHOLD_BATTERY_LEVEL) {
            this.mIsAlreadyBcl = true;
            if (Thread.currentThread().equals(Looper.getMainLooper().getThread())) {
                this.mListener.onReachBatteryLimit(isOnStartup);
                return true;
            }
            this.mHandler.post(new Runnable() { // from class: com.sonyericsson.cameracommon.systemmonitor.BatteryChangedReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    BatteryChangedReceiver.this.mListener.onReachBatteryLimit(isOnStartup);
                }
            });
            return true;
        }
        return false;
    }

    public boolean isAlreadyBcl() {
        return this.mIsAlreadyBcl;
    }

    private void notifyLowBattery() {
        this.mListener.onReachLowBattery();
    }

    private void notifyBatteryLevel(int percentage) {
        this.mListener.onBatteryLevelChanged(percentage);
    }

    public int getBatteryLevel() {
        return this.mBatteryLevel;
    }

    public static boolean isCheckEnabled() {
        return BATTERY_CHECK_ENABLED;
    }

    public static String getSharedPrefsKeyForBatteryWarningDialog(Activity activity) {
        return "BATTERY_WARNING_DISABLED_" + activity.getPackageName();
    }
}