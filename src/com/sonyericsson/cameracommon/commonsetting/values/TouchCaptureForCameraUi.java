package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

/* loaded from: classes.dex */
public enum TouchCaptureForCameraUi implements CommonSettingValue {
    ON(-1, R.string.cam_strings_settings_on_txt, "on"),
    FRONT_ONLY(-1, R.string.cam_strings_preview_only_front_txt, "front_only"),
    OFF(-1, R.string.cam_strings_settings_off_txt, "off");

    public static final String TAG = "TouchCaptureForCameraUi";
    private final int mIconId;
    private final String mProviderValue;
    private final int mTextId;

    TouchCaptureForCameraUi(int iconId, int textId, String providerValue) {
        this.mIconId = iconId;
        this.mTextId = textId;
        this.mProviderValue = providerValue;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.TOUCH_CAPTURE_FOR_CAMERA_UI;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getIconId() {
        return this.mIconId;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getTextId() {
        return this.mTextId;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public String getProviderValue() {
        return this.mProviderValue;
    }

    public static TouchCaptureForCameraUi getDefaultValue() {
        return OFF;
    }
}