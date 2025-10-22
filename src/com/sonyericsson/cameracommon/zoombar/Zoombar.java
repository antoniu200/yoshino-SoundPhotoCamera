package com.sonyericsson.cameracommon.zoombar;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class Zoombar extends FrameLayout {
    private static final boolean DEBUG = false;
    public static final int DELAY_ZOOMBAR_HIDE = 1000;
    private static final long IMMEDIATE_ANIMATION_DURATION_IN_MILLIS = 0;
    private static final float INVISIBLE_ALPHA = 0.0f;
    private static final long INVISIBLE_ANIMATION_DURATION_IN_MILLIS = 100;
    public static final int MIN_VALUE = 0;
    public static final String TAG = "Zoombar";
    private static final float VISIBLE_ALPHA = 1.0f;
    private static final long VISIBLE_ANIMATION_DURATION_IN_MILLIS = 100;
    private Type mCurrentType;
    private final Runnable mHideEvent;
    private ImageView mLeftIndicator;
    private ImageView mLeftSrIndicator;
    private Integer mMaxSrZoom;
    private Integer mMaxZoom;
    private ImageView mRightIndicator;
    private ImageView mRightSrIndicator;
    private TextView mValueIndicator;
    private List<Integer> mZoomRatios;

    public enum Type {
        NORMAL,
        PARTIAL_SUPER_RESOLUTION
    }

    public Zoombar(Context context) {
        this(context, null);
    }

    public Zoombar(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public Zoombar(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mCurrentType = Type.NORMAL;
        this.mHideEvent = new Runnable() { // from class: com.sonyericsson.cameracommon.zoombar.Zoombar.1
            @Override // java.lang.Runnable
            public void run() {
                Zoombar.this.hideWithAnimation(true);
            }
        };
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mLeftIndicator = (ImageView) findViewById(R.id.left_indicator);
        this.mRightIndicator = (ImageView) findViewById(R.id.right_indicator);
        this.mLeftSrIndicator = (ImageView) findViewById(R.id.left_sr_indicator);
        this.mRightSrIndicator = (ImageView) findViewById(R.id.right_sr_indicator);
        this.mValueIndicator = (TextView) findViewById(R.id.value_indicator);
    }

    public void updateZoombarType(Type type) {
        this.mCurrentType = type;
    }

    public void setMaxZoom(Integer maxZoom) {
        this.mMaxZoom = maxZoom;
    }

    public void setZoomRatios(List<Integer> zoomRatios) {
        this.mZoomRatios = zoomRatios;
    }

    public void setMaxSrZoom(Integer maxSrZoom) {
        this.mMaxSrZoom = maxSrZoom;
    }

    public int zoom(int current) {
        if (!validateZoomParameters(current)) {
            hideImmediately();
            return current;
        }
        if (current < 0) {
            current = 0;
        }
        if (current > this.mMaxZoom.intValue()) {
            current = this.mMaxZoom.intValue();
        }
        boolean isSuperResolutionEnabled = this.mCurrentType == Type.PARTIAL_SUPER_RESOLUTION;
        Integer currentZoomRatio = this.mZoomRatios.get(current);
        Resources res = getResources();
        int maxWidth = (int) res.getDimension(R.dimen.max_zoom_indicator_width);
        int minWidth = this.mLeftIndicator.getDrawable().getIntrinsicWidth();
        int widthSrIndicator = this.mLeftSrIndicator.getDrawable().getIntrinsicWidth();
        int position = (((maxWidth - minWidth) * (this.mMaxZoom.intValue() - current)) / this.mMaxZoom.intValue()) + minWidth;
        int srPosition = 0;
        if (isSuperResolutionEnabled) {
            srPosition = ((((maxWidth - minWidth) * (this.mMaxZoom.intValue() - this.mMaxSrZoom.intValue())) / this.mMaxZoom.intValue()) + minWidth) - widthSrIndicator;
        }
        int srVisibility = isSuperResolutionEnabled ? 0 : 4;
        String text = String.format(Locale.getDefault(), "%.1f", Float.valueOf(currentZoomRatio.intValue() / 100.0f));
        this.mLeftIndicator.getLayoutParams().width = position;
        this.mRightIndicator.getLayoutParams().width = position;
        ((FrameLayout.LayoutParams) this.mLeftSrIndicator.getLayoutParams()).leftMargin = srPosition;
        ((FrameLayout.LayoutParams) this.mRightSrIndicator.getLayoutParams()).rightMargin = srPosition;
        this.mValueIndicator.setText(text);
        this.mLeftIndicator.requestLayout();
        this.mRightIndicator.requestLayout();
        this.mLeftSrIndicator.requestLayout();
        this.mRightSrIndicator.requestLayout();
        this.mLeftSrIndicator.setVisibility(srVisibility);
        this.mRightSrIndicator.setVisibility(srVisibility);
        return current;
    }

    public void setSensorOrientation(int orient) {
        this.mValueIndicator.setRotation(RotationUtil.getAngle(orient));
    }

    public void show() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.mHideEvent);
        }
        showWithAnimation(true);
    }

    public void showImmediately() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.mHideEvent);
        }
        showWithAnimation(false);
    }

    public void hideDelayed() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.postDelayed(this.mHideEvent, 1000L);
        }
    }

    public void hideImmediately() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.mHideEvent);
        }
        hideWithAnimation(false);
    }

    private void showWithAnimation(boolean doAnimation) {
        animate().alpha(1.0f).setDuration(doAnimation ? 100L : 0L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideWithAnimation(boolean doAnimation) {
        animate().alpha(0.0f).setDuration(doAnimation ? 100L : 0L).start();
    }

    private boolean validateZoomParameters(int current) {
        Integer currentZoomRatio;
        boolean isSuperResolutionEnabled = this.mCurrentType == Type.PARTIAL_SUPER_RESOLUTION;
        if (this.mMaxZoom == null || this.mMaxZoom.intValue() <= 0 || this.mZoomRatios == null) {
            return false;
        }
        return (!isSuperResolutionEnabled || (this.mMaxSrZoom != null && this.mMaxSrZoom.intValue() >= 0)) && (currentZoomRatio = this.mZoomRatios.get(current)) != null && currentZoomRatio.intValue() >= 0;
    }
}
