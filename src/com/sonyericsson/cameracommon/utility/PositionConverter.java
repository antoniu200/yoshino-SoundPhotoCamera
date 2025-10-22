package com.sonyericsson.cameracommon.utility;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.core.app.NotificationManagerCompat;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;

/* loaded from: classes.dex */
public class PositionConverter {
    public static final String TAG = "PositionConverter";
    private static final Rect sDeviceRect = new Rect(NotificationManagerCompat.IMPORTANCE_UNSPECIFIED, NotificationManagerCompat.IMPORTANCE_UNSPECIFIED, 1000, 1000);
    private static PositionConverter sInstance = new PositionConverter();
    private Matrix mMatrixFromDeviceToPreview;
    private Matrix mMatrixFromDeviceToSurface;
    private Matrix mMatrixFromPreviewToSurface;
    private Matrix mMatrixFromSurfaceToDevice;
    private Matrix mMatrixFromSurfaceToPreview;
    private boolean mMirror;
    private boolean mPrepared;
    private int mPreviewHeight;
    private int mPreviewWidth;
    private int mSurfaceHeight;
    private int mSurfaceWidth;

    public static PositionConverter getInstance() {
        return sInstance;
    }

    private PositionConverter() {
    }

    public void init(boolean mirror, Rect surface, Rect preview) {
        if (this.mMirror != mirror || this.mSurfaceWidth != surface.width() || this.mSurfaceHeight != surface.height()) {
            this.mPrepared = false;
        }
        this.mMirror = mirror;
        this.mPreviewWidth = preview.width();
        this.mPreviewHeight = preview.height();
        setSurfaceSize(surface.width(), surface.height());
        this.mPrepared = true;
    }

    private Matrix getMatrix() {
        Matrix matrix = new Matrix();
        if (this.mMirror) {
            matrix.setScale(-1.0f, 1.0f);
        } else {
            matrix.setScale(1.0f, 1.0f);
        }
        LayoutOrientationResolver layoutOrientationResolver = LayoutOrientationResolver.getInstance();
        if (layoutOrientationResolver.getOrientation() == LayoutOrientationResolver.LayoutOrientationType.PORTRAIT) {
            matrix.postRotate(90.0f);
        } else {
            matrix.postRotate(0.0f);
        }
        return matrix;
    }

    public void setSurfaceSize(int width, int height) {
        if (!this.mPrepared || this.mSurfaceWidth != width || this.mSurfaceHeight != height) {
            this.mMatrixFromDeviceToSurface = getMatrix();
            this.mMatrixFromDeviceToPreview = getMatrix();
            this.mMatrixFromSurfaceToDevice = getMatrix();
            this.mMatrixFromSurfaceToPreview = new Matrix();
            this.mMatrixFromPreviewToSurface = getMatrix();
            this.mSurfaceWidth = width;
            this.mSurfaceHeight = height;
            this.mMatrixFromDeviceToSurface.postScale(this.mSurfaceWidth / sDeviceRect.width(), this.mSurfaceHeight / sDeviceRect.height());
            this.mMatrixFromDeviceToSurface.postTranslate(this.mSurfaceWidth / 2.0f, this.mSurfaceHeight / 2.0f);
            this.mMatrixFromDeviceToPreview.postScale(this.mPreviewWidth / sDeviceRect.width(), this.mPreviewHeight / sDeviceRect.height());
            this.mMatrixFromDeviceToPreview.postTranslate(this.mPreviewWidth / 2.0f, this.mPreviewHeight / 2.0f);
            LayoutOrientationResolver layoutOrientationResolver = LayoutOrientationResolver.getInstance();
            if (layoutOrientationResolver.getOrientation() == LayoutOrientationResolver.LayoutOrientationType.PORTRAIT) {
                this.mMatrixFromSurfaceToDevice.postRotate(-90.0f);
                this.mMatrixFromSurfaceToDevice.postScale(sDeviceRect.width() / this.mSurfaceHeight, sDeviceRect.height() / this.mSurfaceWidth);
            } else {
                this.mMatrixFromSurfaceToDevice.postScale(sDeviceRect.width() / this.mSurfaceWidth, sDeviceRect.height() / this.mSurfaceHeight);
            }
            if (this.mMirror) {
                this.mMatrixFromSurfaceToDevice.postTranslate(-sDeviceRect.left, sDeviceRect.top);
            } else {
                this.mMatrixFromSurfaceToDevice.postTranslate(sDeviceRect.left, sDeviceRect.top);
            }
            this.mMatrixFromSurfaceToPreview.preScale(this.mPreviewWidth / this.mSurfaceWidth, this.mPreviewHeight / this.mSurfaceHeight);
            if (layoutOrientationResolver.getOrientation() == LayoutOrientationResolver.LayoutOrientationType.PORTRAIT) {
                this.mMatrixFromSurfaceToPreview.postRotate(-90.0f);
                this.mMatrixFromSurfaceToPreview.postTranslate(0.0f, this.mPreviewWidth);
            }
            this.mMatrixFromPreviewToSurface.postScale(this.mSurfaceWidth / this.mPreviewWidth, this.mSurfaceHeight / this.mPreviewHeight);
        }
    }

