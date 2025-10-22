package com.sonyericsson.cameracommon.mediasaving;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface;

/* loaded from: classes.dex */
public class StorageAutoSwitchController extends StorageController {
    public static final String SP_KEY_IS_AUTO_SWITCH_TRIGGERED = "is-auto_switch_triggered";
    public static final String SP_KEY_IS_SDCARD_AVAILABLE_ON_PREVIOUS_ONPAUSE = "is-sdcard-available-on-previous-onpause";
    public static final String TAG = "StorageAutoSwitchController";
    private RotatableDialog mDualStorageDialog;
    private boolean mIsShownDualStorageAvailable;
    private SharedPreferences mSharedPrefs;
    private StorageAutoSwitchListener mStorageAutoSwitchListener;

    public interface StorageAutoSwitchListener {
        boolean canSwitchStorage();

        void onStorageAutoSwitch(StorageUtil.CameraStorageType cameraStorageType);

        void saveExternalStorageStateAtFirstLaunchInPrefs();

        boolean shouldShowDialogOnStorageSettingChangedToInternal();
    }

    public StorageAutoSwitchController(StorageAutoSwitchListener switchListener, ViewFinderInterface viewFinder, Context context) {
        this(switchListener, viewFinder, false, context);
    }

    public StorageAutoSwitchController(StorageAutoSwitchListener switchListener, ViewFinderInterface viewFinder, boolean isDelayedInitializationRequired, Context context) {
        super(viewFinder, isDelayedInitializationRequired);
        this.mDualStorageDialog = null;
        this.mIsShownDualStorageAvailable = false;
        this.mSharedPrefs = context.getSharedPreferences(MediaSavingConstants.SHARED_PREFERENCE_NAME, 0);
        this.mStorageAutoSwitchListener = switchListener;
    }

