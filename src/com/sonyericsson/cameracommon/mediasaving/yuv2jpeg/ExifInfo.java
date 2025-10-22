package com.sonyericsson.cameracommon.mediasaving.yuv2jpeg;

import android.location.Location;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;

/* loaded from: classes.dex */
public class ExifInfo {
    public static final String TAG = "ExifInfo";
    private ByteOrder mByteOrder;
    private final int mHeight;
    private final Location mLocation;
    private final int mOrientation;
    private long mTimestamp;
    private final int mWidth;

    public enum ByteOrder {
        BIG_ENDIAN,
        LITTLE_ENDIAN
    }

    public ExifInfo(long timeStamp, int orientation, Location location, int width, int height) {
        this.mTimestamp = 0L;
        this.mByteOrder = ByteOrder.BIG_ENDIAN;
        this.mTimestamp = timeStamp;
        this.mOrientation = orientation;
        this.mLocation = location;
        this.mWidth = width;
        this.mHeight = height;
    }

    public ExifInfo(long timeStamp, int orientation, Location location, int width, int height, ByteOrder byteOrder) {
        this(timeStamp, orientation, location, width, height);
        this.mByteOrder = byteOrder;
    }

    public ExifInfo(SavingRequest request) {
        this.mTimestamp = 0L;
        this.mByteOrder = ByteOrder.BIG_ENDIAN;
        this.mTimestamp = request.getDateTaken();
        this.mOrientation = request.common.orientation;
        this.mLocation = request.common.location;
        this.mWidth = request.common.width;
        this.mHeight = request.common.height;
    }

    public long getTimestamp() {
        return this.mTimestamp;
    }

    public void setTimestamp(long timestamp) {
        this.mTimestamp = timestamp;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public Location getLocation() {
        return this.mLocation;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public ByteOrder getByteOrder() {
        return this.mByteOrder;
    }
}