package com.sonyericsson.cameracommon.mediasaving.takenstatus;

/* loaded from: classes.dex */
public class TakenStatusVideo {
    public static final String TAG = "TakenStatusVideo";
    protected long mDuration;
    public final long maxDurationMills;
    public final long maxFileSizeBytes;

    public TakenStatusVideo(long maxDurationMills_in, long maxFileSizeBytes_in) {
        this.mDuration = 0L;
        this.maxDurationMills = maxDurationMills_in;
        this.maxFileSizeBytes = maxFileSizeBytes_in;
    }

    public TakenStatusVideo(TakenStatusVideo data) {
        this.mDuration = 0L;
        this.mDuration = data.mDuration;
        this.maxDurationMills = data.maxDurationMills;
        this.maxFileSizeBytes = data.maxFileSizeBytes;
    }

    public void log() {
    }
}