package com.sonyericsson.cameracommon.setting.executor;

import android.content.Context;
import android.content.DialogInterface;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

/* loaded from: classes.dex */
public class SoftwareLicensesSettingExecutor<CommonSettingKey> implements SettingExecutorInterface<CommonSettingKey> {
    private final Context mContext;
    private final SettingDialogController mSettingDialogController;

    public SoftwareLicensesSettingExecutor(Context context, SettingDialogController settingDialogController) {
        this.mContext = context;
        this.mSettingDialogController = settingDialogController;
    }

    @Override // com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface
    public void onExecute(TypedSettingItem<CommonSettingKey> item) {
        showSoftwareLicenses();
    }

    private void showSoftwareLicenses() {
        BaseActivity act = (BaseActivity) this.mContext;
        act.getMessagePopup().showSoftwareLicenses(act, new DialogInterface.OnClickListener() { // from class: com.sonyericsson.cameracommon.setting.executor.SoftwareLicensesSettingExecutor.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface arg0, int which) {
                SoftwareLicensesSettingExecutor.this.mSettingDialogController.closeDialogs(true);
            }
        }, new DialogInterface.OnCancelListener() { // from class: com.sonyericsson.cameracommon.setting.executor.SoftwareLicensesSettingExecutor.2
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface arg0) {
                SoftwareLicensesSettingExecutor.this.mSettingDialogController.closeDialogs(true);
            }
        });
    }
}
