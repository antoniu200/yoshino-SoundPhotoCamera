package com.sonyericsson.cameracommon.utility;

import android.os.Build;
import android.os.Debug;
import java.util.Locale;

/* loaded from: classes.dex */
public final class CameraLogger {
    private static final String COLON = ":";
    public static final boolean DEBUG = false;
    public static final boolean DEBUG_LOG_WITH_TIME = false;
    public static final String DEBUG_PERFORM_FILE = "camera_perform.csv";
    public static final boolean DEBUG_PERFORM_MEM = false;
    public static final String DEBUG_PERFORM_TIME_TAG = "[PERFORMANCE]";
    private static final String DOT_SPACE = ". ";
    private static final int LOCAL_LOG_LEVEL = 2;
    private static final int STACK_INDEX = 5;
    public static final String TAG = "CameraLogger";
    public static final boolean isEngBuild;
    public static final boolean isLayoutDebug = false;
    public static final boolean isStorageDebug = false;
    public static final boolean isTimeDebug = false;
    public static final boolean isUserdebugOrEngBuild;
    private static String sTag = "SemcCameraApp";

    static {
        isEngBuild = Build.TYPE.equals("eng");
        isUserdebugOrEngBuild = Build.TYPE.equals("userdebug") ? true : isEngBuild;
    }

    public static void setAppName(String name) {
        sTag = name;
    }

    private CameraLogger() {
    }

    public static void i(String msg) {
        android.util.Log.i(sTag, makeLogString(msg));
    }

    public static void d(String msg) {
        android.util.Log.d(sTag, makeLogString(msg));
    }

    public static void v(String msg) {
        android.util.Log.v(sTag, makeLogString(msg));
    }

    public static void w(String msg) {
        android.util.Log.w(sTag, makeLogString(msg));
    }

    public static void e(String msg) {
        android.util.Log.e(sTag, makeLogString(msg));
    }

    public static int v(String tag, String msg) {
        return 0;
    }

    public static int v(String tag, String msg, Throwable tr) {
        return 0;
    }

    public static int d(String tag, String msg) {
        return 0;
    }

    public static int d(String tag, String msg, Throwable tr) {
        return 0;
    }

    public static int d(String tag, String msgHead, Object... msgTail) {
        return 0;
    }

    public static int dForOperators(String msg) {
        return android.util.Log.d(sTag, timeForOperators() + ":CAMERA_PERFORMANCE_TAG:" + msg);
    }

    public static int i(String tag, String msg) {
        return 0;
    }

    public static int i(String tag, String msg, Throwable tr) {
        return 0;
    }

    public static int w(String tag, String msg) {
        return 0;
    }

    public static int w(String tag, String msg, Throwable tr) {
        return 0;
    }

    public static int e(String tag, String msg) {
        return android.util.Log.e(sTag, time() + tag + COLON + msg);
    }

    public static int e(String tag, String msg, Throwable tr) {
        return android.util.Log.e(sTag, time() + tag + COLON + msg, tr);
    }

    public static int errorLogForNonUserVariant(String tag, String msg) {
        if (Build.TYPE.equals("userdebug") || Build.TYPE.equals("eng")) {
            return android.util.Log.e(sTag, time() + tag + COLON + msg);
        }
        return 0;
    }

    public static int errorLogForNonUserVariant(String tag, String msg, Throwable tr) {
        if (Build.TYPE.equals("userdebug") || Build.TYPE.equals("eng")) {
            return android.util.Log.e(sTag, time() + tag + COLON + msg, tr);
        }
        return 0;
    }

    public static void p(String tag, String msg) {
        android.util.Log.e(sTag, "[PERFORMANCE] [TIME = " + System.currentTimeMillis() + "] [" + Thread.currentThread().getName() + COLON + tag + COLON + msg + "]");
    }

    public static void dumpStackTrace() {
        StackTraceElement[] trace = Thread.currentThread().getStackTrace();
        android.util.Log.d(sTag, "## dump stack trace ...");
        for (int i = 1; i < trace.length; i++) {
            android.util.Log.d(sTag, "trace:" + trace[i].getClassName() + "#" + trace[i].getMethodName());
        }
    }

    public static String getMemoryUsage() {
        long javaHeapTotal = Runtime.getRuntime().totalMemory();
        long javaHeapFree = Runtime.getRuntime().freeMemory();
        long max = Runtime.getRuntime().maxMemory();
        long nativeHeapAllocated = Debug.getNativeHeapAllocatedSize();
        long nativeHeapFree = Debug.getNativeHeapFreeSize();
        long nativeHeap = Debug.getNativeHeapSize();
        return String.format(Locale.US, "%d, %d, %d, %d, %d, %d", Long.valueOf(javaHeapTotal), Long.valueOf(javaHeapFree), Long.valueOf(max), Long.valueOf(nativeHeapAllocated), Long.valueOf(nativeHeapFree), Long.valueOf(nativeHeap));
    }

    public static void showOrientation(String tag, String msg, int orientation) {
        switch (orientation) {
            case 1:
                d(tag, msg + " PORTRAIT");
                break;
            case 2:
                d(tag, msg + " LANDSCAPE");
                break;
            default:
                d(tag, msg + ": " + orientation);
                break;
        }
    }

    private static String time() {
        return "";
    }

    private static String timeForOperators() {
        long now = System.currentTimeMillis();
        return Long.valueOf(now).toString() + " ";
    }

    private static StackTraceElement getCurrentStackElementAt(int idx) {
        return Thread.currentThread().getStackTrace()[idx];
    }

    private static String makeLogString(String msg) {
        StackTraceElement elem = getCurrentStackElementAt(5);
        return elem.getFileName() + COLON + elem.getLineNumber() + DOT_SPACE + msg;
    }
}