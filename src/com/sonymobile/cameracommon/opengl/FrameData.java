package com.sonymobile.cameracommon.opengl;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
public class FrameData {
    private Bitmap mBitmap;
    private byte[] mByteArray;
    private final ImageFormat mFormat;
    private final int mFrameHeight;
    private final int mFrameWidth;

    public enum ImageFormat {
        YVU420_SEMIPLANAR,
        RGB888,
        BITMAP
    }

    public FrameData(ImageFormat format, int frameWidth, int frameHeight) {
        this.mByteArray = null;
        this.mFormat = format;
        this.mFrameWidth = frameWidth;
        this.mFrameHeight = frameHeight;
        switch (this.mFormat) {
            case RGB888:
                this.mByteArray = new byte[this.mFrameWidth * this.mFrameHeight * 3];
                break;
            case YVU420_SEMIPLANAR:
                this.mByteArray = new byte[((this.mFrameWidth * this.mFrameHeight) * 3) / 2];
                break;
        }
    }

    public FrameData(ImageFormat format, int frameWidth, int frameHeight, byte[] byteArray) {
        this.mByteArray = null;
        this.mFormat = format;
        this.mFrameWidth = frameWidth;
        this.mFrameHeight = frameHeight;
        this.mByteArray = byteArray;
    }

    public FrameData(Bitmap bitmap) {
        this.mByteArray = null;
        this.mFormat = ImageFormat.BITMAP;
        this.mFrameWidth = bitmap.getWidth();
        this.mFrameHeight = bitmap.getHeight();
        this.mBitmap = bitmap;
    }

    public ImageFormat getImageFormat() {
        return this.mFormat;
    }

    public int getFrameWidth() {
        return this.mFrameWidth;
    }

    public int getFrameHeight() {
        return this.mFrameHeight;
    }

    public byte[] getByteArrayYvu() {
        return this.mByteArray;
    }

    public void setByteArrayYvu(byte[] byteArray) {
        this.mByteArray = byteArray;
    }

    public int getYOffset() {
        return 0;
    }

    public int getVuOffset() {
        if (this.mByteArray == null) {
            return 0;
        }
        return this.mFrameWidth * this.mFrameHeight;
    }

    public byte[] getRgb888() {
        return this.mByteArray;
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }
}