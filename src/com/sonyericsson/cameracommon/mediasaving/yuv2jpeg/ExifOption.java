package com.sonyericsson.cameracommon.mediasaving.yuv2jpeg;

import android.location.Location;
import android.os.Build;
import android.text.format.DateFormat;
import com.sonyericsson.cameracommon.mediasaving.yuv2jpeg.ExifInfo;
import com.sonyericsson.cameracommon.utility.CameraLogger;

/* loaded from: classes.dex */
class ExifOption {
    public static final String TAG = "ExifOption";
    public ExifInfo.ByteOrder mByteOrder;
    public String mDateTime;
    public Location mGPSOption;
    public String mMake;
    public String mModel;
    public int mOrientation = 1;
    public long mPixelXDimension;
    public long mPixelYDimension;
    public byte[] mThumbnailData;
    public long mThumbnailDataLength;

    ExifOption() {
    }

    public static ExifOption create(ExifInfo exifInfo, byte[] thumbnailData) {
        ExifOption exifOption = new ExifOption();
        exifOption.mMake = Build.MANUFACTURER;
        exifOption.mModel = Build.MODEL;
        exifOption.mOrientation = getExifOrientation(exifInfo.getOrientation());
        exifOption.mDateTime = getExifDate(exifInfo.getTimestamp());
        exifOption.mPixelXDimension = exifInfo.getWidth();
        exifOption.mPixelYDimension = exifInfo.getHeight();
        exifOption.mGPSOption = exifInfo.getLocation();
        exifOption.mByteOrder = exifInfo.getByteOrder();
        if (thumbnailData == null) {
            exifOption.mThumbnailData = new byte[1];
            exifOption.mThumbnailDataLength = 1L;
        } else {
            exifOption.mThumbnailData = thumbnailData;
            exifOption.mThumbnailDataLength = exifOption.mThumbnailData.length;
        }
        return exifOption;
    }

    private static void log(ExifOption exifOption) {
        CameraLogger.d(TAG, "dump of exifOption: ");
        CameraLogger.d(TAG, "mMake = " + exifOption.mMake);
        CameraLogger.d(TAG, "mModel = " + exifOption.mModel);
        CameraLogger.showOrientation(TAG, "mOrientation = ", exifOption.mOrientation);
        CameraLogger.d(TAG, "mDateTime = " + exifOption.mDateTime);
        CameraLogger.d(TAG, "mPixelXDimension = " + exifOption.mPixelXDimension);
        CameraLogger.d(TAG, "mPixelYDimension = " + exifOption.mPixelYDimension);
        CameraLogger.d(TAG, "mGPSOption = " + exifOption.mGPSOption);
        CameraLogger.d(TAG, "mThumbnailDataLength = " + exifOption.mThumbnailDataLength);
        CameraLogger.d(TAG, "mByteOrder = " + exifOption.mByteOrder);
    }

    public static short getExifOrientation(int degrees) {
        if (degrees < 0) {
            degrees += 360;
        }
        switch (degrees) {
            case 0:
                break;
            case 90:
                break;
            case 180:
                break;
            case 270:
                break;
        }
        return (short) 1;
    }

    public static String getExifDate(long date) {
        return DateFormat.format("yyyy:MM:dd kk:mm:ss", date).toString();
    }
}