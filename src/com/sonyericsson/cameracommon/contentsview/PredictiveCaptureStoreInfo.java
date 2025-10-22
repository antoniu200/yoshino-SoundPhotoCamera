package com.sonyericsson.cameracommon.contentsview;

/* loaded from: classes.dex */
public class PredictiveCaptureStoreInfo {
    private final int mCaptureNum;
    private final String mCaptureTime;

    public PredictiveCaptureStoreInfo(int captureNum, String captureTime) {
        this.mCaptureNum = captureNum;
        this.mCaptureTime = captureTime;
    }

    public int getCaptureNum() {
        return this.mCaptureNum;
    }

    public String getCaptureTime() {
        return this.mCaptureTime;
    }
}