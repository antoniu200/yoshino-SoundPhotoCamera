package com.sonymobile.gagtmhelper;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Base64;
import android.util.Log;
import java.lang.Thread;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;

/* loaded from: classes.dex */
public class GaGtmExceptionParser {
    private static final String DEEPMODE_EVENT_STRING = "EVENT";
    private static final String DEEPMODE_EXCEPTION_STRING = "EXCEPTION";
    private static final String HASH_VERSION = "0";
    private static final String LOG_TAG = "GaGtmHelper";
    private static final int MAX_CAUSE_DEPTH = 2;
    private static final int MAX_MESSAGE_LENGTH = 120;
    private static final int MAX_REPORTED_ROWS_DEFAULT = 10;
    private static final int MAX_TRAVERSED_ROWS_DEFAULT = 20;
    private static volatile Thread.UncaughtExceptionHandler mDefaultHandler = null;
    private static volatile List<String> mEnabledPackageNames = new LinkedList();
    private static volatile int mMaxReportedRows = 10;
    private static volatile int mMaxTraversedRows = 20;
    private static volatile List<String> mDeepCrashHashList = new LinkedList();
    private static volatile DeepMode mDeepMode = DeepMode.DEEPMODE_EXCEPTION;
    private static volatile String mAppVersion = "";
    private static Context mContext = null;
    private static long mStartTime = System.nanoTime();
    private static final Object mLock = new Object();

    public enum DeepMode {
        DEEPMODE_EVENT,
        DEEPMODE_EXCEPTION
    }

    private GaGtmExceptionParser() {
    }

