package com.sonyericsson.cameracommon.rotatableview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class EdgeRotatableContainerView extends FrameLayout {
    private int mOrientation;

    public EdgeRotatableContainerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mOrientation = 2;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        setOrientation(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setOrientation(int orientation) {
        this.mOrientation = orientation;
        setOrientation(getWidth(), getHeight());
    }

    private void setOrientation(float width, float height) {
        if (this.mOrientation == 2) {
            setRotation(0.0f);
            setTranslationX(0.0f);
            setTranslationY(0.0f);
        } else {
            setRotation(-90.0f);
            setTranslationX((width - height) / 2.0f);
            setTranslationY((width - height) / 2.0f);
        }
    }
}