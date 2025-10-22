package com.sonymobile.gagtmhelper;

/* loaded from: classes.dex */
public class GaGtmLog {
    private static volatile boolean mEnabled = false;

    private GaGtmLog() {
    }

    public static void enable(boolean enable) {
        mEnabled = enable;
    }

    public static boolean isEnabled() {
        return mEnabled;
    }
}