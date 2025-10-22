package com.sonyericsson.cameracommon.rotatableview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.RotationUtil;

/* loaded from: classes.dex */
public class RotatableToast extends FrameLayout implements Animation.AnimationListener {
    private static final long FADEOUT_OFFSET_LONG = 4500;
    private static final long FADEOUT_OFFSET_SHORT = 2500;
    public static final int LENGTH_LONG = 1;
    public static final int LENGTH_SHORT = 0;
    public static final String TAG = "RotatableToast";
    private static ToastLayoutParams mLayoutParamsLandscape = null;
    private static ToastLayoutParams mLayoutParamsPortrait = null;
    private ViewGroup mBackgroundView;
    private ViewGroup mBaseView;
    private int mDuration;
    private Animation mFadeoutAnimation;
    Handler mHandler;
    private ViewGroup mLayoutRoot;
    private int mSensorOrientation;
    private final Runnable mStartAnimation;
    private TextView mTextView;
    private ToastPosition mToastPosition;

    public enum ToastPosition {
        TOP,
        CENTER,
        BOTTOM
    }

    public static class ToastLayoutParams {
        public final Rect bottomContainer;
        public final Rect topContainer;

        public ToastLayoutParams(int displayWidth, int displayHeight, Rect topContainer, Rect bottomContainer) {
            this.topContainer = topContainer;
            this.topContainer.offset((-displayWidth) / 2, (-displayHeight) / 2);
            this.bottomContainer = bottomContainer;
            this.bottomContainer.offset((-displayWidth) / 2, (-displayHeight) / 2);
        }
    }

    public static void setToastLayoutParams(ToastLayoutParams landscape, ToastLayoutParams portrait) {
        mLayoutParamsLandscape = landscape;
        mLayoutParamsPortrait = portrait;
    }

    public RotatableToast(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mBaseView = null;
        this.mBackgroundView = null;
        this.mTextView = null;
        this.mSensorOrientation = 2;
        this.mDuration = 0;
        this.mToastPosition = ToastPosition.CENTER;
        this.mHandler = new Handler();
        this.mStartAnimation = new Runnable() { // from class: com.sonyericsson.cameracommon.rotatableview.RotatableToast.1
            @Override // java.lang.Runnable
            public void run() {
                RotatableToast.this.mBaseView.startAnimation(RotatableToast.this.mFadeoutAnimation);
            }
        };
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mLayoutRoot = (ViewGroup) ((Activity) getContext()).getWindow().getDecorView();
        this.mBaseView = (ViewGroup) findViewById(R.id.rotatable_toast_base);
        this.mBackgroundView = (ViewGroup) findViewById(R.id.rotatable_toast_text_background);
        this.mTextView = (TextView) findViewById(R.id.rotatable_toast_text);
        this.mFadeoutAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.rotatable_toast_anime);
    }

    public void setTextResId(int res) {
        this.mTextView.setText(res);
    }

    public void setSensorOrientation(int orientation) {
        this.mSensorOrientation = orientation;
        updateTextMaxWidth();
        updatePosition();
    }

    public void setDuration(int duration) {
        this.mDuration = duration;
    }

    public int getDuration() {
        return this.mDuration;
    }

    public void setToastPosition(ToastPosition position) {
        this.mToastPosition = position;
    }

    private void updateTextMaxWidth() {
        if (this.mSensorOrientation == 1) {
            this.mTextView.setMaxWidth(getResources().getDimensionPixelSize(R.dimen.rotatable_toast_max_width_for_port));
        } else {
            this.mTextView.setMaxWidth(getResources().getDimensionPixelSize(R.dimen.rotatable_toast_max_width_for_land));
        }
    }

    private void updatePosition() {
        float rotation = RotationUtil.getAngle(this.mSensorOrientation);
        LayoutOrientationResolver.LayoutOrientationType layoutScreenOrientation = LayoutOrientationResolver.getInstance().getOrientation();
        if (layoutScreenOrientation == LayoutOrientationResolver.LayoutOrientationType.PORTRAIT) {
            rotation += 90.0f;
        }
        this.mBackgroundView.setRotation(rotation);
        Rect container = getContainerRect();
        if (container != null) {
            this.mBackgroundView.setTranslationX(container.centerX());
            this.mBackgroundView.setTranslationY(container.centerY());
        } else {
            this.mBackgroundView.setTranslationX(0.0f);
            this.mBackgroundView.setTranslationY(0.0f);
        }
    }

    private Rect getContainerRect() {
        ToastLayoutParams params = this.mSensorOrientation == 1 ? mLayoutParamsPortrait : mLayoutParamsLandscape;
        if (params == null) {
            return null;
        }
        switch (this.mToastPosition) {
            case TOP:
                return params.topContainer;
            case BOTTOM:
                return params.bottomContainer;
            default:
                return null;
        }
    }

    public void show() {
        long durationTime;
        this.mBaseView.setContentDescription(this.mTextView.getText());
        addToWindow();
        updateTextMaxWidth();
        updatePosition();
        if (this.mDuration == 1) {
            durationTime = FADEOUT_OFFSET_LONG;
        } else {
            durationTime = FADEOUT_OFFSET_SHORT;
        }
        Animation animation = this.mFadeoutAnimation;
        animation.setAnimationListener(this);
        this.mHandler.postDelayed(this.mStartAnimation, durationTime);
    }

    public void hide() {
        this.mBaseView.clearAnimation();
    }

    public void hideImmediately() {
        this.mBaseView.setVisibility(4);
        Animation currentAnimation = this.mBaseView.getAnimation();
        if (currentAnimation != null) {
            if (!currentAnimation.hasStarted() && !currentAnimation.hasEnded()) {
                this.mBaseView.clearAnimation();
                removeFromWindow();
                return;
            } else {
                this.mBaseView.clearAnimation();
                return;
            }
        }
        this.mHandler.removeCallbacks(this.mStartAnimation);
        removeFromWindow();
    }

    private void addToWindow() {
        if (getParent() != null) {
            this.mLayoutRoot.removeView(this);
        }
        this.mLayoutRoot.addView(this);
    }

    private void removeFromWindow() {
        if (getParent() != null) {
            this.mLayoutRoot.removeView(this);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        removeFromWindow();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestSendAccessibilityEvent(View child, AccessibilityEvent event) {
        if (this.mBaseView.getContentDescription() == null) {
            return false;
        }
        event.setEventType(64);
        boolean zRequestSendAccessibilityEvent = super.requestSendAccessibilityEvent(child, event);
        this.mBaseView.setContentDescription(null);
        return zRequestSendAccessibilityEvent;
    }

    public static RotatableToast inflate(Activity activity) {
        LayoutInflater inflater = activity.getLayoutInflater();
        if (inflater == null) {
            throw new AssertionError("LayoutInflater not found.");
        }
        return (RotatableToast) inflater.inflate(R.layout.rotatable_toast, (ViewGroup) null);
    }
}