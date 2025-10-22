package com.sonyericsson.cameracommon.interaction;

import android.graphics.PointF;

/* loaded from: classes.dex */
public class TouchScaleAndRotateDetector {
    private static final int ROTATE_DETECTION_THRESHOLD_DEGREE = 1;
    public static final String TAG = "TouchScaleAndRotateDetector";
    private ScaleAndRotateDetectorListener mListener;
    private PointF mPreviousAxisVec;
    private PointF mPreviousTouchPos0;
    private PointF mPreviousTouchPos1;
    private PointF mCurrentTouchPos0 = new PointF(0.0f, 0.0f);
    private PointF mCurrentTouchPos1 = new PointF(0.0f, 0.0f);
    private PointF mTouchVec0 = new PointF(0.0f, 0.0f);
    private PointF mTouchVec1 = new PointF(0.0f, 0.0f);
    private PointF mCurrentAxisVec = new PointF(0.0f, 0.0f);
    private float mAxisRotateDeg = 0.0f;
    private float mOriginalAxisLen = 0.0f;

    public interface ScaleAndRotateDetectorListener {
        void onDoubleTouchRotateDetected(float f, float f2);

        void onDoubleTouchScaleDetected(float f, float f2, float f3);
    }

    void release() {
        this.mListener = null;
    }

    public void setScaleAndRotateDetectorListener(ScaleAndRotateDetectorListener listener) {
        this.mListener = listener;
    }

    public void startScaleAndRotateDetection(PointF point0, PointF point1) {
        this.mPreviousTouchPos0 = new PointF(point0.x, point0.y);
        this.mPreviousTouchPos1 = new PointF(point1.x, point1.y);
        this.mPreviousAxisVec = new PointF(point1.x - point0.x, point1.y - point0.y);
        this.mOriginalAxisLen = this.mPreviousAxisVec.length();
    }

    public void updateCurrentPosition(PointF point0, PointF point1) {
        float direction;
        this.mCurrentTouchPos0.set(point0);
        this.mCurrentTouchPos1.set(point1);
        this.mTouchVec0.set(this.mCurrentTouchPos0.x - this.mPreviousTouchPos0.x, this.mCurrentTouchPos0.y - this.mPreviousTouchPos0.y);
        this.mTouchVec1.set(this.mCurrentTouchPos1.x - this.mPreviousTouchPos1.x, this.mCurrentTouchPos1.y - this.mPreviousTouchPos1.y);
        this.mCurrentAxisVec.set(this.mCurrentTouchPos1.x - this.mCurrentTouchPos0.x, this.mCurrentTouchPos1.y - this.mCurrentTouchPos0.y);
        if (VectorCalculator.isSquare(this.mCurrentAxisVec, this.mTouchVec0) && VectorCalculator.isSquare(this.mCurrentAxisVec, this.mTouchVec1)) {
            float difRad = VectorCalculator.getRadianFrom2Vector(this.mPreviousAxisVec, this.mCurrentAxisVec);
            float outerProduct = (this.mPreviousAxisVec.x * this.mCurrentAxisVec.y) - (this.mCurrentAxisVec.x * this.mPreviousAxisVec.y);
            if (0.0f <= outerProduct) {
                direction = 1.0f;
            } else {
                direction = -1.0f;
            }
            float difDeg = (float) ((((360.0f * difRad) / 2.0f) / 3.141592653589793d) * direction);
            float previousDeg = this.mAxisRotateDeg;
            this.mAxisRotateDeg += difDeg;
            if (1.0f <= Math.abs(this.mAxisRotateDeg - previousDeg)) {
                this.mListener.onDoubleTouchRotateDetected(this.mAxisRotateDeg, this.mAxisRotateDeg - previousDeg);
            }
        }
        if (VectorCalculator.isParallel(this.mCurrentAxisVec, this.mTouchVec0) && VectorCalculator.isParallel(this.mCurrentAxisVec, this.mTouchVec1)) {
            float currentLen = this.mCurrentAxisVec.length();
            float previousLen = this.mPreviousAxisVec.length();
            this.mListener.onDoubleTouchScaleDetected(currentLen, previousLen, this.mOriginalAxisLen);
        }
        this.mPreviousAxisVec.set(this.mCurrentAxisVec);
        this.mPreviousTouchPos0.set(this.mCurrentTouchPos0);
        this.mPreviousTouchPos1.set(this.mCurrentTouchPos1);
    }

    public void stopScaleAndRotateDetection() {
        this.mCurrentTouchPos0.set(0.0f, 0.0f);
        this.mCurrentTouchPos1.set(0.0f, 0.0f);
        this.mPreviousTouchPos0 = null;
        this.mPreviousTouchPos1 = null;
        this.mTouchVec0.set(0.0f, 0.0f);
        this.mTouchVec1.set(0.0f, 0.0f);
        this.mPreviousAxisVec = null;
        this.mCurrentAxisVec.set(0.0f, 0.0f);
        this.mAxisRotateDeg = 0.0f;
        this.mOriginalAxisLen = 0.0f;
    }
}