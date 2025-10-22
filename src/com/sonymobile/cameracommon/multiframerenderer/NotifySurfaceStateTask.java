package com.sonymobile.cameracommon.multiframerenderer;

import com.sonymobile.cameracommon.gltextureview.GLTextureView;

/* loaded from: classes.dex */
class NotifySurfaceStateTask implements Runnable {
    private GLTextureView.SurfaceStateCallback mCallback;
    private final int mHeight;
    private final NotifyType mType;
    private final int mWidth;

    enum NotifyType {
        CREATED,
        CHANGED,
        DESTROYED
    }

    public NotifySurfaceStateTask(NotifyType type, int width, int height, GLTextureView.SurfaceStateCallback callback) {
        this.mType = type;
        this.mWidth = width;
        this.mHeight = height;
        this.mCallback = callback;
    }

    @Override // java.lang.Runnable
    public void run() {
        switch (this.mType) {
            case CREATED:
                this.mCallback.onSurfaceCreated();
                break;
            case CHANGED:
                this.mCallback.onSurfaceChanged(this.mWidth, this.mHeight);
                break;
            case DESTROYED:
                this.mCallback.onSurfaceDestroyed();
                break;
        }
    }
}