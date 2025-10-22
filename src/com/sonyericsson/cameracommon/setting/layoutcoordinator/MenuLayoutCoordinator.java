package com.sonyericsson.cameracommon.setting.layoutcoordinator;

import android.graphics.Rect;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabDialogBasic;

/* loaded from: classes.dex */
public class MenuLayoutCoordinator implements LayoutCoordinator {
    public Rect mDialogRect;
    private final MenuDialogRectCalculator mMenuDialogRectCalculator;
    private final SettingTabDialogBasic mView;

    public MenuLayoutCoordinator(SettingTabDialogBasic view, Rect containerRect, int menuDialogRowCount) {
        this.mView = view;
        this.mMenuDialogRectCalculator = new MenuDialogRectCalculator(view.getContext(), containerRect, menuDialogRowCount, view.numberOfTabs());
    }

    @Override // com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator
    public void coordinatePosition(int orientation) {
        Rect targetRect = new Rect(0, 0, this.mView.getLayoutParams().width, this.mView.getLayoutParams().height);
        this.mDialogRect = LayoutCoordinateUtil.coodinatePosition(orientation, this.mView, targetRect, targetRect, this.mMenuDialogRectCalculator.computePosition(orientation));
    }

    @Override // com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator
    public void coordinateSize(int orientation) {
        this.mView.setNumColumns(1);
        this.mView.getLayoutParams().width = this.mMenuDialogRectCalculator.computeWidth(orientation);
        this.mView.getLayoutParams().height = this.mMenuDialogRectCalculator.computeHeight(orientation);
    }

    @Override // com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator
    public Rect getDialogRect() {
        return this.mDialogRect;
    }
}