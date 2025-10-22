package com.sonyericsson.cameracommon.setting.layoutcoordinator;

import android.graphics.Rect;

/* loaded from: classes.dex */
public interface LayoutCoordinator {
    void coordinatePosition(int i);

    void coordinateSize(int i);

    Rect getDialogRect();
}