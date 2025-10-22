package com.sonyericsson.cameracommon.viewfinder.capturingmode;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.R;

/* loaded from: classes.dex */
public class CapturingModeButton extends RelativeLayout implements View.OnClickListener {
    private static final int INVALID_ID = -1;
    private static final int PRESSED_FILTER = R.color.pressed_filter;
    private static final float ROTATE_DEGREE = -90.0f;
    public static final String TAG = "CapturingModeButton";
    private CapturingModeButtonAttributes mAttributes;
    private ImageView mBackgroundView;
    protected boolean mHasInvalidResources;
    private ImageView mIconView;
    private OnClickCapturingModeButtonListener mListener;
    private int mSensorOrientation;

    public CapturingModeButton(Context context) {
        this(context, null);
    }

    public CapturingModeButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mSensorOrientation = 0;
    }

    public void setup(OnClickCapturingModeButtonListener listener) {
        setVisibility(View.VISIBLE);
        setClickable(true);
        setFocusable(false);
        setOnClickListener(this);
        setOnCapturingModeButtonListener(listener);
        this.mBackgroundView = createBackground();
        this.mIconView = createIcon();
        this.mHasInvalidResources = false;
        updateLayout();
    }

    public void setCurrentCapturingMode(CapturingModeButtonAttributes attributes) {
        this.mAttributes = attributes;
        updateLayout();
    }

    private ImageView createBackground() {
        ImageView backgroundView = new ImageView(getContext());
        backgroundView.setClickable(false);
        backgroundView.setFocusable(false);
        backgroundView.setFocusableInTouchMode(false);
        addView(backgroundView);
        backgroundView.getLayoutParams().width = -1;
        backgroundView.getLayoutParams().height = -1;
        return backgroundView;
    }

    private ImageView createIcon() {
        ImageView iconView = new ImageView(getContext());
        iconView.setClickable(false);
        iconView.setFocusable(false);
        iconView.setFocusableInTouchMode(false);
        addView(iconView);
        RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) iconView.getLayoutParams();
        params.width = -1;
        params.height = -1;
        params.addRule(15);
        params.addRule(14);
        return iconView;
    }

    @SuppressLint("WrongConstant")
    private void updateBackground() {
        int visible = View.VISIBLE;
        if (this.mAttributes == null) {
            visible = View.INVISIBLE;
        }
        if (this.mBackgroundView != null) {
            this.mBackgroundView.setVisibility(visible);
        }
    }

    private void updateIcon() {
        if (this.mIconView != null) {
            if (this.mAttributes == null) {
                this.mIconView.setVisibility(View.INVISIBLE);
                return;
            }
            int icon = getIconBitmapId();
            this.mIconView.setImageResource(icon);
            this.mIconView.setVisibility(View.VISIBLE);
            String description = null;
            int textId = this.mAttributes.getTextId();
            if (textId != -1) {
                description = getContext().getString(textId);
            }
            setContentDescription(description);
        }
    }

    private int getIconBitmapId() {
        if (this.mAttributes == null) {
            return -1;
        }
        return this.mAttributes.getIconId();
    }

    private void updateLayout() {
        try {
            updateBackground();
            updateIcon();
            this.mHasInvalidResources = false;
        } catch (Resources.NotFoundException e) {
            this.mHasInvalidResources = true;
        } catch (RuntimeException e2) {
            this.mHasInvalidResources = true;
        }
        if (this.mHasInvalidResources) {
            if (this.mIconView != null) {
                this.mIconView.setVisibility(View.INVISIBLE);
            }
            if (this.mBackgroundView != null) {
                this.mBackgroundView.setVisibility(View.INVISIBLE);
            }
        }
        requestLayout();
        invalidate();
    }

    public CapturingModeButtonAttributes getCurrentCapturingMode() {
        return this.mAttributes;
    }

    public void setSensorOrientation(int orientation) {
        this.mSensorOrientation = orientation;
        updateLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.mSensorOrientation == 1) {
            float width = getWidth() / 2.0f;
            float height = getHeight() / 2.0f;
            canvas.rotate(ROTATE_DEGREE, width, height);
        }
        super.dispatchDraw(canvas);
    }

    public void setOnCapturingModeButtonListener(OnClickCapturingModeButtonListener listener) {
        this.mListener = listener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.mIconView.isShown()) {
            this.mListener.onClickCapturingModeButton(this);
        }
    }
}