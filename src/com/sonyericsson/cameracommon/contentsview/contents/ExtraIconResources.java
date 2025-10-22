package com.sonyericsson.cameracommon.contentsview.contents;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.contentsview.contents.Content;

/* loaded from: classes.dex */
class ExtraIconResources {
    ExtraIconResources() {
    }

    public static int get(Content.ContentsType type) {
        switch (type) {
            case BURST:
                return R.drawable.cam_core_photo_stack_burst_icn;
            case PREDICTIVE_CAPTURE:
                return R.drawable.cam_core_photo_stack_predictive_capture_icn;
            case TIME_SHIFT:
                return R.drawable.cam_core_photo_stack_timeshift_icn;
            case TIME_SHIFT_VIDEO:
                return R.drawable.cam_core_photo_stack_timeshift_video_hummingbird_icn;
            case TIME_SHIFT_VIDEO_120F:
                return R.drawable.cam_core_photo_stack_timeshift_video_120fps_icn;
            case VIDEO_4K:
                return R.drawable.cam_core_photo_stack_4k_icn;
            case SUPER_SLOW_MOTION_VIDEO:
                return R.drawable.cam_core_photo_stack_super_slow_motion_icn;
            case SUPER_SLOW_SHOT_VIDEO:
                return R.drawable.cam_core_photo_stack_super_slow_motion_icn;
            case STANDARD_SLOW_MOTION_VIDEO:
                return R.drawable.cam_core_photo_stack_super_slow_motion_icn;
            case HIGH_FRAME_RATE_VIDEO:
                return R.drawable.cam_core_photo_stack_timeshift_video_120fps_icn;
            default:
                return -1;
        }
    }
}