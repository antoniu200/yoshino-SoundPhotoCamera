package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonyericsson.cameracommon.commonsetting.CommonSettingConstants;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

/* loaded from: classes.dex */
public enum DoNotShowAgainCheckForGeotagDialog implements CommonSettingValue {
    CHECKED(CommonSettingConstants.DoNotShowAgainCheckForGeotagDialogValue.CHECKED),
    NOT_CHECKED(CommonSettingConstants.DoNotShowAgainCheckForGeotagDialogValue.NOT_CHECKED);

    public static final String TAG = "DoNotShowAgainCheckForGeotagDialog";
    private final String mProviderValue;

    DoNotShowAgainCheckForGeotagDialog(String providerValue) {
        this.mProviderValue = providerValue;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getIconId() {
        return -1;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getTextId() {
        return -1;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public String getProviderValue() {
        return this.mProviderValue;
    }

    public String getParameterName() {
        return getClass().getName();
    }

    public int getParameterKeyTextId() {
        return -1;
    }

    public static DoNotShowAgainCheckForGeotagDialog getDefaultValue() {
        return NOT_CHECKED;
    }
}