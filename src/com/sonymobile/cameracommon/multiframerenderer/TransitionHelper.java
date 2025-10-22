package com.sonymobile.cameracommon.multiframerenderer;

import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public abstract class TransitionHelper {
    private float mDurationMills;
    private final Interpolator mInterpolator;
    private long mStartTime = 0;
    private boolean mIsActive = false;

    protected abstract void apply(float f);

    protected abstract void onFinish();

    public TransitionHelper(long durationMillis, Interpolator interpolator) {
        this.mDurationMills = durationMillis;
        this.mInterpolator = interpolator;
    }

    public void update() {
        if (this.mIsActive) {
            boolean finished = false;
            if (System.currentTimeMillis() - this.mStartTime >= this.mDurationMills) {
                finished = true;
            }
            apply(getCurrentInterpolation());
            if (finished) {
                this.mIsActive = false;
                onFinish();
            }
        }
    }

    public void start() {
        this.mStartTime = System.currentTimeMillis();
        this.mIsActive = true;
        update();
    }

    public void abort() {
        this.mStartTime = 0L;
        update();
    }

    public boolean isActive() {
        return this.mIsActive;
    }

    protected int getLinearInterpolation(int min, int max, float interpolation) {
        return (int) (((max - min) * interpolation) + min);
    }

    protected float getLinearInterpolation(float min, float max, float interpolation) {
        return ((max - min) * interpolation) + min;
    }

    protected float getCurrentInterpolation() {
        float t = (System.currentTimeMillis() - this.mStartTime) / this.mDurationMills;
        if (t > 1.0f) {
            t = 1.0f;
        }
        float interpolation = this.mInterpolator.getInterpolation(t);
        return interpolation;
    }

    public void changeDuration(float durationMillis) {
        this.mDurationMills = durationMillis;
    }
}