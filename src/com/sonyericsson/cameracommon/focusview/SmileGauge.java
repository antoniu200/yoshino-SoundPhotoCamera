package com.sonyericsson.cameracommon.focusview;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;

/* loaded from: classes.dex */
public class SmileGauge extends RelativeLayout {
    public static final int SMILE_LEVEL = 5;
    public static final int SMILE_MAX = 100;
    public static final int SMILE_MIN = 0;
    public static final String TAG = "SmileGauge";
    private boolean mIsForLandscape;
    private int mMargin;
    private int mSmileScore;

    public SmileGauge(Context context) {
        this(context, null);
    }

    public SmileGauge(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SmileGauge(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mIsForLandscape = true;
        TypedArray array = context.obtainStyledAttributes(attrs, R.styleable.SmileGauge);
        this.mIsForLandscape = array.getBoolean(R.styleable.SmileGauge_forLandscape, true);
        array.recycle();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mSmileScore = 0;
    }

    public void setSmileScore(int score) {
        if (score < 0) {
            score = 0;
        } else if (score > 100) {
            score = 100;
        }
        this.mSmileScore = score;
        SmileScore smileScore = (SmileScore) findViewById(R.id.smile_gauge_score);
        smileScore.setSmileScore(score);
        if (!isForLandscape()) {
            RelativeLayout.LayoutParams paramsScore = (RelativeLayout.LayoutParams) smileScore.getLayoutParams();
            if (isLayoutOrientationLandscape()) {
                paramsScore.removeRule(12);
                paramsScore.addRule(10);
            } else {
                paramsScore.removeRule(10);
                paramsScore.addRule(12);
            }
            smileScore.setLayoutParams(paramsScore);
        }
        smileScore.invalidate();
    }

    public int getSmileScore() {
        return this.mSmileScore;
    }

    public void setSmileLevel(int dimenId) {
        this.mMargin = getResources().getDimensionPixelSize(dimenId);
    }

    protected void drawThreshold() {
        ImageView threshold = (ImageView) findViewById(R.id.smile_gauge_threshold);
        RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(-2, -2);
        if (isForLandscape()) {
            params.topMargin = this.mMargin;
            params.addRule(9);
        } else {
            RelativeLayout.LayoutParams paramsFrame = new RelativeLayout.LayoutParams(-2, -2);
            ImageView frame = (ImageView) findViewById(R.id.smile_gauge_frame);
            if (isLayoutOrientationLandscape()) {
                paramsFrame.addRule(10);
                params.leftMargin = this.mMargin;
                params.addRule(12);
            } else {
                paramsFrame.addRule(12);
                params.rightMargin = this.mMargin;
                params.addRule(11);
            }
            frame.setLayoutParams(paramsFrame);
        }
        threshold.setLayoutParams(params);
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        if (visibility == 0) {
            drawThreshold();
        }
    }

    public void setPosition(int left, int top, int right, int bottom, int orientation) {
        if (left == right || top == bottom) {
            setVisibility(4);
        } else {
            update(orientation);
        }
    }

    protected void update(int orientation) {
        if (isLayoutOrientationLandscape()) {
            if ((isForLandscape() && orientation != 2) || (!isForLandscape() && orientation != 1)) {
                clearLayoutParams();
                setVisibility(8);
                return;
            }
        } else if ((!isForLandscape() && orientation != 2) || (isForLandscape() && orientation != 1)) {
            clearLayoutParams();
            setVisibility(8);
            return;
        }
        clearLayoutParams();
        if (orientation == 2) {
            if (isLayoutOrientationLandscape()) {
                moveToId(R.id.smile_gauge_left);
                alignToDirection(6);
            } else {
                moveToId(R.id.smile_gauge_top);
                alignToDirection(7);
            }
        } else if (isLayoutOrientationLandscape()) {
            moveToId(R.id.smile_gauge_bottom);
            alignToDirection(5);
        } else {
            moveToId(R.id.smile_gauge_left);
            alignToDirection(6);
        }
        postInvalidate();
    }

    protected void moveToId(int id) {
        if (getId() != id) {
            setVisibility(8);
        } else {
            setVisibility(0);
        }
    }

    protected void clearLayoutParams() {
        RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) getLayoutParams();
        if (params != null) {
            params.addRule(6, 0);
            params.addRule(5, 0);
            params.addRule(7, 0);
            params.topMargin = 0;
            params.leftMargin = 0;
            setLayoutParams(params);
        }
    }

    protected void alignToDirection(int direction) {
        RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) getLayoutParams();
        if (params != null) {
            params.addRule(direction, R.id.rect);
            setLayoutParams(params);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public boolean isForLandscape() {
        return this.mIsForLandscape;
    }

    public boolean isLayoutOrientationLandscape() {
        return LayoutOrientationResolver.getInstance().getOrientation() != LayoutOrientationResolver.LayoutOrientationType.PORTRAIT;
    }
}