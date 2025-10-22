package com.sonyericsson.cameracommon.focusview;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.sonyericsson.cameracommon.R;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class FocusRectangle {
    public static final String TAG = "FocusRectangle";
    private final HashMap<TaggedRectangle, Animation> mMapFadeOutAnimation = new HashMap<>();
    protected final ViewGroup mParentView;

    protected abstract void finish();

    public FocusRectangle(ViewGroup parentView) {
        this.mParentView = parentView;
    }

    public void release() {
        this.mParentView.removeAllViews();
        finish();
    }

    protected void startFadeoutAnimation(TaggedRectangle rectangle) {
        View image = rectangle.findViewById(R.id.rect_image);
        AlphaAnimation animation = (AlphaAnimation) this.mMapFadeOutAnimation.get(rectangle);
        if (animation == null) {
            animation = (AlphaAnimation) AnimationUtils.loadAnimation(this.mParentView.getContext(), R.anim.focus_indicator_fade_out);
            animation.setAnimationListener(new FadeOutAnimationListener());
            this.mMapFadeOutAnimation.put(rectangle, animation);
        }
        image.startAnimation(animation);
    }

    protected void stopAnimation(TaggedRectangle rectangle) {
        View image = rectangle.findViewById(R.id.rect_image);
        Animation animation = image.getAnimation();
        if (animation != null) {
            image.clearAnimation();
            image.setAnimation(null);
        }
    }

    private class FadeOutAnimationListener implements Animation.AnimationListener {
        private FadeOutAnimationListener() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (FocusRectangle.this.mMapFadeOutAnimation.containsValue(animation)) {
                for (Map.Entry<TaggedRectangle, Animation> entry : FocusRectangle.this.mMapFadeOutAnimation.entrySet()) {
                    if (entry.getValue().equals(animation)) {
                        entry.getKey().setVisibility(4);
                    }
                }
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }
    }
}