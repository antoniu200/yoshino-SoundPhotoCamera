package com.sonyericsson.cameracommon.setting.layoutcoordinator;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;

/* loaded from: classes.dex */
class MenuDialogRectCalculator {
    private final Rect mBounds;
    private final Context mContext;
    private final int mDividerHeight;
    private final boolean mIsTablet;
    private final int mItemHeight;
    private final int mMaxHeightMargin;
    private int mMenuDialogRowCount;
    private int mNumberOfTabs;
    private final int mPadding;
    private final int mTabHeight;
    private final int mTitleHeight;
    private final int mWidth;

    public MenuDialogRectCalculator(Context context, Rect containerBounds, int menuDialogRowCount, int numberOfTabs) throws Resources.NotFoundException {
        int dimensionPixelSize;
        this.mContext = context;
        Resources res = context.getResources();
        this.mPadding = res.getDimensionPixelSize(R.dimen.menu_dialog_padding);
        this.mDividerHeight = res.getDimensionPixelSize(R.dimen.divider_height);
        this.mTabHeight = res.getDimensionPixelSize(R.dimen.setting_group_tab_height);
        this.mWidth = res.getDimensionPixelSize(R.dimen.setting_dialog_menu_width);
        this.mItemHeight = res.getDimensionPixelSize(R.dimen.menu_dialog_item_height);
        this.mTitleHeight = res.getDimensionPixelSize(R.dimen.title_text_height);
        this.mBounds = containerBounds;
        this.mIsTablet = LayoutDependencyResolver.isTablet(this.mContext);
        if (this.mIsTablet) {
            dimensionPixelSize = res.getDimensionPixelSize(R.dimen.setting_dialog_menu_max_height_margin_tablet);
        } else {
            dimensionPixelSize = res.getDimensionPixelSize(R.dimen.setting_dialog_menu_max_height_margin_phone);
        }
        this.mMaxHeightMargin = dimensionPixelSize;
        this.mMenuDialogRowCount = menuDialogRowCount;
        this.mNumberOfTabs = numberOfTabs;
    }

    public Point computePosition(int orientation) {
        return this.mIsTablet ? computePositionForTablet(orientation) : computePositionForPhone(orientation);
    }

    private Point computePositionForPhone(int orientation) {
        if (isPortrait(orientation)) {
            return new Point(this.mBounds.left, this.mBounds.top + ((this.mBounds.height() - computeWidth(orientation)) / 2));
        }
        return new Point(this.mBounds.left, this.mBounds.top + ((this.mBounds.height() - computeHeight(orientation)) / 2));
    }

    private Point computePositionForTablet(int orientation) throws Resources.NotFoundException {
        int shortcutCount = LayoutDependencyResolver.getLeftItemCount(this.mContext);
        int shortcutSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.shortcut_dialog_item_height);
        int marginBottom = ((this.mBounds.height() / shortcutCount) - shortcutSize) / 2;
        if (isPortrait(orientation)) {
            return new Point(this.mBounds.left, (this.mBounds.bottom - marginBottom) - computeWidth(orientation));
        }
        return new Point(this.mBounds.left, (this.mBounds.bottom - marginBottom) - computeHeight(orientation));
    }

    public int computeHeight(int orientation) {
        int height = isPortrait(orientation) ? this.mBounds.width() : this.mBounds.height();
        int numRows = getNumRows(height);
        if (this.mNumberOfTabs < 2) {
            return this.mTitleHeight + ((numRows - 1) * this.mItemHeight) + (this.mPadding * 2) + (this.mDividerHeight * numRows);
        }
        return (this.mItemHeight * numRows) + (this.mPadding * 2) + this.mTabHeight + (this.mDividerHeight * numRows);
    }

    public int computeWidth(int orientation) {
        return this.mWidth;
    }

    private int getNumRows(int screenHeight) {
        int numRows;
        if (this.mNumberOfTabs < 2) {
            numRows = (((screenHeight - this.mMaxHeightMargin) - (this.mPadding * 2)) + this.mDividerHeight) / (this.mItemHeight + this.mDividerHeight);
        } else {
            numRows = ((((screenHeight - this.mMaxHeightMargin) - (this.mPadding * 2)) - this.mTabHeight) + this.mDividerHeight) / (this.mItemHeight + this.mDividerHeight);
        }
        if (this.mMenuDialogRowCount > 0 && this.mMenuDialogRowCount < numRows) {
            int numRows2 = this.mMenuDialogRowCount;
            return numRows2;
        }
        return numRows;
    }

    private boolean isPortrait(int orientation) {
        return orientation == 1;
    }
}