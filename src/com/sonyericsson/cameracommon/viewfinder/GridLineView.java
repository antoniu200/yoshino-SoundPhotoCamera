package com.sonyericsson.cameracommon.viewfinder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.cameracommon.R;

/* loaded from: classes.dex */
public class GridLineView extends View {
    public static final String TAG = "GridLineView";
    private float mBottomHorizontalLinePositionY;
    private boolean mIsGridLineEnabled;
    private float mLeftVerticalLinePositionX;
    private Paint mPaint;
    private float mRightVerticalLinePositionX;
    private int mSurfaceHeight;
    private int mSurfaceWidth;
    private float mTopHorizontalLinePositionY;

    public GridLineView(Context context) {
        super(context);
        this.mSurfaceWidth = 0;
        this.mSurfaceHeight = 0;
        this.mPaint = new Paint();
        this.mIsGridLineEnabled = false;
        if (23 <= Build.VERSION.SDK_INT) {
            this.mPaint.setColor(getResources().getColor(R.color.gridline_color, null));
        } else {
            this.mPaint.setColor(getResources().getColor(R.color.gridline_color));
        }
        this.mPaint.setStrokeWidth(getResources().getDimensionPixelSize(R.dimen.viewfinder_grid_line_width));
    }

    public void setSurfaceSize(int surfaceWidth, int surfaceHeight) {
        this.mSurfaceWidth = surfaceWidth;
        this.mSurfaceHeight = surfaceHeight;
        this.mLeftVerticalLinePositionX = this.mSurfaceWidth / 3.0f;
        this.mRightVerticalLinePositionX = (this.mSurfaceWidth * 2) / 3.0f;
        this.mTopHorizontalLinePositionY = this.mSurfaceHeight / 3.0f;
        this.mBottomHorizontalLinePositionY = (this.mSurfaceHeight * 2) / 3.0f;
        ViewGroup.LayoutParams params = getLayoutParams();
        if (params != null) {
            params.width = surfaceWidth;
            params.height = surfaceHeight;
            requestLayout();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mIsGridLineEnabled) {
            drawGridLine(canvas);
        }
    }

    private void drawGridLine(Canvas canvas) {
        canvas.drawLine(this.mLeftVerticalLinePositionX, 0.0f, this.mLeftVerticalLinePositionX, this.mSurfaceHeight, this.mPaint);
        canvas.drawLine(this.mRightVerticalLinePositionX, 0.0f, this.mRightVerticalLinePositionX, this.mSurfaceHeight, this.mPaint);
        canvas.drawLine(0.0f, this.mTopHorizontalLinePositionY, this.mSurfaceWidth, this.mTopHorizontalLinePositionY, this.mPaint);
        canvas.drawLine(0.0f, this.mBottomHorizontalLinePositionY, this.mSurfaceWidth, this.mBottomHorizontalLinePositionY, this.mPaint);
    }

    public void showIfEnabled() {
        if (this.mIsGridLineEnabled) {
            setVisibility(0);
        }
    }

    public void hide() {
        setVisibility(4);
    }

    public void enable() {
        this.mIsGridLineEnabled = true;
        setVisibility(0);
    }

    public void disable() {
        this.mIsGridLineEnabled = false;
        setVisibility(4);
    }
}