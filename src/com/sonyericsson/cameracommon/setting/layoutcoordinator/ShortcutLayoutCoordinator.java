package com.sonyericsson.cameracommon.setting.layoutcoordinator;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.ViewGroup;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasic;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;

/* loaded from: classes.dex */
public class ShortcutLayoutCoordinator implements LayoutCoordinator {
    public static final String TAG = "ShortcutLayoutCoordinator";
    private final Rect mAnchorRect;
    private final Rect mContainerRect;
    private int mDialogHeight;
    public Rect mDialogRect;
    private int mDialogWidth;
    private final boolean mIsTablet;
    private final int mMaxHeightMargin;
    private final SettingDialogBasic mView;

    public ShortcutLayoutCoordinator(SettingDialogBasic view, Rect containerRect, Rect anchorRect) throws Resources.NotFoundException {
        int dimensionPixelSize;
        this.mView = view;
        this.mContainerRect = containerRect;
        this.mAnchorRect = anchorRect;
        this.mIsTablet = LayoutDependencyResolver.isTablet(this.mView.getContext());
        Resources res = this.mView.getContext().getResources();
        if (this.mIsTablet) {
            dimensionPixelSize = res.getDimensionPixelSize(R.dimen.setting_dialog_menu_max_height_margin_tablet);
        } else {
            dimensionPixelSize = res.getDimensionPixelSize(R.dimen.setting_dialog_menu_max_height_margin_phone);
        }
        this.mMaxHeightMargin = dimensionPixelSize;
    }

    @Override // com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator
    public void coordinatePosition(int orientation) throws Resources.NotFoundException {
        if (this.mIsTablet) {
            coordinatePositionTablet(orientation);
        } else {
            coordinatePositionPhone(orientation);
        }
    }

    private void coordinatePositionPhone(int orientation) {
        this.mView.setPivotX(0.0f);
        this.mView.setPivotY(0.0f);
        this.mView.setRotation(RotationUtil.getAngle(orientation));
        if (isPortrait(orientation)) {
            int left = this.mContainerRect.left;
            int top = (int) (this.mContainerRect.top + this.mDialogWidth + ((this.mContainerRect.height() - this.mDialogWidth) / 2.0f));
            this.mView.setLeft(left);
            this.mView.setRight(this.mDialogWidth + left);
            this.mView.setTop(top);
            this.mView.setBottom(this.mDialogHeight + top);
            this.mDialogRect = new Rect((int) this.mView.getX(), ((int) this.mView.getY()) - this.mDialogWidth, ((int) this.mView.getX()) + this.mDialogHeight, (int) this.mView.getY());
            return;
        }
        int left2 = this.mContainerRect.left;
        int top2 = (int) (this.mContainerRect.top + ((this.mContainerRect.height() - this.mDialogHeight) / 2.0f));
        this.mView.setLeft(left2);
        this.mView.setRight(this.mDialogWidth + left2);
        this.mView.setTop(top2);
        this.mView.setBottom(this.mDialogHeight + top2);
        this.mDialogRect = new Rect((int) this.mView.getX(), (int) this.mView.getY(), ((int) this.mView.getX()) + this.mDialogWidth, ((int) this.mView.getY()) + this.mDialogHeight);
    }

    private void coordinatePositionTablet(int orientation) throws Resources.NotFoundException {
        int shortcutCount = LayoutDependencyResolver.getLeftItemCount(this.mView.getContext());
        int shortcutSize = this.mView.getContext().getResources().getDimensionPixelSize(R.dimen.shortcut_dialog_item_height);
        int marginVertical = ((this.mContainerRect.height() / shortcutCount) - shortcutSize) / 2;
        this.mView.setPivotX(0.0f);
        this.mView.setPivotY(0.0f);
        if (isPortrait(orientation)) {
            int left = this.mContainerRect.left;
            int top = (int) (this.mContainerRect.top + this.mAnchorRect.centerY() + (this.mDialogWidth / 2.0f));
            if (top < this.mContainerRect.top + marginVertical + this.mDialogWidth) {
                top = this.mContainerRect.top + marginVertical + this.mDialogWidth;
            } else if (this.mDialogWidth + top > (this.mContainerRect.bottom - marginVertical) + this.mDialogWidth) {
                top = ((this.mContainerRect.bottom - marginVertical) - this.mDialogWidth) + this.mDialogWidth;
            }
            this.mView.setLeft(left);
            this.mView.setRight(this.mDialogWidth + left);
            this.mView.setTop(top);
            this.mView.setBottom(this.mDialogHeight + top);
            this.mDialogRect = new Rect((int) this.mView.getX(), ((int) this.mView.getY()) - this.mDialogWidth, ((int) this.mView.getX()) + this.mDialogHeight, (int) this.mView.getY());
        } else {
            int left2 = this.mContainerRect.left;
            int top2 = (int) ((this.mContainerRect.top + this.mAnchorRect.centerY()) - (this.mDialogHeight / 2.0f));
            if (top2 < this.mContainerRect.top + marginVertical) {
                top2 = this.mContainerRect.top + marginVertical;
            } else if (this.mDialogHeight + top2 > this.mContainerRect.bottom - marginVertical) {
                top2 = (this.mContainerRect.bottom - marginVertical) - this.mDialogHeight;
            }
            this.mView.setLeft(left2);
            this.mView.setRight(this.mDialogWidth + left2);
            this.mView.setTop(top2);
            this.mView.setBottom(this.mDialogHeight + top2);
            this.mDialogRect = new Rect((int) this.mView.getX(), (int) this.mView.getY(), ((int) this.mView.getX()) + this.mDialogWidth, ((int) this.mView.getY()) + this.mDialogHeight);
        }
        this.mView.setRotation(RotationUtil.getAngle(orientation));
    }

    @Override // com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator
    public void coordinateSize(int orientation) {
        final android.view.ViewGroup.LayoutParams lp = mView.getLayoutParams();
        // Columns: portrait => 1, landscape => 2
        final boolean portrait = isPortrait(orientation);
        final int numColumns = portrait ? 1 : 2;
        mView.setNumColumns(numColumns);

        // Available vertical span in current orientation (container rect is in screen coords)
        final int containerSpan = portrait ? mContainerRect.height() : mContainerRect.width();
        final int maxHeight = containerSpan - mMaxHeightMargin; // leave top/bottom margin space

        // Rows that can fit into the available height
        final int numRows = mView.getNumRows(maxHeight);

        // Height is the smaller of "max height for that many rows" and the actual height needed
        // for the items when laid out in numColumns columns.
        final int boundedHeight = Math.min(mView.computeMaxHeight(numRows),
                                           mView.computeHeight(numColumns));

        lp.height = boundedHeight;
        lp.width  = mView.computeWidth(numColumns);

        // Cache for later coordinatePosition(...)
        mDialogWidth  = lp.width;
        mDialogHeight = lp.height;
    }

    @Override // com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator
    public Rect getDialogRect() {
        return this.mDialogRect;
    }

    private boolean isPortrait(int orientation) {
        return orientation == 1;
    }
}