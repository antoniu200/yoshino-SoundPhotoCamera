package com.sonyericsson.cameracommon.mediasaving;

import android.content.DialogInterface;
import android.os.Handler;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class StorageController {
    public static final String TAG = "StorageController";
    protected long mAvailableSize;
    protected StorageUtil.CameraStorageType mCurrentStorage;
    private boolean mIsOneShot;
    private boolean mIsSdcardCorrupt;
    protected Map<StorageUtil.CameraStorageType, StorageState> mLatestCheckedStorageState;
    private final List<StorageListener> mListeners;
    protected MessagePopup mMessagePopup;
    protected SdCorruptListener mSdCorruptListener;
    protected Map<StorageUtil.CameraStorageType, Integer> mStoragePriority;
    protected Map<StorageUtil.CameraStorageType, StorageState> mStorageStatus;
    protected ViewFinderInterface mViewFinder;

    public interface SdCorruptListener {
        void showBlank();
    }

    public interface StorageDialogStateListener {
        void onCloseStorageDialog();

        void onOpenStorageDialog();
    }

    public interface StorageListener {
        void onAvailableSizeUpdated(long j);

        void onDestinationToSaveChanged();

        void onStorageStateChanged(StorageUtil.CameraStorageType cameraStorageType);
    }

    public enum StorageState {
        REMOVED(CameraStorageManager.DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD),
        AVAILABLE(CameraStorageManager.DetailStorageState.MEMORY_READY, CameraStorageManager.DetailStorageState.MEMORY_READY_LOW),
        UNAVAILABLE(CameraStorageManager.DetailStorageState.MEMORY_ERR_ACCESS, CameraStorageManager.DetailStorageState.MEMORY_ERR_FORMAT, CameraStorageManager.DetailStorageState.MEMORY_ERR_READ_ONLY, CameraStorageManager.DetailStorageState.MEMORY_ERR_SHARED, CameraStorageManager.DetailStorageState.MEMORY_NO_DCIM),
        FULL(CameraStorageManager.DetailStorageState.MEMORY_ERR_FULL),
        TIMEOUT(CameraStorageManager.DetailStorageState.MEMORY_ERR_TIMED_OUT),
        UNGRANTED(CameraStorageManager.DetailStorageState.MEMORY_UNGRANTED);

        public static final String TAG = "StorageState";
        private final List<CameraStorageManager.DetailStorageState> mDetailStateList;

        StorageState(CameraStorageManager.DetailStorageState... states) {
            this.mDetailStateList = Collections.unmodifiableList(Arrays.asList(states));
        }

        public static StorageState getState(CameraStorageManager.DetailStorageState state) {
            for (StorageState candidate : values()) {
                for (CameraStorageManager.DetailStorageState envState : candidate.mDetailStateList) {
                    if (state.equals(envState)) {
                        return candidate;
                    }
                }
            }
            return UNAVAILABLE;
        }
    }

    public void setSdCorruptListener(SdCorruptListener sdCorruptListener) {
        this.mSdCorruptListener = sdCorruptListener;
    }

    protected boolean isOneShotMode() {
        return this.mIsOneShot;
    }

    public void setOneShotMode(boolean oneShot) {
        this.mIsOneShot = oneShot;
    }

    public StorageController(ViewFinderInterface viewFinder) {
        this(viewFinder, false);
    }

    public StorageController(ViewFinderInterface viewFinder, boolean isDelayedInitializationRequired) {
        this.mMessagePopup = null;
        this.mCurrentStorage = StorageUtil.CameraStorageType.INTERNAL;
        this.mStoragePriority = null;
        this.mStorageStatus = null;
        this.mLatestCheckedStorageState = null;
        this.mIsSdcardCorrupt = false;
        this.mListeners = new ArrayList();
        this.mViewFinder = viewFinder;
        if (!isDelayedInitializationRequired) {
            initialize();
        }
    }

    public void initialize() {
        this.mStoragePriority = new HashMap();
        this.mStorageStatus = new HashMap();
        this.mLatestCheckedStorageState = new HashMap();
    }

    protected void checkAllState(StorageUtil.CameraStorageType storage, CameraStorageManager.DetailStorageState state, boolean isStorageEvent, boolean forceNotify) {
        checkAllState(storage, state, isStorageEvent, forceNotify, true);
    }

    protected void checkAllState(StorageUtil.CameraStorageType storage, CameraStorageManager.DetailStorageState state, boolean isStorageEvent, boolean forceNotify, boolean showDialog) {
        if (this.mViewFinder.isHeadUpDisplayReady()) {
            for (StorageUtil.CameraStorageType targetStorage : this.mStoragePriority.keySet()) {
                if (this.mCurrentStorage.equals(targetStorage)) {
                    showOrClearStorageErrorPopup(StorageState.getState(state));
                }
                checkAndNotifyStateChanged(targetStorage, forceNotify);
            }
        }
    }

    protected boolean showOrClearStorageErrorPopup(StorageState state) {
        int textId = -1;
        int titleId = R.string.cam_strings_error_memory_title_txt;
        if (isCurrentStorageExternal()) {
            switch (getCurrentStorageState()) {
                case AVAILABLE:
                    closeDialog(true);
                    break;
                case FULL:
                    textId = R.string.cam_strings_error_memory_full_txt;
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
                    textId = R.string.cam_strings_error_memory_ims_full_txt;
                    break;
                case UNAVAILABLE:
                case REMOVED:
                    textId = R.string.cam_strings_error_memory_ims_unavailable_txt;
                    break;
            }
        }
        return showStoragePopup(textId, titleId, true);
    }

    public void addStorageListener(StorageListener cb) {
        if (!this.mListeners.contains(cb)) {
            this.mListeners.add(cb);
        }
    }

    public void removeStorageListener(StorageListener cb) {
        if (this.mListeners.contains(cb)) {
            this.mListeners.remove(cb);
        }
    }

    public void updateStorageState(StorageUtil.CameraStorageType storage, CameraStorageManager.DetailStorageState state) {
        if (this.mStoragePriority.containsKey(storage)) {
            StorageState newState = StorageState.getState(state);
            this.mStorageStatus.put(storage, newState);
        }
    }

    public void setSdCardCorrupt(boolean isSdcardCorrupt) {
        this.mIsSdcardCorrupt = isSdcardCorrupt;
    }

    public boolean isSdcardCorrupt() {
        return this.mIsSdcardCorrupt;
    }

    protected void checkAndNotifyStateChanged(StorageUtil.CameraStorageType storage, boolean forceNotify) {
        if (this.mLatestCheckedStorageState.get(storage) != this.mStorageStatus.get(storage) || forceNotify) {
            this.mLatestCheckedStorageState.put(storage, this.mStorageStatus.get(storage));
            notifyStateChanged(storage);
        }
        notifyAvailableSize(this.mAvailableSize);
    }

    protected void requestErrorCheckLater(StorageUtil.CameraStorageType storage) {
        this.mLatestCheckedStorageState.put(storage, StorageState.AVAILABLE);
    }

    protected void closeDialog(DialogInterface dialog) {
        if (this.mMessagePopup != null && this.mMessagePopup.isMemoryErrorPopupOpened()) {
            this.mMessagePopup.cancelMemoryErrorPopup(dialog);
        }
    }

    protected void closeDialog(boolean closeOnlyError) {
        if (this.mMessagePopup != null && this.mMessagePopup.isMemoryErrorPopupOpened()) {
            this.mMessagePopup.cancelMemoryErrorPopup(closeOnlyError);
        }
    }

    private void notifyStateChanged(StorageUtil.CameraStorageType storage) {
        for (StorageListener listener : this.mListeners) {
            listener.onStorageStateChanged(storage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyStorageChanged() {
        for (StorageListener listener : this.mListeners) {
            listener.onDestinationToSaveChanged();
        }
    }

    private void notifyStorageChangedAsync(Handler handler) {
        handler.post(new NotifyStorageChangedTask());
    }

    private class NotifyStorageChangedTask implements Runnable {
        private NotifyStorageChangedTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StorageController.this.notifyStorageChanged();
        }
    }

    private void notifyAvailableSize(long available) {
        for (StorageListener listener : this.mListeners) {
            listener.onAvailableSizeUpdated(available);
        }
    }

    public void pause() {
        closeDialog(false);
    }

    public void release() {
        this.mListeners.clear();
    }

    public StorageState getCurrentStorageState() {
        return this.mStorageStatus.get(this.mCurrentStorage);
    }

    public StorageUtil.CameraStorageType getCurrentCameraStorageType() {
        return this.mCurrentStorage;
    }

    public StorageState getStorageState(StorageUtil.CameraStorageType storage) {
        return this.mStorageStatus.get(storage);
    }

    public void setCurrentStorage(StorageUtil.CameraStorageType storage) {
        setCurrentStorage(storage, null);
    }

    public void setCurrentStorage(StorageUtil.CameraStorageType storage, Handler handler) {
        this.mCurrentStorage = storage;
        if (handler != null) {
            notifyStorageChangedAsync(handler);
        } else {
            notifyStorageChanged();
        }
    }

    public void setStoragePriority(StorageUtil.CameraStorageType storage, int priority) {
        this.mStoragePriority.put(storage, Integer.valueOf(priority));
    }

    protected boolean showStoragePopup(int textId, int titleId, boolean isError) {
        if (textId <= 0) {
            return false;
        }
        RotatableDialog dialog = this.mMessagePopup.showMemoryError(textId, titleId, isError);
        if (dialog == null) {
            return false;
        }
        return true;
    }

    public boolean isToggledStorageReady() {
        boolean isReady = false;
        for (StorageUtil.CameraStorageType storage : this.mStoragePriority.keySet()) {
            if (!storage.equals(this.mCurrentStorage) && (this.mStorageStatus.get(storage) == StorageState.AVAILABLE || (StorageUtil.CameraStorageType.EXTERNAL_CARD == storage && this.mStorageStatus.get(storage) == StorageState.UNGRANTED))) {
                isReady = true;
            }
        }
        return isReady;
    }

    public void setMessegePopup(MessagePopup messagePopup) {
        this.mMessagePopup = messagePopup;
    }

    public boolean isStorageDialogOpen() {
        return this.mMessagePopup.isMemoryErrorPopupOpened();
    }

    protected void setAvailableStorageSize(long size) {
        this.mAvailableSize = size;
    }

    public long getAvailableStorageSize() {
        return this.mAvailableSize;
    }

    public boolean isCurrentStorageExternal() {
        return this.mStoragePriority.get(this.mCurrentStorage).equals(0);
    }

    public void saveExternalStorageStateInPrefs(boolean isExternalCardReadable) {
    }
}