package com.sonyericsson.cameracommon.mediasaving;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.StatFs;
import androidx.media.session.PlaybackStateCompat;
import android.util.Log;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.PerfLog;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class CameraStorageManager implements BaseActivity.StorageEventListener {
    private static final String SP_KEY_CHECK_SDCARD_STATE_AT_FIRST_LAUNCH_AFTER_DATA_CLEARED = "is-sdcard-unavailable-while-storage-setting-is-sdcard-at-first-launch-after-data-cleared";
    public static final String TAG = "CameraStorageManager";
    public static final int TIMEOUT_CHECK_FSWRITABLE = 3000;
    public static final int TIMEOUT_GET_STATFS = 3500;
    private Activity mActivity;
    private StorageUtil.CameraStorageType mCurrentStorage;
    private final Map<StorageUtil.CameraStorageType, DcfPathBuilder> mDcfPathBuilderMap;
    private Map<StorageUtil.CameraStorageType, DetailStorageState> mLastStorageStates;
    private SharedPreferences mSharedPrefs;
    private final SlowMotionPathBuilder mSlowMotionPathBuilder;
    private StorageController mStorageController;
    private HashMap<String, DetailStorageState> mWritableCheckResult;

    public enum DetailStorageState {
        MEMORY_READY,
        MEMORY_READY_LOW,
        MEMORY_ERR_READ_ONLY,
        MEMORY_ERR_SHARED,
        MEMORY_ERR_FORMAT,
        MEMORY_ERR_NO_MEMORY_CARD,
        MEMORY_ERR_ACCESS,
        MEMORY_ERR_FULL,
        MEMORY_ERR_TIMED_OUT,
        MEMORY_NO_DCIM,
        MEMORY_CHECKING,
        MEMORY_UNGRANTED
    }

    public interface ExternalMemoryListener {
        void onExternalMemoryStatusChanged(DetailStorageState detailStorageState);
    }

    public CameraStorageManager(Activity activity, StorageController storageManager) {
        this(activity, storageManager, false);
    }

    public CameraStorageManager(Activity activity, StorageController storageController, boolean isDelayedInitializationRequired) {
        this.mCurrentStorage = StorageUtil.CameraStorageType.INTERNAL;
        this.mLastStorageStates = null;
        this.mSharedPrefs = null;
        this.mSlowMotionPathBuilder = new SlowMotionPathBuilder(MediaSavingConstants.MEDIA_TYPE_MPEG4_EXT);
        this.mWritableCheckResult = new HashMap<>();
        this.mActivity = activity;
        this.mStorageController = storageController;
        this.mDcfPathBuilderMap = new HashMap();
        if (!isDelayedInitializationRequired) {
            initialize(false);
        }
    }

    public void initialize(boolean isSdCardCorruptCheck) {
        PerfLog.STORAGE_MANAGER_SETUP.begin();
        this.mStorageController.setStoragePriority(StorageUtil.CameraStorageType.EXTERNAL_CARD, 0);
        this.mStorageController.setStoragePriority(StorageUtil.CameraStorageType.INTERNAL, 1);
        this.mSharedPrefs = this.mActivity.getSharedPreferences(MediaSavingConstants.SHARED_PREFERENCE_NAME, 0);
        this.mLastStorageStates = new HashMap();
        for (StorageUtil.CameraStorageType storage : StorageUtil.getMountableStorageTypes(this.mActivity)) {
            updateStorageState(storage, 0L, "", isSdCardCorruptCheck);
        }
        PerfLog.STORAGE_MANAGER_SETUP.end();
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity.StorageEventListener
    public void onStorageCheckRequested(String event, StorageUtil.CameraStorageType storage) {
        String path;
        if (event.equals("android.intent.action.MEDIA_EJECT")) {
            this.mStorageController.setSdCardCorrupt(false);
        }
        updateAllStorageState(storage, 0L, event);
        saveExternalStorageStateAtFirstLaunchInPrefs();
        this.mStorageController.checkAllState(storage, this.mLastStorageStates.get(storage), true, false);
        if ("android.intent.action.MEDIA_MOUNTED".equals(event) && (path = getRootDirectory()) != null) {
            DcfPathBuilder pathBuilder = new DcfPathBuilder(path);
            this.mDcfPathBuilderMap.put(storage, pathBuilder);
            pathBuilder.startScan();
        }
    }

    private void updateAllStorageState(StorageUtil.CameraStorageType targetStorage, long reservedSize, String intentAction) {
        updateAllStorageState(targetStorage, reservedSize, intentAction, false);
    }

    private void updateAllStorageState(StorageUtil.CameraStorageType targetStorage, long reservedSize, String intentAction, boolean isSdCardCorruptCheck) {
        for (StorageUtil.CameraStorageType storage : StorageUtil.getMountableStorageTypes(this.mActivity)) {
            if (storage.equals(targetStorage)) {
                updateStorageState(storage, reservedSize, intentAction);
            } else {
                updateStorageState(storage, 0L, "", isSdCardCorruptCheck);
            }
        }
    }

    private DetailStorageState updateStorageState(StorageUtil.CameraStorageType storage, long reservedSize, String intentAction) {
        return updateStorageState(storage, reservedSize, intentAction, false);
    }

    private DetailStorageState updateStorageState(StorageUtil.CameraStorageType storage, long reservedSize, String intentAction, boolean isSdCardCorruptCheck) {
        long availableSize = 0;
        DetailStorageState newState = getNextStateFromVolume(storage);
        if (intentAction.equals("android.intent.action.MEDIA_EJECT")) {
            if (newState.equals(DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD)) {
                newState = DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD;
            } else {
                newState = DetailStorageState.MEMORY_ERR_SHARED;
            }
        }
        if (newState == DetailStorageState.MEMORY_READY) {
            newState = getNextStateFromWritable(storage, isSdCardCorruptCheck);
        }
        if (newState == DetailStorageState.MEMORY_READY) {
            availableSize = updateAvailableStorageSize(storage, reservedSize);
            newState = getNextStateFromRemain(availableSize);
        }
        if (this.mCurrentStorage.equals(storage)) {
            this.mStorageController.setAvailableStorageSize(availableSize);
        }
        setLastStorageState(storage, newState);
        return newState;
    }

    private DetailStorageState getNextStateFromVolume(StorageUtil.CameraStorageType storage) {
        if (storage == StorageUtil.CameraStorageType.EXTERNAL_CARD && !StorageUtil.isExistRemovableStorage(this.mActivity)) {
            return DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD;
        }
        String state = StorageUtil.getVolumeState(storage, this.mActivity);
        if ("bad_removal".equals(state)) {
            return DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD;
        }
        if ("mounted_ro".equals(state)) {
            return DetailStorageState.MEMORY_ERR_READ_ONLY;
        }
        if ("removed".equals(state)) {
            return DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD;
        }
        if ("shared".equals(state)) {
            return DetailStorageState.MEMORY_ERR_SHARED;
        }
        if ("unmountable".equals(state)) {
            return DetailStorageState.MEMORY_ERR_FORMAT;
        }
        if ("unmounted".equals(state)) {
            return DetailStorageState.MEMORY_ERR_SHARED;
        }
        if ("checking".equals(state)) {
            return DetailStorageState.MEMORY_CHECKING;
        }
        if ("mounted".equals(state)) {
            return DetailStorageState.MEMORY_READY;
        }
        DetailStorageState newState = DetailStorageState.MEMORY_ERR_ACCESS;
        return newState;
    }

    private DetailStorageState getNextStateFromWritable(StorageUtil.CameraStorageType type, boolean isSdCardCorruptCheck) {
        String storage = StorageUtil.getPathFromType(type, this.mActivity);
        if (storage == null) {
            CameraLogger.e(TAG, "getNextStateFromWritable(): storage path is null");
            DetailStorageState newState = DetailStorageState.MEMORY_NO_DCIM;
            return newState;
        }
        if (type == StorageUtil.CameraStorageType.EXTERNAL_CARD) {
            if (isSdCardCorruptCheck) {
                DetailStorageState newState2 = requestCheckWritable(storage, type, 3000);
                if (newState2 == DetailStorageState.MEMORY_ERR_TIMED_OUT) {
                    this.mStorageController.setSdCardCorrupt(true);
                    return newState2;
                }
                return newState2;
            }
            DetailStorageState newState3 = requestCheckWritable(storage, type, TIMEOUT_GET_STATFS);
            return newState3;
        }
        DetailStorageState newState4 = requestCheckWritable(storage, type, 0);
        return newState4;
    }

    private DetailStorageState requestCheckWritable(String storage, StorageUtil.CameraStorageType type, int timeOut) {
        DetailStorageState newState;
        DetailStorageState newState2;
        if (StorageUtil.CameraStorageType.EXTERNAL_CARD == type) {
            if (this.mWritableCheckResult.containsKey(storage)) {
                newState2 = this.mWritableCheckResult.get(storage);
            } else {
                newState2 = setupCheckFsDirectoryWritableTask(storage, type, timeOut / 2);
                this.mWritableCheckResult.put(storage, newState2);
            }
            if (newState2 == DetailStorageState.MEMORY_READY) {
                return setupCheckFsAlreadyLastFileTask(storage, timeOut / 2);
            }
            return newState2;
        }
        if (this.mWritableCheckResult.containsKey(storage)) {
            newState = this.mWritableCheckResult.get(storage);
        } else {
            newState = new CheckFsDirectoryWritableTask(storage, type, this.mActivity, this.mStorageController).call();
            this.mWritableCheckResult.put(storage, newState);
        }
        if (newState == DetailStorageState.MEMORY_READY) {
            return new CheckFsAlreadyLastFileTask(storage).call();
        }
        return newState;
    }

    private DetailStorageState setupCheckFsDirectoryWritableTask(String dirPath,
                                                                StorageUtil.CameraStorageType storageType,
                                                                int timeoutMs) {
        final String TAG = "CameraStorageManager"; // align with class logger

        final Callable<DetailStorageState> job = new Callable<DetailStorageState>() {
            @Override public DetailStorageState call() {
                if (dirPath == null || dirPath.length() == 0) {
                    return DetailStorageState.NOT_AVAILABLE;
                }
                final File dir = new File(dirPath);
                try {
                    if (!dir.exists()) {
                        if (!dir.mkdirs()) {
                            return DetailStorageState.NO_DIRECTORY;
                        }
                    }
                    if (!dir.isDirectory()) {
                        return DetailStorageState.NO_DIRECTORY;
                    }
                    // Writeability probe
                    File probe = File.createTempFile(".__probe", ".tmp", dir);
                    try (FileOutputStream fos = new FileOutputStream(probe)) {
                        fos.write(0);
                        fos.flush();
                    } catch (Exception e) {
                        return DetailStorageState.READ_ONLY;
                    } finally {
                        //noinspection ResultOfMethodCallIgnored
                        probe.delete();
                    }
                    long free = dir.getUsableSpace();
                    int minFreeBytes = 0; // wire to your threshold if needed
                    if (free < (long)Math.max(0, minFreeBytes)) {
                        return DetailStorageState.FULL;
                    }
                    return DetailStorageState.READY;
                } catch (SecurityException se) {
                    return DetailStorageState.READ_ONLY;
                } catch (Throwable t) {
                    return DetailStorageState.NOT_AVAILABLE;
                }
            }
        };

        ExecutorService exec = newSingleThreadExecutor();
        Future<DetailStorageState> f = exec.submit(job);
        try {
            // Wait up to timeoutMs; fall back on timeout.
            return f.get(Math.max(0, timeoutMs), TimeUnit.MILLISECONDS);
        } catch (TimeoutException te) {
            Log.w(TAG, "setupCheckFsDirectoryWritableTask() timed out");
            f.cancel(true);
            return DetailStorageState.NOT_AVAILABLE;
        } catch (Exception e) {
            Log.w(TAG, "setupCheckFsDirectoryWritableTask(): " + e);
            return DetailStorageState.NOT_AVAILABLE;
        } finally {
            exec.shutdownNow();
        }
    }


    private DetailStorageState setupCheckFsAlreadyLastFileTask(String storage, int timeOutMs) {
        ExecutorService executor = Executors.newSingleThreadExecutor();
        Future<DetailStorageState> future = executor.submit(new CheckFsAlreadyLastFileTask(storage));
        DetailStorageState result = null;
        try {
            result = future.get((long) timeOutMs, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException e) {
            CameraLogger.e(TAG, "setupCheckFsAlreadyLastFileTask(): ", e);
        } catch (TimeoutException e) {
            // fall through; we'll map null -> TIMED_OUT below and log once
        } finally {
            future.cancel(true);
            executor.shutdown();
        }

        if (result == null) {
            CameraLogger.e(TAG, "setupCheckFsAlreadyLastFileTask() timed out");
            result = DetailStorageState.MEMORY_ERR_TIMED_OUT;
        }
        return result;
    }

    private static class CheckFsDirectoryWritableTask implements Callable<DetailStorageState> {
        private static final String TAG = "CheckFsDirectoryWritableTask";
        private final Activity mActivity;
        private final String mStorage;
        private final StorageController mStorageController;
        private final StorageUtil.CameraStorageType mType;

        public CheckFsDirectoryWritableTask(String storage, StorageUtil.CameraStorageType type, Activity activity, StorageController storageController) {
            this.mStorage = storage;
            this.mType = type;
            this.mActivity = activity;
            this.mStorageController = storageController;
        }

        @Override // java.util.concurrent.Callable
        public DetailStorageState call() {
            DetailStorageState state = DetailStorageState.MEMORY_READY;
            if (this.mType != StorageUtil.CameraStorageType.EXTERNAL_CARD) {
                if (!CameraStorageManager.checkFsWritable(this.mStorage)) {
                    DetailStorageState state2 = DetailStorageState.MEMORY_ERR_READ_ONLY;
                    return state2;
                }
                if (DcfPathBuilder.checkAndCreateDirectory(this.mStorage, this.mActivity)) {
                    DetailStorageState state3 = DetailStorageState.MEMORY_READY;
                    return state3;
                }
                DetailStorageState state4 = DetailStorageState.MEMORY_NO_DCIM;
                return state4;
            }
            Uri grantedUri = StorageUtil.getSdGrantedUri(this.mActivity, this.mStorageController);
            if (grantedUri != null) {
                if (StorageUtil.isSdCardGranted(this.mActivity, grantedUri)) {
                    StorageUtil.setSdCardGranted(this.mActivity, grantedUri);
                    return state;
                }
                DetailStorageState state5 = DetailStorageState.MEMORY_UNGRANTED;
                try {
                    this.mActivity.getContentResolver().releasePersistableUriPermission(grantedUri, Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
                    return state5;
                } catch (SecurityException e) {
                    CameraLogger.d(TAG, "can not releasePersistableUriPermission");
                    return state5;
                }
            }
            DetailStorageState state6 = DetailStorageState.MEMORY_UNGRANTED;
            return state6;
        }
    }

    private static class CheckFsAlreadyLastFileTask implements Callable<DetailStorageState> {
        private static final String TAG = "CheckFsAlreadyLastFileTask";
        private final String mStorage;

        public CheckFsAlreadyLastFileTask(String storage) {
            this.mStorage = storage;
        }

        @Override // java.util.concurrent.Callable
        public DetailStorageState call() {
            if (DcfPathBuilder.isAlreadyLastFileExist(this.mStorage)) {
                DetailStorageState state = DetailStorageState.MEMORY_ERR_FULL;
                return state;
            }
            DetailStorageState state2 = DetailStorageState.MEMORY_READY;
            return state2;
        }
    }

    private DetailStorageState getNextStateFromRemain(long availableSize) {
        if (availableSize > 153600) {
            DetailStorageState newState = DetailStorageState.MEMORY_READY;
            return newState;
        }
        if (availableSize > 61440) {
            DetailStorageState newState2 = DetailStorageState.MEMORY_READY_LOW;
            return newState2;
        }
        DetailStorageState newState3 = DetailStorageState.MEMORY_ERR_FULL;
        return newState3;
    }

    private void setLastStorageState(StorageUtil.CameraStorageType storage, DetailStorageState state) {
        this.mLastStorageStates.put(storage, state);
        this.mStorageController.updateStorageState(storage, state);
    }

    private void logStorageState() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean checkFsWritable(String mountedPath) {
        File directory = new File(mountedPath);
        if (directory.isDirectory() || directory.mkdirs()) {
            return directory.canWrite();
        }
        return false;
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity.StorageEventListener
    public void onMediaScanFinished() {
        this.mStorageController.checkAndNotifyStateChanged(this.mCurrentStorage, true);
    }

    public void addStorageListener(StorageController.StorageListener cb) {
        this.mStorageController.addStorageListener(cb);
    }

    public void removeStorageListener(StorageController.StorageListener cb) {
        this.mStorageController.removeStorageListener(cb);
    }

    public long updateRemain(long reservedSize, boolean forceNotify) {
        return updateRemain(reservedSize, forceNotify, true);
    }

    public long updateRemain(long reservedSize, boolean forceNotify, boolean showDialog) {
        updateAllStorageState(this.mCurrentStorage, reservedSize, "");
        this.mStorageController.checkAllState(this.mCurrentStorage, this.mLastStorageStates.get(this.mCurrentStorage), isReadable(StorageUtil.CameraStorageType.EXTERNAL_CARD), forceNotify, showDialog);
        return this.mStorageController.getAvailableStorageSize();
    }

    private DetailStorageState getLastStorageState() {
        return this.mLastStorageStates.get(this.mCurrentStorage);
    }

    public void resume(boolean isSdCardCorruptCheck) {
        updateAllStorageState(null, 0L, "", isSdCardCorruptCheck);
    }

    public void setCurrentStorage(StorageUtil.CameraStorageType type) {
        setCurrentStorage(type, null);
    }

    public void setCurrentStorage(StorageUtil.CameraStorageType type, Handler handler) {
        if (type != null) {
            this.mCurrentStorage = type;
            String path = getRootDirectory();
            if (path != null) {
                if (!this.mDcfPathBuilderMap.containsKey(type)) {
                    DcfPathBuilder pathBuilder = new DcfPathBuilder(path);
                    this.mDcfPathBuilderMap.put(type, pathBuilder);
                } else if (!path.equals(this.mDcfPathBuilderMap.get(type).getRootPath())) {
                    DcfPathBuilder pathBuilder2 = new DcfPathBuilder(path);
                    this.mDcfPathBuilderMap.put(type, pathBuilder2);
                }
                this.mDcfPathBuilderMap.get(type).startScan();
            }
            if (handler != null) {
                this.mStorageController.setCurrentStorage(this.mCurrentStorage, handler);
            } else {
                this.mStorageController.setCurrentStorage(this.mCurrentStorage);
            }
            updateStorageState(this.mCurrentStorage, 0L, "");
        }
    }

    public void requestCheckAll() {
        this.mStorageController.checkAllState(this.mCurrentStorage, this.mLastStorageStates.get(this.mCurrentStorage), isReadable(StorageUtil.CameraStorageType.EXTERNAL_CARD), false);
    }

    public StatFs getStatFs(String path) {
        ExecutorService executor = Executors.newSingleThreadExecutor();
        Future<StatFs> future = executor.submit(new StorageUtil.GetStatFsTask(path));
        StatFs statFs = null;
        try {
            statFs = future.get(3500L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            CameraLogger.e(TAG, "GetStatFsTask has been interrupted.", e);
        } catch (ExecutionException e2) {
            CameraLogger.e(TAG, "GetStatFsTask failed.", e2);
        } catch (TimeoutException e3) {
            CameraLogger.e(TAG, "GetStatFsTask failed.", e3);
        } finally {
            future.cancel(true);
            executor.shutdown();
        }
        return statFs;
    }

    public long updateAvailableStorageSize(StorageUtil.CameraStorageType storage, long reservedSize) {
        long blocksize;
        long blocknum;
        String path = StorageUtil.getPathFromType(storage, this.mActivity);
        if (path == null) {
            CameraLogger.e(TAG, "Storage is not mounted. : " + storage);
            return 0L;
        }
        StatFs statFs = getStatFs(path);
        if (statFs == null) {
            CameraLogger.e(TAG, "Failed to get StatFs: " + path);
            return 0L;
        }
        String envState = StorageUtil.getVolumeState(storage, this.mActivity);
        if (!envState.equals("mounted")) {
            return 0L;
        }
        if (Build.VERSION.SDK_INT <= 17) {
            blocksize = statFs.getBlockSize();
            blocknum = statFs.getAvailableBlocks();
        } else {
            blocksize = statFs.getBlockSizeLong();
            blocknum = statFs.getAvailableBlocksLong();
        }
        return Math.max(0L, ((blocksize * blocknum) - reservedSize) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID);
    }

    public boolean isCurrentStorageExternal() {
        return this.mCurrentStorage == StorageUtil.CameraStorageType.EXTERNAL_CARD;
    }

    public boolean isStorageExternal(StorageUtil.CameraStorageType storageType) {
        return storageType == StorageUtil.CameraStorageType.EXTERNAL_CARD;
    }

    public boolean isStorageInternal(StorageUtil.CameraStorageType storageType) {
        return storageType == StorageUtil.CameraStorageType.INTERNAL;
    }

    public boolean hasEnoughFreeSpace() {
        DetailStorageState state = getLastStorageState();
        switch (state) {
            case MEMORY_READY:
                return true;
            default:
                return false;
        }
    }

    public boolean isReady() {
        DetailStorageState state = getLastStorageState();
        return isReady(state);
    }

    private boolean isReady(DetailStorageState state) {
        if (state == null) {
            return false;
        }
        switch (state) {
        }
        return false;
    }

    public boolean isToggledStorageReady() {
        return this.mStorageController.isToggledStorageReady();
    }

    public boolean isReadable() {
        DetailStorageState state = getLastStorageState();
        return isReadable(state);
    }

    private boolean isReadable(StorageUtil.CameraStorageType storage) {
        if (storage == null) {
            return false;
        }
        DetailStorageState state = this.mLastStorageStates.get(storage);
        return isReadable(state);
    }

    private boolean isReadable(DetailStorageState state) {
        switch (state) {
            case MEMORY_READY:
            case MEMORY_READY_LOW:
            case MEMORY_ERR_FULL:
            case MEMORY_ERR_READ_ONLY:
                return true;
            default:
                return false;
        }
    }

    public List<String> getReadableStoragePaths() {
        String path;
        List<String> list = new ArrayList<>();
        for (StorageUtil.CameraStorageType type : this.mLastStorageStates.keySet()) {
            if (isReadable(type) && (path = StorageUtil.getPathFromType(type, this.mActivity)) != null) {
                list.add(path);
            }
        }
        return list;
    }

    public void pause() {
        this.mStorageController.pause();
        this.mStorageController.setSdCardCorrupt(false);
        this.mWritableCheckResult.clear();
    }

    public void release() {
        this.mStorageController.release();
    }

    public void saveExternalStorageStateInPrefs() {
        this.mStorageController.saveExternalStorageStateInPrefs(isReadable(StorageUtil.CameraStorageType.EXTERNAL_CARD));
    }

    public boolean isExternalStorageUnavailableWithExternalStorageSettingAtFirstLaunch() {
        if (this.mSharedPrefs.contains(SP_KEY_CHECK_SDCARD_STATE_AT_FIRST_LAUNCH_AFTER_DATA_CLEARED)) {
            return false;
        }
        saveExternalStorageStateAtFirstLaunchInPrefs();
        return true;
    }

    public void saveExternalStorageStateAtFirstLaunchInPrefs() {
        SharedPreferences.Editor editor = this.mSharedPrefs.edit();
        if (editor != null) {
            editor.putBoolean(SP_KEY_CHECK_SDCARD_STATE_AT_FIRST_LAUNCH_AFTER_DATA_CLEARED, true);
            editor.commit();
        }
    }

    public String getRootDirectory() {
        String path = StorageUtil.getPathFromType(this.mCurrentStorage, this.mActivity);
        return path;
    }

    public String getDcimDirectory() {
        return getRootDirectory() + "/" + Environment.DIRECTORY_DCIM;
    }

    public String getPhotoPath() {
        DcfPathBuilder pathBuilder = this.mDcfPathBuilderMap.get(this.mCurrentStorage);
        if (pathBuilder != null) {
            return pathBuilder.getPhotoPath(this.mCurrentStorage, this.mActivity);
        }
        return null;
    }

    public String getPredictiveCapturePhotoPath(SavingRequest savingRequest) {
        return PredictiveCapturePathBuilder.getPhotoPath(getDcimDirectory(), savingRequest, this.mActivity);
    }

    public String getVideoPath(String extension) {
        DcfPathBuilder pathBuilder = this.mDcfPathBuilderMap.get(this.mCurrentStorage);
        return pathBuilder != null ? this.mDcfPathBuilderMap.get(this.mCurrentStorage).getVideoPath(extension, this.mCurrentStorage, this.mActivity) : MediaSavingConstants.INVALID_FILE_PATH;
    }
}