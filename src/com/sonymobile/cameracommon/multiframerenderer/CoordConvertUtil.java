package com.sonymobile.cameracommon.multiframerenderer;

import android.graphics.Point;
import android.graphics.PointF;
import android.opengl.GLU;
import android.opengl.Matrix;

/* loaded from: classes.dex */
public class CoordConvertUtil {
    private static final float[] sIdentityMatrix = new float[16];

    static {
        Matrix.setIdentityM(sIdentityMatrix, 0);
    }

    public static Point getWindowCoord(float x, float y, float z, float[] mvpMatrix, int[] viewPort) {
        // GLU.gluProject writes window coords into win[0..2]:
        // win[0] = window X (includes viewport x offset)
        // win[1] = window Y with origin at bottom-left (includes viewport y offset)
        // win[2] = window Z (depth)
        final float[] win = new float[3];

        // We keep the original semantics: pass MVP as the "model" and identity as "projection".
        // (Equivalent to using identity model and MVP as projection.)
        GLU.gluProject(x, y, z,
                mvpMatrix, 0,
                sIdentityMatrix, 0,
                viewPort, 0,
                win, 0);

        // Convert from GL window coords (origin bottom-left) to Android view coords (origin top-left).
        // GL already included viewport[1] in win[1], so top-left Y = viewportY + viewportH - winY.
        final float screenX = win[0];
        final float screenY = viewPort[1] + viewPort[3] - win[1];

        return new Point(Math.round(screenX), Math.round(screenY));
    }

    public static PointF getObjectCoord(float winX, float winY, float[] projectionMatrix, float[] mvpMatrix, int[] viewPort, float[] lookAtPosition) {
        float[] mvpMat = (float[]) mvpMatrix.clone();
        float[] p0 = {0.0f, 0.0f, 0.0f, 1.0f};
        float[] p1 = {-1.0f, 1.0f, 0.0f, 1.0f};
        float[] p2 = {1.0f, 1.0f, 0.0f, 1.0f};
        Matrix.multiplyMV(p0, 0, mvpMat, 0, p0, 0);
        Matrix.multiplyMV(p1, 0, mvpMat, 0, p1, 0);
        Matrix.multiplyMV(p2, 0, mvpMat, 0, p2, 0);
        float[] vec10 = {p1[0] - p0[0], p1[1] - p0[1], p1[2] - p0[2]};
        float[] vec20 = {p2[0] - p0[0], p2[1] - p0[1], p2[2] - p0[2]};
        float[] cross = {(vec10[1] * vec20[2]) - (vec10[2] * vec20[1]), (vec10[2] * vec20[0]) - (vec10[0] * vec20[2]), (vec10[0] * vec20[1]) - (vec10[1] * vec20[0])};
        float d = (cross[0] * p0[0]) + (cross[1] * p0[1]) + (cross[2] * p0[2]);
        float screenY = ((viewPort[3] + (viewPort[1] * 2)) - winY) - viewPort[1];
        float screenX = ((winX / viewPort[2]) * 2.0f) - 1.0f;
        float[] vecScreen = {screenX, ((screenY / viewPort[3]) * 2.0f) - 1.0f, 0.0f, 1.0f};
        Matrix.multiplyMV(vecScreen, 0, projectionMatrix, 0, vecScreen, 0);
        float[] vecLookAt = {lookAtPosition[0], lookAtPosition[1], lookAtPosition[2], 1.0f};
        Matrix.multiplyMV(vecLookAt, 0, projectionMatrix, 0, vecLookAt, 0);
        float[] coord = getCrossCoordWithPlaneAndLine(cross[0], cross[1], cross[2], d, vecLookAt, vecScreen);
        if (coord == null) {
            return null;
        }
        Matrix.invertM(mvpMat, 0, mvpMat, 0);
        Matrix.multiplyMV(coord, 0, mvpMat, 0, coord, 0);
        return new PointF(coord[0], coord[1]);
    }

    private static float[] getCrossCoordWithPlaneAndLine(float a, float b, float c, float d, float[] vecFrom, float[] vecTo) {
        float[] vecRay = {vecTo[0] - vecFrom[0], vecTo[1] - vecFrom[1], vecTo[2] - vecFrom[2], vecTo[3] - vecFrom[3]};
        float parallelism = (vecRay[0] * a) + (vecRay[1] * b) + (vecRay[2] * c);
        if (parallelism == 0.0f) {
            return null;
        }
        float t = (d - (((vecFrom[0] * a) + (vecFrom[1] * b)) + (vecFrom[2] * c))) / parallelism;
        return new float[]{vecFrom[0] + (vecRay[0] * t), vecFrom[1] + (vecRay[1] * t), vecFrom[2] + (vecRay[2] * t), vecFrom[3] + (vecRay[3] * t)};
    }
}
