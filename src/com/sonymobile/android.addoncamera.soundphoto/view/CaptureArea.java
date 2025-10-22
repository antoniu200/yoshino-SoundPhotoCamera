package com.sonymobile.android.addoncamera.soundphoto.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.interaction.TouchActionTranslator;
import com.sonymobile.android.addoncamera.soundphoto.R;

/* loaded from: classes.dex */
@SuppressLint("AppCompatCustomView")
public class CaptureArea extends ImageView implements TouchActionTranslator.TouchActionListener {
    private static final String TAG = "CaptureArea";
    private boolean mIsLongPressed;
    private boolean mIsTouched;
    private CaptureAreaStateListener mListener;
    private CaptureAreaTouchEventListener mTouchListener;
    private TouchActionTranslator mUserInteractionEngine;

    public interface CaptureAreaStateListener {
        void onCaptureAreaCanceled();

        void onCaptureAreaIsReadyToScale();

        void onCaptureAreaLongPressed(Point point);

        void onCaptureAreaMoved(Point point);

        void onCaptureAreaReleased(Point point);

        void onCaptureAreaScaled(float f);

        void onCaptureAreaSingleTapUp(Point point);

        void onCaptureAreaStopped();

        void onCaptureAreaTouched(Point point);
    }

    public CaptureArea(Context context, AttributeSet attrs) throws Resources.NotFoundException {
        super(context, attrs);
        this.mIsTouched = false;
        this.mIsLongPressed = false;
        this.mUserInteractionEngine = null;
        this.mTouchListener = new CaptureAreaTouchEventListener();
        int toucharea_margin = context.getResources().getDimensionPixelSize(R.dimen.touch_area_margin);
        this.mUserInteractionEngine = new TouchActionTranslator(context, this, toucharea_margin);
        this.mUserInteractionEngine.setInteractionListener(this);
        setOnTouchListener(this.mTouchListener);
    }

    public void release() {
        this.mUserInteractionEngine.setInteractionListener(null);
        this.mUserInteractionEngine.release();
        this.mUserInteractionEngine = null;
        setOnTouchListener(null);
    }

    public boolean isTouched() {
        return this.mIsTouched;
    }

    class CaptureAreaTouchEventListener implements View.OnTouchListener {
        CaptureAreaTouchEventListener() {
        }

        @Override // android.view.View.OnTouchListener
        public synchronized boolean onTouch(View view, MotionEvent motion) {
            if (!CaptureArea.this.mUserInteractionEngine.onTouchEvent(motion)) {
                CaptureArea.this.mIsTouched = false;
                if (CaptureArea.this.mListener != null) {
                    CaptureArea.this.mListener.onCaptureAreaCanceled();
                }
            }
            return true;
        }
    }

    private Point convertPointCoordinatesFromThisViewToScreen(Point viewPoint) {
        int[] locationOfView = new int[2];
        getLocationOnScreen(locationOfView);
        return new Point(viewPoint.x + locationOfView[0], viewPoint.y + locationOfView[1]);
    }

    public void setCaptureAreaStateListener(CaptureAreaStateListener listener) {
        this.mListener = listener;
    }

    public static boolean isEventContainedInView(View targetView, MotionEvent motion) {
        int[] locationOfView = new int[2];
        targetView.getLocationOnScreen(locationOfView);
        Rect rect = new Rect(locationOfView[0], locationOfView[1], locationOfView[0] + targetView.getWidth(), locationOfView[1] + targetView.getHeight());
        return rect.contains((int) motion.getRawX(), (int) motion.getRawY());
    }

    public boolean contains(MotionEvent motion) {
        return isEventContainedInView(this, motion);
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
    public void onSingleTouched(Point point) {
        this.mIsTouched = true;
        if (this.mListener != null) {
            this.mListener.onCaptureAreaTouched(convertPointCoordinatesFromThisViewToScreen(point));
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
    public void onSingleMoved(Point currentPoint, Point lastPoint, Point downPoint) {
        if (this.mIsTouched && this.mListener != null) {
            if (!isTouched()) {
                this.mListener.onCaptureAreaCanceled();
            } else {
                this.mListener.onCaptureAreaMoved(convertPointCoordinatesFromThisViewToScreen(currentPoint));
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
    public void onSingleStopped(Point currentPoint, Point lastPoint, Point downPoint) {
        if (this.mIsTouched && this.mListener != null) {
            this.mListener.onCaptureAreaStopped();
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
    public void onSingleReleased(Point point) {
        if (this.mIsTouched || this.mIsLongPressed) {
            this.mIsTouched = false;
            this.mIsLongPressed = false;
            if (this.mListener != null) {
                this.mListener.onCaptureAreaReleased(convertPointCoordinatesFromThisViewToScreen(point));
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
    public void onSingleCanceled() {
        if (this.mIsTouched) {
            this.mIsTouched = false;
            if (this.mListener != null) {
                this.mListener.onCaptureAreaCanceled();
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
    public void onDoubleTouched(Point point0, Point point1) {
        if (this.mIsTouched && this.mListener != null) {
            this.mListener.onCaptureAreaCanceled();
            this.mListener.onCaptureAreaIsReadyToScale();
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
    public void onDoubleMoved(Point point0, Point point1) {
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
    public void onDoubleScaled(float currentLength, float previousLength, float originalLength) {
        if (this.mIsTouched) {
            float scaleLength = currentLength - previousLength;
            this.mListener.onCaptureAreaScaled(scaleLength);
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
    public void onDoubleRotated(float degreeVsOrigin, float degreeVsLast) {
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
    public void onSingleReleasedInDouble(Point release, Point remain) {
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
    public void onDoubleCanceled() {
        if (this.mIsTouched) {
            this.mIsTouched = false;
            if (this.mListener != null) {
                this.mListener.onCaptureAreaCanceled();
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
    public void onOverTripleCanceled() {
        if (this.mIsTouched) {
            this.mIsTouched = false;
            if (this.mListener != null) {
                this.mListener.onCaptureAreaCanceled();
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
    public void onFling(MotionEvent event1, MotionEvent event2, float velocX, float velocY) {
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
    public void onLongPress(MotionEvent event) {
        this.mIsLongPressed = true;
        if (this.mListener != null) {
            Point curPoint = new Point((int) event.getX(), (int) event.getY());
            this.mListener.onCaptureAreaLongPressed(convertPointCoordinatesFromThisViewToScreen(curPoint));
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
    public void onShowPress(MotionEvent event) {
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
    public void onSingleTapUp(MotionEvent event) {
        if (this.mListener != null) {
            Point curPoint = new Point((int) event.getX(), (int) event.getY());
            this.mListener.onCaptureAreaSingleTapUp(convertPointCoordinatesFromThisViewToScreen(curPoint));
        }
    }
}