package com.sonyericsson.cameracommon.focusview;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.focusview.Rectangle;

/* loaded from: classes.dex */
public class TaggedRectangle extends RelativeLayout implements Rectangle.RectangleOnTouchListener {
    public static final int FACEDETECT_CAPTURE = 1;
    public static final int FACERECOGNITION_REVIEW = 2;
    private static final int GAUGE_DIR_BOTTOM = 2;
    private static final int GAUGE_DIR_LEFT = 0;
    private static final int GAUGE_DIR_TOP = 1;
    public static final int OBJECT_TRACKING = 3;
    private static final int RECT_SIZE_LIFE_TIME_MILLIS = 300;
    public static final int SMILE_DETECTION_CAPTURE = 0;
    private static final int SMILE_GAUGE_NUMBER = 3;
    public static final String TAG = "TaggedRectangle";
    private int mCurrentType;
    private String mFaceUuid;
    private boolean mIsAbleToTouch;
    private boolean mIsLockedBySelfTimer;
    private boolean mIsUpdate;
    private long mLastSizeUpdatedTimestamp;
    private int mRectImageHeight;
    private int mRectImageWidth;
    private Rectangle mRectangle;
    private Rectangle.RectangleOnTouchListener mRectangleOnTouchListener;
    private SmileGauge[] mSmileGauges;

    public TaggedRectangle(Context context) {
        super(context);
        this.mIsUpdate = false;
        this.mLastSizeUpdatedTimestamp = 0L;
        this.mIsAbleToTouch = true;
        this.mIsLockedBySelfTimer = false;
    }

    public TaggedRectangle(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mIsUpdate = false;
        this.mLastSizeUpdatedTimestamp = 0L;
        this.mIsAbleToTouch = true;
        this.mIsLockedBySelfTimer = false;
    }

    public TaggedRectangle(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mIsUpdate = false;
        this.mLastSizeUpdatedTimestamp = 0L;
        this.mIsAbleToTouch = true;
        this.mIsLockedBySelfTimer = false;
    }

    private void prepare() {
        this.mRectangle = (Rectangle) findViewById(R.id.rect);
        this.mSmileGauges = new SmileGauge[3];
        this.mSmileGauges[0] = (SmileGauge) findViewById(R.id.smile_gauge_left);
        this.mSmileGauges[1] = (SmileGauge) findViewById(R.id.smile_gauge_top);
        this.mSmileGauges[2] = (SmileGauge) findViewById(R.id.smile_gauge_bottom);
    }

    public void prepare(int type) {
        this.mCurrentType = type;
        prepare();
        switch (type) {
            case 0:
                this.mRectangle.setRectangleOnTouchListener(this);
                break;
            case 2:
                this.mRectangle.setVisibility(4);
                break;
        }
    }

    public void setRawPosition(Rect rect) {
        setRectSize(rect.width(), rect.height());
        setRectCenter(rect.centerX(), rect.centerY());
    }

    public void setRectSize(int width, int height) {
        ViewGroup.LayoutParams params;
        if (isRectSizeAlreadyInvalid() && (params = this.mRectangle.getLayoutParams()) != null) {
            params.height = height;
            params.width = width;
            this.mRectangle.setLayoutParams(params);
            this.mLastSizeUpdatedTimestamp = System.currentTimeMillis();
        }
    }

    private boolean isRectSizeAlreadyInvalid() {
        long lifeTime = System.currentTimeMillis() - this.mLastSizeUpdatedTimestamp;
        return 300 < lifeTime;
    }

    public void setRectImageSize(int width, int height) {
        ImageView image = (ImageView) this.mRectangle.findViewById(R.id.rect_image);
        ViewGroup.LayoutParams params = image.getLayoutParams();
        this.mRectImageWidth = width;
        this.mRectImageHeight = height;
        if (params != null) {
            params.height = height;
            params.width = width;
            image.setLayoutParams(params);
            image.requestLayout();
        }
    }

    public void setSize(int w, int h, boolean alignParentLeft) {
        FrameLayout.LayoutParams params = (FrameLayout.LayoutParams) getLayoutParams();
        if (alignParentLeft) {
            params.gravity = 19;
        } else {
            params.gravity = 17;
        }
        params.height = h;
        params.width = w;
        setLayoutParams(params);
    }

    public void setSize(int w, int h) {
        ViewGroup.LayoutParams params = getLayoutParams();
        params.height = h;
        params.width = w;
        setLayoutParams(params);
    }

    public void setRectCenter(int x, int y) {
        int offsetX;
        int offsetY;
        switch (this.mCurrentType) {
            case 0:
            case 1:
                offsetX = getWidth() / 2;
                offsetY = getHeight() / 2;
                break;
            default:
                offsetX = this.mRectangle.getWidth() / 2;
                offsetY = this.mRectangle.getHeight() / 2;
                break;
        }
        scrollTo((-x) + offsetX, (-y) + offsetY);
    }

    public void moveRectTopLeft(int dX, int dY) {
        scrollBy(-dX, -dY);
    }

    public final void changeRectangleResource(int resId) {
        this.mRectangle.changeChildBackgroundResource(resId);
    }

    public void setRectangleOnTouchListener(Rectangle.RectangleOnTouchListener listener) {
        this.mRectangleOnTouchListener = listener;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.mRectangleOnTouchListener = null;
        this.mRectangle.setRectangleOnTouchListener(null);
        super.onDetachedFromWindow();
    }

