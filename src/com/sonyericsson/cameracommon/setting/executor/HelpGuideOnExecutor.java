package com.sonyericsson.cameracommon.setting.executor;

import android.content.Context;
import com.sonyericsson.cameracommon.commonsetting.values.HelpGuide;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;
import com.sonymobile.cameracommon.research.ResearchUtil;

/* loaded from: classes.dex */
public class HelpGuideOnExecutor<CommonSettingKey> implements SettingExecutorInterface<CommonSettingKey> {
    private final Context mContext;
    private final SettingDialogController mSettingDialogController;

    public HelpGuideOnExecutor(Context context, SettingDialogController settingController) {
        this.mContext = context;
        this.mSettingDialogController = settingController;
    }

    @Override // com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface
    public void onExecute(TypedSettingItem<CommonSettingKey> item) {
        this.mSettingDialogController.closeDialogs(true);
        if (HelpGuide.isHelpAppAvailable(this.mContext)) {
            HelpGuide.startHelpApp(this.mContext);
        } else {
            HelpGuide.startOnlineHelp(this.mContext);
        }
        ResearchUtil.getInstance().sendSettingsCommon(item.getData().toString());
    }
}