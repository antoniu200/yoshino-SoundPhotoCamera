package com.sonymobile.cameracommon.extendedview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import androidx.core.view.ViewCompat;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class FadingEdgeFrameLayout extends FrameLayout {
    private static final int[] FADE_GRADIENT_COLORS = {ViewCompat.MEASURED_STATE_MASK, 0, 0};
    private static final float[] FADE_GRADIENT_POSITIONS = {0.0f, 0.7f, 1.0f};
    private int mFadingEndPosition;
    private int mFadingStartPosition;
    private final Matrix mMatrix;
    private final Paint mPaint;

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int fadingLength = this.mFadingEndPosition - this.mFadingStartPosition;
        if (fadingLength > 0) {
            int width = getRight() - getLeft();
            int height = getBottom() - getTop();
            int left = getScrollX() + getPaddingLeft();
            int right = ((left + width) - getPaddingRight()) - getPaddingLeft();
            int top = getScrollY() + getPaddingTop();
            int bottom = ((top + height) - getPaddingBottom()) - getPaddingTop();
            int saveCount = canvas.getSaveCount();
            canvas.saveLayer(left, top, right, bottom, null);
            super.draw(canvas);
            Shader shader = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, FADE_GRADIENT_COLORS, FADE_GRADIENT_POSITIONS, Shader.TileMode.CLAMP);
            this.mPaint.setShader(shader);
            this.mPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            this.mMatrix.setScale(getWidth(), (height / 2) - this.mFadingEndPosition);
            this.mMatrix.postTranslate(left, top + ((height / 2.0f) - this.mFadingEndPosition));
            shader.setLocalMatrix(this.mMatrix);
            canvas.drawRect(0.0f, 0.0f, width, height, this.mPaint);
            Shader shader2 = new LinearGradient(0.0f, 1.0f, 0.0f, 0.0f, FADE_GRADIENT_COLORS, FADE_GRADIENT_POSITIONS, Shader.TileMode.CLAMP);
            this.mPaint.setShader(shader2);
            this.mPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            this.mMatrix.setScale(getWidth(), fadingLength);
            this.mMatrix.postTranslate(left, (height / 2) + this.mFadingStartPosition);
            shader2.setLocalMatrix(this.mMatrix);
            canvas.drawRect(0.0f, 0.0f, width, height, this.mPaint);
            canvas.restoreToCount(saveCount);
            return;
        }
        super.draw(canvas);
    }

    public FadingEdgeFrameLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mMatrix = new Matrix();
        this.mPaint = new Paint();
        this.mFadingStartPosition = 0;
        this.mFadingEndPosition = 0;
        setWillNotDraw(false);
    }

    public void setFadingStartPosition(int position) {
        this.mFadingStartPosition = position;
        postInvalidate();
    }

    public int getFadingStartPosition() {
        return this.mFadingStartPosition;
    }

    public void setFadingEndPosition(int position) {
        this.mFadingEndPosition = position;
        postInvalidate();
    }

    public int getFadingEndPosition() {
        return this.mFadingEndPosition;
    }
}