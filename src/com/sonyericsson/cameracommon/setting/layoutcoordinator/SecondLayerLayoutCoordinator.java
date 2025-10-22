package com.sonyericsson.cameracommon.setting.layoutcoordinator;

import android.graphics.Point;
import android.graphics.Rect;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasic;
import com.sonyericsson.cameracommon.utility.CommonUtility;

/* loaded from: classes.dex */
public class SecondLayerLayoutCoordinator implements LayoutCoordinator {
    public static final String TAG = "SecondLayerLayoutCoordinator";
    private final Rect mAnchor;
    private final Rect mBounds;
    private int mDialogHeight;
    public Rect mDialogRect;
    private int mDialogWidth;
    private final MenuDialogRectCalculator mMenuDialogRectCalculator;
    private final int mTopMargin;
    private final SettingDialogBasic mView;

    public SecondLayerLayoutCoordinator(SettingDialogBasic view, Rect containerRect, Rect anchorRect, int menuDialogRowCount, int numberOfTabs) {
        this.mView = view;
        this.mBounds = containerRect;
        this.mAnchor = anchorRect;
        this.mMenuDialogRectCalculator = new MenuDialogRectCalculator(view.getContext(), containerRect, menuDialogRowCount, numberOfTabs);
        this.mTopMargin = view.getContext().getResources().getDimensionPixelSize(R.dimen.second_layer_dialog_margin_top);
    }

    @Override // com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator
    public void coordinatePosition(int orientation) {
        int parentDialogWidth = this.mMenuDialogRectCalculator.computeWidth(orientation);
        int parentDialogHeight = this.mMenuDialogRectCalculator.computeHeight(orientation);
        int left = CommonUtility.isMirroringRequired(this.mView.getContext()) ? this.mAnchor.left : this.mAnchor.right - this.mDialogWidth;
        int top = this.mAnchor.bottom + this.mTopMargin;
        Rect targetRect = new Rect(left, top, this.mDialogWidth + left, this.mDialogHeight + top);
        Rect rotationSourceArea = new Rect(0, 0, parentDialogWidth, parentDialogHeight);
        Point rotationDestPosition = this.mMenuDialogRectCalculator.computePosition(orientation);
        if (isPortrait(orientation)) {
            if (targetRect.bottom + rotationDestPosition.x > this.mBounds.right) {
                rotationDestPosition.x = this.mBounds.right - targetRect.bottom;
            }
        } else if (targetRect.bottom + rotationDestPosition.y > this.mBounds.bottom) {
            rotationDestPosition.y = this.mBounds.bottom - targetRect.bottom;
        }
        this.mDialogRect = LayoutCoordinateUtil.coodinatePosition(orientation, this.mView, targetRect, rotationSourceArea, rotationDestPosition);
    }

    @Override // com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator
    public void coordinateSize(int orientation) {
        int heightLimit = isPortrait(orientation) ? this.mBounds.width() : this.mBounds.height();
        this.mView.setNumColumns(1);
        int numRows = this.mView.getNumRows(heightLimit);
        this.mDialogWidth = this.mView.computeWidth(1);
        this.mDialogHeight = Math.min(this.mView.computeMaxHeight(numRows), this.mView.computeHeight(1));
        this.mView.getLayoutParams().width = this.mDialogWidth;
        this.mView.getLayoutParams().height = this.mDialogHeight;
    }

    @Override // com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator
    public Rect getDialogRect() {
        return this.mDialogRect;
    }

    private boolean isPortrait(int orientation) {
        return orientation == 1;
    }
}