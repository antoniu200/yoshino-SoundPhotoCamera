package com.sonyericsson.cameracommon.focusview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.R;

/* loaded from: classes.dex */
@SuppressLint("AppCompatCustomView")
public class SmileScore extends ImageView {
    private static final int GAUGE_BOTTOM_A = 178;
    private static final int GAUGE_BOTTOM_B = 229;
    private static final int GAUGE_BOTTOM_G = 181;
    private static final int GAUGE_BOTTOM_R = 51;
    private static final int GAUGE_TOP_A = 178;
    private static final int GAUGE_TOP_B = 204;
    private static final int GAUGE_TOP_G = 153;
    private static final int GAUGE_TOP_R = 0;
    public static final int SMILE_MAX = 100;
    public static final int SMILE_MIN = 0;
    private static final int SMILE_UNIT = 100;
    public static final String TAG = "SmileScore";
    private static final Paint[] sColorPaints = new Paint[100];
    private int mFrameHeight;
    private float mIndicatorStep;
    private int mIndicatorWidth;
    private int mSmileScore;

    public static final void preload() {
    }

    static {
        for (int i = 0; i < 100; i++) {
            Paint paint = new Paint();
            paint.setARGB((int) (178.0f + (i * 0.0f)), (int) ((0.51f * i) + 0.0f), (int) (153.0f + (0.28f * i)), (int) (204.0f + (0.25f * i)));
            sColorPaints[i] = paint;
        }
    }

    public SmileScore(Context context) {
        this(context, null);
    }

    public SmileScore(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SmileScore(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mSmileScore = 0;
        this.mFrameHeight = getResources().getDimensionPixelSize(R.dimen.smile_gauge_frame_height);
        this.mIndicatorWidth = getResources().getDimensionPixelSize(R.dimen.smile_gauge_indicator_width);
        this.mIndicatorStep = this.mFrameHeight / 100.0f;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    public void setSmileScore(int score) {
        this.mSmileScore = score;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) throws Resources.NotFoundException {
        int paddingLeft = getResources().getDimensionPixelSize(R.dimen.smile_gauge_padding_left);
        int paddingLeft_frame = getResources().getDimensionPixelSize(R.dimen.smile_gauge_frame_padding_left);
        int paddingBottom_frame = getResources().getDimensionPixelSize(R.dimen.smile_gauge_frame_padding_bottom);
        int paddingTop_frame = getResources().getDimensionPixelSize(R.dimen.smile_gauge_frame_padding_top);
        if (!isLayoutOrientationLandscape() && !isForLandscape()) {
            float left = paddingLeft + paddingLeft_frame;
            float top = paddingTop_frame;
            float right = left + this.mIndicatorWidth;
            for (int i = 0; i < 100 && this.mSmileScore >= i; i++) {
                float bottom = top + this.mIndicatorStep;
                if (bottom < this.mFrameHeight - paddingTop_frame) {
                    canvas.drawRect(getSmileScoreRect(left, top, right, bottom), sColorPaints[i]);
                }
                top += this.mIndicatorStep;
            }
        } else {
            float left2 = paddingLeft + paddingLeft_frame;
            float top2 = this.mFrameHeight - paddingBottom_frame;
            float right2 = left2 + this.mIndicatorWidth;
            for (int i2 = 0; i2 < 100 && this.mSmileScore >= i2; i2++) {
                float bottom2 = top2 + this.mIndicatorStep;
                if (top2 > paddingBottom_frame) {
                    canvas.drawRect(getSmileScoreRect(left2, top2, right2, bottom2), sColorPaints[i2]);
                }
                top2 -= this.mIndicatorStep;
            }
        }
        super.draw(canvas);
    }

    private RectF getSmileScoreRect(float left, float top, float right, float bottom) {
        RectF rect = new RectF();
        if (isForLandscape()) {
            rect.set(left, top, right, bottom);
        } else {
            rect.set(top, left, bottom, right);
            if (rect.left > rect.right) {
                rect.left = bottom;
                rect.right = top;
            }
            if (rect.top > rect.bottom) {
                rect.top = right;
                rect.bottom = left;
            }
        }
        return rect;
    }

    protected boolean isForLandscape() {
        return ((SmileGauge) getParent()).isForLandscape();
    }

    private boolean isLayoutOrientationLandscape() {
        return ((SmileGauge) getParent()).isLayoutOrientationLandscape();
    }
}