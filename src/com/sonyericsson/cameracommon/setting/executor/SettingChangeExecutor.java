package com.sonyericsson.cameracommon.setting.executor;

import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

/* loaded from: classes.dex */
public class SettingChangeExecutor<T> implements SettingExecutorInterface<T> {
    private final SettingChangerInterface<T> mSettingChanger;

    public SettingChangeExecutor(SettingChangerInterface<T> changer) {
        this.mSettingChanger = changer;
    }

    @Override // com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface
    public void onExecute(TypedSettingItem<T> item) {
        this.mSettingChanger.changeValue(item);
    }
}