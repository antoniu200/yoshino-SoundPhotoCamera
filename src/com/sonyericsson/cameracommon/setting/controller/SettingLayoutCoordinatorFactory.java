package com.sonyericsson.cameracommon.setting.controller;

import android.graphics.Rect;
import com.sonyericsson.cameracommon.setting.dialog.SettingControlDialog;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasic;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabDialogBasic;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.ControlLayoutCoordinator;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.MenuLayoutCoordinator;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.SecondLayerLayoutCoordinator;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.ShortcutLayoutCoordinator;

/* loaded from: classes.dex */
class SettingLayoutCoordinatorFactory {
    SettingLayoutCoordinatorFactory() {
    }

    public static class LayoutCoordinateData {
        public final Rect anchorRect;
        public final Rect containerRect;

        public LayoutCoordinateData(Rect container, Rect anchor) {
            this.containerRect = container;
            this.anchorRect = anchor;
        }
    }

    public static LayoutCoordinator createShortcutLayoutCoordinator(SettingDialogBasic view, LayoutCoordinateData data) {
        return new ShortcutLayoutCoordinator(view, data.containerRect, data.anchorRect);
    }

    public static LayoutCoordinator createSecondLayerLayoutCoordinator(SettingDialogBasic view, LayoutCoordinateData data, int menuDialogRowCount, int numberOfTabs) {
        return new SecondLayerLayoutCoordinator(view, data.containerRect, data.anchorRect, menuDialogRowCount, numberOfTabs);
    }

    public static LayoutCoordinator createMenuLayoutCoordinator(SettingTabDialogBasic dialog, LayoutCoordinateData data, int menuDialogRowCount) {
        return new MenuLayoutCoordinator(dialog, data.containerRect, menuDialogRowCount);
    }

    public static LayoutCoordinator createControlLayoutCoordinator(SettingControlDialog dialog, LayoutCoordinateData data) {
        return new ControlLayoutCoordinator(dialog, data.containerRect, data.anchorRect);
    }
}