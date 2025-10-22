package com.sonymobile.cameracommon.media.utility;

import android.os.Handler;
import android.os.SystemClock;

/* loaded from: classes.dex */
public class ReferenceClock {
    public static final String TAG = "ReferenceClock";
    private long mElapsedTimeOffsetMillis;
    private long mInitialUptimeMillis;
    private boolean mIsMeasuring;
    private final TickCallback mTickCallback;
    private final TickEvent mTickEvent;
    private final Handler mTickHandler;
    private final long mTickInterval;

    public interface TickCallback {
        void onTick(long j);
    }

    public ReferenceClock() {
        this.mTickEvent = new TickEvent();
        this.mElapsedTimeOffsetMillis = 0L;
        this.mInitialUptimeMillis = 0L;
        this.mTickHandler = null;
        this.mTickCallback = null;
        this.mTickInterval = 0L;
        this.mIsMeasuring = false;
    }

    public ReferenceClock(Handler tickHandler, TickCallback tickEvent, long tickIntervalMillis) {
        this.mTickEvent = new TickEvent();
        this.mElapsedTimeOffsetMillis = 0L;
        this.mInitialUptimeMillis = 0L;
        this.mTickHandler = tickHandler;
        this.mTickCallback = tickEvent;
        this.mTickInterval = tickIntervalMillis;
        this.mIsMeasuring = false;
        if (this.mTickInterval <= 0) {
            throw new IllegalArgumentException("tickIntervalMillis must be lager that 0.");
        }
    }

    public void start() {
        long now = now();
        synchronized (this) {
            this.mElapsedTimeOffsetMillis = 0L;
            this.mInitialUptimeMillis = now;
            this.mIsMeasuring = true;
            scheduleNextTickEvent(now);
        }
    }

    public void stop() {
        long now = now();
        synchronized (this) {
            if (this.mIsMeasuring) {
                this.mElapsedTimeOffsetMillis += computeElapsedTimeSinceInitialTime(now);
                this.mInitialUptimeMillis = 0L;
                this.mIsMeasuring = false;
                cancelTickEvent();
            }
        }
    }

    public void resume() {
        long now = now();
        synchronized (this) {
            if (!this.mIsMeasuring) {
                this.mInitialUptimeMillis = now;
                this.mIsMeasuring = true;
                scheduleNextTickEvent(now);
            }
        }
    }

    public void reset(long elapsedTimeMillis) {
        long now = now();
        synchronized (this) {
            this.mElapsedTimeOffsetMillis = elapsedTimeMillis;
            this.mInitialUptimeMillis = now;
        }
    }

    public long elapsedTimeMillis() {
        long jComputeElapsedTime;
        long now = now();
        synchronized (this) {
            jComputeElapsedTime = computeElapsedTime(now);
        }
        return jComputeElapsedTime;
    }

    public boolean isMeasuring() {
        boolean z;
        synchronized (this) {
            z = this.mIsMeasuring;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long now() {
        return SystemClock.uptimeMillis();
    }

    private long computeElapsedTime(long now) {
        long jComputeElapsedTimeSinceInitialTime;
        synchronized (this) {
            jComputeElapsedTimeSinceInitialTime = this.mElapsedTimeOffsetMillis + computeElapsedTimeSinceInitialTime(now);
        }
        return jComputeElapsedTimeSinceInitialTime;
    }

    private long computeElapsedTimeSinceInitialTime(long now) {
        long j;
        synchronized (this) {
            j = this.mIsMeasuring ? now - this.mInitialUptimeMillis : 0L;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleNextTickEvent(long now) {
        if (this.mTickHandler != null) {
            synchronized (this) {
                if (this.mIsMeasuring) {
                    long tickCount = computeElapsedTime(now) / this.mTickInterval;
                    this.mTickEvent.requestElapsedTime = (1 + tickCount) * this.mTickInterval;
                    long targetElapsedTimeSinceResume = this.mTickEvent.requestElapsedTime - this.mElapsedTimeOffsetMillis;
                    this.mTickHandler.postAtTime(this.mTickEvent, this.mInitialUptimeMillis + targetElapsedTimeSinceResume);
                }
            }
        }
    }

    private void cancelTickEvent() {
        if (this.mTickHandler != null) {
            this.mTickHandler.removeCallbacks(this.mTickEvent);
        }
    }

    private class TickEvent implements Runnable {
        public long requestElapsedTime;

        private TickEvent() {
            this.requestElapsedTime = 0L;
        }

        @Override // java.lang.Runnable
        public void run() {
            ReferenceClock.this.mTickCallback.onTick(this.requestElapsedTime);
            ReferenceClock.this.scheduleNextTickEvent(ReferenceClock.this.now());
        }
    }

    private class NotifyTickEvent implements Runnable {
        public final long requestElapsedTime;

        public NotifyTickEvent(long requestElapsedTime) {
            this.requestElapsedTime = requestElapsedTime;
        }

        @Override // java.lang.Runnable
        public void run() {
            ReferenceClock.this.mTickCallback.onTick(this.requestElapsedTime);
        }
    }
}