package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

/* loaded from: classes.dex */
public abstract class SettingDialog extends RelativeLayout implements SettingDialogInterface {
    public static final String TAG = "SettingDialog";
    private Animation mCloseAnimation;
    private boolean mIsNested;
    private LayoutCoordinator mLayoutCoordinator;
    protected int mOrientation;
    private ViewGroup mParentView;
    private SettingDialogStateListener mStateListener;

    public abstract void setAdapter(SettingAdapter settingAdapter);

    public SettingDialog(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mOrientation = 2;
        this.mIsNested = false;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        super.onLayout(changed, l, t, r, b);
        if (this.mLayoutCoordinator != null) {
            this.mLayoutCoordinator.coordinatePosition(this.mOrientation);
        }
    }

    public void setSensorOrientation(int orientation) {
        this.mOrientation = orientation;
        if (this.mLayoutCoordinator != null) {
            this.mLayoutCoordinator.coordinateSize(orientation);
        }
    }

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface
    public void setLayoutCoordinator(LayoutCoordinator coordinator) {
        this.mLayoutCoordinator = coordinator;
    }

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface
    public void setCloseAnimation(Animation animation) {
        this.mCloseAnimation = animation;
    }

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface, com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface2
    public void open(ViewGroup parentView) {
        open(parentView, false);
    }

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface
    public void open(ViewGroup parentView, boolean isNested) {
        if (parentView == null) {
            throw new IllegalArgumentException("Parent view shouldn't be null");
        }
        this.mIsNested = isNested;
        this.mParentView = parentView;
        this.mParentView.addView(this);
        if (this.mStateListener != null) {
            this.mStateListener.onOpened();
        }
    }

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface
    public boolean isNested() {
        return this.mIsNested;
    }

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface, com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface2
    public void close() {
        cancelAnimation();
        if (this.mCloseAnimation != null) {
            startAnimation(this.mCloseAnimation);
        }
        Handler handler = getHandler();
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.sonyericsson.cameracommon.setting.dialog.SettingDialog.1
                @Override // java.lang.Runnable
                public void run() {
                    if (SettingDialog.this.mParentView != null) {
                        SettingDialog.this.mParentView.removeView(SettingDialog.this);
                    }
                }
            });
        }
        if (this.mStateListener != null) {
            this.mStateListener.onClosed();
        }
    }

    protected void startAnimation() {
        if (this.mCloseAnimation != null) {
            cancelAnimation();
            this.mCloseAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.sonyericsson.cameracommon.setting.dialog.SettingDialog.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    SettingDialog.this.close();
                }
            });
            this.mParentView.startAnimation(this.mCloseAnimation);
        }
    }

    protected void cancelAnimation() {
        if (this.mParentView != null && this.mParentView.getAnimation() != null) {
            this.mParentView.setAnimation(null);
            if (this.mCloseAnimation != null) {
                this.mCloseAnimation.setAnimationListener(null);
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface, com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface2
    public void setStateListener(SettingDialogStateListener listener) {
        this.mStateListener = listener;
    }

    protected void notifyItemSelected(SettingItem item) {
        if (item.isSelectable()) {
            item.select();
            close();
        }
    }

    protected void notifyItemUpdated(SettingItem item) {
        item.select();
    }

    protected void updateSelectItem(SettingAdapter adapter, SettingItem selectedItem) {
        for (int i = 0; i < adapter.getCount(); i++) {
            adapter.getItem(i).setSelected(false);
        }
        selectedItem.setSelected(true);
    }

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface, com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface2
    public boolean hitTest(int x, int y) {
        Rect rect = new Rect();
        if (getGlobalVisibleRect(rect)) {
            return rect.contains(x, y);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (isEnabled()) {
            return super.onInterceptTouchEvent(ev);
        }
        return true;
    }

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface
    public LayoutCoordinator getLayoutCoordinator() {
        return this.mLayoutCoordinator;
    }
}