package com.sonymobile.cameracommon.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.utility.RotationUtil;

/* loaded from: classes.dex */
public class Notification extends RelativeLayout {
    public static final String TAG = "Notification";
    private boolean mAnimating;
    private ImageView mConditionIcon;
    private TextView mConditionText;
    private ImageView mSceneIcon;
    private TextView mSceneText;
    private SceneTextAnimation mSceneTextAnimation;
    private int mSensorOrientation;

    interface SceneTextAnimation {
        void cancel();

        void create();

        void release();

        void start();
    }

    public Notification(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mSensorOrientation = 2;
        this.mAnimating = false;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mSceneIcon = (ImageView) findViewById(R.id.scene_icon);
        this.mSceneText = (TextView) findViewById(R.id.scene_text);
        this.mConditionIcon = (ImageView) findViewById(R.id.condition_icon);
        this.mConditionText = (TextView) findViewById(R.id.condition_text);
        createSceneTextAnimation();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        releaseSceneTextAnimation();
    }

    public void updateLayout() {
        requestLayout();
        invalidate();
    }

    public void onModeChanged(int mode, boolean isOneShot) {
        if (isOneShot) {
            findViewById(R.id.scene_indicator).setVisibility(4);
            findViewById(R.id.condition_indicator).setVisibility(4);
        } else if (mode == 1) {
            findViewById(R.id.scene_indicator).setVisibility(0);
            findViewById(R.id.condition_indicator).setVisibility(0);
        } else {
            this.mSensorOrientation = 2;
            findViewById(R.id.scene_indicator).setVisibility(4);
            findViewById(R.id.condition_indicator).setVisibility(4);
        }
    }

    protected void setAnimationStatus(boolean isAnimating) {
        if (this.mAnimating != isAnimating) {
            this.mAnimating = isAnimating;
        }
    }

    protected void createSceneTextAnimation() {
        this.mSceneTextAnimation = new NoFadeoutAnimtion();
        this.mSceneTextAnimation.create();
    }

    protected void releaseSceneTextAnimation() {
        this.mSceneTextAnimation.release();
    }

    protected void startSceneTextAnimation() {
        this.mSceneTextAnimation.start();
    }

    protected void cancelSceneTextAnimation() {
        this.mSceneTextAnimation.cancel();
    }

    private class AnimationListenerImpl implements Animation.AnimationListener {
        private AnimationListenerImpl() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            Notification.this.setAnimationStatus(false);
            Notification.this.mSceneText.setVisibility(4);
            Notification.this.mConditionText.setVisibility(4);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            Notification.this.setAnimationStatus(true);
        }
    }

    class FadeoutAnimtion implements SceneTextAnimation {
        private Animation mFadeoutAnimation;

        FadeoutAnimtion() {
        }

        @Override // com.sonymobile.cameracommon.view.Notification.SceneTextAnimation
        public void create() {
            this.mFadeoutAnimation = AnimationUtils.loadAnimation(Notification.this.getContext(), R.anim.notification_fade_out);
            this.mFadeoutAnimation.setAnimationListener(new AnimationListenerImpl());
        }

        @Override // com.sonymobile.cameracommon.view.Notification.SceneTextAnimation
        public void release() {
            if (this.mFadeoutAnimation != null) {
                this.mFadeoutAnimation.setAnimationListener(null);
            }
            this.mFadeoutAnimation = null;
        }

        @Override // com.sonymobile.cameracommon.view.Notification.SceneTextAnimation
        public void start() {
            if (Notification.this.mAnimating) {
                cancel();
            }
            Notification.this.mSceneText.startAnimation(this.mFadeoutAnimation);
            Notification.this.mConditionText.startAnimation(this.mFadeoutAnimation);
        }

        @Override // com.sonymobile.cameracommon.view.Notification.SceneTextAnimation
        public void cancel() {
            Notification.this.mSceneText.setAnimation(null);
            Notification.this.mConditionText.setAnimation(null);
        }
    }

    class NoFadeoutAnimtion implements SceneTextAnimation {
        private Runnable mSceneTextRunnable;

        NoFadeoutAnimtion() {
        }

        @Override // com.sonymobile.cameracommon.view.Notification.SceneTextAnimation
        public void create() {
            this.mSceneTextRunnable = new Runnable() { // from class: com.sonymobile.cameracommon.view.Notification.NoFadeoutAnimtion.1
                @Override // java.lang.Runnable
                public void run() {
                    Notification.this.mSceneText.setVisibility(4);
                    Notification.this.mConditionText.setVisibility(4);
                    Notification.this.setAnimationStatus(false);
                }
            };
        }

        @Override // com.sonymobile.cameracommon.view.Notification.SceneTextAnimation
        public void release() {
            Notification.this.removeCallbacks(this.mSceneTextRunnable);
        }

        @Override // com.sonymobile.cameracommon.view.Notification.SceneTextAnimation
        public void start() {
            if (Notification.this.mAnimating) {
                cancel();
            }
            Notification.this.postDelayed(this.mSceneTextRunnable, Notification.this.getResources().getInteger(R.integer.scene_fade_out_delay) + Notification.this.getResources().getInteger(R.integer.scene_fade_out_duration));
            Notification.this.setAnimationStatus(true);
            Notification.this.mSceneText.setVisibility(0);
            Notification.this.mConditionText.setVisibility(0);
        }

        @Override // com.sonymobile.cameracommon.view.Notification.SceneTextAnimation
        public void cancel() {
            Notification.this.removeCallbacks(this.mSceneTextRunnable);
        }
    }

    private void setOrientationConditionText() {
        if (this.mSensorOrientation == 2) {
            this.mConditionText.setVisibility(0);
            startSceneTextAnimation();
        } else {
            cancelSceneTextAnimation();
            this.mConditionText.setVisibility(4);
        }
    }
}
