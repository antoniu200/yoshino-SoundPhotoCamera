package com.sonyericsson.cameracommon.viewfinder.recordingindicator;

/* loaded from: classes.dex */
public class DurationParameterSet {
    public static final String TAG = "DurationParameterSet";
    public int hour = 0;
    public int min = 0;
    public int sec = 0;

    public void update(int msec) {
        int remain = msec / 1000;
        this.sec = remain % 60;
        int remain2 = (remain - this.sec) / 60;
        this.min = remain2 % 60;
        this.hour = (remain2 - this.min) / 60;
        if (this.hour > 9) {
            this.sec = 59;
            this.min = 59;
            this.hour = 9;
        }
    }
}