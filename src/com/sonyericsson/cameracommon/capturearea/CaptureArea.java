package com.sonyericsson.cameracommon.capturearea;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.interaction.TouchMoveAndStopDetector;

/* loaded from: classes.dex */
@SuppressLint("AppCompatCustomView")
public class CaptureArea extends ImageView implements TouchMoveAndStopDetector.TouchStopDetectorListener {
    public static final String TAG = "ImageView";
    private int mBgLandscape;
    private int mBgLandscapePressed;
    private int mBgPortrait;
    private int mBgPortraitPressed;
    private int mCurrentOrientation;
    private boolean mIsTouched;
    private CaptureAreaStateListener mListener;
    private CaptureAreaTouchEventListener mTouchListener;
    TouchMoveAndStopDetector mTouchMoveAndStopDetector;

    public interface CaptureAreaStateListener {
        void onCaptureAreaCanceled();

        void onCaptureAreaMoved(Point point);

        void onCaptureAreaReleased(Point point);

        void onCaptureAreaStopped();

        void onCaptureAreaTouched(Point point);
    }

    public CaptureArea(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mCurrentOrientation = 2;
        this.mIsTouched = false;
        this.mTouchListener = new CaptureAreaTouchEventListener();
        this.mBgLandscape = 0;
        this.mBgLandscapePressed = 0;
        this.mBgPortrait = 0;
        this.mBgPortraitPressed = 0;
        this.mTouchMoveAndStopDetector = new TouchMoveAndStopDetector(ViewConfiguration.get(getContext()).getScaledTouchSlop());
        this.mTouchMoveAndStopDetector.setTouchStopDetectorListener(this);
        setOnTouchListener(this.mTouchListener);
    }

    public void release() {
        setOnTouchListener(null);
    }

    public void setLandscapeBackgroundResource(int normal, int pressed) {
        this.mBgLandscape = normal;
        this.mBgLandscapePressed = pressed;
    }

    public void setPortraitBackgroundResource(int normal, int pressed) {
        this.mBgPortrait = normal;
        this.mBgPortraitPressed = pressed;
    }

    public boolean isTouched() {
        return this.mIsTouched;
    }

    public void setSensorOrientation(int orientation) {
        this.mCurrentOrientation = orientation;
        updateView();
    }

