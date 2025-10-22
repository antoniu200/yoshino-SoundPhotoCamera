package com.sonyericsson.cameracommon.utility;

/* loaded from: classes.dex */
public class RotationUtil {
    public static final String TAG = "RotationUtil";

    public static float getAngle(int orientation) {
        return orientation == 1 ? -90.0f : 0.0f;
    }

    public static int getNormalizedRotation(int degrees) {
        int degrees2 = degrees % 360;
        if (45 < degrees2 && degrees2 <= 135) {
            return 90;
        }
        if (135 <= degrees2 && degrees2 <= 225) {
            return 180;
        }
        if (225 <= degrees2 && degrees2 <= 315) {
            return 270;
        }
        return 0;
    }
}