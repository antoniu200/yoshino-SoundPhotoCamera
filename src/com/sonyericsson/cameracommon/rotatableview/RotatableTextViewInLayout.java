package com.sonyericsson.cameracommon.rotatableview;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.sonyericsson.cameracommon.R;

/* loaded from: classes.dex */
public class RotatableTextViewInLayout extends RelativeLayout {
    private static final int ROTATE_DEGREE = -90;
    public static final String TAG = "RotatableTextViewInLayout";
    private ImageView mBackground;
    private int mLayoutHeight;
    private int mLayoutWidth;
    private int mSensorOrientation;
    private TextView mText;
    private int mTextViewHeightOnLandscape;
    private int mTextViewHeightOnPortrait;
    private int mTextViewWidthOnLandscape;
    private int mTextViewWidthOnPortrait;

    public RotatableTextViewInLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mText = null;
        this.mBackground = null;
        this.mSensorOrientation = 2;
        this.mLayoutWidth = 0;
        this.mLayoutHeight = 0;
        this.mTextViewWidthOnLandscape = 0;
        this.mTextViewHeightOnLandscape = 0;
        this.mTextViewWidthOnPortrait = 0;
        this.mTextViewHeightOnPortrait = 0;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mText = (TextView) findViewById(R.id.rotatable_text_view_text);
        this.mText.setGravity(17);
        this.mBackground = (ImageView) findViewById(R.id.rotatable_text_view_background);
        this.mBackground.setScaleType(ImageView.ScaleType.FIT_XY);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldW, int oldH) {
        this.mLayoutWidth = w;
        this.mLayoutHeight = h;
        updateLayout();
    }

    public void setTextResId(int res) {
        this.mText.setText(res);
    }

    public void setBackgroundDrawableId(int res) {
        this.mBackground.setImageResource(res);
    }

    public void setTextSizeOnLandscape(int width, int height) {
        this.mTextViewWidthOnLandscape = width;
        this.mTextViewHeightOnLandscape = height;
    }

    public void setTextSizeOnPortrait(int width, int height) {
        this.mTextViewWidthOnPortrait = width;
        this.mTextViewHeightOnPortrait = height;
    }

    public void updateLayout() {
        ((RelativeLayout.LayoutParams) this.mText.getLayoutParams()).addRule(13);
        ((RelativeLayout.LayoutParams) this.mBackground.getLayoutParams()).addRule(13);
        if (this.mSensorOrientation == 1) {
            this.mText.getLayoutParams().width = this.mTextViewWidthOnPortrait;
            this.mBackground.getLayoutParams().width = this.mLayoutHeight;
            this.mBackground.getLayoutParams().height = this.mTextViewHeightOnPortrait;
            scrollTo(((this.mLayoutWidth / 2) - (this.mTextViewHeightOnPortrait / 2)) * (-1), 0);
        } else {
            this.mText.getLayoutParams().width = this.mTextViewWidthOnLandscape;
            this.mBackground.getLayoutParams().width = this.mLayoutWidth;
            this.mBackground.getLayoutParams().height = this.mTextViewHeightOnLandscape;
            scrollTo(0, ((this.mLayoutHeight / 2) - (this.mTextViewHeightOnLandscape / 2)) * (-1));
        }
        requestLayout();
        invalidate();
    }

    public void setSensorOrientation(int orient) {
        this.mSensorOrientation = orient;
        updateLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.mSensorOrientation == 1) {
            float width = getWidth() / 2.0f;
            float height = getHeight() / 2.0f;
            canvas.rotate(-90.0f, width, height);
        }
        super.dispatchDraw(canvas);
    }
}