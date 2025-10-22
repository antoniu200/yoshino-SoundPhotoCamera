package com.sonyericsson.cameracommon.setting.controller;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.setting.controller.SettingLayoutCoordinatorFactory;
import com.sonyericsson.cameracommon.setting.dialog.SettingControlDialog;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasic;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasicParams;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabDialogBasic;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator;

/* loaded from: classes.dex */
class SettingDialogFactory {
    SettingDialogFactory() {
    }

    public static SettingDialogBasic createShortcutDialog(Context context, SettingLayoutCoordinatorFactory.LayoutCoordinateData coordinateData, int dialogTitleId) {
        SettingDialogBasic dialog = (SettingDialogBasic) inflate(context, R.layout.setting_dialog_basic);
        dialog.setSettingDialogParams(SettingDialogBasicParams.SHORTCUT_DIALOG_PARAMS);
        LayoutCoordinator coordinator = SettingLayoutCoordinatorFactory.createShortcutLayoutCoordinator(dialog, coordinateData);
        dialog.setLayoutCoordinator(coordinator);
        if (dialogTitleId != 0) {
            dialog.setTitle(dialogTitleId);
        }
        return dialog;
    }

    public static SettingDialogBasic createSecondLayerDialog(Context context, SettingLayoutCoordinatorFactory.LayoutCoordinateData coordinateData, int menuDialogRowCount, int numberOfTabs) {
        SettingDialogBasic dialog = (SettingDialogBasic) inflate(context, R.layout.setting_dialog_basic);
        dialog.setSettingDialogParams(SettingDialogBasicParams.SECOND_LAYER_DIALOG_SINGLE_ITEM_PARAMS);
        LayoutCoordinator coordinator = SettingLayoutCoordinatorFactory.createSecondLayerLayoutCoordinator(dialog, coordinateData, menuDialogRowCount, numberOfTabs);
        dialog.setLayoutCoordinator(coordinator);
        return dialog;
    }

    public static SettingTabDialogBasic createMenu(Context context, SettingLayoutCoordinatorFactory.LayoutCoordinateData coordinateData, int menuDialogRowCount, int numberOfTabs) {
        SettingTabDialogBasic dialog = (SettingTabDialogBasic) inflate(context, R.layout.setting_dialog_menu);
        dialog.setNumberOfTabs(numberOfTabs);
        LayoutCoordinator coordinator = SettingLayoutCoordinatorFactory.createMenuLayoutCoordinator(dialog, coordinateData, menuDialogRowCount);
        dialog.setLayoutCoordinator(coordinator);
        return dialog;
    }

    public static SettingTabDialogBasic createSimpleMenu(Context context, SettingLayoutCoordinatorFactory.LayoutCoordinateData coordinateData, int dialogTitleId, int menuDialogRowCount) {
        SettingTabDialogBasic dialog = (SettingTabDialogBasic) inflate(context, R.layout.setting_dialog_basic_tab);
        dialog.setSettingDialogParams(SettingDialogBasicParams.SHORTCUT_DIALOG_PARAMS);
        LayoutCoordinator coordinator = SettingLayoutCoordinatorFactory.createMenuLayoutCoordinator(dialog, coordinateData, menuDialogRowCount + 1);
        dialog.setLayoutCoordinator(coordinator);
        if (dialogTitleId != 0) {
            dialog.setTitle(dialogTitleId);
        }
        return dialog;
    }

    public static SettingControlDialog createControl(Context context, SettingLayoutCoordinatorFactory.LayoutCoordinateData coordinateData) {
        SettingControlDialog dialog = (SettingControlDialog) inflate(context, R.layout.setting_dialog_control);
        LayoutCoordinator coordinator = SettingLayoutCoordinatorFactory.createControlLayoutCoordinator(dialog, coordinateData);
        dialog.setLayoutCoordinator(coordinator);
        return dialog;
    }

    private static View inflate(Context context, int id) {
        LayoutInflater inflater = (LayoutInflater) context.getSystemService("layout_inflater");
        return inflater.inflate(id, (ViewGroup) null);
    }
}