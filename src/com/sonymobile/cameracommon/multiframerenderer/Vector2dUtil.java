package com.sonymobile.cameracommon.multiframerenderer;

import android.graphics.PointF;

/* loaded from: classes.dex */
public class Vector2dUtil {
    public static void getCrossPoint(PointF pA0, PointF pA1, PointF pB0, PointF pB1, PointF out) {
        float t;
        PointF dA = new PointF();
        dA.x = pA1.x - pA0.x;
        dA.y = pA1.y - pA0.y;
        PointF dB = new PointF();
        dB.x = pB1.x - pB0.x;
        dB.y = pB1.y - pB0.y;
        PointF dBA = new PointF();
        dBA.x = pB0.x - pA0.x;
        dBA.y = pB0.y - pA0.y;
        float c0 = crossProduct(dB, dA);
        float c1 = crossProduct(dB, dBA);
        if (Math.abs(c0) <= 0.0f) {
            t = 0.0f;
        } else {
            t = c1 / c0;
        }
        out.x = (dA.x * t) + pA0.x;
        out.y = (dA.y * t) + pA0.y;
    }

    public static float getDistanceFromSegment(PointF segPoint0, PointF segPoint1, float x, float y) {
        PointF dS = new PointF();
        dS.x = segPoint1.x - segPoint0.x;
        dS.y = segPoint1.y - segPoint0.y;
        PointF dPS = new PointF();
        dPS.x = x - segPoint0.x;
        dPS.y = y - segPoint0.y;
        float distance = crossProduct(dS, dPS) / length(dS);
        return distance;
    }

    public static float length(PointF vec) {
        return (float) Math.sqrt((vec.x * vec.x) + (vec.y * vec.y));
    }

    private static float crossProduct(PointF vec0, PointF vec1) {
        return (vec1.x * vec0.y) - (vec0.x * vec1.y);
    }

    public static boolean isLeftSide(PointF p0, PointF p1, float x, float y) {
        float vec0x = p1.x - p0.x;
        float vec1x = x - p0.x;
        float vec0y = p1.y - p0.y;
        float vec1y = y - p0.y;
        return ((double) ((vec0x * vec1y) - (vec1x * vec0y))) > 0.0d;
    }

    public static float limit(float value, float min, float max) {
        if (value < min) {
            return min;
        }
        return value > max ? max : value;
    }
}