package com.sonyericsson.cameracommon.viewfinder;

/* loaded from: classes.dex */
public interface ViewFinderInterface {
    void changeLayoutTo(LayoutPattern layoutPattern);

    boolean isHeadUpDisplayReady();

    void onCaptureDone();

    void onShutterDone(boolean z);

    void onZoomChanged(int i);

    void requestSetupHeadUpDisplay();

    void requestUpdateSurfaceSize(int i, int i2);
}