package com.sonymobile.cameracommon.multiframerenderer;

import android.view.View;
import com.sonymobile.cameracommon.opengl.FrameBase;

/* loaded from: classes.dex */
public interface FrameBaseFactory {
    void initialize(View view);

    FrameBase obtain();

    void release();
}