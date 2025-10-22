package com.sonyericsson.cameracommon.setting.executor;

import android.content.Context;
import com.sonyericsson.cameracommon.launcher.ApplicationLauncher;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

/* loaded from: classes.dex */
public class TouchBlockSettingExecutor<CommonSettingKey> implements SettingExecutorInterface<CommonSettingKey> {
    private final Context mContext;
    private final SettingDialogController mSettingDialogController;

    public TouchBlockSettingExecutor(Context context, SettingDialogController settingDialogController) {
        this.mContext = context;
        this.mSettingDialogController = settingDialogController;
    }

    @Override // com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface
    public void onExecute(TypedSettingItem<CommonSettingKey> item) {
        ApplicationLauncher.startCameraTouchBlock(this.mContext);
        this.mSettingDialogController.closeDialogs(true);
    }
}
