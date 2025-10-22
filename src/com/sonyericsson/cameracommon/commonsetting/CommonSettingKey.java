package com.sonyericsson.cameracommon.commonsetting;

import android.content.Context;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.commonsetting.values.AutoReview;
import com.sonyericsson.cameracommon.commonsetting.values.AutoReviewForCameraUi;
import com.sonyericsson.cameracommon.commonsetting.values.DoNotShowAgainCheckForGeotagDialog;
import com.sonyericsson.cameracommon.commonsetting.values.FastCapture;
import com.sonyericsson.cameracommon.commonsetting.values.Flash;
import com.sonyericsson.cameracommon.commonsetting.values.Geotag;
import com.sonyericsson.cameracommon.commonsetting.values.GridLine;
import com.sonyericsson.cameracommon.commonsetting.values.PhotoLight;
import com.sonyericsson.cameracommon.commonsetting.values.SaveDestination;
import com.sonyericsson.cameracommon.commonsetting.values.ShutterSound;
import com.sonyericsson.cameracommon.commonsetting.values.TouchCapture;
import com.sonyericsson.cameracommon.commonsetting.values.TouchCaptureForCameraUi;
import com.sonyericsson.cameracommon.commonsetting.values.VolumeKey;
import com.sonyericsson.cameracommon.constants.CommonConstants;
import com.sonyericsson.cameracommon.settings.SettingKey;
import com.sonyericsson.cameracommon.utility.ResourceUtil;

/* loaded from: classes.dex */
public enum CommonSettingKey implements SettingKey {
    FLASH(R.string.cam_strings_flash_txt, "flash", Flash.values()),
    PHOTO_LIGHT(R.string.cam_strings_flash_torch_txt, "photo_light", PhotoLight.values()),
    AUTO_REVIEW(R.string.cam_strings_preview_duration_title_txt, "auto_review", AutoReview.values()),
    AUTO_REVIEW_FOR_CAMERA_UI(R.string.cam_strings_photo_autoreview_txt, "auto_review_for_camera_ui", AutoReviewForCameraUi.values()),
    GEO_TAG(R.string.cam_strings_geotagging_title_txt, "geo_tag", Geotag.values()),
    FAST_CAPTURE(R.string.cam_strings_fast_capturing_title_txt, "fast-capture", new FastCapture[]{FastCapture.LAUNCH_ONLY, FastCapture.LAUNCH_AND_CAPTURE, FastCapture.LAUNCH_AND_RECORDING, FastCapture.OFF}),
    TOUCH_CAPTURE(R.string.cam_strings_touch_capturing_title_txt, "touch_capture", TouchCapture.values()),
    TOUCH_CAPTURE_FOR_CAMERA_UI(R.string.cam_strings_touch_capturing_title_txt, "touch_capture_for_camera_ui", TouchCaptureForCameraUi.values()),
    SHUTTER_SOUND(R.string.cam_strings_camera_sound_txt, "shutter_sound", ShutterSound.values()),
    SAVE_DESTINATION(R.string.cam_strings_save_destination_title_txt, "storage", SaveDestination.values()),
    VOLUME_KEY(R.string.cam_strings_volumekey_txt, "volume_key", VolumeKey.values()),
    TERM_OF_USE(R.string.cam_strings_term_of_use_title_txt, "term_of_use", new CommonSettingValue[0]),
    SOFTWARE_LICENSES(R.string.cam_strings_sw_licence_title_txt, "software_licenses", new CommonSettingValue[0]),
    TOUCH_BLOCK(-1, "touch_block", new CommonSettingValue[0]),
    DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG(-1, "do_not_show_again_check_for_geotag_dialog_value", DoNotShowAgainCheckForGeotagDialog.values()),
    GRID_LINE(R.string.cam_strings_gridline_txt, "grid_line", GridLine.values()),
    HELP_GUIDE(R.string.cam_strings_help_txt, "help_guide", new CommonSettingValue[0]);

    public static final String TAG = "CommonSettingKey";
    private String mKey;
    private int mTitleTextId;
    private CommonSettingValue[] mValues;

    CommonSettingKey(int titleTextId, String key, CommonSettingValue[] values) {
        this.mTitleTextId = titleTextId;
        this.mKey = key;
        this.mValues = values;
    }

    public int getTitleId() {
        return this.mTitleTextId;
    }

    public String getTitle(Context context) {
        switch (this) {
            case TOUCH_BLOCK:
                return ResourceUtil.getApplicationLabel(context, CommonConstants.TOUCH_BLOCKER_PACKAGE);
            default:
                return null;
        }
    }

    public String getKey() {
        return this.mKey;
    }

    public CommonSettingValue[] getValues() {
        return (CommonSettingValue[]) this.mValues.clone();
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getIconId() {
        return 0;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getTextId() {
        return 0;
    }

    public static CommonSettingKey fromKey(String key) {
        for (CommonSettingKey setting : values()) {
            if (setting.mKey.equals(key)) {
                return setting;
            }
        }
        return null;
    }

    public static CommonSettingValue fromValue(CommonSettingKey settingKey, String value) {
        for (CommonSettingValue settingValue : settingKey.getValues()) {
            if (settingValue.toString().toUpperCase().equals(value.toUpperCase())) {
                return settingValue;
            }
        }
        return null;
    }

    public static String getValueFromProviderString(String providerValue, CommonSettingKey key) {
        for (CommonSettingValue value : key.getValues()) {
            if (providerValue.equals(value.getProviderValue())) {
                return value.toString();
            }
        }
        return null;
    }
}