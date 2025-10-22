package com.sonyericsson.cameracommon.setting.layoutcoordinator;

import android.content.res.Resources;
import android.graphics.Rect;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingControlDialog;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;

/* loaded from: classes.dex */
public class ControlLayoutCoordinator implements LayoutCoordinator {
    public static final String TAG = "ControlLayoutCoordinator";
    private final Rect mAnchorRect;
    private final Rect mContainerRect;
    private final int mDialogHeight;
    public Rect mDialogRect;
    private final SettingControlDialog mView;

    public ControlLayoutCoordinator(SettingControlDialog view, Rect containerRect, Rect anchorRect) {
        this.mView = view;
        this.mContainerRect = containerRect;
        this.mAnchorRect = anchorRect;
        Resources res = view.getResources();
        this.mDialogHeight = res.getDimensionPixelSize(R.dimen.control_setting_dialog_height);
    }

    @Override // com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator
    public void coordinatePosition(int orientation) {
        if (LayoutDependencyResolver.isTablet(this.mView.getContext())) {
            coordinatePositionTablet(orientation);
        } else {
            coordinatePositionPhone(orientation);
        }
    }

    private void coordinatePositionPhone(int orientation) {
        this.mView.setX(this.mContainerRect.left);
        this.mView.setY(this.mContainerRect.top + ((this.mContainerRect.height() - this.mView.getLayoutParams().height) / 2.0f));
        this.mDialogRect = new Rect((int) this.mView.getX(), (int) this.mView.getY(), ((int) this.mView.getX()) + this.mView.getLayoutParams().width, ((int) this.mView.getY()) + this.mView.getLayoutParams().height);
    }

    private void coordinatePositionTablet(int orientation) {
        this.mView.setX(this.mContainerRect.left);
        this.mView.setY((this.mContainerRect.top + this.mAnchorRect.centerY()) - (this.mView.getLayoutParams().height / 2.0f));
        this.mDialogRect = new Rect((int) this.mView.getX(), (int) this.mView.getY(), ((int) this.mView.getX()) + this.mView.getLayoutParams().width, ((int) this.mView.getY()) + this.mView.getLayoutParams().height);
    }

    @Override // com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator
    public void coordinateSize(int orientation) {
        this.mView.getLayoutParams().width = -2;
        this.mView.getLayoutParams().height = this.mDialogHeight + this.mView.getPaddingTop() + this.mView.getPaddingBottom();
    }

    @Override // com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator
    public Rect getDialogRect() {
        return this.mDialogRect;
    }
}