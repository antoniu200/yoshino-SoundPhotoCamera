package com.sonymobile.cameracommon.view;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.settings.SelfTimerInterface;
import com.sonyericsson.cameracommon.utility.RotationUtil;

/* loaded from: classes.dex */
public class SelfTimerCountDownView extends FrameLayout {
    boolean mIsHideHintText;
    private SelfTimerCountDownCircleView mSelfTimerCountDownCircleView;
    private SelfTimerCountDownCircleView mSelfTimerCountDownCircleViewPort;
    private SelfTimerCountDownNumberView mSelfTimerCountDownNumberView;
    private SelfTimerCountDownNumberView mSelfTimerCountDownNumberViewPort;

    public SelfTimerCountDownView(Context context, AttributeSet attrib) {
        super(context, attrib);
        this.mIsHideHintText = false;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mSelfTimerCountDownCircleView = (SelfTimerCountDownCircleView) findViewById(R.id.selftimer_countdown_circle);
        this.mSelfTimerCountDownCircleViewPort = (SelfTimerCountDownCircleView) findViewById(R.id.selftimer_countdown_circle_port);
        this.mSelfTimerCountDownNumberView = (SelfTimerCountDownNumberView) findViewById(R.id.selftimer_countdown_text);
        this.mSelfTimerCountDownNumberViewPort = (SelfTimerCountDownNumberView) findViewById(R.id.selftimer_countdown_text_port);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    public void startSelfTimerCountDownAnimation(boolean isFront) {
        TextView selfTimerHintText = (TextView) findViewById(R.id.selftimer_hint_text);
        TextView selfTimerHintTextPort = (TextView) findViewById(R.id.selftimer_hint_text_port);
        if (isFront && !this.mIsHideHintText) {
            selfTimerHintText.setVisibility(0);
            selfTimerHintTextPort.setVisibility(0);
        } else {
            selfTimerHintText.setVisibility(4);
            selfTimerHintTextPort.setVisibility(4);
        }
        if (this.mSelfTimerCountDownNumberView != null) {
            this.mSelfTimerCountDownNumberView.startAnimation();
        }
        if (this.mSelfTimerCountDownNumberViewPort != null) {
            this.mSelfTimerCountDownNumberViewPort.startAnimation();
        }
        if (this.mSelfTimerCountDownCircleView != null) {
            this.mSelfTimerCountDownCircleView.startAnimation();
        }
        if (this.mSelfTimerCountDownCircleViewPort != null) {
            this.mSelfTimerCountDownCircleViewPort.startAnimation();
        }
    }

    public void cancelSelfTimerCountDownAnimation() {
        if (this.mSelfTimerCountDownCircleView != null) {
            this.mSelfTimerCountDownCircleView.cancelSelfTimerAnimation();
        }
        if (this.mSelfTimerCountDownCircleViewPort != null) {
            this.mSelfTimerCountDownCircleViewPort.cancelSelfTimerAnimation();
        }
        if (this.mSelfTimerCountDownNumberView != null) {
            this.mSelfTimerCountDownNumberView.cancelSelfTimerAnimation();
        }
        if (this.mSelfTimerCountDownNumberViewPort != null) {
            this.mSelfTimerCountDownNumberViewPort.cancelSelfTimerAnimation();
        }
    }

    public void setSelfTimer(SelfTimerInterface selftimer) {
        if (this.mSelfTimerCountDownCircleView != null) {
            this.mSelfTimerCountDownCircleView.setSelfTimer(selftimer);
        }
        if (this.mSelfTimerCountDownCircleViewPort != null) {
            this.mSelfTimerCountDownCircleViewPort.setSelfTimer(selftimer);
        }
        if (this.mSelfTimerCountDownNumberView != null) {
            this.mSelfTimerCountDownNumberView.setSelfTimer(selftimer);
        }
        if (this.mSelfTimerCountDownNumberViewPort != null) {
            this.mSelfTimerCountDownNumberViewPort.setSelfTimer(selftimer);
        }
        this.mIsHideHintText = selftimer.getCountDownIconId() != -1;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(heightMeasureSpec, heightMeasureSpec);
    }

    public void setSensorOrientation(int orientation) {
        float degree = RotationUtil.getAngle(orientation);
        setRotation(degree);
        View selfTimerViewLandscape = (LinearLayout) findViewById(R.id.selftimer_countdown_layout_base_landscape);
        View selfTimerViewPortrait = (LinearLayout) findViewById(R.id.selftimer_countdown_layout_base_port);
        if (orientation == 2) {
            selfTimerViewLandscape.setVisibility(0);
            selfTimerViewPortrait.setVisibility(4);
        } else {
            selfTimerViewLandscape.setVisibility(4);
            selfTimerViewPortrait.setVisibility(0);
        }
    }
}