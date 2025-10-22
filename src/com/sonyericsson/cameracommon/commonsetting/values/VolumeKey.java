package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingConstants;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

/* loaded from: classes.dex */
public enum VolumeKey implements CommonSettingValue {
    ZOOM(-1, R.string.cam_strings_volumekey_zoom_txt, CommonSettingConstants.VolumeKeyValue.ZOOM),
    VOLUME(-1, R.string.cam_strings_volumekey_volume_txt, CommonSettingConstants.VolumeKeyValue.VOLUME),
    HW_CAMERA_KEY(-1, R.string.cam_strings_volumekey_shutter_txt, CommonSettingConstants.VolumeKeyValue.HW_CAMERA_KEY);

    public static final String TAG = "VolumeKey";
    private final int mIconId;
    private final String mSettingsSecureValue;
    private final int mTextId;

    VolumeKey(int iconId, int textId, String settingsSecureValue) {
        this.mIconId = iconId;
        this.mTextId = textId;
        this.mSettingsSecureValue = settingsSecureValue;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.VOLUME_KEY;
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
        return this.mSettingsSecureValue;
    }

    public static VolumeKey getDefaultValue() {
        return ZOOM;
    }
}