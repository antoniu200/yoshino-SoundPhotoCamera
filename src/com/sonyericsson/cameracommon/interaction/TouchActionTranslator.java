package com.sonyericsson.cameracommon.interaction;

import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.sonyericsson.cameracommon.interaction.TouchMoveAndStopDetector;
import com.sonyericsson.cameracommon.interaction.TouchScaleAndRotateDetector;

/* loaded from: classes.dex */
public class TouchActionTranslator implements TouchMoveAndStopDetector.TouchStopDetectorListener, TouchScaleAndRotateDetector.ScaleAndRotateDetectorListener, GestureDetector.OnGestureListener {
    private static final TouchActionListener NULL_LISTENER = new NullInteractionListener();
    public static final String TAG = "TouchActionTranslator";
    private GestureDetector mAndroidGestureDetector;
    private TouchActionListener mClientListener;
    private Context mContext;
    private InteractionState mCurrentInteractionState;
    private TouchScaleAndRotateDetector mDoubleTouchScaleAndRotateDetector;
    private boolean mIsAllTouchEventInTargetArea;
    private final int mMargin;
    private TouchMoveAndStopDetector mSingleTouchMoveAndStopDetector;
    private View mTargetView;
    private final int mTouchSlop;

    private interface InteractionState {
        void handleMotionEvent(MotionEvent motionEvent);

        void handleSingleTouchMoveEvent(Point point, Point point2, Point point3);

        void handleSingleTouchStopEvent(Point point, Point point2, Point point3);

        void handleTouchRotateEvent(float f, float f2);

        void handleTouchScaleEvent(float f, float f2, float f3);
    }

    public interface TouchActionListener {
        void onDoubleCanceled();

        void onDoubleMoved(Point point, Point point2);

        void onDoubleRotated(float f, float f2);

        void onDoubleScaled(float f, float f2, float f3);

        void onDoubleTouched(Point point, Point point2);

        void onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2);

        void onLongPress(MotionEvent motionEvent);

        void onOverTripleCanceled();

        void onShowPress(MotionEvent motionEvent);

        void onSingleCanceled();

        void onSingleMoved(Point point, Point point2, Point point3);

        void onSingleReleased(Point point);

        void onSingleReleasedInDouble(Point point, Point point2);

        void onSingleStopped(Point point, Point point2, Point point3);

        void onSingleTapUp(MotionEvent motionEvent);