    public static void setEnabledPackageNames(String arrayOfPackageNames) {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "setEnabledPackageNames " + arrayOfPackageNames);
        }
        synchronized (mLock) {
            mEnabledPackageNames = new LinkedList(Arrays.asList(arrayOfPackageNames.split(",")));
            ListIterator<String> itr = mEnabledPackageNames.listIterator();
            while (itr.hasNext()) {
                String value = itr.next().replaceAll(" ", "");
                if (value.isEmpty()) {
                    itr.remove();
                } else {
                    itr.set(value);
                }
            }
            if (GaGtmLog.isEnabled()) {
                for (int i = 0; i < mEnabledPackageNames.size(); i++) {
                    Log.d(LOG_TAG, "[" + String.valueOf(i) + "] '" + mEnabledPackageNames.get(i) + "'");
                }
            }
        }
    }

    public static void setMaxReportedRows(int maxRows) {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "setMaxReportedRows:" + maxRows);
        }
        if (maxRows == 0) {
            maxRows = 10;
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "value was 0, setMaxReportedRows:10");
            }
        }
        synchronized (mLock) {
            mMaxReportedRows = maxRows;
        }
    }

    public static void setMaxTraversedRows(int maxRows) {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "setMaxTraversedRows:" + maxRows);
        }
        if (maxRows == 0) {
            maxRows = 20;
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "value was 0, setMaxReportedRows:20");
            }
        }
        synchronized (mLock) {
            mMaxTraversedRows = maxRows;
        }
    }

    public static void setDeepMode(String mode) {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "setDeepMode " + mode);
        }
        synchronized (mLock) {
            if (mode.equals(DEEPMODE_EVENT_STRING)) {
                if (GaGtmLog.isEnabled()) {
                    Log.d(LOG_TAG, "DEEPMODE_EVENT active");
                }
                mDeepMode = DeepMode.DEEPMODE_EVENT;
            } else if (mode.equals(DEEPMODE_EXCEPTION_STRING)) {
                mDeepMode = DeepMode.DEEPMODE_EXCEPTION;
                if (GaGtmLog.isEnabled()) {
                    Log.d(LOG_TAG, "DEEPMODE_EXCEPTION active");
                }
            }
        }
    }

    public static void setDeepCrashHashList(String arrayOfHashes) {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "setDeepCrashHashList " + arrayOfHashes);
        }
        synchronized (mLock) {
            mDeepCrashHashList = new LinkedList(Arrays.asList(arrayOfHashes.split(",")));
            ListIterator<String> itr = mDeepCrashHashList.listIterator();
            while (itr.hasNext()) {
                String value = itr.next().replaceAll(" ", "");
                if (value.isEmpty()) {
                    itr.remove();
                } else {
                    itr.set(value);
                }
            }
            if (GaGtmLog.isEnabled()) {
                for (int i = 0; i < mDeepCrashHashList.size(); i++) {
                    Log.d(LOG_TAG, "[" + String.valueOf(i) + "] '" + mDeepCrashHashList.get(i) + "'");
                }
            }
        }
    }

    public static void enableExceptionParsing(Context context) throws IllegalStateException {
        synchronized (mLock) {
            mContext = context;
            if (mEnabledPackageNames.size() == 0 && GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "setEnabledPackageNames is empty!");
            }
            if (mDefaultHandler == null) {
                mDefaultHandler = Thread.getDefaultUncaughtExceptionHandler();
            } else if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "enableExceptionParsing was called twice but it should normally not be done!");
            }
            try {
                mAppVersion = context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0).versionName;
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.sonymobile.gagtmhelper.GaGtmExceptionParser.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable t) {
                try {
                    GaGtmExceptionParser.generateCrash(thread, t);
                    GaGtmUtils.getInstance().serializeQueueToFile();
                    synchronized (GaGtmExceptionParser.mLock) {
                        if (GaGtmExceptionParser.mDefaultHandler != null) {
                            GaGtmExceptionParser.mDefaultHandler.uncaughtException(thread, t);
                        }
                    }
                } catch (Throwable throwable) {
                    if (GaGtmLog.isEnabled()) {
                        Log.e(GaGtmExceptionParser.LOG_TAG, "internal exception : " + throwable.getMessage());
                    }
                }
            }
        });
    }

    public static void generateCrash(Thread thread, Throwable t) {
        DeepMode mode;
        try {
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "GenerateCrash");
            }
            if (thread == null || t == null) {
                if (GaGtmLog.isEnabled()) {
                    Log.d(LOG_TAG, "Thread or throwable was null");
                    return;
                }
                return;
            }
            String hash = getStackTraceHash(thread, t);
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "exception has hash:" + hash);
            }
            generateNormalCrash(thread, t, hash);
            if (isDeepCrash(hash)) {
                if (GaGtmLog.isEnabled()) {
                    Log.d(LOG_TAG, "Generate deep crash");
                }
                DeepMode deepMode = DeepMode.DEEPMODE_EVENT;
                synchronized (mLock) {
                    mode = mDeepMode;
                }
                if (mode == DeepMode.DEEPMODE_EVENT) {
                    generateDeepCrashEventMode(t, hash);
                    return;
                } else {
                    if (mode == DeepMode.DEEPMODE_EXCEPTION) {
                        generateDeepCrashExceptionMode(t, hash);
                        return;
                    }
                    return;
                }
            }
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "no deep crash is to be generated");
            }
        } catch (Throwable throwable) {
            if (GaGtmLog.isEnabled()) {
                Log.e(LOG_TAG, "internal exception : " + throwable.getMessage());
            }
        }
    }

    private static void generateNormalCrash(Thread thread, Throwable t, String hash) {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "generateNormalCrash");
        }
        StringBuilder description = new StringBuilder();
        description.append("H:").append(hash);
        description.append(" T:").append(replaceAllNumbers(thread.getName())).append(" ").append((CharSequence) createThrowableDescription(t, 0));
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "uncaughtException: " + ((Object) description));
            Log.d(LOG_TAG, "about to push exception");
        }
        GaGtmUtils.getInstance().pushException(description.toString());
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "done pushing");
        }
    }

    private static StringBuilder createThrowableDescription(Throwable t, int depth) {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "createThrowableDescription");
        }
        StringBuilder retval = new StringBuilder();
        if (depth <= 2) {
            retval = createThrowableDescriptionShort(t);
            Throwable cause = t.getCause();
            if (cause != null) {
                retval.append(" Cause: ");
                retval.append((CharSequence) createThrowableDescription(cause, depth + 1));
            } else {
                retval.append((CharSequence) createThrowableDescriptionStackTrace(t));
            }
        } else {
            retval.append("... ").append((CharSequence) createThrowableDescriptionStackTrace(t));
        }
        return retval;
    }

    private static StringBuilder createThrowableDescriptionShort(Throwable t) {
        String className = t.getClass().getSimpleName();
        StringBuilder retval = new StringBuilder(className);
        String message = t.getMessage();
        if (message != null) {
            retval.append("(").append(message.substring(0, Math.min(message.length(), MAX_MESSAGE_LENGTH))).append(")");
        }
        return retval;
    }

    private static StringBuilder createThrowableDescriptionStackTrace(Throwable t) {
        int maxReportedRows;
        int maxStackDepth;
        StringBuilder retval = new StringBuilder();
        StackTraceElement[] stackTraceElementArray = t.getStackTrace();
        int addedRows = 0;
        int firstInterestingRow = 0;
        synchronized (mLock) {
            maxReportedRows = mMaxReportedRows;
        }
        synchronized (mLock) {
            maxStackDepth = mMaxTraversedRows;
        }
        if (stackTraceElementArray != null) {
            int stackTraceLength = stackTraceElementArray.length;
            retval.append(" S:").append(String.valueOf(stackTraceLength));
            boolean done = false;
            for (int stackTraceIndex = 0; !done && stackTraceIndex < maxStackDepth && stackTraceIndex < stackTraceLength; stackTraceIndex++) {
                StackTraceElement stackTraceElement = stackTraceElementArray[stackTraceIndex];
                if (stackTraceElement != null) {
                    String classname = stackTraceElement.getClassName();
                    if (packageNameIsEnabled(classname)) {
                        firstInterestingRow = stackTraceIndex;
                        done = true;
                        if (GaGtmLog.isEnabled()) {
                            Log.d(LOG_TAG, "firstInterestingRow=" + firstInterestingRow);
                        }
                    }
                }
            }
            boolean done2 = false;
            int stackTraceIndex2 = firstInterestingRow;
            while (!done2 && stackTraceIndex2 < maxStackDepth && addedRows < maxReportedRows && stackTraceIndex2 < stackTraceLength) {
                if (stackTraceElementArray[stackTraceIndex2] != null) {
                    retval.append((CharSequence) stackElementString(stackTraceElementArray, stackTraceIndex2));
                    addedRows++;
                    stackTraceIndex2++;
                } else {
                    done2 = true;
                }
            }
        } else {
            retval.append(" Stack trace was null");
        }
        return retval;
    }

    private static StringBuilder stackElementString(StackTraceElement[] stackTraceElementArray, int stackTraceIndex) {
        StringBuilder retval = new StringBuilder();
        StackTraceElement stackTraceElement = stackTraceElementArray[stackTraceIndex];
        String fileName = stackTraceElement.getFileName().replace(".java", "");
        retval.append(" ").append(String.format(Locale.US, "%02d", Integer.valueOf(stackTraceIndex))).append(":").append(fileName).append(":").append(stackTraceElement.getClassName()).append(".").append(stackTraceElement.getMethodName()).append(":").append(stackTraceElement.getLineNumber());
        return retval;
    }

    private static boolean packageNameIsEnabled(String packageName) {
        boolean z;
        synchronized (mLock) {
            Iterator i$ = mEnabledPackageNames.iterator();
            while (true) {
                if (!i$.hasNext()) {
                    z = false;
                    break;
                }
                String enabledPackageName = i$.next();
                if (packageName.startsWith(enabledPackageName)) {
                    z = true;
                    break;
                }
            }
        }
        return z;
    }

    private static boolean isDeepCrash(String crashHash) {
        boolean found;
        synchronized (mLock) {
            found = mDeepCrashHashList.contains(crashHash);
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "isDeepCrash for " + crashHash + " is " + String.valueOf(found));
            }
        }
        return found;
    }

    private static String getStackTraceHash(Thread thread, Throwable t) {
        String hashString = getRawStackTraceHashString(thread, t);
        int hash = hashString.hashCode();
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "hashString:" + hashString);
        }
        String retval = (HASH_VERSION + Base64.encodeToString(intToByteArray(hash), 0)).replaceAll("\n", "");
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "hashString base64:" + retval);
        }
        return retval;
    }

    private static String getRawStackTraceHashString(Thread thread, Throwable t) {
        StringBuilder retval = new StringBuilder();
        StackTraceElement[] stackTraceElementArray = t.getStackTrace();
        int stackTraceLength = 0;
        int stackTraceIndex = 0;
        boolean done = false;
        synchronized (mLock) {
            retval.append(mAppVersion);
        }
        retval.append(replaceAllNumbers(thread.getName()));
        Throwable cause = t.getCause();
        if (cause != null) {
            retval.append(cause);
        }
        if (stackTraceElementArray != null) {
            stackTraceLength = stackTraceElementArray.length;
        }
        retval.append(String.valueOf(stackTraceLength));
        while (!done && stackTraceIndex < 20 && stackTraceIndex < stackTraceLength) {
            StackTraceElement stackTraceElement = t.getStackTrace()[stackTraceIndex];
            if (stackTraceElement != null) {
                retval.append(String.valueOf(stackTraceIndex)).append(stackTraceElement.getFileName()).append(stackTraceElement.getClassName()).append(stackTraceElement.getMethodName()).append(stackTraceElement.getLineNumber());
                stackTraceIndex++;
            } else {
                done = true;
            }
        }
        if (GaGtmLog.isEnabled()) {
            Log.e(LOG_TAG, "stackTraceHashString: " + ((Object) retval));
        }
        return retval.toString();
    }

    private static byte[] intToByteArray(int integer) {
        byte[] ret = {(byte) ((integer >> 24) & 255), (byte) ((integer >> 16) & 255), (byte) ((integer >> 8) & 255), (byte) (integer & 255)};
        return ret;
    }

    private static String replaceAllNumbers(String input) {
        int length = input.length();
        String retval = input;
        for (int i = 0; i < length; i++) {
            if (Character.isDigit(retval.charAt(i))) {
                retval = retval.substring(0, i) + "$" + retval.substring(i + 1, length);
            }
            if (retval.length() == 0) {
                retval = input;
            }
        }
        return retval;
    }

    private static void generateDeepCrashEventMode(Throwable t, String hash) {
        int maxStackDepth;
        StackTraceElement[] stackTraceElementArray = t.getStackTrace();
        int stackTraceLength = 0;
        int stackTraceIndex = 0;
        boolean done = false;
        synchronized (mLock) {
            maxStackDepth = mMaxTraversedRows;
        }
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "generateDeepCrashEventmode hash:" + hash);
        }
        if (stackTraceElementArray != null) {
            stackTraceLength = stackTraceElementArray.length;
        }
        while (!done && stackTraceIndex < maxStackDepth && stackTraceIndex < stackTraceLength) {
            StackTraceElement stackTraceElement = t.getStackTrace()[stackTraceIndex];
            if (stackTraceElement != null) {
                StringBuilder stackElementDescription = stackElementString(stackTraceElementArray, stackTraceIndex);
                if (GaGtmLog.isEnabled()) {
                    Log.d(LOG_TAG, "[" + String.valueOf(stackTraceIndex) + "] " + stackElementDescription.toString());
                }
                GaGtmUtils.getInstance().pushDeepEvent("deepCrash", hash, stackElementDescription.toString(), 0L);
                stackTraceIndex++;
            } else {
                done = true;
            }
        }
    }

    private static void generateDeepCrashExceptionMode(Throwable t, String hash) {
        int maxStackDepth;
        StringBuilder description = new StringBuilder();
        int stackTraceIndex = 0;
        boolean done = false;
        StackTraceElement[] stackTraceElementArray = t.getStackTrace();
        int stackTraceLength = 0;
        synchronized (mLock) {
            maxStackDepth = mMaxTraversedRows;
        }
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "generateDeepCrashExceptionMode hash:" + hash);
        }
        if (stackTraceElementArray != null) {
            stackTraceLength = stackTraceElementArray.length;
        }
        description.append("deepCrash H:").append(hash);
        while (!done && stackTraceIndex < maxStackDepth && stackTraceIndex < stackTraceLength) {
            StackTraceElement stackTraceElement = t.getStackTrace()[stackTraceIndex];
            if (stackTraceElement != null) {
                description.append((CharSequence) stackElementString(stackTraceElementArray, stackTraceIndex));
                stackTraceIndex++;
            } else {
                done = true;
            }
        }
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "deep exception description:" + description.toString());
        }
        GaGtmUtils.getInstance().pushDeepException(description.toString());
    }
}