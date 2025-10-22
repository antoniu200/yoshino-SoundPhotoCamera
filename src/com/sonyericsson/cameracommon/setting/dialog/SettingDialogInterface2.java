package com.sonyericsson.cameracommon.setting.dialog;

import android.view.ViewGroup;

/* loaded from: classes.dex */
public interface SettingDialogInterface2 {
    void close();

    boolean hitTest(int i, int i2);

    void open(ViewGroup viewGroup);

    void setEnabled(boolean z);

    void setSensorOrientation(int i);

    void setStateListener(SettingDialogStateListener settingDialogStateListener);
}