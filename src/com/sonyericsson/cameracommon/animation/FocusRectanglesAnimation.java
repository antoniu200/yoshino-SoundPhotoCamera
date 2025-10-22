package com.sonyericsson.cameracommon.animation;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.animation.ScaleLayoutAnimation;
import com.sonyericsson.cameracommon.focusview.CommonResources;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class FocusRectanglesAnimation {
    public static final String TAG = "FocusRectanglesAnimation";
    private final Context mContext;
    private AlphaAnimation mFadeOutAnimation;
    private ScaleLayoutAnimation mFocusInAnimationObject;
    private ScaleLayoutAnimation mFocusInAnimationTouch;
    private final Map<Animation, View> mAnimationMap = new HashMap();
    private final AnimationConfig mSingleConfig = new AnimationConfig(R.dimen.focus_rect_single_width, R.dimen.focus_rect_single_height, R.string.focus_indicator_animation_mag_single, R.integer.focus_indicator_animation_focusin_duration);
    private final AnimationConfig mTouchConfig = new AnimationConfig(R.dimen.focus_rect_single_width, R.dimen.focus_rect_single_height, R.string.focus_indicator_animation_mag_touch, R.integer.focus_indicator_animation_focusin_duration);
    private final AnimationConfig mObjectConfig = new AnimationConfig(R.dimen.focus_rect_object_width, R.dimen.focus_rect_object_height, R.string.focus_indicator_animation_mag_object, R.integer.focus_indicator_animation_focusin_duration);

    public class AnimationConfig {
        public final int mDuration;
        public final int mFromHeight;
        public final int mFromWidth;
        public final int mToHeight;
        public final int mToWidth;

        public AnimationConfig(int widthId, int heightId, int factorId, int durationId) throws Resources.NotFoundException {
            String s = FocusRectanglesAnimation.this.mContext.getResources().getString(factorId);
            float factor = Float.valueOf(s).floatValue();
            this.mToWidth = FocusRectanglesAnimation.this.mContext.getResources().getDimensionPixelSize(widthId);
            this.mToHeight = FocusRectanglesAnimation.this.mContext.getResources().getDimensionPixelSize(heightId);
            this.mFromWidth = (int) (this.mToWidth * factor);
            this.mFromHeight = (int) (this.mToHeight * factor);
            this.mDuration = FocusRectanglesAnimation.this.mContext.getResources().getInteger(durationId);
        }
    }

    public FocusRectanglesAnimation(Context context) {
        this.mContext = context;
    }

    public AnimationConfig getObjectAnimationConfig() {
        return this.mObjectConfig;
    }

    public AnimationConfig getTouchAnimationConfig() {
        return this.mTouchConfig;
    }

    public void playAfFocusInAnimationSingle(View view) {
        startFocusAnimation(view, CommonResources.SingleIndicator.SUCCESS);
    }

    public void playTouchDownAnimation(View view) {
        startFocusAnimation(view, CommonResources.TouchIndicator.TOUCH);
    }

    public void playTouchUpAnimation(View view) {
        startFocusAnimation(view, CommonResources.TouchIndicator.RELEASE);
    }

    public void playAfFadeOutAnimationSingle(View view) {
        playAfFadeOutAnimation(view);
    }

    public void playAfFocusInAnimationTouch(View view, int res) {
        startFocusAnimation(view, res);
    }

    public void startFocusAnimation(View view, int res) {
        view.setBackgroundResource(res);
        Drawable drawable = view.getBackground();
        if (drawable instanceof AnimationDrawable) {
            ((AnimationDrawable) drawable).start();
        } else if (view.getAnimation() != null) {
            view.clearAnimation();
        }
    }

    public void stopFocusAnimation(View view) {
        Drawable drawable = view.getBackground();
        if (drawable instanceof AnimationDrawable) {
            ((AnimationDrawable) drawable).stop();
        }
    }

    public void playAfFadeOutAnimationTouch(View view) {
        playAfFadeOutAnimation(view);
    }

    public void playAfFocusInAnimationObject(View view) {
        this.mFocusInAnimationObject = playAfFocusInAnimation(view, this.mFocusInAnimationObject, this.mObjectConfig);
    }

    public void playAfFadeOutAnimationObject(View view) {
        playAfFadeOutAnimation(view);
    }

    public ScaleLayoutAnimation getTouchAnimation(View view) {
        return getFocusInAnimation(view, this.mFocusInAnimationTouch, this.mTouchConfig);
    }

    private ScaleLayoutAnimation playAfFocusInAnimation(View view, ScaleLayoutAnimation animation, AnimationConfig config) {
        ScaleLayoutAnimation animation2 = getFocusInAnimation(view, animation, config);
        view.startAnimation(animation2);
        return animation2;
    }

    private void playAfFadeOutAnimation(View view) {
        AlphaAnimation animation = getFadeOutAnimation();
        animation.setAnimationListener(new FadeOutAnimationListener());
        view.startAnimation(animation);
        this.mAnimationMap.put(animation, view);
    }

    private AnimationSet playTouchDownAnimation(View view, AnimationSet animation, AnimationConfig config) {
        AnimationSet animation2 = getTouchDownAnimation(view, animation, config);
        view.startAnimation(animation2);
        return animation2;
    }

    private AnimationSet playTouchUpAnimation(View view, AnimationSet animation, AnimationConfig config) {
        AnimationSet animation2 = getTouchUpAnimation(view, animation, config);
        view.startAnimation(animation2);
        return animation2;
    }

    public ScaleLayoutAnimation getFocusInAnimation(View view, ScaleLayoutAnimation animation, AnimationConfig config) {
        if (animation == null) {
            return new ScaleLayoutAnimation.Builder(view).setFromSize(config.mFromWidth, config.mFromHeight).setToSize(config.mToWidth, config.mToHeight).setDuration(config.mDuration).create();
        }
        animation.recycle();
        return animation;
    }

    public AnimationSet getTouchDownAnimation(View view, AnimationSet animation, AnimationConfig config) {
        if (animation == null) {
            return (AnimationSet) AnimationUtils.loadAnimation(this.mContext, R.anim.focus_touch_down);
        }
        return animation;
    }

    public AnimationSet getTouchUpAnimation(View view, AnimationSet animation, AnimationConfig config) {
        if (animation == null) {
            return (AnimationSet) AnimationUtils.loadAnimation(this.mContext, R.anim.focus_touch_up);
        }
        return animation;
    }

    private AlphaAnimation getFadeOutAnimation() {
        if (this.mFadeOutAnimation == null) {
            this.mFadeOutAnimation = (AlphaAnimation) AnimationUtils.loadAnimation(this.mContext, R.anim.focus_indicator_fade_out);
            this.mFadeOutAnimation.setAnimationListener(new FadeOutAnimationListener());
        }
        return this.mFadeOutAnimation;
    }

    private class FadeOutAnimationListener implements Animation.AnimationListener {
        private FadeOutAnimationListener() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            View view = (View) FocusRectanglesAnimation.this.mAnimationMap.get(animation);
            if (view != null) {
                view.setVisibility(4);
            }
            FocusRectanglesAnimation.this.mAnimationMap.remove(animation);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }
    }

    public void cancelAfFocusAnimationObject(View view) {
        if (view.getWidth() != this.mObjectConfig.mToWidth || view.getHeight() != this.mObjectConfig.mToHeight) {
            view.getLayoutParams().width = this.mObjectConfig.mToWidth;
            view.getLayoutParams().height = this.mObjectConfig.mToHeight;
            view.requestLayout();
        }
    }

    public void cancelAfFocusAnimationSingle(View view) {
        if (view.getWidth() != this.mSingleConfig.mToWidth || view.getHeight() != this.mSingleConfig.mToHeight) {
            view.getLayoutParams().width = this.mSingleConfig.mToWidth;
            view.getLayoutParams().height = this.mSingleConfig.mToHeight;
            view.requestLayout();
        }
    }

    public void cancelAfFocusAnimationTouch(View view) {
        if (view.getWidth() != this.mTouchConfig.mToWidth || view.getHeight() != this.mTouchConfig.mToHeight) {
            view.getLayoutParams().width = this.mTouchConfig.mToWidth;
            view.getLayoutParams().height = this.mTouchConfig.mToHeight;
            view.requestLayout();
        }
    }
}
