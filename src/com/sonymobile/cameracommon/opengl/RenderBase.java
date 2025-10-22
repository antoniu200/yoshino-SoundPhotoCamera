package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.opengl.Matrix;
import android.view.View;

/* loaded from: classes.dex */
public abstract class RenderBase {
    protected static final int FLOAT_SIZE_IN_BYTE = 4;
    private Context mContext;
    protected View mRootView;
    protected float[] mGlobalMatrix = new float[16];
    protected float[] mSequencedLocalMatrix = new float[16];
    private boolean mIsVisible = true;

    public abstract void render();

    protected RenderBase(Context context, View rootView) {
        this.mContext = null;
        this.mRootView = null;
        this.mContext = context;
        this.mRootView = rootView;
        Matrix.setIdentityM(this.mGlobalMatrix, 0);
        Matrix.setIdentityM(this.mSequencedLocalMatrix, 0);
    }

    public void updateRootView(View rootView) {
        this.mRootView = rootView;
    }

    protected Context getContext() {
        return this.mContext;
    }

    protected float getWidthNorm() {
        if (this.mRootView.getHeight() < this.mRootView.getWidth()) {
            return 1.0f;
        }
        return this.mRootView.getHeight() / this.mRootView.getWidth();
    }

    protected float getHeightNorm() {
        if (this.mRootView.getHeight() < this.mRootView.getWidth()) {
            return this.mRootView.getHeight() / this.mRootView.getWidth();
        }
        return 1.0f;
    }

    public void setGlobalMatrix(float[] matrix) {
        this.mGlobalMatrix = (float[]) matrix.clone();
        Matrix.setIdentityM(this.mSequencedLocalMatrix, 0);
    }

    public float[] getLocalGlobalMatrix() {
        float[] childrenGM = new float[16];
        Matrix.setIdentityM(childrenGM, 0);
        Matrix.multiplyMM(childrenGM, 0, this.mSequencedLocalMatrix, 0, childrenGM, 0);
        Matrix.multiplyMM(childrenGM, 0, this.mGlobalMatrix, 0, childrenGM, 0);
        return childrenGM;
    }

    public void setVisibility(boolean isVisible) {
        this.mIsVisible = isVisible;
    }

    public boolean isVisible() {
        return this.mIsVisible;
    }

    public void release() {
        this.mContext = null;
        this.mRootView = null;
    }

    public void translate(float transX, float transY, float transZ) {
        ExtendedGlSurfaceView.translate(this.mSequencedLocalMatrix, transX, transY, transZ);
    }

    public void rotate(float rotRadX, float rotRadY, float rotRadZ) {
        ExtendedGlSurfaceView.rotate(this.mSequencedLocalMatrix, rotRadX, rotRadY, rotRadZ);
    }

    public void scale(float scaleX, float scaleY, float scaleZ) {
        ExtendedGlSurfaceView.scale(this.mSequencedLocalMatrix, scaleX, scaleY, scaleZ);
    }
}