        void onSingleTouched(Point point);
    }

    public void setInteractionListener(TouchActionListener listener) {
        if (listener != null) {
            this.mClientListener = listener;
        } else {
            this.mClientListener = NULL_LISTENER;
        }
    }

    private static final class NullInteractionListener implements TouchActionListener {
        private NullInteractionListener() {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
        public void onSingleTouched(Point point) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
        public void onSingleMoved(Point currentPoint, Point lastPoint, Point downPoint) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
        public void onSingleStopped(Point currentPoint, Point lastPoint, Point downPoint) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
        public void onSingleReleased(Point point) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
        public void onSingleCanceled() {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
        public void onDoubleTouched(Point point0, Point point1) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
        public void onDoubleMoved(Point point0, Point point1) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
        public void onDoubleScaled(float currentLength, float previousLength, float originalLength) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
        public void onDoubleRotated(float degreeVsOrigin, float degreeVsLast) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
        public void onSingleReleasedInDouble(Point releasedPoint, Point remainedPoint) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
        public void onDoubleCanceled() {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
        public void onOverTripleCanceled() {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
        public void onFling(MotionEvent event1, MotionEvent event2, float velocX, float velocY) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
        public void onLongPress(MotionEvent event) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
        public void onShowPress(MotionEvent event) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.TouchActionListener
        public void onSingleTapUp(MotionEvent event) {
        }
    }

    public TouchActionTranslator(Context context, View targetView) {
        this(context, targetView, 0);
    }

    public TouchActionTranslator(Context context, View targetView, int margin) {
        this(context, targetView, margin, ViewConfiguration.get(context).getScaledTouchSlop());
    }

    public TouchActionTranslator(Context context, View targetView, int margin, int touchSlop) {
        this.mIsAllTouchEventInTargetArea = true;
        this.mClientListener = NULL_LISTENER;
        this.mCurrentInteractionState = new Idle();
        this.mContext = context;
        this.mTargetView = targetView;
        this.mMargin = margin;
        this.mTouchSlop = touchSlop;
        setInteractionListener(null);
        this.mDoubleTouchScaleAndRotateDetector = new TouchScaleAndRotateDetector();
        this.mDoubleTouchScaleAndRotateDetector.setScaleAndRotateDetectorListener(this);
    }

    public synchronized void release() {
        this.mContext = null;
        this.mTargetView = null;
        if (this.mSingleTouchMoveAndStopDetector != null) {
            this.mSingleTouchMoveAndStopDetector.release();
            this.mSingleTouchMoveAndStopDetector = null;
        }
        this.mDoubleTouchScaleAndRotateDetector.release();
        this.mDoubleTouchScaleAndRotateDetector = null;
        this.mAndroidGestureDetector = null;
        this.mClientListener = NULL_LISTENER;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void changeTo(InteractionState next) {
        this.mCurrentInteractionState = next;
    }

    private class Idle implements InteractionState {
        private Idle() {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleMotionEvent(MotionEvent motion) {
            switch (motion.getActionMasked()) {
                case 0:
                    TouchActionTranslator.this.mClientListener.onSingleTouched(new Point((int) motion.getX(0), (int) motion.getY(0)));
                    TouchActionTranslator.this.changeTo(new SingleDown());
                    break;
            }
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleSingleTouchMoveEvent(Point currentPoint, Point lastPoint, Point downPoint) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleSingleTouchStopEvent(Point currentPoint, Point lastPoint, Point downPoint) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleTouchScaleEvent(float currentLength, float previousLength, float originalLength) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleTouchRotateEvent(float degreeVsOrigin, float degreeVsLast) {
        }
    }

    private class SingleDown implements InteractionState {
        private SingleDown() {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleMotionEvent(MotionEvent motion) {
            switch (motion.getActionMasked()) {
                case 1:
                    TouchActionTranslator.this.mClientListener.onSingleReleased(new Point((int) motion.getX(0), (int) motion.getY(0)));
                    TouchActionTranslator.this.changeTo(new Idle());
                    break;
                case 2:
                    TouchActionTranslator.this.changeTo(new SingleMove());
                    break;
                case 3:
                    TouchActionTranslator.this.mClientListener.onSingleCanceled();
                    TouchActionTranslator.this.changeTo(new Idle());
                    break;
                case 5:
                    if (motion.getPointerCount() != 1) {
                        TouchActionTranslator.this.mClientListener.onDoubleTouched(new Point((int) motion.getX(0), (int) motion.getY(0)), new Point((int) motion.getX(1), (int) motion.getY(1)));
                        TouchActionTranslator.this.changeTo(new DoubleDown());
                        break;
                    }
                    break;
            }
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleSingleTouchMoveEvent(Point currentPoint, Point lastPoint, Point downPoint) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleSingleTouchStopEvent(Point currentPoint, Point lastPoint, Point downPoint) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleTouchScaleEvent(float currentLength, float previousLength, float originalLength) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleTouchRotateEvent(float degreeVsOrigin, float degreeVsLast) {
        }
    }

    private class SingleMove implements InteractionState {
        private SingleMove() {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleMotionEvent(MotionEvent motion) {
            switch (motion.getActionMasked()) {
                case 1:
                    TouchActionTranslator.this.mClientListener.onSingleReleased(new Point((int) motion.getX(0), (int) motion.getY(0)));
                    TouchActionTranslator.this.changeTo(new Idle());
                    break;
                case 3:
                    TouchActionTranslator.this.mClientListener.onSingleCanceled();
                    TouchActionTranslator.this.changeTo(new Idle());
                    break;
                case 5:
                    if (motion.getPointerCount() != 1) {
                        TouchActionTranslator.this.mClientListener.onDoubleTouched(new Point((int) motion.getX(0), (int) motion.getY(0)), new Point((int) motion.getX(1), (int) motion.getY(1)));
                        TouchActionTranslator.this.changeTo(new DoubleDown());
                        break;
                    }
                    break;
            }
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleSingleTouchMoveEvent(Point currentPoint, Point lastPoint, Point downPoint) {
            TouchActionTranslator.this.mClientListener.onSingleMoved(currentPoint, lastPoint, downPoint);
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleSingleTouchStopEvent(Point currentPoint, Point lastPoint, Point downPoint) {
            TouchActionTranslator.this.mClientListener.onSingleStopped(currentPoint, lastPoint, downPoint);
            TouchActionTranslator.this.changeTo(new SingleStop());
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleTouchScaleEvent(float currentLength, float previousLength, float originalLength) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleTouchRotateEvent(float degreeVsOrigin, float degreeVsLast) {
        }
    }

    private class SingleStop implements InteractionState {
        private SingleStop() {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleMotionEvent(MotionEvent motion) {
            switch (motion.getActionMasked()) {
                case 1:
                    TouchActionTranslator.this.mClientListener.onSingleReleased(new Point((int) motion.getX(0), (int) motion.getY(0)));
                    TouchActionTranslator.this.changeTo(new Idle());
                    break;
                case 3:
                    TouchActionTranslator.this.mClientListener.onSingleCanceled();
                    TouchActionTranslator.this.changeTo(new Idle());
                    break;
                case 5:
                    if (motion.getPointerCount() != 1) {
                        TouchActionTranslator.this.mClientListener.onDoubleTouched(new Point((int) motion.getX(0), (int) motion.getY(0)), new Point((int) motion.getX(1), (int) motion.getY(1)));
                        TouchActionTranslator.this.changeTo(new DoubleDown());
                        break;
                    }
                    break;
            }
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleSingleTouchMoveEvent(Point currentPoint, Point lastPoint, Point downPoint) {
            TouchActionTranslator.this.mClientListener.onSingleMoved(currentPoint, lastPoint, downPoint);
            TouchActionTranslator.this.changeTo(new SingleMove());
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleSingleTouchStopEvent(Point currentPoint, Point lastPoint, Point downPoint) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleTouchScaleEvent(float currentLength, float previousLength, float originalLength) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleTouchRotateEvent(float degreeVsOrigin, float degreeVsLast) {
        }
    }

    private class DoubleDown implements InteractionState {
        private DoubleDown() {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleMotionEvent(MotionEvent motion) {
            int remain;
            switch (motion.getActionMasked()) {
                case 2:
                    if (motion.getPointerCount() == 2) {
                        Point index0 = new Point((int) motion.getX(0), (int) motion.getY(0));
                        Point index1 = new Point((int) motion.getX(1), (int) motion.getY(1));
                        TouchActionTranslator.this.mClientListener.onDoubleMoved(index0, index1);
                        TouchActionTranslator.this.changeTo(TouchActionTranslator.this.new DoubleMove(index0, index1));
                        break;
                    }
                    break;
                case 3:
                    TouchActionTranslator.this.mClientListener.onDoubleCanceled();
                    TouchActionTranslator.this.changeTo(new Idle());
                    break;
                case 5:
                    if (motion.getPointerCount() >= 3) {
                        TouchActionTranslator.this.changeTo(new OverTriple());
                        break;
                    }
                    break;
                case 6:
                    if (motion.getPointerCount() != 1) {
                        int release = motion.getActionIndex();
                        if (release == 0) {
                            remain = 1;
                        } else {
                            remain = 0;
                        }
                        TouchActionTranslator.this.mClientListener.onSingleReleasedInDouble(new Point((int) motion.getX(release), (int) motion.getY(release)), new Point((int) motion.getX(remain), (int) motion.getY(remain)));
                        TouchActionTranslator.this.getSingleTouchMoveAndStopDetector().updateCurrentAndLastPosition((int) motion.getX(remain), (int) motion.getY(remain));
                        TouchActionTranslator.this.changeTo(new SingleMove());
                        break;
                    }
                    break;
            }
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleSingleTouchMoveEvent(Point currentPoint, Point lastPoint, Point downPoint) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleSingleTouchStopEvent(Point currentPoint, Point lastPoint, Point downPoint) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleTouchScaleEvent(float currentLength, float previousLength, float originalLength) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleTouchRotateEvent(float degreeVsOrigin, float degreeVsLast) {
        }
    }

    private class DoubleMove implements InteractionState {
        DoubleMove(Point point0, Point point1) {
            TouchActionTranslator.this.mDoubleTouchScaleAndRotateDetector.startScaleAndRotateDetection(new PointF(point0), new PointF(point1));
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleMotionEvent(MotionEvent motion) {
            int remain;
            switch (motion.getActionMasked()) {
                case 2:
                    if (motion.getPointerCount() == 2) {
                        TouchActionTranslator.this.mDoubleTouchScaleAndRotateDetector.updateCurrentPosition(new PointF(motion.getX(0), motion.getY(0)), new PointF(motion.getX(1), motion.getY(1)));
                        TouchActionTranslator.this.mClientListener.onDoubleMoved(new Point((int) motion.getX(0), (int) motion.getY(0)), new Point((int) motion.getX(1), (int) motion.getY(1)));
                        break;
                    }
                    break;
                case 3:
                    TouchActionTranslator.this.mClientListener.onDoubleCanceled();
                    TouchActionTranslator.this.changeTo(new Idle());
                    break;
                case 5:
                    TouchActionTranslator.this.mDoubleTouchScaleAndRotateDetector.stopScaleAndRotateDetection();
                    TouchActionTranslator.this.changeTo(new OverTriple());
                    break;
                case 6:
                    TouchActionTranslator.this.mDoubleTouchScaleAndRotateDetector.stopScaleAndRotateDetection();
                    int release = motion.getActionIndex();
                    if (release == 0) {
                        remain = 1;
                    } else {
                        remain = 0;
                    }
                    TouchActionTranslator.this.mClientListener.onSingleReleasedInDouble(new Point((int) motion.getX(release), (int) motion.getY(release)), new Point((int) motion.getX(remain), (int) motion.getY(remain)));
                    TouchActionTranslator.this.getSingleTouchMoveAndStopDetector().updateCurrentAndLastPosition((int) motion.getX(remain), (int) motion.getY(remain));
                    TouchActionTranslator.this.changeTo(new SingleMove());
                    break;
            }
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleSingleTouchMoveEvent(Point currentPoint, Point lastPoint, Point downPoint) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleSingleTouchStopEvent(Point currentPoint, Point lastPoint, Point downPoint) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleTouchScaleEvent(float currentLength, float previousLength, float originalLength) {
            TouchActionTranslator.this.mClientListener.onDoubleScaled(currentLength, previousLength, originalLength);
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleTouchRotateEvent(float degreeVsOrigin, float degreeVsLast) {
            TouchActionTranslator.this.mClientListener.onDoubleRotated(degreeVsOrigin, degreeVsLast);
        }
    }

    private class OverTriple implements InteractionState {
        private OverTriple() {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleMotionEvent(MotionEvent motion) {
            switch (motion.getActionMasked()) {
                case 3:
                    TouchActionTranslator.this.mClientListener.onOverTripleCanceled();
                    TouchActionTranslator.this.changeTo(new Idle());
                    break;
                case 6:
                    if (motion.getPointerCount() == 3) {
                        TouchActionTranslator.this.changeTo(new DoubleDown());
                        break;
                    }
                    break;
            }
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleSingleTouchMoveEvent(Point currentPoint, Point lastPoint, Point downPoint) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleSingleTouchStopEvent(Point currentPoint, Point lastPoint, Point downPoint) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleTouchScaleEvent(float currentLength, float previousLength, float originalLength) {
        }

        @Override // com.sonyericsson.cameracommon.interaction.TouchActionTranslator.InteractionState
        public void handleTouchRotateEvent(float degreeVsOrigin, float degreeVsLast) {
        }
    }

    public synchronized boolean onTouchEvent(MotionEvent motion) {
        if (this.mTargetView != null) {
            int i = 0;
            while (true) {
                if (i < motion.getPointerCount()) {
                    if (hitTest(this.mTargetView, this.mMargin, (int) motion.getX(i), (int) motion.getY(i))) {
                        this.mIsAllTouchEventInTargetArea = true;
                        i++;
                    } else {
                        this.mIsAllTouchEventInTargetArea = false;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        switch (motion.getActionMasked()) {
            case 0:
                getSingleTouchMoveAndStopDetector().startTouchStopDetection((int) motion.getX(), (int) motion.getY());
                break;
            case 1:
            case 3:
                getSingleTouchMoveAndStopDetector().stopTouchStopDetection();
                break;
            case 2:
                if (1 == motion.getPointerCount()) {
                    getSingleTouchMoveAndStopDetector().updateCurrentPosition((int) motion.getX(), (int) motion.getY());
                    break;
                }
                break;
        }
        if (motion.getActionMasked() != 1 || this.mIsAllTouchEventInTargetArea) {
            this.mCurrentInteractionState.handleMotionEvent(motion);
        } else {
            cancel();
        }
        getAndroidGestureDetector().onTouchEvent(motion);
        return this.mIsAllTouchEventInTargetArea;
    }

    private boolean hitTest(View targetView, int margin, int xOnView, int yOnView) {
        Rect hitRect = new Rect(margin, margin, targetView.getWidth() - margin, targetView.getHeight() - margin);
        return hitRect.contains(xOnView, yOnView);
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchMoveAndStopDetector.TouchStopDetectorListener
    public synchronized void onSingleTouchMoveDetected(Point currentPoint, Point lastPoint, Point downPoint) {
        this.mCurrentInteractionState.handleSingleTouchMoveEvent(currentPoint, lastPoint, downPoint);
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchMoveAndStopDetector.TouchStopDetectorListener
    public synchronized void onSingleTouchStopDetected(Point currentPoint, Point lastPoint, Point downPoint) {
        this.mCurrentInteractionState.handleSingleTouchStopEvent(currentPoint, lastPoint, downPoint);
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchScaleAndRotateDetector.ScaleAndRotateDetectorListener
    public synchronized void onDoubleTouchScaleDetected(float currentLength, float previousLength, float originalLength) {
        this.mCurrentInteractionState.handleTouchScaleEvent(currentLength, previousLength, originalLength);
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchScaleAndRotateDetector.ScaleAndRotateDetectorListener
    public synchronized void onDoubleTouchRotateDetected(float degreeVsOrigin, float degreeVsLast) {
        this.mCurrentInteractionState.handleTouchRotateEvent(degreeVsOrigin, degreeVsLast);
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public synchronized boolean onDown(MotionEvent event) {
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public synchronized boolean onFling(MotionEvent event1, MotionEvent event2, float velocX, float velocY) {
        this.mClientListener.onFling(event1, event2, velocX, velocY);
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public synchronized void onLongPress(MotionEvent event) {
        this.mClientListener.onLongPress(event);
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public synchronized boolean onScroll(MotionEvent event1, MotionEvent event2, float distanceX, float distanceY) {
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public synchronized void onShowPress(MotionEvent event) {
        this.mClientListener.onShowPress(event);
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public synchronized boolean onSingleTapUp(MotionEvent event) {
        this.mClientListener.onSingleTapUp(event);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TouchMoveAndStopDetector getSingleTouchMoveAndStopDetector() {
        if (this.mSingleTouchMoveAndStopDetector == null) {
            this.mSingleTouchMoveAndStopDetector = new TouchMoveAndStopDetector(this.mTouchSlop);
            this.mSingleTouchMoveAndStopDetector.setTouchStopDetectorListener(this);
        }
        return this.mSingleTouchMoveAndStopDetector;
    }

    private GestureDetector getAndroidGestureDetector() {
        if (this.mAndroidGestureDetector == null) {
            this.mAndroidGestureDetector = new GestureDetector(this.mContext, this, new Handler(), true);
        }
        return this.mAndroidGestureDetector;
    }

    public void cancel() {
        changeTo(new Idle());
    }
}