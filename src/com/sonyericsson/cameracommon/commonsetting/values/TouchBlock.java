package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

/* loaded from: classes.dex */
public enum TouchBlock implements CommonSettingValue {
    NO_VALUE(-1, -1);

    public static final String TAG = "TouchBlock";
    private final int mIconId;
    private final int mTextId;

    TouchBlock(int iconId, int textId) {
        this.mIconId = iconId;
        this.mTextId = textId;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.TOUCH_BLOCK;
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

    public static TouchBlock getDefaultValue() {
        return NO_VALUE;
    }
}