    private class DialogOkClickListener implements DialogInterface.OnClickListener {
        private DialogOkClickListener() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int arg1) {
            StorageAutoSwitchController.this.mStorageAutoSwitchListener.onStorageAutoSwitch(StorageAutoSwitchController.this.mCurrentStorage);
            StorageAutoSwitchController.this.saveAutoSwitchTriggered(true);
            StorageAutoSwitchController.this.closeDialog(dialog);
            StorageAutoSwitchController.this.mDualStorageDialog = null;
        }
    }

    private class DialogCancelClickListener implements DialogInterface.OnClickListener {
        private DialogCancelClickListener() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int arg1) {
            StorageAutoSwitchController.this.saveAutoSwitchTriggered(true);
            StorageAutoSwitchController.this.closeDialog(dialog);
            StorageAutoSwitchController.this.mDualStorageDialog = null;
        }
    }

    private class DialogCancelListener implements DialogInterface.OnCancelListener {
        private DialogCancelListener() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialog) {
            StorageAutoSwitchController.this.closeDialog(dialog);
            StorageAutoSwitchController.this.mDualStorageDialog = null;
        }
    }

    private class DialogDismissListener implements DialogInterface.OnDismissListener {
        private DialogDismissListener() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            StorageAutoSwitchController.this.mDualStorageDialog = null;
        }
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.StorageController
    protected void checkAllState(StorageUtil.CameraStorageType storage, CameraStorageManager.DetailStorageState state, boolean isSdcardReadable, boolean forceNotify, boolean showDialog) {
        if (this.mViewFinder.isHeadUpDisplayReady()) {
            if (isSdcardCorrupt()) {
                this.mSdCorruptListener.showBlank();
                this.mMessagePopup.showSdcardErrorMessage();
                return;
            }
            boolean isNotify = isSdcardReadable && !this.mIsShownDualStorageAvailable && (!isExternalStorageChangedToReadable() || (isExternalStorageChangedToReadable() && !isAutoSwitchTriggered()));
            for (StorageUtil.CameraStorageType targetStorage : this.mStoragePriority.keySet()) {
                checkAndNotifyStateChanged(storage, forceNotify);
                if (this.mCurrentStorage.equals(targetStorage)) {
                    if (getCurrentStorageState().equals(StorageController.StorageState.TIMEOUT)) {
                        showStoragePopup(R.string.cam_strings_error_memory_unavailable_txt, R.string.cam_strings_error_memory_title_txt, true);
                        return;
                    } else if (checkBetterStorage(storage, isNotify) && showDialog) {
                        switchStorage();
                    } else {
                        showOrClearStorageErrorPopup(getCurrentStorageState());
                    }
                }
            }
            this.mStorageAutoSwitchListener.saveExternalStorageStateAtFirstLaunchInPrefs();
        }
    }

    private boolean checkBetterStorage(StorageUtil.CameraStorageType targetStorage, boolean notify) {
        if (!isOneShotMode() && hasBetterStorage(targetStorage)) {
            return notify || this.mStorageStatus.get(this.mCurrentStorage) != StorageController.StorageState.AVAILABLE;
        }
        return false;
    }

    private void switchStorage() {
        if (getCurrentStorageState() == StorageController.StorageState.AVAILABLE) {
            closeDialog(false);
            showPopupDualStorageAvailable();
        } else {
            if (!isCurrentStorageExternal() || this.mStorageAutoSwitchListener.shouldShowDialogOnStorageSettingChangedToInternal()) {
                showDialogForForceChanged(getCurrentStorageState());
            }
            this.mStorageAutoSwitchListener.onStorageAutoSwitch(this.mCurrentStorage);
        }
    }

    protected boolean showPopupDualStorageAvailable() {
        int textId = R.string.cam_strings_change_storage_to_sd_txt;
        boolean isShow = false;
        if (textId > 0) {
            if (this.mDualStorageDialog != null) {
                return true;
            }
            this.mDualStorageDialog = this.mMessagePopup.showOkAndCancelStorage(textId, R.string.cam_strings_save_destination_title_txt, false, R.string.cam_strings_change_txt, R.string.cam_strings_cancel_txt, new DialogOkClickListener(), new DialogCancelClickListener(), new DialogCancelListener(), new DialogDismissListener());
            if (this.mDualStorageDialog != null) {
                isShow = true;
                this.mIsShownDualStorageAvailable = true;
            }
        }
        return isShow;
    }

    protected int getTextIdForForceChanged(StorageController.StorageState state) {
        if (isCurrentStorageExternal()) {
            switch (state) {
                case AVAILABLE:
                default:
                    return -1;
                case FULL:
                    int textId = R.string.cam_strings_change_full_storage_to_internal_txt;
                    return textId;
                case UNAVAILABLE:
                case REMOVED:
                    int textId2 = R.string.cam_strings_error_storage_changing_to_internal_txt;
                    return textId2;
            }
        }
        switch (state) {
            case AVAILABLE:
            default:
                return -1;
            case FULL:
                int textId3 = R.string.cam_strings_error_internal_memory_full_txt;
                return textId3;
            case UNAVAILABLE:
            case REMOVED:
                int textId4 = R.string.cam_strings_error_internal_memory_unavailable_txt;
                return textId4;
        }
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.StorageController
    protected boolean showOrClearStorageErrorPopup(StorageController.StorageState state) {
        int textId = -1;
        int titleId = R.string.cam_strings_error_memory_title_txt;
        if (isCurrentStorageExternal()) {
            switch (getCurrentStorageState()) {
                case AVAILABLE:
                    closeDialog(true);
                    break;
                case FULL:
                    textId = R.string.cam_strings_error_internal_sd_full_txt;
                    break;
                case UNAVAILABLE:
                case REMOVED:
                    textId = R.string.cam_strings_error_memory_unavailable_txt;
                    break;
            }
        } else {
            switch (getCurrentStorageState()) {
                case AVAILABLE:
                    closeDialog(true);
                    break;
                case FULL:
                    textId = R.string.cam_strings_error_internal_sd_full_txt;
                    break;
                case UNAVAILABLE:
                case REMOVED:
                    textId = R.string.cam_strings_error_memory_ims_unavailable_txt;
                    break;
            }
        }
        return showStoragePopup(textId, titleId, true);
    }

    protected boolean showDialogForForceChanged(StorageController.StorageState state) {
        int textId = getTextIdForForceChanged(state);
        int titleId = R.string.cam_strings_save_destination_title_txt;
        closeDialog(false);
        return showStoragePopup(textId, titleId, false);
    }

    protected boolean hasBetterStorage(StorageUtil.CameraStorageType targetStorage) {
        int currentPriority = this.mStoragePriority.get(this.mCurrentStorage).intValue();
        if (!this.mStorageAutoSwitchListener.canSwitchStorage()) {
            requestErrorCheckLater(targetStorage);
            return false;
        }
        if (this.mStorageStatus.get(this.mCurrentStorage) != StorageController.StorageState.AVAILABLE) {
            currentPriority = 100;
        }
        for (StorageUtil.CameraStorageType storage : this.mStoragePriority.keySet()) {
            if (this.mStoragePriority.get(storage).intValue() < currentPriority && this.mStorageStatus.get(storage) == StorageController.StorageState.AVAILABLE) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.StorageController
    public boolean isToggledStorageReady() {
        boolean isReady = false;
        for (StorageUtil.CameraStorageType storage : this.mStoragePriority.keySet()) {
            if (!storage.equals(this.mCurrentStorage) && this.mStorageStatus.get(storage) == StorageController.StorageState.AVAILABLE) {
                isReady = true;
            }
        }
        return isReady;
    }

    private boolean isExternalStorageChangedToReadable() {
        return this.mSharedPrefs.getBoolean(SP_KEY_IS_SDCARD_AVAILABLE_ON_PREVIOUS_ONPAUSE, false);
    }

    private boolean isAutoSwitchTriggered() {
        return this.mSharedPrefs.getBoolean(SP_KEY_IS_AUTO_SWITCH_TRIGGERED, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveAutoSwitchTriggered(boolean isTriggered) {
        SharedPreferences.Editor editor = this.mSharedPrefs.edit();
        if (editor != null) {
            editor.putBoolean(SP_KEY_IS_AUTO_SWITCH_TRIGGERED, isTriggered);
            editor.commit();
        }
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.StorageController
    public void saveExternalStorageStateInPrefs(boolean isExternalCardReadable) {
        if (isCurrentStorageExternal()) {
            saveAutoSwitchTriggered(true);
        } else if (!isExternalCardReadable) {
            saveAutoSwitchTriggered(isExternalCardReadable);
        }
        SharedPreferences.Editor editor = this.mSharedPrefs.edit();
        if (editor != null) {
            editor.putBoolean(SP_KEY_IS_SDCARD_AVAILABLE_ON_PREVIOUS_ONPAUSE, isExternalCardReadable);
            editor.commit();
        }
        this.mIsShownDualStorageAvailable = false;
    }
}