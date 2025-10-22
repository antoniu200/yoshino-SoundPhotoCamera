package com.sonyericsson.cameracommon.utility;

import android.hardware.Camera;
import android.os.Build;

/* loaded from: classes.dex */
public class StaticConfigurationUtil {
    public static final String TAG = "StaticConfigurationUtil";
    private static Camera.CameraInfo sCameraInfo;
    private static StaticConfigurationUtil sInstance = null;
    private final boolean mIsForceSound;

    private StaticConfigurationUtil() {
        if (17 <= Build.VERSION.SDK_INT) {
            if (sCameraInfo == null) {
                sCameraInfo = new Camera.CameraInfo();
                Camera.getCameraInfo(0, sCameraInfo);
            }
            if (sCameraInfo != null) {
                this.mIsForceSound = sCameraInfo.canDisableShutterSound ? false : true;
                return;
            } else {
                this.mIsForceSound = true;
                return;
            }
        }
        this.mIsForceSound = false;
    }

    public static boolean isForceSound() {
        if (sInstance == null) {
            sInstance = new StaticConfigurationUtil();
        }
        return sInstance.mIsForceSound;
    }

    public static void setCameraInfo(Camera.CameraInfo cameraInfo) {
        sCameraInfo = cameraInfo;
    }
}