package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

/* loaded from: classes.dex */
public enum PhotoLight implements CommonSettingValue {
    ON(R.drawable.cam_flash_torch_icn, R.string.cam_strings_settings_on_txt, "torch", true, "on"),
    OFF(R.drawable.cam_flash_torch_off_icn, R.string.cam_strings_settings_off_txt, "off", false, "off");

    public static final String TAG = "PhotoLight";
    private static final int sParameterTextId = R.string.cam_strings_flash_torch_txt;
    private final boolean mBooleanValue;
    private final int mIconId;
    private final String mProviderValue;
    private final int mTextId;
    private final String mValue;

    PhotoLight(int iconId, int textId, String value, boolean booleanValue, String providerValue) {
        this.mIconId = iconId;
        this.mTextId = textId;
        this.mValue = value;
        this.mBooleanValue = booleanValue;
        this.mProviderValue = providerValue;
    }

    public int getParameterKeyTextId() {
        return sParameterTextId;
    }

    public String getParameterName() {
        return getClass().getName();
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getIconId() {
        return this.mIconId;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getTextId() {
        return this.mTextId;
    }

    public String getValue() {
        return this.mValue;
    }

    public boolean getBooleanValue() {
        return this.mBooleanValue;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.PHOTO_LIGHT;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public String getProviderValue() {
        return this.mProviderValue;
    }

    public static PhotoLight getDefaultValue() {
        return OFF;
    }
}