package com.sonyericsson.cameracommon.setting.dialogitem;

import android.view.View;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;

/* compiled from: SettingDialogItem.java */
/* loaded from: classes.dex */
class DrawableStateChanger {
    private static final int DRAWABLE_LEVEL_BOTTOM = 2;
    private static final int DRAWABLE_LEVEL_NORMAL = 0;
    private static final int DRAWABLE_LEVEL_TOP = 1;
    private final SettingAdapter.ItemLayoutParams mParams;
    private View mDividerBottom = null;
    private View mDividerLeft = null;
    private View mDividerRight = null;
    private View mBackground = null;

    public DrawableStateChanger(SettingAdapter.ItemLayoutParams params) {
        this.mParams = params;
    }

    public DrawableStateChanger dividerHorizontal(View bottom) {
        this.mDividerBottom = bottom;
        return this;
    }

    public DrawableStateChanger dividerVertical(View left, View right) {
        this.mDividerLeft = left;
        this.mDividerRight = right;
        return this;
    }

    public DrawableStateChanger background(View background) {
        this.mBackground = background;
        return this;
    }

    public void apply() {
        if (this.mParams != null) {
            if (this.mDividerBottom != null) {
                this.mDividerBottom.setVisibility(0);
            }
            if (this.mDividerLeft != null && this.mDividerRight != null) {
                if (this.mParams.left && this.mParams.right) {
                    this.mDividerRight.setVisibility(8);
                    this.mDividerLeft.setVisibility(8);
                } else if (this.mParams.left) {
                    this.mDividerRight.setVisibility(0);
                    this.mDividerLeft.setVisibility(8);
                } else if (this.mParams.right) {
                    this.mDividerRight.setVisibility(8);
                    this.mDividerLeft.setVisibility(0);
                } else {
                    this.mDividerRight.setVisibility(0);
                    this.mDividerLeft.setVisibility(0);
                }
            }
            if (this.mBackground != null && this.mBackground.getBackground() != null) {
                this.mBackground.getBackground().setLevel(getDrawbleLevel(this.mParams));
            }
        }
    }

    private int getDrawbleLevel(SettingAdapter.ItemLayoutParams params) {
        if (this.mParams.top) {
            return 1;
        }
        if (params.bottom) {
            return 2;
        }
        return 0;
    }
}