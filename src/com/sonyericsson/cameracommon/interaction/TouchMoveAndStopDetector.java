package com.sonyericsson.cameracommon.interaction;

import android.graphics.Point;
import android.graphics.PointF;
import android.os.Handler;
import com.sonymobile.android.addoncamera.soundphoto.SoundPhotoCameraActivity;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class TouchMoveAndStopDetector {
    private static final float DIRECTION_TOLERANCE = 1.0471976f;
    public static final String TAG = "TouchMoveAndStopDetector";
    private TouchStopDetectorListener mListener;
    private final int mTouchSlop;
    private Timer mTouchStopDetectorTimer;
    private TouchStopDetectorTimerTask mTouchStopDetectorTimerTask;
    private int TOUCH_STOP_DETECTION_TIMER_INTERVAL = SoundPhotoCameraActivity.SETUP_LAZY_EXECUTION_WAIT_TIME;
    private Handler mUiThreadHandler = new Handler();
    private Point mDownPos = new Point(0, 0);
    private Point mTouchSlopAreaCenterPos = new Point(0, 0);
    private Point mCurrentTouchPos = new Point(0, 0);
    private Point mPreviousTouchPos = new Point(0, 0);
    private Point mLatestCheckedPos = new Point(0, 0);
    private Point mLatestCheckedTrackVec = new Point(0, 0);
    private boolean mIsFingerAlreadyMoved = false;

    public interface TouchStopDetectorListener {
        void onSingleTouchMoveDetected(Point point, Point point2, Point point3);

        void onSingleTouchStopDetected(Point point, Point point2, Point point3);
    }

    public TouchMoveAndStopDetector(int touchSlop) {
        this.mTouchSlop = touchSlop;
    }

    void release() {
        killTimer();
        this.mListener = null;
    }

    public void setTouchStopDetectorListener(TouchStopDetectorListener listener) {
        this.mListener = listener;
    }

    public synchronized void startTouchStopDetection(int downX, int downY) {
        this.mDownPos.set(downX, downY);
        this.mPreviousTouchPos.set(downX, downY);
        this.mTouchSlopAreaCenterPos.set(downX, downY);
        this.mIsFingerAlreadyMoved = false;
        killTimer();
        this.mTouchStopDetectorTimer = new Timer(true);
        this.mTouchStopDetectorTimerTask = new TouchStopDetectorTimerTask();
        this.mTouchStopDetectorTimer.scheduleAtFixedRate(this.mTouchStopDetectorTimerTask, this.TOUCH_STOP_DETECTION_TIMER_INTERVAL, this.TOUCH_STOP_DETECTION_TIMER_INTERVAL);
    }

    public void updateCurrentPosition(int curX, int curY) {
        this.mPreviousTouchPos.set(this.mCurrentTouchPos.x, this.mCurrentTouchPos.y);
        this.mCurrentTouchPos.set(curX, curY);
        int difX = this.mCurrentTouchPos.x - this.mTouchSlopAreaCenterPos.x;
        int difY = this.mCurrentTouchPos.y - this.mTouchSlopAreaCenterPos.y;
        if (this.mTouchSlop * this.mTouchSlop < (difX * difX) + (difY * difY)) {
            this.mIsFingerAlreadyMoved = true;
            if (this.mListener != null) {
                this.mListener.onSingleTouchMoveDetected(this.mCurrentTouchPos, this.mPreviousTouchPos, this.mDownPos);
            }
        }
    }

    public void updateCurrentAndLastPosition(int curX, int curY) {
        this.mPreviousTouchPos.set(curX, curY);
        this.mCurrentTouchPos.set(curX, curY);
    }

    public synchronized void stopTouchStopDetection() {
        killTimer();
        this.mCurrentTouchPos.set(0, 0);
        this.mPreviousTouchPos.set(0, 0);
        this.mLatestCheckedPos.set(0, 0);
        this.mLatestCheckedTrackVec.set(0, 0);
    }

    private void killTimer() {
        if (this.mTouchStopDetectorTimer != null) {
            this.mTouchStopDetectorTimer.cancel();
            this.mTouchStopDetectorTimer.purge();
            this.mTouchStopDetectorTimer = null;
        }
        if (this.mTouchStopDetectorTimerTask != null) {
            this.mTouchStopDetectorTimerTask.cancel();
            this.mTouchStopDetectorTimerTask = null;
        }
    }

    private class TouchStopDetectorTimerTask extends TimerTask {
        private TouchStopDetectorTimerTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            int difX = TouchMoveAndStopDetector.this.mCurrentTouchPos.x - TouchMoveAndStopDetector.this.mLatestCheckedPos.x;
            int difY = TouchMoveAndStopDetector.this.mCurrentTouchPos.y - TouchMoveAndStopDetector.this.mLatestCheckedPos.y;
            Point currentTrack = new Point(difX, difY);
            float difRad = VectorCalculator.getRadianFrom2Vector(new PointF(currentTrack), new PointF(TouchMoveAndStopDetector.this.mLatestCheckedTrackVec));
            TouchMoveAndStopDetector.this.updateLastCheckedParameters(TouchMoveAndStopDetector.this.mCurrentTouchPos.x, TouchMoveAndStopDetector.this.mCurrentTouchPos.y, currentTrack);
            if (TouchMoveAndStopDetector.this.mIsFingerAlreadyMoved) {
                if (difX != 0 || difY != 0) {
                    if ((difX * difX) + (difY * difY) < TouchMoveAndStopDetector.this.mTouchSlop * TouchMoveAndStopDetector.this.mTouchSlop && Math.abs(difRad) >= TouchMoveAndStopDetector.DIRECTION_TOLERANCE) {
                        TouchMoveAndStopDetector.this.onTouchStopDetected();
                        return;
                    }
                    return;
                }
                TouchMoveAndStopDetector.this.onTouchStopDetected();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLastCheckedParameters(int previousX, int previousY, Point currentTrack) {
        this.mLatestCheckedPos.set(previousX, previousY);
        this.mLatestCheckedTrackVec.set(currentTrack.x, currentTrack.y);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTouchStopDetected() {
        this.mIsFingerAlreadyMoved = false;
        this.mTouchSlopAreaCenterPos.set(this.mCurrentTouchPos.x, this.mCurrentTouchPos.y);
        this.mUiThreadHandler.post(new Runnable() { // from class: com.sonyericsson.cameracommon.interaction.TouchMoveAndStopDetector.1
            @Override // java.lang.Runnable
            public void run() {
                if (TouchMoveAndStopDetector.this.mListener != null) {
                    TouchMoveAndStopDetector.this.mListener.onSingleTouchStopDetected(TouchMoveAndStopDetector.this.mCurrentTouchPos, TouchMoveAndStopDetector.this.mPreviousTouchPos, TouchMoveAndStopDetector.this.mDownPos);
                }
            }
        });
    }
}