package com.sonyericsson.cameracommon.commonsetting;

import com.sonyericsson.cameracommon.settings.SettingItemData;

/* loaded from: classes.dex */
public interface CommonSettingValue extends SettingItemData {
    CommonSettingKey getCommonSettingKey();

    String getProviderValue();
}