    public void setPreviewSize(int width, int height) {
        if (!this.mPrepared || this.mPreviewWidth != width || this.mPreviewHeight != height) {
            this.mMatrixFromSurfaceToPreview = new Matrix();
            this.mMatrixFromPreviewToSurface = getMatrix();
            this.mPreviewWidth = width;
            this.mPreviewHeight = height;
            this.mMatrixFromSurfaceToPreview.preScale(this.mPreviewWidth / this.mSurfaceWidth, this.mPreviewHeight / this.mSurfaceHeight);
            if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver.LayoutOrientationType.PORTRAIT) {
                this.mMatrixFromSurfaceToPreview.postRotate(-90.0f);
                this.mMatrixFromSurfaceToPreview.postTranslate(0.0f, this.mPreviewWidth);
            }
            this.mMatrixFromPreviewToSurface.postScale(this.mSurfaceWidth / this.mPreviewWidth, this.mSurfaceHeight / this.mPreviewHeight);
        }
    }

    public void setOrientation(int orientation) {
        if (!this.mPrepared) {
            this.mMatrixFromDeviceToSurface.postRotate(orientation);
            this.mMatrixFromDeviceToPreview.postRotate(orientation);
            this.mMatrixFromSurfaceToDevice.postRotate(orientation);
            this.mMatrixFromSurfaceToPreview.postRotate(orientation);
            this.mMatrixFromPreviewToSurface.postRotate(orientation);
        }
    }

    public Rect convertToView(Rect srcRect) {
        return convert(srcRect, this.mMatrixFromDeviceToSurface);
    }

    public Rect convertToDevice(Rect srcRect) {
        Rect dstRect = convert(srcRect, this.mMatrixFromSurfaceToDevice);
        if (!sDeviceRect.contains(dstRect)) {
            dstRect.intersect(sDeviceRect);
        }
        return dstRect;
    }

    public Rect convertFaceToDevice(Rect srcRect) {
        return convert(srcRect, this.mMatrixFromSurfaceToPreview);
    }

    public Rect convertToLandscapeSurface(Rect srcRect) {
        LayoutOrientationResolver layoutOrientationResolver = LayoutOrientationResolver.getInstance();
        if (layoutOrientationResolver.getOrientation() == LayoutOrientationResolver.LayoutOrientationType.PORTRAIT) {
            Matrix matrixFromPortraitToLand = new Matrix();
            matrixFromPortraitToLand.setRotate(-90.0f);
            matrixFromPortraitToLand.postTranslate(0.0f, this.mSurfaceWidth);
            return convert(srcRect, matrixFromPortraitToLand);
        }
        return srcRect;
    }

    public Rect convertFromSurfaceToDevice(Rect srcRect) {
        Matrix matrixSurfaceToDevice = new Matrix();
        matrixSurfaceToDevice.postScale(this.mPreviewWidth / this.mSurfaceWidth, this.mPreviewHeight / this.mSurfaceHeight);
        return convert(srcRect, matrixSurfaceToDevice);
    }

    public Rect convertFromDeviceToSurface(Rect srcRect) {
        Matrix matrixFromDeviceToSurface = new Matrix();
        matrixFromDeviceToSurface.postScale(this.mSurfaceWidth / this.mPreviewWidth, this.mSurfaceHeight / this.mPreviewHeight);
        LayoutOrientationResolver layoutOrientationResolver = LayoutOrientationResolver.getInstance();
        if (layoutOrientationResolver.getOrientation() == LayoutOrientationResolver.LayoutOrientationType.PORTRAIT) {
            matrixFromDeviceToSurface.postRotate(90.0f);
            matrixFromDeviceToSurface.postTranslate(this.mSurfaceWidth, 0.0f);
        }
        return convert(srcRect, matrixFromDeviceToSurface);
    }

    public Rect convertFaceFromDeviceToPreview(Rect srcRect) {
        return convert(srcRect, this.mMatrixFromDeviceToPreview);
    }

    public Rect convertDeviceToFace(Rect srcRect) {
        return convert(srcRect, this.mMatrixFromPreviewToSurface);
    }

    private Rect convert(Rect srcRect, Matrix matrix) {
        if (matrix == null) {
            CameraLogger.w(TAG, "Matrix to convert rect is null. Surface has not been created.");
            return new Rect();
        }
        RectF rect = new RectF(srcRect);
        matrix.mapRect(rect);
        return new Rect(Math.round(rect.left), Math.round(rect.top), Math.round(rect.right), Math.round(rect.bottom));
    }

    public Rect getDeviceRect() {
        return new Rect(sDeviceRect);
    }

    public Rect getPreviewSize() {
        return new Rect(0, 0, this.mPreviewWidth, this.mPreviewHeight);
    }
}