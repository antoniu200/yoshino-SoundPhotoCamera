package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.media.CamcorderProfile;
import com.sonyericsson.cameracommon.constants.CommonConstants;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingConstants;
import com.sonyericsson.cameracommon.mediasaving.StorageController;

/* loaded from: classes.dex */
public class RecordingUtil {
    public static final int ERROR_CORRUPTED_SD_PHOTO = -998;
    public static final int ERROR_CORRUPTED_SD_VIDEO = -999;
    public static final int ERROR_SIZE_LIMIT = -1;
    private static final String FIELD_DISALLOW_RECORD_AUDIO = "DISALLOW_RECORD_AUDIO";
    public static final String SDCARD_RAW_PATH = "/mnt/media_rw/sdcard1";
    public static final String TAG = "RecordingUtil";
    public static final int UPDATE_REMAIN_INTERVAL = 10;
    public static final int VIDEO_PROGRESS_BAR_UPDATE_INTERVAL = 100;
    public static final int VIDEO_REC_TIME_UPDATE_INTERVAL_MILLISEC = 1000;

    public static String getOutputFile(String extension, Context context, CameraStorageManager storageManager) throws InterruptedException {
        String path = MediaSavingConstants.INVALID_FILE_PATH;
        int sleepCnt = 0;
        while (sleepCnt < 30) {
            path = storageManager.getVideoPath(extension);
            if (!path.equals(MediaSavingConstants.INVALID_FILE_PATH)) {
                break;
            }
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e) {
            }
            sleepCnt++;
        }
        if (sleepCnt >= 30) {
            return MediaSavingConstants.INVALID_FILE_PATH;
        }
        return path;
    }

    public static long getMaxDurationMillisecond(long averageSizeKBytePerMin, StorageController controller) {
        long recordableStorageSizeByte = getRecordableSizeKBytes(controller) * 1024;
        long maxDurationMills = getDurationMillsFromAverage(controller.getAvailableStorageSize(), averageSizeKBytePerMin);
        long retDurationMills = maxDurationMills;
        long maxDurationSec = retDurationMills / 1000;
        long sizeBytePerSec = (1024 * averageSizeKBytePerMin) / 60;
        long fileSizeByteFromDuration = maxDurationSec * sizeBytePerSec;
        if (recordableStorageSizeByte < fileSizeByteFromDuration) {
            retDurationMills = (1000 * recordableStorageSizeByte) / sizeBytePerSec;
        }
        if (2147483647L < retDurationMills) {
            return 2147483647L;
        }
        return retDurationMills;
    }

    public static long getDurationMillsFromAverage(long availableSizeKbyte, long averageSizeKBytePerMin) {
        long durationSec = (long) Math.floor((availableSizeKbyte * 60.0d) / averageSizeKBytePerMin);
        long durationMills = Math.max(0L, durationSec) * 1000;
        return durationMills;
    }

    public static long getRecordableSizeKBytes(StorageController controller) {
        long recordableSize = (controller.getAvailableStorageSize() - 61440) + CommonConstants.EXTRA_RECORDABLE_FILESIZE;
        if (recordableSize < 0) {
            return 0L;
        }
        return recordableSize;
    }

    public static long getMaxRecordingDuration(CamcorderProfile profile, StorageController controller) {
        long videoBitRateKBytesPerMin = ((profile.videoBitRate * 60) / 1024) / 8;
        long audioBitRateKBytesPerMin = ((profile.audioBitRate * 60) / 1024) / 8;
        return getMaxDurationMillisecond(videoBitRateKBytesPerMin + audioBitRateKBytesPerMin, controller);
    }
}
