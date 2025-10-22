package com.sonyericsson.cameracommon.mediasaving;

import java.io.File;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class SlowMotionPathBuilder {
    private static final String DCF_FILE_NAME_FREE_WORD_120F = "MOV_HFR_120F_";
    private static final String DCF_FILE_NAME_FREE_WORD_SM = "MOV_SM_P120F_";
    private static final String DCF_FILE_NAME_FREE_WORD_SSM = "MOV_SM_P960F_";
    private static final String DCF_FILE_NAME_FREE_WORD_SSS = "MOV_SM_960F_";
    private static final int RETRY_COUNT = 10;
    private static final String TAG = "SlowMotionPathBuilder";
    private final String mSuffix;
    private static final String DCF_DIR_NAME_FREE_WORD_XPERIA_SLOW_MOTION = "XPERIA" + File.separator + "SLOW_VIDEO";
    private static final String DCF_FILE_NAME_DATE_FORMAT = "yyyyMMddHHmmss";
    private static final Pattern mSSMDetector = Pattern.compile("/MOV_SM_P960F_\\d{" + DCF_FILE_NAME_DATE_FORMAT.length() + "}" + MediaSavingConstants.MEDIA_TYPE_MPEG4_EXT + "\\z", 2);
    private static final Pattern mSSSDetector = Pattern.compile("/MOV_SM_960F_\\d{" + DCF_FILE_NAME_DATE_FORMAT.length() + "}" + MediaSavingConstants.MEDIA_TYPE_MPEG4_EXT + "\\z", 2);
    private static final Pattern mHFRDetector = Pattern.compile("/MOV_HFR_120F_\\d{" + DCF_FILE_NAME_DATE_FORMAT.length() + "}" + MediaSavingConstants.MEDIA_TYPE_MPEG4_EXT + "\\z", 2);
    private static final Pattern mSMDetector = Pattern.compile("/MOV_SM_P120F_\\d{" + DCF_FILE_NAME_DATE_FORMAT.length() + "}" + MediaSavingConstants.MEDIA_TYPE_MPEG4_EXT + "\\z", 2);

    public SlowMotionPathBuilder(String suffix) {
        this.mSuffix = suffix;
    }

    public static boolean isSuperSlowMotionVideo(String path) {
        return mSSMDetector.matcher(path).find();
    }

    public static boolean isSuperSlowShotVideo(String path) {
        return mSSSDetector.matcher(path).find();
    }

    public static boolean isHFRVideo(String path) {
        return mHFRDetector.matcher(path).find();
    }

    public static boolean isStandardSlowMotionVideo(String path) {
        return mSMDetector.matcher(path).find();
    }
}