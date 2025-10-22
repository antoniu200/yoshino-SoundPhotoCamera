package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

/* loaded from: classes.dex */
public enum TermOfUse implements CommonSettingValue {
    NO_VALUE(-1, -1);

    public static final String TAG = "TermOfUse";
    private final int mIconId;
    private final int mTextId;

    TermOfUse(int iconId, int textId) {
        this.mIconId = iconId;
        this.mTextId = textId;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.TERM_OF_USE;
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
        return null;
    }

    public static TermOfUse getDefaultValue() {
        return NO_VALUE;
    }
}