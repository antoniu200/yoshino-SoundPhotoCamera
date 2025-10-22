package com.sonyericsson.cameracommon.controller;

/* loaded from: classes.dex */
public class ZoomController {
    private static final float PINCH_ZOOM_COEFFICIENT = 0.2f;

    public static float getZoomValue(float currentZoom, float scaleLength) {
        float zoomValue = currentZoom + (PINCH_ZOOM_COEFFICIENT * scaleLength);
        return zoomValue;
    }
}