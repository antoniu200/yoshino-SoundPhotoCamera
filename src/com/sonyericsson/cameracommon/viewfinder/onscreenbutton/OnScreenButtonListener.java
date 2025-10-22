package com.sonyericsson.cameracommon.viewfinder.onscreenbutton;

import android.graphics.Canvas;
import android.view.MotionEvent;

/* loaded from: classes.dex */
public interface OnScreenButtonListener {
    void onCancel(OnScreenButton onScreenButton, MotionEvent motionEvent);

    void onDispatchDraw(OnScreenButton onScreenButton, Canvas canvas);

    void onDown(OnScreenButton onScreenButton, MotionEvent motionEvent);

    void onMove(OnScreenButton onScreenButton, MotionEvent motionEvent);

    void onUp(OnScreenButton onScreenButton, MotionEvent motionEvent);
}