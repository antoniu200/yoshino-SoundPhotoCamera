package com.sonyericsson.cameracommon.setting.controller;

import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;

/* loaded from: classes.dex */
public interface SettingDialogController {
    void closeCurrentDialog();

    void closeDialogs(boolean z);

    void openSecondLayerDialog(SettingAdapter settingAdapter, Object obj);
}