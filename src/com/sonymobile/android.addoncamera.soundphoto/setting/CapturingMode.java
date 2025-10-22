package com.sonymobile.android.addoncamera.soundphoto.setting;

import com.sonyericsson.cameracommon.utility.CameraLogger;

/* loaded from: classes.dex */
public enum CapturingMode {
    MAIN(0),
    FRONT(1);

    private static final String TAG = CapturingMode.class.getSimpleName();
    public final int cameraId;

    CapturingMode(int id) {
        this.cameraId = id;
    }

    public static CapturingMode getDefaultValue() {
        return MAIN;
    }

    public static CapturingMode[] getOptions() {
        return values();
    }

    public static CapturingMode convertFrom(String name, CapturingMode defaultMode) {
        try {
            CapturingMode mode = valueOf(name);
            return mode;
        } catch (IllegalArgumentException e) {
            CameraLogger.w(TAG, "Mode[" + name + "] is not supported.");
            return defaultMode;
        }
    }

    public static CapturingMode translateIdToCapturingMode(int cameraId) {
        switch (cameraId) {
            case 0:
                CapturingMode mode = MAIN;
                return mode;
            case 1:
                CapturingMode mode2 = FRONT;
                return mode2;
            default:
                return null;
        }
    }
}