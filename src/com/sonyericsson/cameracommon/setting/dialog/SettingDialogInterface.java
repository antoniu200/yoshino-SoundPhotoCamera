package com.sonyericsson.cameracommon.setting.dialog;

import android.graphics.Rect;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator;

/* loaded from: classes.dex */
public interface SettingDialogInterface extends SettingDialogInterface2 {
    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface2
    void close();

    LayoutCoordinator getLayoutCoordinator();

    boolean getSelectedItemRect(Rect rect);

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface2
    boolean hitTest(int i, int i2);

    boolean isNested();

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface2
    void open(ViewGroup viewGroup);

    void open(ViewGroup viewGroup, boolean z);

    void setAdapter(SettingAdapter settingAdapter);

    void setCloseAnimation(Animation animation);

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface2
    void setEnabled(boolean z);

    void setLayoutCoordinator(LayoutCoordinator layoutCoordinator);

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface2
    void setSensorOrientation(int i);

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface2
    void setStateListener(SettingDialogStateListener settingDialogStateListener);
}