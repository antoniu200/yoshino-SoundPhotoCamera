package com.sonyericsson.cameracommon.setting.executor;

import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

/* loaded from: classes.dex */
public interface SettingChangerInterface<T> {
    void changeValue(TypedSettingItem<T> typedSettingItem);
}