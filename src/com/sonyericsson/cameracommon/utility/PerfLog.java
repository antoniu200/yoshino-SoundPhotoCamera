package com.sonyericsson.cameracommon.utility;

import android.os.SystemClock;

/* loaded from: classes.dex */
public enum PerfLog {
    APPLICATION_ON_CREATE,
    APPLICATION_PRELOAD_THREAD,
    ACTIVITY_ON_CREATE,
    ACTIVITY_ON_RESUME,
    ACTIVITY_ON_PAUSE,
    ACTIVITY_ON_STOP,
    ACTIVITY_ON_DESTROY,
    CAMERA_OPEN,
    CAMERA_EXTENSION_OPEN,
    CAMERA_BYPASS_OPEN,
    CAMERA_START_PREVIEW,
    CAMERA_SET_PREVIEW_DISPLAY,
    SURFACE_CREATED,
    SURFACE_CHANGED,
    SURFACE_DESTROYED,
    EVF_REQUEST_RESIZE,
    BIND_SYSMON_SERVICE,
    PARAMETER_MANAGER_SETUP,
    STATE_RESUME,
    VIEWFINDER_SETUP_HEADUP_DISPLAY,
    VIEWFINDER_FIRST_DRAW,
    STORAGE_MANAGER_SETUP,
    DCF_PATH_BUILDER_SCAN,
    SWIPE_ANIMATION_START,
    SWIPE_ANIMATION_END,
    MODE_CHANGE_TASK_START,
    MODE_CHANGE_TASK_END,
    MODE_CHANGE_SHOW_SURFACE,
    START_REC,
    STOP_REC,
    CAPTURE_BUTTON_TAP,
    THUMBNAIL_SHOW,
    STORE_COMPLETE,
    BURST_STORE_COMPLETE,
    FAST_CAMERA_BUTTON_INTENT_RECEIVED,
    FAST_PRE_SCAN,
    FAST_PRE_CAPTURE,
    FAST_STORE_DONE,
    BYPASSCAMERA_PREPARE,
    BYPASSCAMERA_REQUEST_SNAPSHOT,
    BYPASSCAMERA_ON_SHUTTER_DONE,
    BYPASSCAMERA_ON_SNAPSHOT_DONE,
    BYPASSCAMERA_ON_IMAGE_AVAILABLE,
    BYPASSCAMERA_ON_STORE_COMPLETE,
    TASK_VIEW_FINDER_INITIALIZATION,
    TASK_INFLATE;

    private final String mText = name();
    private static final String TAG = "CAMPERF";
    public static final boolean IS_ENABLE = android.util.Log.isLoggable(TAG, 3);

    PerfLog() {
    }

    public void begin() {
        if (IS_ENABLE) {
            log(this.mText + "_E");
        }
    }

    public void end() {
        if (IS_ENABLE) {
            log(this.mText + "_X");
        }
    }

    public void transit() {
        if (IS_ENABLE) {
            log(this.mText);
        }
    }

    private void log(String type) {
        android.util.Log.e(TAG, '{' + SystemClock.uptimeMillis() + ',' + type + '}');
    }
}