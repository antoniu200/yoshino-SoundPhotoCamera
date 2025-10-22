package com.sonyericsson.cameracommon.mediasaving;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.File;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class PredictiveCapturePathBuilder {
    public static final int CAPTURE_ID_STRING_LENGTH = 4;
    public static final String TAG = "PredictiveCapturePathBuilder";
    public static final String DCF_DIR_NAME_FREE_WORD_XPERIA_BURST = "XPERIA" + File.separator + "PREDICTIVE_CAPTURE";
    public static final String DCF_FILE_NAME_CONTENT_TYPE_PREDICTIVE_CAPTURE = "DSCPDC";
    public static final String DCF_FILE_NAME_FREE_WORD_BURST = "BURST";
    private static final int FILE_TIMESTAMP_START_POS = (((DCF_FILE_NAME_CONTENT_TYPE_PREDICTIVE_CAPTURE.length() + "_".length()) + 4) + "_".length()) + DCF_FILE_NAME_FREE_WORD_BURST.length();
    public static final String DCF_FILE_NAME_DATE_FORMAT = "yyyyMMddHHmmssSSS";
    private static final int FILE_TIMESTAMP_END_POS = FILE_TIMESTAMP_START_POS + DCF_FILE_NAME_DATE_FORMAT.length();
    private static final int BURST_FILE_NAME_LENGTH = (((((DCF_FILE_NAME_CONTENT_TYPE_PREDICTIVE_CAPTURE.length() + "_".length()) + 4) + "_".length()) + DCF_FILE_NAME_FREE_WORD_BURST.length()) + DCF_FILE_NAME_DATE_FORMAT.length()) + MediaSavingConstants.MEDIA_TYPE_JPEG_EXT.length();
    public static final String DCF_FILE_NAME_FREE_WORD_COVER = "COVER";
    private static final int BURST_COVER_FILE_NAME_LENGTH = (((((((DCF_FILE_NAME_CONTENT_TYPE_PREDICTIVE_CAPTURE.length() + "_".length()) + 4) + "_".length()) + DCF_FILE_NAME_FREE_WORD_BURST.length()) + "_".length()) + DCF_FILE_NAME_FREE_WORD_COVER.length()) + DCF_FILE_NAME_DATE_FORMAT.length()) + MediaSavingConstants.MEDIA_TYPE_JPEG_EXT.length();
    private static final Pattern mBurstDetector = Pattern.compile("/DSCPDC_\\d{4}_BURST\\d{" + DCF_FILE_NAME_DATE_FORMAT.length() + "}(|_" + DCF_FILE_NAME_FREE_WORD_COVER + ").(JPE?G|jpe?g)\\z");
    private static final Pattern mBurstCoverDetector = Pattern.compile("/DSCPDC_\\d{4}_BURST\\d{" + DCF_FILE_NAME_DATE_FORMAT.length() + "}_" + DCF_FILE_NAME_FREE_WORD_COVER + ".(JPE?G|jpe?g)\\z");
    private static final Pattern mBurstLastDetector = Pattern.compile("/DSCPDC_0000_BURST\\d{" + DCF_FILE_NAME_DATE_FORMAT.length() + "}.(JPE?G|jpe?g)\\z");
    private static final Pattern mBurstDirectoryDetector = Pattern.compile("(\\ADSC_)(\\d{" + DCF_FILE_NAME_DATE_FORMAT.length() + "}\\z)");

    public static String getPhotoPath(String rootPath, SavingRequest savingRequest, Context context) {
        String addPath = DCF_DIR_NAME_FREE_WORD_XPERIA_BURST + File.separator + DcfPathBuilder.DCF_FILE_NAME_FREE_WORD_PICTURE + savingRequest.getSaveTimeForPredictiveCapture();
        String dirPath = rootPath + File.separator + addPath;
        String cover = "";
        if (savingRequest.getSomcType() == 100) {
            cover = "_COVER";
        }
        String fileName = "DSCPDC_" + String.format(Locale.US, "%04d", Integer.valueOf(savingRequest.getCaptureIdForPredictiveCapture())) + "_" + DCF_FILE_NAME_FREE_WORD_BURST + savingRequest.getSaveTimeForPredictiveCapture().replaceAll("_", "") + cover + MediaSavingConstants.MEDIA_TYPE_JPEG_EXT;
        if (StorageUtil.getStorageTypeFromPath(rootPath, context) != StorageUtil.CameraStorageType.EXTERNAL_CARD) {
            File dir = new File(dirPath);
            if (!dir.exists() && !dir.mkdirs()) {
                CameraLogger.e(TAG, "getPhotoPath create dir failed: " + dir);
                return null;
            }
        } else {
            Uri parentUri = StorageUtil.getSdCardGrantedUri(context);
            if (!StorageUtil.isExistDcimDirectory(parentUri)) {
                addPath = Environment.DIRECTORY_DCIM + "/" + addPath;
            }
            Uri uri = StorageUtil.createDirectory(context, parentUri, addPath);
            if (uri == null) {
                CameraLogger.e(TAG, "getPhotoPath create dir failed for sd: " + addPath);
                return null;
            }
        }
        return dirPath + File.separator + fileName;
    }

    public static boolean isPredictiveCaptureImage(String path) {
        Matcher matcher = mBurstDetector.matcher(path);
        if (matcher.find()) {
            String fileTimeStamp = getTimeStamp(path);
            String parentTimeStamp = getParentDirectoryTimeStamp(path);
            if (fileTimeStamp.equals(parentTimeStamp)) {
                return true;
            }
        }
        return false;
    }

    public static String getPredictiveCaptureGroupIdPath(String path) {
        File file = new File(path);
        return file.getParentFile().getPath();
    }

    private static String getParentDirectoryTimeStamp(String path) {
        File file = new File(path);
        String parentName = file.getParentFile().getName();
        Matcher matcher = mBurstDirectoryDetector.matcher(parentName);
        if (!matcher.matches()) {
            return "";
        }
        String timeStamp = matcher.group(2);
        return timeStamp;
    }

    public static boolean isPredictiveCaptureCoverImage(String path) {
        Matcher matcher = mBurstCoverDetector.matcher(path);
        return matcher.find();
    }

    public static boolean isPredictiveCaptureLastImage(String path) {
        Matcher matcher = mBurstLastDetector.matcher(path);
        return matcher.find();
    }

    public static String getTimeStamp(String path) {
        String fileName = getFileName(path);
        return fileName.substring(FILE_TIMESTAMP_START_POS, FILE_TIMESTAMP_END_POS);
    }

    private static String getFileName(String path) {
        return isPredictiveCaptureCoverImage(path) ? path.substring(path.length() - BURST_COVER_FILE_NAME_LENGTH, path.length()) : path.substring(path.length() - BURST_FILE_NAME_LENGTH, path.length());
    }
}