package com.sonyericsson.cameracommon.selftimerfeedback;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.gms.search.SearchAuth;
import com.sonymobile.android.addoncamera.soundphoto.CameraDeviceHandler;

/* loaded from: classes.dex */
public class SelfTimerFeedback {
    private static final int SELF_TIMER_BLINK_DURATION = 100;
    public static final String TAG = "SelfTimerFeedback";
    private final int mDuration;
    private final LedLight mLedLight;
    private static final int[] SELF_TIMER_LEVELS = {2000, 4000, SearchAuth.StatusCodes.AUTH_DISABLED};
    private static final int SELF_TIMER_LIGHT_MIN_INTERVAL = 250;
    private static final int[] SELF_TIMER_INTERVALS = {SELF_TIMER_LIGHT_MIN_INTERVAL, CameraDeviceHandler.INTERVAL_OPEN_CAMERA_MILLIS, 1000};
    private final PeriodicEvent.TickEvent mOnTickEvent = new PeriodicEvent.TickEvent() { // from class: com.sonyericsson.cameracommon.selftimerfeedback.SelfTimerFeedback.1
        @Override // com.sonyericsson.cameracommon.selftimerfeedback.SelfTimerFeedback.PeriodicEvent.TickEvent
        public void onTick(long elapsedTime) {
            long remainTime = SelfTimerFeedback.this.mDuration - elapsedTime;
            int timerLevel = 0;
            while (timerLevel < SelfTimerFeedback.SELF_TIMER_LEVELS.length && remainTime > SelfTimerFeedback.SELF_TIMER_LEVELS[timerLevel]) {
                timerLevel++;
            }
            if (timerLevel >= SelfTimerFeedback.SELF_TIMER_LEVELS.length) {
                timerLevel = SelfTimerFeedback.SELF_TIMER_LEVELS.length - 1;
            }
            if (timerLevel == 0) {
                if (remainTime > SelfTimerFeedback.SELF_TIMER_INTERVALS[timerLevel]) {
                    SelfTimerFeedback.this.blink();
                }
            } else if ((remainTime - SelfTimerFeedback.SELF_TIMER_LEVELS[timerLevel - 1]) % SelfTimerFeedback.SELF_TIMER_INTERVALS[timerLevel] == 0) {
                SelfTimerFeedback.this.blink();
            }
        }
    };
    private final Runnable mLedOffTask = new Runnable() { // from class: com.sonyericsson.cameracommon.selftimerfeedback.SelfTimerFeedback.2
        @Override // java.lang.Runnable
        public void run() {
            SelfTimerFeedback.this.mLedLight.turnOff();
        }
    };
    private final Handler mHandler = new Handler();
    private final PeriodicEvent mPeriodicEvent = new PeriodicEvent(this.mHandler, this.mOnTickEvent, 250);

    public SelfTimerFeedback(int duration, LedLight ledLight) {
        this.mDuration = duration;
        this.mLedLight = ledLight;
    }

    public void start(int delay) {
        this.mPeriodicEvent.start(delay);
    }

    public void stop() {
        this.mPeriodicEvent.stop();
        this.mHandler.removeCallbacks(this.mLedOffTask);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void blink() {
        this.mLedLight.turnOn();
        this.mHandler.postDelayed(this.mLedOffTask, 100L);
    }

    private static class PeriodicEvent {
        private final TickEvent mCallback;
        private long mCounter;
        private final Handler mHandler;
        private final long mInterval;
        private long mStartTime;
        private final Runnable mTickEvent = new Runnable() { // from class: com.sonyericsson.cameracommon.selftimerfeedback.SelfTimerFeedback.PeriodicEvent.1
            @Override // java.lang.Runnable
            public void run() {
                PeriodicEvent.this.mCallback.onTick(PeriodicEvent.this.mCounter * PeriodicEvent.this.mInterval);
                PeriodicEvent.access$504(PeriodicEvent.this);
                PeriodicEvent.this.scheduleNextTick();
            }
        };

        public interface TickEvent {
            void onTick(long j);
        }

        static /* synthetic */ long access$504(PeriodicEvent x0) {
            long j = x0.mCounter + 1;
            x0.mCounter = j;
            return j;
        }

        public PeriodicEvent(Handler handler, TickEvent callback, long interval) {
            this.mHandler = handler;
            this.mCallback = callback;
            this.mInterval = interval;
        }

        public void start(long delay) {
            this.mStartTime = SystemClock.uptimeMillis() + delay;
            this.mCounter = 0L;
            scheduleNextTick();
        }

        public void stop() {
            this.mHandler.removeCallbacks(this.mTickEvent);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void scheduleNextTick() {
            this.mHandler.postAtTime(this.mTickEvent, this.mStartTime + (this.mCounter * this.mInterval));
        }
    }
}