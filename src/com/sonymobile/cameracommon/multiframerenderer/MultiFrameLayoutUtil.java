package com.sonymobile.cameracommon.multiframerenderer;

/* loaded from: classes.dex */
public class MultiFrameLayoutUtil {
    public static boolean isSameFrameId(String frameIdA, String frameIdB) {
        if (frameIdA == null && frameIdB == null) {
            return true;
        }
        if (frameIdA == null || frameIdB == null) {
            return false;
        }
        return frameIdA.equals(frameIdB);
    }
}