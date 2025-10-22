package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

/* loaded from: classes.dex */
public enum Geotag implements CommonSettingValue {
    ON(-1, R.string.cam_strings_settings_on_txt, true, "on"),
    OFF(-1, R.string.cam_strings_settings_off_txt, false, "off");

    public static final String TAG = "Geotag";
    private static final int sParameterTextId = R.string.cam_strings_geotagging_txt;
    private final int mIconId;
    private final boolean mIsGeotagOn;
    private final String mProviderValue;
    private final int mTextId;

    Geotag(int iconId, int textId, boolean isGeotagOn, String providerValue) {
        this.mIconId = iconId;
        this.mTextId = textId;
        this.mIsGeotagOn = isGeotagOn;
        this.mProviderValue = providerValue;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.GEO_TAG;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getIconId() {
        return this.mIconId;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getTextId() {
        return this.mTextId;
    }

    public boolean isGeotagOn() {
        return this.mIsGeotagOn;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public String getProviderValue() {
        return this.mProviderValue;
    }

    public String getParameterName() {
        return getClass().getName();
    }

    public int getParameterKeyTextId() {
        return sParameterTextId;
    }

    public static Geotag getDefaultValue() {
        return OFF;
    }
}