    @Override // com.sonyericsson.cameracommon.focusview.Rectangle.RectangleOnTouchListener
    public void onRectTouchDown(View v, MotionEvent event) {
        if (!this.mIsLockedBySelfTimer && this.mRectangleOnTouchListener != null && this.mIsAbleToTouch) {
            this.mRectangleOnTouchListener.onRectTouchDown(this, event);
        }
    }

    @Override // com.sonyericsson.cameracommon.focusview.Rectangle.RectangleOnTouchListener
    public void onRectTouchUp(View v, MotionEvent event) {
        if (!this.mIsLockedBySelfTimer && this.mRectangleOnTouchListener != null && this.mIsAbleToTouch) {
            this.mRectangleOnTouchListener.onRectTouchUp(this, event);
        }
    }

    @Override // com.sonyericsson.cameracommon.focusview.Rectangle.RectangleOnTouchListener
    public void onRectTouchCancel(View v, MotionEvent event) {
        if (!this.mIsLockedBySelfTimer && this.mRectangleOnTouchListener != null && this.mIsAbleToTouch) {
            this.mRectangleOnTouchListener.onRectTouchCancel(this, event);
        }
    }

    public int getRectangleLeft() {
        return this.mRectangle.getLeft();
    }

    public int getRectangleTop() {
        return this.mRectangle.getTop();
    }

    public int getRectangleWidth() {
        return this.mRectangle.getWidth();
    }

    public int getRectangleHeight() {
        return this.mRectangle.getHeight();
    }

    public final void setSmileLevel(int dimenId) {
        if (dimenId >= 0) {
            for (SmileGauge gauge : this.mSmileGauges) {
                gauge.setSmileLevel(dimenId);
            }
        }
    }

    public void setSmileScore(int score) {
        this.mSmileGauges[0].setSmileScore(score);
        this.mSmileGauges[1].setSmileScore(score);
        this.mSmileGauges[2].setSmileScore(score);
    }

    private boolean isSmileGaugeVisible() {
        return this.mSmileGauges[0].getVisibility() == 0 || this.mSmileGauges[1].getVisibility() == 0 || this.mSmileGauges[2].getVisibility() == 0;
    }

    public void setSmileGaugeVisibility(int visibility) {
        this.mSmileGauges[0].setVisibility(visibility);
        this.mSmileGauges[1].setVisibility(visibility);
        this.mSmileGauges[2].setVisibility(visibility);
    }

    public void setSmileGaugesPosition(int left, int top, int right, int bottom, int orientation) {
        this.mSmileGauges[0].setPosition(left, top, right, bottom, orientation);
        this.mSmileGauges[1].setPosition(left, top, right, bottom, orientation);
        this.mSmileGauges[2].setPosition(left, top, right, bottom, orientation);
    }

    public Rect getFaceRect() {
        Rect tag = new Rect();
        this.mRectangle.getGlobalVisibleRect(tag);
        return tag;
    }

    public String getUuid() {
        return this.mFaceUuid;
    }

    private void setUuid(String uuid) {
        this.mFaceUuid = uuid;
    }

    public void update(String uuid, int orientation) {
        setUuid(uuid);
    }

    public void stopAnimation() {
        if (this.mRectangle.getAnimation() != null) {
            this.mRectangle.clearAnimation();
            this.mRectangle.setAnimation(null);
        }
    }

    public void startRectangleAnimation(int orientation) {
        AnimationSet animationSet = (AnimationSet) AnimationUtils.loadAnimation(getContext(), R.anim.tagged_rectangle_show);
        this.mRectangle.startAnimation(animationSet);
    }

    public void setRectOrientation(int orientation) {
        if (orientation == 1) {
            this.mRectangle.setRotation(-90.0f);
        } else {
            this.mRectangle.setRotation(0.0f);
        }
    }

    public void setUpdated() {
        this.mIsUpdate = true;
    }

    public void clearUpdated() {
        this.mIsUpdate = false;
    }

    public boolean isUpdate() {
        return this.mIsUpdate;
    }

    public void hide() {
        if (isSmileGaugeVisible()) {
            setSmileGaugeVisibility(4);
        }
        if (getVisibility() != 4) {
            ViewGroup.LayoutParams params = this.mRectangle.getLayoutParams();
            if (params != null) {
                params.height = 0;
                params.width = 0;
                this.mRectangle.setLayoutParams(params);
            }
            setVisibility(4);
        }
    }

    @Override // com.sonyericsson.cameracommon.focusview.Rectangle.RectangleOnTouchListener
    public void onRectTouchLongPress(MotionEvent event) {
        if (!this.mIsLockedBySelfTimer && this.mRectangleOnTouchListener != null && this.mIsAbleToTouch) {
            this.mRectangleOnTouchListener.onRectTouchLongPress(event);
        }
    }

    public void setIsAbleToTouch(boolean isAble) {
        this.mIsAbleToTouch = isAble;
    }

    public void setLockedBySelfTimer(boolean isLocked) {
        this.mIsLockedBySelfTimer = isLocked;
    }

    public int getRectImageWidth() {
        return this.mRectImageWidth;
    }

    public int getRectImageHeight() {
        return this.mRectImageHeight;
    }
}