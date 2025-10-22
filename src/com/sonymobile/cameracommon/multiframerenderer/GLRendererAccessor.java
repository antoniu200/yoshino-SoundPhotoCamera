package com.sonymobile.cameracommon.multiframerenderer;

import android.graphics.Bitmap;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonymobile.cameracommon.gltextureview.EGLController;
import com.sonymobile.cameracommon.opengl.FrameData;

/* loaded from: classes.dex */
public interface GLRendererAccessor {

    public interface OnTakeGlTextureViewBitmapCallback {
        void onTakeGlTextureViewBitmap(Bitmap bitmap, PhotoSavingRequest photoSavingRequest);
    }

    Bitmap getGLTextureViewBitmap();

    void getGLTextureViewBitmap(Bitmap bitmap);

    void requestFrame(String str, FrameData frameData);

    void requestTakeGlTextureViewBitmap(OnTakeGlTextureViewBitmapCallback onTakeGlTextureViewBitmapCallback, PhotoSavingRequest photoSavingRequest, Bitmap bitmap);

    void setMirrored(String str, boolean z);

    void startVideoFrameRendering(EGLController eGLController, int i, int i2);

    void stopVideoFrameRendering();
}