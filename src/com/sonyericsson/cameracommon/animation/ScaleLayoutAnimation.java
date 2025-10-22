package com.sonyericsson.cameracommon.animation;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* loaded from: classes.dex */
public class ScaleLayoutAnimation extends Animation {
    public static final String TAG = "ScaleLayoutAnimation";
    private int mDiffHeight;
    private int mDiffWidth;
    private int mFromHeight;
    private int mFromWidth;
    private int mOriginalHeight;
    private int mOriginalWidth;
    private int mToHeight;
    private int mToWidth;
    View mView;

    private ScaleLayoutAnimation() {
    }

    @Override // android.view.animation.Animation
    public void initialize(int width, int height, int parentWidth, int parentHeight) {
        super.initialize(width, height, parentWidth, parentHeight);
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return true;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float interpolatedTime, Transformation t) {
        int newWidth = (int) (this.mFromWidth - (this.mDiffWidth * interpolatedTime));
        int newHeight = (int) (this.mFromHeight - (this.mDiffHeight * interpolatedTime));
        this.mView.getLayoutParams().width = newWidth;
        this.mView.getLayoutParams().height = newHeight;
        this.mView.requestLayout();
    }

    public void recycle() {
        prepareSize();
    }

    public void resetSize() {
        this.mView.getLayoutParams().width = this.mOriginalWidth;
        this.mView.getLayoutParams().height = this.mOriginalHeight;
        this.mView.requestLayout();
    }

    private void prepareSize() {
        this.mView.getLayoutParams().width = this.mFromWidth;
        this.mView.getLayoutParams().height = this.mFromHeight;
        this.mView.requestLayout();
    }

    public static class Builder {
        private ScaleLayoutAnimation mParentInstance = new ScaleLayoutAnimation();

        public Builder(View view) {
            this.mParentInstance.mView = view;
            this.mParentInstance.mOriginalWidth = view.getWidth();
            this.mParentInstance.mOriginalHeight = view.getHeight();
        }

        public Builder setFromSize(int fromWidth, int fromHeight) {
            this.mParentInstance.mFromWidth = fromWidth;
            this.mParentInstance.mFromHeight = fromHeight;
            return this;
        }

        public Builder setToSize(int toWidth, int toHeight) {
            this.mParentInstance.mToWidth = toWidth;
            this.mParentInstance.mToHeight = toHeight;
            return this;
        }

        public Builder setDuration(int duration) {
            this.mParentInstance.setDuration(duration);
            return this;
        }

        public ScaleLayoutAnimation create() {
            this.mParentInstance.mDiffWidth = this.mParentInstance.mFromWidth - this.mParentInstance.mToWidth;
            this.mParentInstance.mDiffHeight = this.mParentInstance.mFromHeight - this.mParentInstance.mToHeight;
            this.mParentInstance.mView.getLayoutParams().width = this.mParentInstance.mFromWidth;
            this.mParentInstance.mView.getLayoutParams().height = this.mParentInstance.mFromHeight;
            this.mParentInstance.mView.requestLayout();
            return this.mParentInstance;
        }
    }
}