package com.sonyericsson.cameracommon.device;

import android.hardware.Camera;
import java.util.List;

/* loaded from: classes.dex */
public class CameraParameterUtil {
    public static final String TAG = "CameraParameterUtil";

    public static int getPreviewMasFps(Camera.Parameters params) {
        List<int[]> supported;
        int maxFps = 0;
        if (params != null && (supported = params.getSupportedPreviewFpsRange()) != null) {
            for (int[] eachRange : supported) {
                int eachMax = eachRange[1] / 1000;
                if (maxFps < eachMax) {
                    maxFps = eachMax;
                }
            }
        }
        return maxFps;
    }
}