package com.sonymobile.cameracommon.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.settings.SelfTimerInterface;
import com.sonymobile.android.addoncamera.soundphoto.CameraDeviceHandler;

/* loaded from: classes.dex */
public class SelfTimerCountDownCircleView extends View {
    private static final float ANIMATION_TIME_RATIO = 0.6f;
    private static final float ANIMATION_VALUE = 360.0f;
    public static final String TAG = "SelfTimerCountDownCircleView";
    private final int COUNTDOWN_CIRCLE_RADIUS;
    private final int COUNTDOWN_CIRCLE_STROKE_WIDTH;
    private Paint mPaint;
    private ValueAnimator mValueAnimator;

    public SelfTimerCountDownCircleView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.COUNTDOWN_CIRCLE_RADIUS = getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_outside_diameter) / 2;
        this.COUNTDOWN_CIRCLE_STROKE_WIDTH = (getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_outside_diameter) - getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_inside_diameter)) / 2;
        this.mValueAnimator = null;
        init(context);
    }

    private SelfTimerCountDownCircleView(Context context) {
        super(context);
        this.COUNTDOWN_CIRCLE_RADIUS = getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_outside_diameter) / 2;
        this.COUNTDOWN_CIRCLE_STROKE_WIDTH = (getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_outside_diameter) - getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_inside_diameter)) / 2;
        this.mValueAnimator = null;
        init(context);
    }

    private SelfTimerCountDownCircleView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.COUNTDOWN_CIRCLE_RADIUS = getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_outside_diameter) / 2;
        this.COUNTDOWN_CIRCLE_STROKE_WIDTH = (getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_outside_diameter) - getResources().getDimensionPixelSize(R.dimen.viewfinder_countdown_inside_diameter)) / 2;
        this.mValueAnimator = null;
        init(context);
    }

    private void init(Context context) {
        this.mPaint = new Paint();
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(this.COUNTDOWN_CIRCLE_STROKE_WIDTH);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(getResources().getColor(R.color.viewfinder_countdown_circle_color, null));
    }

    private void setAnimator(SelfTimerInterface selftimer) {
        this.mValueAnimator = ValueAnimator.ofFloat(0.0f, ANIMATION_VALUE);
        this.mValueAnimator.setInterpolator(new CircleDecelerateInterpolator());
        this.mValueAnimator.setRepeatMode(1);
        this.mValueAnimator.setDuration(getRotateDuration(selftimer));
        this.mValueAnimator.setRepeatCount((selftimer.getDurationInMillisecond() / 1000) - 1);
        this.mValueAnimator.addUpdateListener(new ValueAnimationUpdater());
        this.mValueAnimator.addListener(new AnimationEventHandler());
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawArc(canvas);
    }

    private int getRotateDuration(SelfTimerInterface selftimer) {
        if (selftimer.getDurationInMillisecond() < 1000) {
            return CameraDeviceHandler.INTERVAL_OPEN_CAMERA_MILLIS;
        }
        if (selftimer.getDurationInMillisecond() == 1500) {
            return 1500;
        }
        return 1000;
    }

    private void drawArc(Canvas canvas) {
        if (this.mValueAnimator != null && this.mValueAnimator.getAnimatedValue() != null && this.mValueAnimator.isRunning()) {
            float radius = this.COUNTDOWN_CIRCLE_RADIUS - (this.COUNTDOWN_CIRCLE_STROKE_WIDTH / 2);
            float centerX = canvas.getWidth() / 2.0f;
            float centerY = canvas.getHeight() / 2.0f;
            RectF rect = new RectF(centerX - radius, centerY - radius, centerX + radius, centerY + radius);
            float endArc = ((Float) this.mValueAnimator.getAnimatedValue()).floatValue();
            canvas.drawArc(rect, -90.0f, endArc, false, this.mPaint);
        }
    }

    public void setSelfTimer(SelfTimerInterface selfTimer) {
        setAnimator(selfTimer);
    }

    public void cancelSelfTimerAnimation() {
        this.mValueAnimator.end();
    }

    public void startAnimation() {
        if (this.mValueAnimator != null && !this.mValueAnimator.isRunning()) {
            this.mValueAnimator.start();
        }
    }

    private class ValueAnimationUpdater implements ValueAnimator.AnimatorUpdateListener {
        private ValueAnimationUpdater() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator arg0) {
            SelfTimerCountDownCircleView.this.invalidate();
        }
    }

    private static class AnimationEventHandler implements Animator.AnimatorListener {
        private AnimationEventHandler() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator arg0) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator arg0) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator arg0) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator arg0) {
        }
    }

    private static class CircleDecelerateInterpolator extends DecelerateInterpolator {
        private CircleDecelerateInterpolator() {
        }

        @Override // android.view.animation.DecelerateInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float input) {
            float input2 = input * 1.6666666f;
            if (1.0f <= input2) {
                input2 = 1.0f;
            }
            float f = super.getInterpolation(input2);
            return f;
        }
    }
}
