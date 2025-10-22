package com.sonyericsson.cameracommon.viewfinder.setting;

import android.content.Context;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.cameracommon.setting.executor.HelpGuideOnExecutor;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.executor.SoftwareLicensesSettingExecutor;
import com.sonyericsson.cameracommon.setting.executor.TermOfUseSettingExecutor;
import com.sonyericsson.cameracommon.setting.executor.TouchBlockSettingExecutor;

/* loaded from: classes.dex */
public class CommonSettingExecutorFactory extends SettingExecutorFactory<CommonSettingKey, CommonSettingValue> {
    private final Context mContext;
    private final SettingDialogController mSettingDialogController;

    public CommonSettingExecutorFactory(Context context, SettingDialogController settingDialogController, CommonSettingChanger settingChanger) {
        super(context, settingDialogController, settingChanger);
        this.mContext = context;
        this.mSettingDialogController = settingDialogController;
    }

    public SettingExecutorInterface<CommonSettingKey> getExecutor(CommonSettingKey key, SettingDialogItemFactory dialogItemFactory) {
        switch (key) {
            case TERM_OF_USE:
                return new TermOfUseSettingExecutor(this.mContext, this.mSettingDialogController);
            case SOFTWARE_LICENSES:
                return new SoftwareLicensesSettingExecutor(this.mContext, this.mSettingDialogController);
            case TOUCH_BLOCK:
                return new TouchBlockSettingExecutor(this.mContext, this.mSettingDialogController);
            case HELP_GUIDE:
                return new HelpGuideOnExecutor(this.mContext, this.mSettingDialogController);
            default:
                return getOpenValueSelectDialogExecutor(key, dialogItemFactory);
        }
    }
}