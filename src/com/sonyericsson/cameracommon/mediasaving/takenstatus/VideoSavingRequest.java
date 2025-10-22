package com.sonyericsson.cameracommon.mediasaving.takenstatus;

import android.content.ContentValues;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import java.io.File;

/* loaded from: classes.dex */
public class VideoSavingRequest extends SavingRequest {
    public static final String TAG = "VideoSavingRequest";
    public final TakenStatusVideo video;

    public VideoSavingRequest(TakenStatusCommon commonStatus, TakenStatusVideo videoStatus) {
        super(commonStatus);
        this.video = videoStatus;
        log();
    }

    public VideoSavingRequest(VideoSavingRequest data) {
        super(data);
        this.video = new TakenStatusVideo(data.video.maxDurationMills, data.video.maxFileSizeBytes);
    }

    public long getDuration() {
        return this.video.mDuration;
    }

    public void setDuration(long duration) {
        this.video.mDuration = duration;
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest
    public void log() {
        super.log();
        this.video.log();
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest
    public ContentValues createContentValues(String description) {
        ContentValues values = new ContentValues();
        File video = new File(getFilePath());
        values.put("title", CommonUtility.removeFileExtension(video.getName()));
        values.put("_display_name", video.getName());
        if (description.length() > 0) {
            values.put("description", description);
        }
        values.put("datetaken", Long.valueOf(getDateTaken()));
        values.put("mime_type", this.common.mimeType);
        values.put("_size", Long.valueOf(video.length()).toString());
        values.put("date_modified", Long.valueOf(video.lastModified() / 1000));
        if (this.common.location != null) {
            values.put("latitude", Double.valueOf(this.common.location.getLatitude()));
            values.put("longitude", Double.valueOf(this.common.location.getLongitude()));
        }
        values.put("artist", "<unknown>");
        values.put("album", "<unknown>");
        values.put("duration", Long.valueOf(getDuration()).toString());
        values.put("resolution", this.common.width + "x" + this.common.height);
        values.put("width", Integer.valueOf(this.common.width));
        values.put("height", Integer.valueOf(this.common.height));
        values.put("_data", getFilePath());
        return values;
    }
}