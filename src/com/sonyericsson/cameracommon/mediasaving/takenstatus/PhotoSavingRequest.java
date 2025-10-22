package com.sonyericsson.cameracommon.mediasaving.takenstatus;

import android.content.ContentValues;
import android.media.Image;
import android.media.ImageReader;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonymobile.media.SomcMediaStore;
import java.io.File;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class PhotoSavingRequest extends SavingRequest {
    public static final String TAG = "PhotoSavingRequest";
    private Image mImage;
    private ImageReader mImageReader;
    private OnImageReaderDetachedListener mOnImageReaderDettachedListener;
    public final TakenStatusPhoto photo;

    public interface OnImageReaderDetachedListener {
        void onDetached(ImageReader imageReader);
    }

    public PhotoSavingRequest(TakenStatusCommon commonStatus, TakenStatusPhoto photoStatus) {
        super(commonStatus);
        this.photo = photoStatus;
        log();
    }

    public PhotoSavingRequest(PhotoSavingRequest data) {
        super(data);
        this.photo = new TakenStatusPhoto(data.photo);
    }

    public PhotoSavingRequest(PhotoSavingRequest orig, int orientation) {
        super(orig, orientation);
        this.photo = new TakenStatusPhoto(orig.photo);
    }

    public byte[] getImageData() {
        return this.photo.mImage;
    }

    public void setImageData(byte[] image) {
        this.photo.mImage = image;
    }

    public void attachImageReader(ImageReader reader, OnImageReaderDetachedListener listener) {
        this.mImageReader = reader;
        this.mOnImageReaderDettachedListener = listener;
    }

    public boolean isImageReaderUsing() {
        return this.mImageReader != null;
    }

    public ByteBuffer getImageReaderData() {
        if (this.mImageReader == null) {
            return null;
        }
        if (this.mImage == null) {
            this.mImage = this.mImageReader.acquireNextImage();
        }
        Image.Plane[] planes = this.mImage.getPlanes();
        ByteBuffer buffer = planes[0].getBuffer();
        return buffer;
    }

    public void close() {
        if (this.mImage != null) {
            this.mImage.close();
            this.mImage = null;
        }
        if (this.mOnImageReaderDettachedListener != null) {
            this.mOnImageReaderDettachedListener.onDetached(this.mImageReader);
        }
        this.mImageReader = null;
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest
    public void log() {
        super.log();
        this.photo.log();
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest
    public ContentValues createContentValues(String description) {
        ContentValues values = new ContentValues();
        if (this.common.mSomcType != 0) {
            values.put(SomcMediaStore.ExtendedFiles.ExtendedFileColumns.SOMC_FILE_TYPE, Integer.valueOf(getSomcType()));
        }
        File photo = new File(getFilePath());
        values.put("title", CommonUtility.removeFileExtension(photo.getName()));
        values.put("_display_name", photo.getName());
        if (description.length() > 0) {
            values.put("description", description);
        }
        values.put("datetaken", Long.valueOf(getDateTaken()));
        values.put("mime_type", this.common.mimeType);
        values.put("orientation", Integer.valueOf(this.common.orientation));
        values.put("_size", Long.valueOf(photo.length()).toString());
        values.put("date_modified", Long.valueOf(photo.lastModified() / 1000));
        if (this.common.location != null) {
            values.put("latitude", Double.valueOf(this.common.location.getLatitude()));
            values.put("longitude", Double.valueOf(this.common.location.getLongitude()));
        }
        values.put("_data", getFilePath());
        values.put("width", Integer.valueOf(this.common.width));
        values.put("height", Integer.valueOf(this.common.height));
        return values;
    }
}