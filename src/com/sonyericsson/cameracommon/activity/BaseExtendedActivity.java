package com.sonyericsson.cameracommon.activity;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.hardware.Camera;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.values.SaveDestination;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.sound.SoundPlayer;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.OneShotUtility;
import com.sonyericsson.cameracommon.utility.StaticConfigurationUtil;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public abstract class BaseExtendedActivity extends BaseActivity {
    public static final String TAG = "BaseExtendedActivity";
    protected SoundPlayer mSoundPlayer;
    private StartUpGuardian mStartUpGuardian;
    private final BroadcastReceiver mUserPresentIntentReceiver = new UserPresentIntentReceiver();
    private boolean mIsAlertDialogOpened = false;

    protected abstract Rect getPreviewSize();

    protected abstract void prepareFinish();

    private class UserPresentIntentReceiver extends BroadcastReceiver {
        private UserPresentIntentReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context content, Intent intent) {
            String action = intent.getAction();
            if (action.equals("android.intent.action.USER_PRESENT") && BaseExtendedActivity.this.mStartUpGuardian != null) {
                BaseExtendedActivity.this.mStartUpGuardian.resume();
            }
        }
    }

    private abstract class StartUpGuardian {
        private boolean mIsAlreadyResumed;

        private StartUpGuardian() {
            this.mIsAlreadyResumed = false;
        }

        public void resume() {
            KeyguardManager km = (KeyguardManager) BaseExtendedActivity.this.getSystemService(Context.KEYGUARD_SERVICE);
            if (km.isKeyguardLocked() && Settings.Global.getInt(BaseExtendedActivity.this.getContentResolver(), "device_provisioned", 0) != 0) {
                BaseExtendedActivity.this.mIsKeyguardAvailable = true;
            } else {
                BaseExtendedActivity.this.mIsKeyguardAvailable = false;
            }
        }

        public void pause() {
        }

        protected void tryToResumeAll() {
            if (!BaseExtendedActivity.this.mIsKeyguardAvailable && !this.mIsAlreadyResumed) {
                this.mIsAlreadyResumed = true;
                if (!StorageUtil.isPreinstalledOrUpdatedPreinstalledApp(BaseExtendedActivity.this)) {
                    BaseExtendedActivity.this.showAndConfirmDisclaimer();
                }
                if (StaticConfigurationUtil.isForceSound()) {
                    BaseExtendedActivity.this.pauseAudioPlayback();
                }
                BaseExtendedActivity.this.resumeAll();
            }
        }
    }

    private class StartUpGuardianUnlimited extends StartUpGuardian {
        private StartUpGuardianUnlimited() {
            super();
        }

        @Override // com.sonyericsson.cameracommon.activity.BaseExtendedActivity.StartUpGuardian
        public void resume() {
            super.resume();
            tryToResumeAll();
        }

        @Override // com.sonyericsson.cameracommon.activity.BaseExtendedActivity.StartUpGuardian
        public void pause() {
            super.pause();
        }
    }

    private class StartUpGuardianForceSoundOn extends StartUpGuardian {
        private StartUpGuardianForceSoundOn() {
            super();
        }

        @Override // com.sonyericsson.cameracommon.activity.BaseExtendedActivity.StartUpGuardian
        public void resume() {
            super.resume();
            tryToResumeAll();
        }

        @Override // com.sonyericsson.cameracommon.activity.BaseExtendedActivity.StartUpGuardian
        public void pause() {
            super.pause();
        }
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity, android.app.Activity
    protected void onCreate(Bundle icicle) {
        this.mLaunchedBy = BaseActivity.LaunchedBy.INTENT;
        super.onCreate(icicle);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity
    protected void onResumeTasks() {
        if (StaticConfigurationUtil.isForceSound()) {
            this.mStartUpGuardian = new StartUpGuardianForceSoundOn();
        } else {
            this.mStartUpGuardian = new StartUpGuardianUnlimited();
        }
        IntentFilter intentFilter = new IntentFilter("android.intent.action.USER_PRESENT");
        registerReceiver(this.mUserPresentIntentReceiver, intentFilter);
        if (this.mLaunchedBy == BaseActivity.LaunchedBy.UNKNOWN) {
            this.mLaunchedBy = BaseActivity.LaunchedBy.HISTORY;
        }
        super.onResumeTasks();
        this.mStartUpGuardian.resume();
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity
    protected void onPauseTasks() {
        if (this.mStartUpGuardian != null) {
            this.mStartUpGuardian.pause();
            this.mStartUpGuardian = null;
        } else {
            CameraLogger.e(TAG, "onPause():[Application is already paused.]");
        }
        this.mStorageManager.pause();
        unregisterReceiver(this.mUserPresentIntentReceiver);
        this.mLaunchedBy = BaseActivity.LaunchedBy.UNKNOWN;
        super.onPauseTasks();
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity, android.app.Activity
    protected void onDestroy() throws ExecutionException, InterruptedException, TimeoutException {
        super.onDestroy();
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity
    protected void abort() {
        finish();
    }

    public SoundPlayer getSoundPlayer() {
        return this.mSoundPlayer;
    }

    public Camera.Parameters forTestGetCameraParameters() {
        throw new UnsupportedOperationException("unsupported method");
    }

    public void setDestinationToSave() throws NoSuchMethodException, SecurityException, IOException {
        StorageUtil.CameraStorageType type;
        if (hasExtraOutputPath()) {
            String fixedStorage = StorageUtil.getPathFromUri(this, getExtraOutput());
            type = StorageUtil.getStorageTypeFromPath(fixedStorage, this);
        } else {
            SaveDestination storage = (SaveDestination) this.mCommonSettings.get(CommonSettingKey.SAVE_DESTINATION);
            type = storage.getStorageType();
        }
        this.mStorageManager.setCurrentStorage(type);
    }

    public boolean shouldChangeStorageForSdUngranted() {
        if (getCommonSettings().get(CommonSettingKey.SAVE_DESTINATION) == SaveDestination.SDCARD) {
            Uri grantedUri = StorageUtil.getSdGrantedUri(this, getStorageController());
            if (grantedUri == null && getStorageController().getStorageState(StorageUtil.CameraStorageType.EXTERNAL_CARD) != StorageController.StorageState.REMOVED) {
                return true;
            }
        }
        return false;
    }

    public void onStoreComplete(boolean storeSuccessfull, Uri originUri, String mime, int orientation) throws Throwable {
        if (isOneShot()) {
            if (getExtraOutput() == null) {
                Intent resultIntent = null;
                if (storeSuccessfull) {
                    resultIntent = OneShotUtility.createResultIntent(this, originUri, mime, orientation);
                }
                finishOneShot(resultIntent);
            } else {
                if (storeSuccessfull) {
                    setResult(-1);
                } else {
                    setResult(0);
                }
                finish();
            }
        }
        enableAutoOffTimer();
    }

    public void finishOneShot(Intent resultIntent) {
        if (resultIntent == null) {
            setResult(0);
        } else {
            setResult(-1, resultIntent);
        }
        finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        terminateApplication();
    }

    @Override // com.sonyericsson.cameracommon.activity.TerminateListener
    public void terminateApplication() {
        finish();
    }

    private static class CameraActivityFinishBroadcastReceiver extends BroadcastReceiver {
        BaseExtendedActivity mBaseExtendedActivity;

        CameraActivityFinishBroadcastReceiver(BaseExtendedActivity act) {
            this.mBaseExtendedActivity = null;
            this.mBaseExtendedActivity = act;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            this.mBaseExtendedActivity.finish();
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        this.mLaunchedBy = BaseActivity.LaunchedBy.INTENT;
    }

    protected void showAndConfirmDisclaimer() {
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity
    public boolean isAlertDialogOpened() {
        return this.mIsAlertDialogOpened;
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity
    public void setAlertDialogIsOpened(boolean dialogIsOpened) {
        this.mIsAlertDialogOpened = dialogIsOpened;
    }

    @Override // android.app.Activity
    public void finish() {
        if (!isInLockTaskMode()) {
            prepareFinish();
        }
        super.finish();
    }

    public void finishUrgently() {
        prepareFinish();
        super.finish();
    }
}