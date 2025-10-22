package com.sonymobile.cameracommon.extendedview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes.dex */
@SuppressLint("AppCompatCustomView")
public class RoundRectImageView extends ImageView {
    public static final String TAG = "RoundRectImageView";
    private Path mClipPath;
    private RectF mDstRect;
    private float[] mRadiusSet;

    public RoundRectImageView(Context context) {
        super(context);
        this.mDstRect = new RectF();
        this.mRadiusSet = new float[8];
        this.mClipPath = new Path();
        initialize();
    }

    public RoundRectImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mDstRect = new RectF();
        this.mRadiusSet = new float[8];
        this.mClipPath = new Path();
        initialize();
    }

    private void initialize() {
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
        this.mClipPath.setFillType(Path.FillType.WINDING);
    }

    public void setRadius(float radius) {
        for (int i = 0; i < 8; i++) {
            this.mRadiusSet[i] = radius;
        }
        updateClipPath();
    }

    public void setRadius(float topLeft, float topRight, float bottomRight, float bottomLeft) {
        this.mRadiusSet[0] = topLeft;
        this.mRadiusSet[1] = topLeft;
        this.mRadiusSet[2] = topRight;
        this.mRadiusSet[3] = topRight;
        this.mRadiusSet[4] = bottomRight;
        this.mRadiusSet[5] = bottomRight;
        this.mRadiusSet[6] = bottomLeft;
        this.mRadiusSet[7] = bottomLeft;
        updateClipPath();
    }

    @Override // android.view.View
    public void onSizeChanged(int width, int height, int oldWidth, int oldHeight) {
        super.onSizeChanged(width, height, oldWidth, oldHeight);
        this.mDstRect.set(0.0f, 0.0f, width, height);
        updateClipPath();
    }

    private void updateClipPath() {
        this.mClipPath.addRoundRect(this.mDstRect, this.mRadiusSet, Path.Direction.CCW);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        canvas.clipPath(this.mClipPath);
        super.onDraw(canvas);
        canvas.restore();
    }
}