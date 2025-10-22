package com.sonyericsson.cameracommon.rotatableview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.sonymobile.android.addoncamera.soundphoto.R;
/* loaded from: classes.dex */
public class RotatableContainerView extends FrameLayout {
    public static final String TAG = "RotatableContainerView";
    private FrameLayout mContainerView;
    private FrameLayout mCustomizableView;
    private int mUiOrientation;

    public RotatableContainerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mUiOrientation = 0;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mContainerView = (FrameLayout) findViewById(R.id.container);
        this.mCustomizableView = (FrameLayout) findViewById(R.id.overlay);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int estimatedWidth = getDefaultSize(getSuggestedMinimumWidth(), widthMeasureSpec);
        int estimatedHeight = getDefaultSize(getSuggestedMinimumHeight(), heightMeasureSpec);
        if (this.mUiOrientation != 0 && isPortraitUi()) {
            setPortraitUi(estimatedWidth, estimatedHeight, false);
        } else {
            setLandscapeUi(estimatedWidth, estimatedHeight, false);
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    public FrameLayout getCustamizableView() {
        return this.mCustomizableView;
    }

    public void setUiOrientation(int orientation) {
        if (this.mUiOrientation != orientation) {
            this.mUiOrientation = orientation;
            requestLayout();
        }
    }

    private void setLandscapeUi(int width, int height, boolean isReverse) {
        int size = Math.max(width, height);
        this.mContainerView.getLayoutParams().height = size;
        this.mContainerView.getLayoutParams().width = size;
        requestLayout();
        int backgroundW = this.mCustomizableView.getMeasuredWidth();
        int backgroundH = this.mCustomizableView.getMeasuredHeight();
        if (backgroundW != width || backgroundH != height) {
            this.mCustomizableView.getLayoutParams().width = width;
            this.mCustomizableView.getLayoutParams().height = height;
            this.mCustomizableView.requestLayout();
        }
        this.mCustomizableView.setRotation(0.0f);
    }

    private void setPortraitUi(int width, int height, boolean isReverse) {
        int size = Math.max(width, height);
        this.mContainerView.getLayoutParams().height = size;
        this.mContainerView.getLayoutParams().width = size;
        requestLayout();
        int backgroundW = this.mCustomizableView.getMeasuredWidth();
        int backgroundH = this.mCustomizableView.getMeasuredHeight();
        if (backgroundW != height || backgroundH != width) {
            this.mCustomizableView.getLayoutParams().width = height;
            this.mCustomizableView.getLayoutParams().height = width;
            this.mCustomizableView.requestLayout();
        }
        if (isReverse) {
            this.mCustomizableView.setRotation(90.0f);
        } else {
            this.mCustomizableView.setRotation(270.0f);
        }
    }

    private boolean isPortraitUi() {
        return this.mUiOrientation == 1;
    }
}