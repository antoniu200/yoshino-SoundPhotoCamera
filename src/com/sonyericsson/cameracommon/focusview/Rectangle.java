package com.sonyericsson.cameracommon.focusview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.utility.CommonUtility;

/* loaded from: classes.dex */
public class Rectangle extends RelativeLayout implements GestureDetector.OnGestureListener {
    public static final String TAG = "Rectangles";
    private GestureDetector mGestureDetector;
    private RectangleOnTouchListener mRectangleOnTouchListener;

    public interface RectangleOnTouchListener {
        void onRectTouchCancel(View view, MotionEvent motionEvent);

        void onRectTouchDown(View view, MotionEvent motionEvent);

        void onRectTouchLongPress(MotionEvent motionEvent);

        void onRectTouchUp(View view, MotionEvent motionEvent);
    }

    public Rectangle(Context context) {
        super(context);
    }

    public Rectangle(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public Rectangle(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // android.view.View
    public synchronized boolean onTouchEvent(MotionEvent event) {
        boolean consumed;
        super.onTouchEvent(event);
        getGestureDetector().onTouchEvent(event);
        consumed = false;
        if (this.mRectangleOnTouchListener != null) {
            consumed = true;
        }
        switch (event.getAction()) {
            case 0:
                if (this.mRectangleOnTouchListener != null) {
                    this.mRectangleOnTouchListener.onRectTouchDown(this, event);
                    break;
                }
                break;
            case 1:
                if (this.mRectangleOnTouchListener != null) {
                    if (CommonUtility.isEventContainedInView(this, event)) {
                        this.mRectangleOnTouchListener.onRectTouchUp(this, event);
                        break;
                    } else {
                        this.mRectangleOnTouchListener.onRectTouchCancel(this, event);
                        break;
                    }
                }
                break;
        }
        return consumed;
    }

    public synchronized void setRectangleOnTouchListener(RectangleOnTouchListener listener) {
        this.mRectangleOnTouchListener = listener;
    }

    public void changeChildBackgroundResource(int resId) {
        View child = findViewById(R.id.rect_image);
        if (child.getVisibility() != 8) {
            child.setBackgroundResource(resId);
        }
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent event) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent arg0, MotionEvent arg1, float arg2, float arg3) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public synchronized void onLongPress(MotionEvent event) {
        if (this.mRectangleOnTouchListener != null) {
            this.mRectangleOnTouchListener.onRectTouchLongPress(event);
        }
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent arg0, MotionEvent arg1, float arg2, float arg3) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent event) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent event) {
        return false;
    }

    private GestureDetector getGestureDetector() {
        if (this.mGestureDetector == null) {
            this.mGestureDetector = new GestureDetector(getContext(), this);
        }
        return this.mGestureDetector;
    }
}