package com.sonymobile.cameracommon.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.PowerManager;
import android.util.AttributeSet;
import android.view.animation.AccelerateInterpolator;
import android.widget.ImageView;
import com.google.android.gms.common.ConnectionResult;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.settings.SelfTimerInterface;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.android.addoncamera.soundphoto.CameraDeviceHandler;

/* loaded from: classes.dex */
@SuppressLint("AppCompatCustomView")
public class SelfTimerCountDownNumberView extends ImageView {
    private static final int ANIMATION_FADING_DURATION_MS = 250;
    private static final int ANIMATION_VALUE = 255;
    private static final int SECOND_COUNT_MILLIS = 1000;
    public static final String TAG = "SelfTimerCountDownNumberView";
    private Handler handler;
    private AnimationEventHandler mAnimationEventHandler;
    private int mCountDownIconId;
    private int mCountDownInitNum;
    private int mCurrentCount;
    private boolean mIsCountDownStarted;
    private UpdateCountDownNumberTask mUpdateCountDownNumberTask;
    private ValueAnimator mValueAnimator;

    static /* synthetic */ int access$410(SelfTimerCountDownNumberView x0) {
        int i = x0.mCurrentCount;
        x0.mCurrentCount = i - 1;
        return i;
    }

    public SelfTimerCountDownNumberView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mValueAnimator = null;
        this.mCurrentCount = 0;
        this.mIsCountDownStarted = false;
        this.handler = new Handler();
        this.mUpdateCountDownNumberTask = null;
        this.mAnimationEventHandler = new AnimationEventHandler();
        this.mCountDownIconId = -1;
    }

    public SelfTimerCountDownNumberView(Context context) {
        super(context);
        this.mValueAnimator = null;
        this.mCurrentCount = 0;
        this.mIsCountDownStarted = false;
        this.handler = new Handler();
        this.mUpdateCountDownNumberTask = null;
        this.mAnimationEventHandler = new AnimationEventHandler();
        this.mCountDownIconId = -1;
    }

    public SelfTimerCountDownNumberView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mValueAnimator = null;
        this.mCurrentCount = 0;
        this.mIsCountDownStarted = false;
        this.handler = new Handler();
        this.mUpdateCountDownNumberTask = null;
        this.mAnimationEventHandler = new AnimationEventHandler();
        this.mCountDownIconId = -1;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    public void startAnimation() {
        PowerManager pm = (PowerManager) getContext().getSystemService("power");
        if (pm.isPowerSaveMode()) {
            this.mValueAnimator.removeAllListeners();
        } else {
            this.mValueAnimator.addListener(this.mAnimationEventHandler);
        }
        if (!this.mValueAnimator.isRunning()) {
            this.mValueAnimator.start();
        }
        if (!this.mIsCountDownStarted) {
            startCountDownNumber();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImage() {
        if (this.mCountDownIconId != -1) {
            setImageResource(this.mCountDownIconId);
        }
        switch (this.mCurrentCount) {
            case 1:
                setImageResource(R.drawable.cam_selftimer_countdown_1_icn);
                break;
            case 2:
                setImageResource(R.drawable.cam_selftimer_countdown_2_icn);
                break;
            case 3:
                setImageResource(R.drawable.cam_selftimer_countdown_3_icn);
                break;
            case 4:
                setImageResource(R.drawable.cam_selftimer_countdown_4_icn);
                break;
            case 5:
                setImageResource(R.drawable.cam_selftimer_countdown_5_icn);
                break;
            case 6:
                setImageResource(R.drawable.cam_selftimer_countdown_6_icn);
                break;
            case 7:
                setImageResource(R.drawable.cam_selftimer_countdown_7_icn);
                break;
            case 8:
                setImageResource(R.drawable.cam_selftimer_countdown_8_icn);
                break;
            case 9:
                setImageResource(R.drawable.cam_selftimer_countdown_9_icn);
                break;
            case 10:
                setImageResource(R.drawable.cam_selftimer_countdown_10_icn);
                break;
            default:
                if (this.mValueAnimator != null) {
                    CameraLogger.e(TAG, "setImage() [Irregal Value = " + this.mValueAnimator.getAnimatedValue() + "]");
                    break;
                } else {
                    CameraLogger.e(TAG, "setImage() : mCurrentCount = " + this.mCurrentCount);
                    break;
                }
        }
    }

    private int getDuration(SelfTimerInterface selfTimer) {
        if (selfTimer.getDurationInMillisecond() < 1000) {
            return CameraDeviceHandler.INTERVAL_OPEN_CAMERA_MILLIS;
        }
        if (selfTimer.getDurationInMillisecond() == 1500) {
            return ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED;
        }
        return 1000;
    }

    private float getAnimationRatio(int duration) {
        return 250.0f / duration;
    }

    public void setSelfTimer(SelfTimerInterface selfTimer) {
        this.mCountDownInitNum = selfTimer.getDurationInMillisecond() / 1000;
        setAnimator(selfTimer);
    }

    public void cancelSelfTimerAnimation() {
        this.mValueAnimator.end();
        stopCountDownNumber();
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
    }

    private void setAnimator(SelfTimerInterface selfTimer) {
        this.mCountDownIconId = selfTimer.getCountDownIconId();
        int duration = getDuration(selfTimer);
        float animationRatio = getAnimationRatio(duration);
        this.mValueAnimator = ValueAnimator.ofInt(0, 255);
        this.mValueAnimator.setInterpolator(new AlphaAccelerateInterpolator(animationRatio));
        this.mValueAnimator.setRepeatCount(this.mCountDownInitNum - 1);
        this.mValueAnimator.setRepeatMode(1);
        this.mValueAnimator.setDuration(duration);
        this.mValueAnimator.addUpdateListener(new ValueAnimationUpdater());
    }

    private class ValueAnimationUpdater implements ValueAnimator.AnimatorUpdateListener {
        private ValueAnimationUpdater() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator arg0) {
            if (SelfTimerCountDownNumberView.this.mValueAnimator != null && SelfTimerCountDownNumberView.this.mValueAnimator.getAnimatedValue() != null) {
                int alpha = ((Integer) SelfTimerCountDownNumberView.this.mValueAnimator.getAnimatedValue()).intValue();
                SelfTimerCountDownNumberView.this.setImageAlpha(alpha);
                SelfTimerCountDownNumberView.this.invalidate();
            }
        }
    }

    private class AnimationEventHandler implements Animator.AnimatorListener {
        private AnimationEventHandler() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator arg0) {
            SelfTimerCountDownNumberView.this.setImageAlpha(0);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator arg0) {
            SelfTimerCountDownNumberView.this.setImageAlpha(0);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator arg0) {
            SelfTimerCountDownNumberView.this.setImageBitmap(null);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator arg0) {
        }
    }

    private static class AlphaAccelerateInterpolator extends AccelerateInterpolator {
        private final float mAnimationRatio;

        AlphaAccelerateInterpolator(float animationRatio) {
            this.mAnimationRatio = animationRatio;
        }

        @Override // android.view.animation.AccelerateInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float input) {
            float input2 = input * (1.0f / this.mAnimationRatio);
            if (1.0f <= input2) {
                input2 = 1.0f;
            }
            float f = super.getInterpolation(input2);
            return f;
        }
    }

    private void startCountDownNumber() {
        this.mIsCountDownStarted = true;
        this.mUpdateCountDownNumberTask = new UpdateCountDownNumberTask();
        this.mCurrentCount = this.mCountDownInitNum;
        setImage();
        postNextUpdateEvent();
    }

    private void stopCountDownNumber() {
        this.mIsCountDownStarted = false;
        this.handler.removeCallbacks(this.mUpdateCountDownNumberTask);
        this.mUpdateCountDownNumberTask = null;
        setImageBitmap(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postNextUpdateEvent() {
        this.handler.postDelayed(this.mUpdateCountDownNumberTask, 1000L);
    }

    private class UpdateCountDownNumberTask implements Runnable {
        private UpdateCountDownNumberTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SelfTimerCountDownNumberView.access$410(SelfTimerCountDownNumberView.this);
            SelfTimerCountDownNumberView.this.setImage();
            if (SelfTimerCountDownNumberView.this.mCurrentCount > 1) {
                SelfTimerCountDownNumberView.this.postNextUpdateEvent();
            }
        }
    }
}