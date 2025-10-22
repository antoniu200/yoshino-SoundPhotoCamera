package com.sonyericsson.cameracommon.focusview;

import android.graphics.Rect;

/* loaded from: classes.dex */
public class NamedFace {
    public final Rect mFacePosition;
    public final String mName;
    public final String mUuid;

    public NamedFace(String name, String uuid, Rect facePosition) {
        this.mName = name;
        this.mUuid = uuid;
        this.mFacePosition = facePosition;
    }
}