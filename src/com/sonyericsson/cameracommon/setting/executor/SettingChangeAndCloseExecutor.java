package com.sonyericsson.cameracommon.setting.executor;

import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

/* loaded from: classes.dex */
public class SettingChangeAndCloseExecutor<T> extends SettingChangeExecutor<T> {
    public static final String TAG = "SettingChangeAndCloseExecutor";
    private final SettingDialogController mSettingDialogController;

    public SettingChangeAndCloseExecutor(SettingChangerInterface<T> changer, SettingDialogController settingDialogController) {
        super(changer);
        this.mSettingDialogController = settingDialogController;
    }

    @Override // com.sonyericsson.cameracommon.setting.executor.SettingChangeExecutor, com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface
    public void onExecute(TypedSettingItem<T> item) {
        super.onExecute(item);
        this.mSettingDialogController.closeCurrentDialog();
    }
}