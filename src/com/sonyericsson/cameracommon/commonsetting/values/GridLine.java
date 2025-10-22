package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

/* loaded from: classes.dex */
public enum GridLine implements CommonSettingValue {
    ON(-1, R.string.cam_strings_settings_on_txt, true, "on"),
    OFF(-1, R.string.cam_strings_settings_off_txt, false, "off");

    private static final int PARAMETER_TEXT_ID = R.string.cam_strings_gridline_txt;
    public static final String TAG = "GridLine";
    private final int mIconId;
    private final boolean mIsGridLineOn;
    private final String mProviderValue;
    private final int mTextId;

    GridLine(int iconId, int textId, boolean isGridLineOn, String providerValue) {
        this.mIconId = iconId;
        this.mTextId = textId;
        this.mIsGridLineOn = isGridLineOn;
        this.mProviderValue = providerValue;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.GRID_LINE;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getIconId() {
        return this.mIconId;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getTextId() {
        return this.mTextId;
    }

    public boolean isGridLineOn() {
        return this.mIsGridLineOn;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public String getProviderValue() {
        return this.mProviderValue;
    }

    public String getParameterName() {
        return getClass().getName();
    }

    public int getCommonSettingKeyTextId() {
        return PARAMETER_TEXT_ID;
    }

    public static GridLine getDefaultValue() {
        return OFF;
    }
}