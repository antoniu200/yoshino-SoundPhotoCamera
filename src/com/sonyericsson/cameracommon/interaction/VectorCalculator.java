package com.sonyericsson.cameracommon.interaction;

import android.graphics.PointF;

/* loaded from: classes.dex */
public class VectorCalculator {
    private static final float PARALLEL_ANGLE_FORWARD_DIRECTION = 0.0f;
    private static final float PARALLEL_ANGLE_INVERSE_DIRECTION = 3.1415927f;
    private static final float PARALLEL_ANGLE_TOLERANCE = 1.0471976f;
    private static final float RIGHT_ANGLE = 1.5707964f;
    private static final float RIGHT_ANGLE_TOLERANCE = 1.0471976f;
    public static final String TAG = "VectorCalculator";

    public static float getRadianFrom2Vector(PointF vec0, PointF vec1) {
        if (0.0f >= vec0.length() || 0.0f >= vec1.length()) {
            return 0.0f;
        }
        float difCos = (((vec0.x * vec1.x) + (vec0.y * vec1.y)) / vec0.length()) / vec1.length();
        if (difCos < -1.0f) {
            difCos = -1.0f;
        } else if (1.0f < difCos) {
            difCos = 1.0f;
        }
        return (float) Math.acos(difCos);
    }

    public static boolean isSquare(PointF vec0, PointF vec1) {
        float rad = getRadianFrom2Vector(vec0, vec1);
        return 0.5235988f < rad && rad < 2.6179938f;
    }

    public static boolean isParallel(PointF vec0, PointF vec1) {
        float rad = getRadianFrom2Vector(vec0, vec1);
        return isNearlyEquals(PARALLEL_ANGLE_INVERSE_DIRECTION, rad, 1.0471976f) || isNearlyEquals(0.0f, rad, 1.0471976f);
    }

    private static boolean isNearlyEquals(float target, float actual, float tolerance) {
        return Math.abs(target - actual) < tolerance;
    }
}