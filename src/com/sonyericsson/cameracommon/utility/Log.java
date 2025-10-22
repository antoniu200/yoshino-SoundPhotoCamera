package com.sonyericsson.cameracommon.utility;

import android.os.Build;
import android.os.SystemClock;

/* loaded from: classes.dex */
public class Log {
    public static final boolean IS_DEBUG = false;
    public static final boolean IS_KPI;

    static {
        IS_KPI = Build.TYPE.equals("eng") || Build.TYPE.equals("userdebug");
    }

    public static void logDebug(String tag, String event) {
        log("DEBUG", tag, event);
    }

    public static void logError(String tag, String event) {
        log("ERROR", tag, event);
    }

    private static void log(String globalTag, String localTag, String event) {
        log(globalTag, localTag, event, getCurrentTimeMillisString());
    }

    private static String getCurrentTimeMillisString() {
        StringBuilder builder = new StringBuilder().append("[TIME=").append(System.currentTimeMillis()).append("]");
        return builder.toString();
    }

    private static String getUptimeMillisString() {
        StringBuilder builder = new StringBuilder().append("[UPTIME=").append(SystemClock.uptimeMillis()).append("] ");
        return builder.toString();
    }

    private static void log(String globalTag, String localTag, String event, String timeString) {
        log(globalTag, localTag, event, timeString, null);
    }

    private static void log(String globalTag, String localTag, String event, String timeString, Throwable exception) {
        StringBuilder builder = new StringBuilder().append("[").append(globalTag).append("] ").append(timeString).append("[").append(localTag).append("]").append("[").append(Thread.currentThread().getName()).append("] ").append(": ").append(event);
        if (exception != null) {
            android.util.Log.e("TraceLog", builder.toString(), exception);
        } else {
            android.util.Log.e("TraceLog", builder.toString());
        }
    }

    public static void logKpi(String tag, String event) {
        log("CamKPI", tag, event, getUptimeMillisString());
    }

    public static void logException(String tag, String event, Throwable exception) {
        log("ERROR", tag, event, getUptimeMillisString(), exception);
    }
}