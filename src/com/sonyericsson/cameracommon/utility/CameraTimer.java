package com.sonyericsson.cameracommon.utility;

import android.os.Handler;
import android.os.Message;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class CameraTimer {
    public static final int MSG_CANCEL = 2;
    public static final int MSG_INTERVAL = 0;
    public static final int MSG_POST_TIMEOUT = 3;
    public static final int MSG_TIMEOUT = 1;
    public static final String TAG = "SelfTimer";
    private long mCurTime;
    private long mDelay;
    private Handler mHandler;
    private long mInterval;
    private String mOptionName;
    private Timer mTimer;

    public CameraTimer(long maxtime, long interval, Handler handler, String optionName, long delay) {
        this.mCurTime = maxtime;
        this.mHandler = handler;
        this.mInterval = interval;
        this.mOptionName = optionName;
        this.mDelay = delay;
        if (maxtime <= 0 || interval <= 0 || handler == null || this.mCurTime < this.mInterval || this.mCurTime > 2147483647L) {
            this.mTimer = null;
        } else {
            this.mTimer = new Timer(true);
        }
    }

    public synchronized void start() {
        if (this.mTimer != null) {
            this.mTimer.schedule(new SelfTimerTimerTask(), this.mDelay, this.mInterval);
        }
    }

    public synchronized void cancel() {
        if (this.mTimer != null) {
            terminateInnerTimer();
            Message msg = Message.obtain();
            msg.arg1 = (int) this.mCurTime;
            msg.what = 2;
            this.mHandler.sendMessage(msg);
        }
        this.mHandler.removeMessages(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void terminateInnerTimer() {
        if (this.mTimer != null) {
            this.mTimer.cancel();
            this.mTimer.purge();
            this.mTimer = null;
        }
    }

    private class SelfTimerTimerTask extends TimerTask {
        private SelfTimerTimerTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (CameraTimer.this.mCurTime > 0) {
                Message msg = Message.obtain();
                msg.arg1 = (int) CameraTimer.this.mCurTime;
                msg.what = 0;
                CameraTimer.this.mHandler.sendMessage(msg);
            } else {
                Message msg2 = Message.obtain();
                msg2.arg1 = (int) CameraTimer.this.mCurTime;
                msg2.what = 1;
                CameraTimer.this.mHandler.sendMessage(msg2);
                CameraTimer.this.terminateInnerTimer();
            }
            CameraTimer.this.mCurTime -= CameraTimer.this.mInterval;
        }
    }
}