    class CaptureAreaTouchEventListener implements View.OnTouchListener {
        CaptureAreaTouchEventListener() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x008a  */
        @Override // android.view.View.OnTouchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean onTouch(android.view.View r5, android.view.MotionEvent r6) {
            /*
                r4 = this;
                r2 = 0
                r3 = 1
                int r0 = r6.getAction()
                switch(r0) {
                    case 0: goto Lf;
                    case 1: goto L57;
                    case 2: goto L3d;
                    case 3: goto L5c;
                    default: goto L9;
                }
            L9:
                com.sonyericsson.cameracommon.capturearea.CaptureArea r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                com.sonyericsson.cameracommon.capturearea.CaptureArea.access$400(r0)
            Le:
                return r3
            Lf:
                com.sonyericsson.cameracommon.capturearea.CaptureArea r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                com.sonyericsson.cameracommon.capturearea.CaptureArea.access$002(r0, r3)
                com.sonyericsson.cameracommon.capturearea.CaptureArea r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                com.sonyericsson.cameracommon.interaction.TouchMoveAndStopDetector r0 = r0.mTouchMoveAndStopDetector
                float r1 = r6.getRawX()
                int r1 = (int) r1
                float r2 = r6.getRawY()
                int r2 = (int) r2
                r0.startTouchStopDetection(r1, r2)
                com.sonyericsson.cameracommon.capturearea.CaptureArea r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                com.sonyericsson.cameracommon.capturearea.CaptureArea$CaptureAreaStateListener r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.access$100(r0)
                if (r0 == 0) goto L9
                com.sonyericsson.cameracommon.capturearea.CaptureArea r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                com.sonyericsson.cameracommon.capturearea.CaptureArea$CaptureAreaStateListener r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.access$100(r0)
                com.sonyericsson.cameracommon.capturearea.CaptureArea r1 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                android.graphics.Point r1 = com.sonyericsson.cameracommon.capturearea.CaptureArea.access$200(r1, r6)
                r0.onCaptureAreaTouched(r1)
                goto L9
            L3d:
                com.sonyericsson.cameracommon.capturearea.CaptureArea r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                boolean r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.access$000(r0)
                if (r0 == 0) goto Le
                com.sonyericsson.cameracommon.capturearea.CaptureArea r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                com.sonyericsson.cameracommon.interaction.TouchMoveAndStopDetector r0 = r0.mTouchMoveAndStopDetector
                float r1 = r6.getRawX()
                int r1 = (int) r1
                float r2 = r6.getRawY()
                int r2 = (int) r2
                r0.updateCurrentPosition(r1, r2)
                goto L9
            L57:
                com.sonyericsson.cameracommon.capturearea.CaptureArea r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                com.sonyericsson.cameracommon.capturearea.CaptureArea.access$002(r0, r2)
            L5c:
                com.sonyericsson.cameracommon.capturearea.CaptureArea r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                com.sonyericsson.cameracommon.capturearea.CaptureArea r1 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                boolean r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.access$300(r0, r1, r6)
                if (r0 == 0) goto L8a
                com.sonyericsson.cameracommon.capturearea.CaptureArea r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                com.sonyericsson.cameracommon.capturearea.CaptureArea$CaptureAreaStateListener r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.access$100(r0)
                if (r0 == 0) goto L7d
                com.sonyericsson.cameracommon.capturearea.CaptureArea r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                com.sonyericsson.cameracommon.capturearea.CaptureArea$CaptureAreaStateListener r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.access$100(r0)
                com.sonyericsson.cameracommon.capturearea.CaptureArea r1 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                android.graphics.Point r1 = com.sonyericsson.cameracommon.capturearea.CaptureArea.access$200(r1, r6)
                r0.onCaptureAreaReleased(r1)
            L7d:
                com.sonyericsson.cameracommon.capturearea.CaptureArea r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                com.sonyericsson.cameracommon.interaction.TouchMoveAndStopDetector r0 = r0.mTouchMoveAndStopDetector
                r0.stopTouchStopDetection()
                com.sonyericsson.cameracommon.capturearea.CaptureArea r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                com.sonyericsson.cameracommon.capturearea.CaptureArea.access$002(r0, r2)
                goto L9
            L8a:
                com.sonyericsson.cameracommon.capturearea.CaptureArea r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                com.sonyericsson.cameracommon.capturearea.CaptureArea$CaptureAreaStateListener r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.access$100(r0)
                if (r0 == 0) goto L7d
                com.sonyericsson.cameracommon.capturearea.CaptureArea r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.this
                com.sonyericsson.cameracommon.capturearea.CaptureArea$CaptureAreaStateListener r0 = com.sonyericsson.cameracommon.capturearea.CaptureArea.access$100(r0)
                r0.onCaptureAreaCanceled()
                goto L7d
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sonyericsson.cameracommon.capturearea.CaptureArea.CaptureAreaTouchEventListener.onTouch(android.view.View, android.view.MotionEvent):boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Point getTouchPoint(MotionEvent motion) {
        return new Point((int) motion.getRawX(), (int) motion.getRawY());
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchMoveAndStopDetector.TouchStopDetectorListener
    public void onSingleTouchMoveDetected(Point currentPoint, Point lastPoint, Point downPoint) {
        if (hitTest(this, currentPoint.x, currentPoint.y)) {
            if (this.mListener != null) {
                this.mListener.onCaptureAreaMoved(currentPoint);
            }
        } else {
            if (this.mListener != null) {
                this.mListener.onCaptureAreaCanceled();
            }
            this.mIsTouched = false;
            this.mTouchMoveAndStopDetector.stopTouchStopDetection();
        }
    }

    @Override // com.sonyericsson.cameracommon.interaction.TouchMoveAndStopDetector.TouchStopDetectorListener
    public void onSingleTouchStopDetected(Point currentPoint, Point lastPoint, Point downPoint) {
        if (this.mListener != null) {
            this.mListener.onCaptureAreaStopped();
        }
    }

    private boolean hitTest(View targetView, int rawX, int rawY) {
        int[] locationOfView = new int[2];
        targetView.getLocationOnScreen(locationOfView);
        Rect rect = new Rect(locationOfView[0], locationOfView[1], locationOfView[0] + targetView.getWidth(), locationOfView[1] + targetView.getHeight());
        return rect.contains(rawX, rawY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hitTest(View targetView, MotionEvent motion) {
        return hitTest(targetView, (int) motion.getRawX(), (int) motion.getRawY());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateView() {
        if (this.mBgLandscape != 0 || this.mBgLandscapePressed != 0 || this.mBgPortrait != 0 || this.mBgPortraitPressed != 0) {
            switch (this.mCurrentOrientation) {
                case 1:
                    if (this.mIsTouched) {
                        setImageResource(this.mBgPortraitPressed);
                        break;
                    } else {
                        setImageResource(this.mBgPortrait);
                        break;
                    }
                case 2:
                    if (this.mIsTouched) {
                        setImageResource(this.mBgLandscapePressed);
                        break;
                    } else {
                        setImageResource(this.mBgLandscape);
                        break;
                    }
            }
            requestLayout();
            invalidate();
        }
    }

    public void setCaptureAreaStateListener(CaptureAreaStateListener listener) {
        this.mListener = listener;
    }
}