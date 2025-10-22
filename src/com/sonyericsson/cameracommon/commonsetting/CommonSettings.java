package com.sonyericsson.cameracommon.commonsetting;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import com.sonyericsson.cameracommon.commonsetting.values.AutoReview;
import com.sonyericsson.cameracommon.commonsetting.values.AutoReviewForCameraUi;
import com.sonyericsson.cameracommon.commonsetting.values.DoNotShowAgainCheckForGeotagDialog;
import com.sonyericsson.cameracommon.commonsetting.values.FastCapture;
import com.sonyericsson.cameracommon.commonsetting.values.Flash;
import com.sonyericsson.cameracommon.commonsetting.values.Geotag;
import com.sonyericsson.cameracommon.commonsetting.values.GridLine;
import com.sonyericsson.cameracommon.commonsetting.values.HelpGuide;
import com.sonyericsson.cameracommon.commonsetting.values.PhotoLight;
import com.sonyericsson.cameracommon.commonsetting.values.SaveDestination;
import com.sonyericsson.cameracommon.commonsetting.values.ShutterSound;
import com.sonyericsson.cameracommon.commonsetting.values.SoftwareLicenses;
import com.sonyericsson.cameracommon.commonsetting.values.TermOfUse;
import com.sonyericsson.cameracommon.commonsetting.values.TouchBlock;
import com.sonyericsson.cameracommon.commonsetting.values.TouchCapture;
import com.sonyericsson.cameracommon.commonsetting.values.TouchCaptureForCameraUi;
import com.sonyericsson.cameracommon.commonsetting.values.VolumeKey;
import com.sonyericsson.cameracommon.constants.CommonConstants;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.StaticConfigurationUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class CommonSettings {
    public static final String TAG = "CommonSettings";
    private String mAuthority;
    private final Context mContext;
    private ExecutorService mExecutor;
    private Future<?> mFuture;
    private final ContentResolver mResolver;
    private Uri mSettingsContentUri;
    private String mCachedFirmwareVersion = "";
    private boolean mGeotagPseudoOff = false;
    private boolean mIsBuildFingerprintModified = false;
    private final HashMap<CommonSettingKey, CommonSettingValue> mSettings = new HashMap<>();
    private final HashMap<CommonSettingKey, Boolean> mSelectabilities = new HashMap<>();
    private final HashMap<CommonSettingKey, Boolean> mIsFixed = new HashMap<>();

    public CommonSettings(ContentResolver resolver, Context context, String authority) {
        this.mResolver = resolver;
        this.mContext = context;
        this.mAuthority = authority;
        this.mSettingsContentUri = Uri.withAppendedPath(Uri.parse("content://" + authority), "commonsettings");
    }

    public synchronized CommonSettingValue get(CommonSettingKey key) {
        CommonSettingValue value;
        if (key == CommonSettingKey.SHUTTER_SOUND && StaticConfigurationUtil.isForceSound()) {
            value = ShutterSound.ON;
        } else {
            value = this.mSettings.get(key);
            if (value == null && key == CommonSettingKey.GRID_LINE) {
                value = GridLine.OFF;
            }
            if (value == null && key == CommonSettingKey.AUTO_REVIEW) {
                value = AutoReview.OFF;
            }
            if (value == null && key == CommonSettingKey.AUTO_REVIEW_FOR_CAMERA_UI) {
                value = AutoReviewForCameraUi.FRONT_ONLY;
            }
            if (value == null && key == CommonSettingKey.FLASH) {
                value = Flash.AUTO;
            } else {
                if (key == CommonSettingKey.GEO_TAG && this.mGeotagPseudoOff) {
                    value = Geotag.OFF;
                }
                if (value == null) {
                    switch (key) {
                        case GEO_TAG:
                            value = Geotag.getDefaultValue();
                            break;
                        case FAST_CAPTURE:
                            value = FastCapture.getDefaultValue();
                            break;
                        case TOUCH_CAPTURE:
                            value = TouchCapture.getDefaultValue();
                            break;
                        case TOUCH_CAPTURE_FOR_CAMERA_UI:
                            if (TouchCapture.ON == this.mSettings.get(CommonSettingKey.TOUCH_CAPTURE) && this.mIsBuildFingerprintModified) {
                                value = TouchCaptureForCameraUi.ON;
                                break;
                            } else {
                                value = TouchCaptureForCameraUi.getDefaultValue();
                                break;
                            }
                        case SHUTTER_SOUND:
                            value = ShutterSound.getDefaultValue();
                            break;
                        case SAVE_DESTINATION:
                            value = SaveDestination.getDefaultValue();
                            break;
                        case VOLUME_KEY:
                            value = VolumeKey.getDefaultValue();
                            break;
                        case TERM_OF_USE:
                            value = TermOfUse.getDefaultValue();
                            break;
                        case SOFTWARE_LICENSES:
                            value = SoftwareLicenses.getDefaultValue();
                            break;
                        case TOUCH_BLOCK:
                            value = TouchBlock.getDefaultValue();
                            break;
                        case DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG:
                            value = DoNotShowAgainCheckForGeotagDialog.getDefaultValue();
                            break;
                        case GRID_LINE:
                            value = GridLine.getDefaultValue();
                            break;
                        case HELP_GUIDE:
                            value = HelpGuide.getDefaultValue();
                            break;
                        case AUTO_REVIEW:
                            value = AutoReview.getDefaultValue();
                            break;
                        case FLASH:
                            value = Flash.getDefaultValue();
                            break;
                        case PHOTO_LIGHT:
                            value = PhotoLight.getDefaultValue();
                            break;
                    }
                }
                if (value == null) {
                    throw new IllegalStateException("CommonSettingProvider is not loaded yet.");
                }
            }
        }
        return value;
    }

    public synchronized void set(CommonSettingValue value) {
        CommonSettingKey key = value.getCommonSettingKey();
        this.mSettings.put(key, value);
        if (key == CommonSettingKey.GEO_TAG) {
            this.mGeotagPseudoOff = false;
        }
        store();
    }

    public synchronized void setGeoTagPseudoOff(boolean pseudo) {
        this.mGeotagPseudoOff = pseudo;
    }

    public synchronized boolean isSelectable(CommonSettingKey key) {
        Boolean selectability;
        selectability = this.mSelectabilities.get(key);
        return selectability != Boolean.FALSE;
    }

    public synchronized void setSelectability(CommonSettingKey key, boolean selectable) {
        this.mSelectabilities.put(key, Boolean.valueOf(selectable));
    }

    public synchronized boolean isFixed(CommonSettingKey key) {
        Boolean fixed;
        fixed = this.mIsFixed.get(key);
        return fixed == null ? false : fixed.equals(Boolean.TRUE);
    }

    public synchronized void setFixed(CommonSettingKey key, boolean fixed) {
        this.mIsFixed.put(key, Boolean.valueOf(fixed));
    }

    public synchronized void store() {
        List<ContentProviderOperation> operations = new ArrayList<>();
        for (Map.Entry<CommonSettingKey, CommonSettingValue> i : this.mSettings.entrySet()) {
            CommonSettingKey key = i.getKey();
            CommonSettingValue value = i.getValue();
            if (!isUnSelectableSetting(key)) {
                operations.add(createContentProviderUpdateOperation(key.getKey(), value.toString()));
            }
        }
        joinStoreTask();
        if (this.mExecutor == null) {
            this.mExecutor = Executors.newSingleThreadExecutor();
        }
        this.mFuture = this.mExecutor.submit(new StoreTask(this.mResolver, operations, this.mAuthority));
    }

    public synchronized void suspend() {
        joinStoreTask();
        if (this.mExecutor != null) {
            this.mExecutor.shutdown();
            this.mExecutor = null;
        }
        this.mIsBuildFingerprintModified = false;
    }

    private void joinStoreTask() {
        try {
            if (this.mFuture != null) {
                this.mFuture.get();
                this.mFuture = null;
            }
        } catch (InterruptedException e) {
            CameraLogger.e(TAG, "joinStoreTask", e);
        } catch (ExecutionException e2) {
            CameraLogger.e(TAG, "joinStoreTask", e2);
        }
    }

    private static class StoreTask implements Runnable {
        private final String mAuthority;
        private final ContentResolver mContentResolver;
        private final List<ContentProviderOperation> mOperations;

        public StoreTask(ContentResolver contentResolver, List<ContentProviderOperation> operations, String authority) {
            this.mContentResolver = contentResolver;
            this.mOperations = operations;
            this.mAuthority = authority;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.mContentResolver.applyBatch(this.mAuthority, (ArrayList) this.mOperations);
            } catch (Exception e) {
                CameraLogger.e(TAG, "run() failed:" + e.getMessage());
            }
        }
    }

    public synchronized void load() {
        this.mSettings.clear();
        Cursor c = getCommonSettingsResolver(this.mSettingsContentUri);
        if (c != null) {
            try {
                CameraLogger.d(TAG, "load ok. cursor count: " + c.getCount());
                while (c.moveToNext()) {
                    String key = c.getString(0);
                    String value = c.getString(1);
                    CommonSettingKey settingKey = CommonSettingKey.fromKey(key);
                    if (settingKey != null) {
                        CommonSettingValue settingValue = CommonSettingKey.fromValue(settingKey, value);
                        putIntoMap(settingKey, settingValue);
                    }
                    if (key.equals(CommonConstants.FINGERPRINT)) {
                        this.mCachedFirmwareVersion = value;
                    }
                }
            } finally {
                c.close();
            }
        } else {
            CameraLogger.d(TAG, "load failed. getting cursor is null.");
        }
        loadUnSelectableSettings();
        if (isFirmwareVersionUpdated()) {
            if (!this.mCachedFirmwareVersion.isEmpty()) {
                this.mIsBuildFingerprintModified = true;
            }
            saveFirmwareVersion();
        }
    }

    private void loadUnSelectableSettings() {
        for (CommonSettingKey eachKey : CommonSettingKey.values()) {
            switch (eachKey) {
                case TERM_OF_USE:
                    putIntoMap(eachKey, TermOfUse.NO_VALUE);
                    break;
                case SOFTWARE_LICENSES:
                    putIntoMap(eachKey, SoftwareLicenses.NO_VALUE);
                    break;
                case TOUCH_BLOCK:
                    putIntoMap(eachKey, TouchBlock.NO_VALUE);
                    break;
                case HELP_GUIDE:
                    putIntoMap(eachKey, HelpGuide.NO_VALUE);
                    break;
            }
        }
    }

    private boolean isUnSelectableSetting(CommonSettingKey key) {
        switch (key) {
            case TERM_OF_USE:
            case SOFTWARE_LICENSES:
            case TOUCH_BLOCK:
            case HELP_GUIDE:
                return true;
            case DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG:
            case GRID_LINE:
            default:
                return false;
        }
    }

    private synchronized void putIntoMap(CommonSettingKey key, CommonSettingValue value) {
        if (key != null) {
            this.mSettings.put(key, value);
        }
    }

    private ContentProviderOperation createContentProviderUpdateOperation(String key, String value) {
        ContentValues values = new ContentValues();
        values.put("name", key);
        values.put("value", value);
        return ContentProviderOperation.newUpdate(this.mSettingsContentUri).withValue("name", key).withValue("value", value).build();
    }

    private void saveFirmwareVersion() {
        this.mCachedFirmwareVersion = Build.FINGERPRINT;
        List<ContentProviderOperation> operations = new ArrayList<>();
        operations.add(createContentProviderUpdateOperation(CommonConstants.FINGERPRINT, this.mCachedFirmwareVersion));
        joinStoreTask();
        if (this.mExecutor == null) {
            this.mExecutor = Executors.newSingleThreadExecutor();
        }
        this.mFuture = this.mExecutor.submit(new StoreTask(this.mResolver, operations, this.mAuthority));
    }

    private boolean isFirmwareVersionUpdated() {
        String currentVersion = Build.FINGERPRINT;
        return !this.mCachedFirmwareVersion.equals(currentVersion);
    }

    private Cursor getCommonSettingsResolver(Uri uri) {
        return this.mContext.getContentResolver().query(uri, new String[]{"name", "value"}, null, null, null);
    }
}
