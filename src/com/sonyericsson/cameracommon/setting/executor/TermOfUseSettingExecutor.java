package com.sonyericsson.cameracommon.setting.executor;

import android.content.Context;
import android.content.DialogInterface;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;
import com.sonymobile.cameracommon.research.ResearchUtil;

/* loaded from: classes.dex */
public class TermOfUseSettingExecutor<CommonSettingKey> implements SettingExecutorInterface<CommonSettingKey> {
    private final Context mContext;
    private final SettingDialogController mSettingDialogController;

    public TermOfUseSettingExecutor(Context context, SettingDialogController settingDialogController) {
        this.mContext = context;
        this.mSettingDialogController = settingDialogController;
    }

    @Override // com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface
    public void onExecute(TypedSettingItem<CommonSettingKey> item) {
        showTermsAndConditions();
        ResearchUtil.getInstance().sendSettingsCommon(item.getData().toString());
    }

    private void showTermsAndConditions() {
        BaseActivity act = (BaseActivity) this.mContext;
        act.getMessagePopup().showTermsAndConditions(act, new DialogInterface.OnClickListener() { // from class: com.sonyericsson.cameracommon.setting.executor.TermOfUseSettingExecutor.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface arg0, int which) {
                TermOfUseSettingExecutor.this.mSettingDialogController.closeDialogs(true);
            }
        }, new DialogInterface.OnCancelListener() { // from class: com.sonyericsson.cameracommon.setting.executor.TermOfUseSettingExecutor.2
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface arg0) {
                TermOfUseSettingExecutor.this.mSettingDialogController.closeDialogs(true);
            }
        });
    }
}