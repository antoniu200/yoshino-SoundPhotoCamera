package com.sonyericsson.cameracommon.rotatableview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;

/* loaded from: classes.dex */
@SuppressLint("AppCompatCustomView")
public class RotatableImageView extends ImageView {
    public static final String TAG = "RotatableImageView";
    private int mFixRotation;
    private int mHeight;
    private boolean mPrepared;
    private int mSensorOrientation;
    private int mWidth;

    public RotatableImageView(Context context) {
        super(context);
        this.mSensorOrientation = 2;
        this.mFixRotation = 0;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mPrepared = false;
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    public RotatableImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mSensorOrientation = 2;
        this.mFixRotation = 0;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mPrepared = false;
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    public RotatableImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mSensorOrientation = 2;
        this.mFixRotation = 0;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mPrepared = false;
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    public void setWidthHeight(int width, int height) {
        this.mWidth = width;
        this.mHeight = height;
        this.mPrepared = true;
    }

    protected boolean isPrepared() {
        return this.mPrepared;
    }

    @Override // android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (!isPrepared()) {
            setWidthHeight(getWidth(), getHeight());
            update();
        }
    }

    public void setSensorOrientation(int orientation) {
        this.mSensorOrientation = orientation;
        update();
    }

    public void update() {
        int width;
        int height;
        if (isPrepared()) {
            int width2 = getWidth();
            int height2 = getHeight();
            Matrix matrix = new Matrix();
            int orientation = this.mSensorOrientation;
            if (this.mFixRotation != 0) {
                orientation = this.mFixRotation;
            }
            if (getDrawable() != null) {
                float wScale = this.mWidth / getDrawable().getIntrinsicWidth();
                float hScale = this.mHeight / getDrawable().getIntrinsicHeight();
                matrix.preScale(wScale, hScale);
            }
            if (orientation == 1) {
                matrix.postTranslate((-width2) / 2.0f, (-height2) / 2.0f);
                matrix.postRotate(-90);
                matrix.postTranslate(height2 / 2.0f, width2 / 2.0f);
                width = this.mHeight;
                height = this.mWidth;
            } else {
                width = this.mWidth;
                height = this.mHeight;
            }
            setImageMatrix(matrix);
            ViewGroup.LayoutParams params = getLayoutParams();
            params.height = height;
            params.width = width;
            setLayoutParams(params);
            requestLayout();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        update();
    }

    @Override // android.widget.ImageView
    public void setImageResource(int resId) {
        super.setImageResource(resId);
        update();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        update();
    }

    public void fixRotation(int orientation) {
        this.mFixRotation = orientation;
        update();
    }

    public void clearFixedRotate(int orientation) {
        this.mFixRotation = 0;
        update();
    }
}