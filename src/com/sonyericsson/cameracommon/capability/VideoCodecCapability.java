package com.sonyericsson.cameracommon.capability;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;

/* loaded from: classes.dex */
public class VideoCodecCapability {
    public static final String TAG = "VideoCodecCapability";
    private static final String VIDEO_CODEC_HEVC = "OMX.qcom.video.encoder.hevc";

    public static boolean isH265Supported() {
        int numCodecs = MediaCodecList.getCodecCount();
        for (int i = 0; i < numCodecs; i++) {
            MediaCodecInfo codecInfo = MediaCodecList.getCodecInfoAt(i);
            if (codecInfo.getName().equals(VIDEO_CODEC_HEVC)) {
                return true;
            }
        }
        return false;
    }
}