package com.sonyericsson.cameracommon.device;

import com.sonyericsson.cameracommon.utility.CameraLogger;

/* loaded from: classes.dex */
public class CameraExtensionVersion {
    private static int NOT_SUPPORTED = -1;
    public static final String TAG = "CameraExtensionVersion";
    private int mMajorVersion;
    private int mMinorVersion;

    public CameraExtensionVersion(String version) {
        this.mMajorVersion = NOT_SUPPORTED;
        this.mMinorVersion = NOT_SUPPORTED;
        try {
            String[] versionSplit = version.split("\\.", 0);
            if (versionSplit.length >= 2) {
                this.mMajorVersion = Integer.parseInt(versionSplit[0]);
                this.mMinorVersion = Integer.parseInt(versionSplit[1]);
            } else if (versionSplit.length == 1) {
                this.mMajorVersion = Integer.parseInt(versionSplit[0]);
                this.mMinorVersion = 0;
            }
        } catch (NumberFormatException ex) {
            CameraLogger.e(TAG, "version NumberFormatException:" + version, ex);
        }
    }

    public boolean isSupported() {
        return (this.mMajorVersion == NOT_SUPPORTED || this.mMinorVersion == NOT_SUPPORTED) ? false : true;
    }

    public boolean isLaterThanOrEqualTo(int targetMajor, int targetMinor) {
        if (!isSupported()) {
            return false;
        }
        if (this.mMajorVersion > targetMajor) {
            return true;
        }
        if (this.mMajorVersion == targetMajor && this.mMinorVersion >= targetMinor) {
            return true;
        }
        return false;
    }
}