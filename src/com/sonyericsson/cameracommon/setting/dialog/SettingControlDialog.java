package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.utility.RotationUtil;

/* loaded from: classes.dex */
public class SettingControlDialog extends SettingDialog {
    public static final String TAG = "SettingControlDialog";
    private final int CONTROL_DIALOG_LEFT_PADDING;
    private SettingAdapter mAdapter;
    private Drawable mBackground;
    private LinearLayout mItems;

    public SettingControlDialog(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.CONTROL_DIALOG_LEFT_PADDING = getPixel(R.dimen.control_dialog_left_padding);
    }

    private int getPixel(int id) {
        return getResources().getDimensionPixelSize(id);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        setWillNotDraw(false);
        this.mItems = (LinearLayout) findViewById(R.id.dialog_items);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        this.mBackground = getResources().getDrawable(R.drawable.cam_shortcut_dialog_background_icn, null);
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.mBackground = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.save();
        drawBackground(canvas);
        canvas.restore();
        super.onDraw(canvas);
    }

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialog, com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface
    public void setAdapter(SettingAdapter adapter) {
        this.mAdapter = adapter;
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-2, -2);
        params.gravity = 17;
        for (int i = 0; i < this.mAdapter.getCount(); i++) {
            if (i < this.mItems.getChildCount()) {
                View org = this.mItems.getChildAt(i);
                View mod = this.mAdapter.getView(i, org, this.mItems);
                if (org != mod) {
                    this.mItems.removeViewAt(i);
                    this.mItems.removeView(mod);
                    this.mItems.addView(mod, i, params);
                }
            } else {
                this.mItems.addView(this.mAdapter.getView(i, null, this.mItems), params);
            }
        }
        while (this.mItems.getChildCount() > this.mAdapter.getCount()) {
            this.mItems.removeViewAt(this.mItems.getChildCount() - 1);
        }
        updateItems();
    }

    private void drawBackground(Canvas canvas) {
        if (this.mBackground != null) {
            canvas.rotate(RotationUtil.getAngle(this.mOrientation), getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
            this.mBackground.setBounds(computeBackgroundRectBeforeRotation());
            this.mBackground.draw(canvas);
        }
    }

    private Rect computeBackgroundRectBeforeRotation() {
        if (this.mOrientation != 1) {
            return new Rect(0, 0, getMeasuredWidth(), getMeasuredHeight());
        }
        Rect rect = new Rect(0, 0, getMeasuredHeight(), getMeasuredWidth());
        rect.offset((-(rect.width() - getMeasuredWidth())) / 2, (-(rect.height() - getMeasuredHeight())) / 2);
        return rect;
    }

    private void updateItems() {
        for (int i = 0; i < this.mItems.getChildCount(); i++) {
            View v = this.mItems.getChildAt(i);
            if (v.getTag() instanceof SettingItem) {
                if (((SettingItem) v.getTag()).isSelectable()) {
                    v.setVisibility(0);
                } else {
                    v.setVisibility(8);
                }
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialog, com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface, com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface2
    public void setSensorOrientation(int orientation) {
        requestLayout();
        for (int i = 0; i < this.mItems.getChildCount(); i++) {
            if (this.mItems.getChildAt(i).getTag() instanceof SettingDialogItem) {
                SettingDialogItem item = (SettingDialogItem) this.mItems.getChildAt(i).getTag();
                item.setUiOrientation(orientation);
            }
        }
        super.setSensorOrientation(orientation);
    }

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface
    public boolean getSelectedItemRect(Rect rect) {
        return false;
    }

    public int getControlDialogLeftPadding() {
        return this.CONTROL_DIALOG_LEFT_PADDING;
    }
}