package com.sonyericsson.cameracommon.contentsview.contents;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.contentsview.contents.Content;

/* loaded from: classes.dex */
class PlayIconResources {
    PlayIconResources() {
    }

    public static int get(Content.ContentsType type) {
        switch (type) {
            case VIDEO:
                return R.drawable.cam_core_photo_stack_video_icn;
            case SOUND_PHOTO:
                return R.drawable.cam_core_photo_stack_soundphoto_icn;
            default:
                return -1;
        }
    }
}