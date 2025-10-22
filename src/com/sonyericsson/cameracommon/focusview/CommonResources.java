package com.sonyericsson.cameracommon.focusview;

import com.sonymobile.android.addoncamera.soundphoto.R;
/* loaded from: classes.dex */
public class CommonResources {
    public static final String TAG = "CommonResources";

    public static class FaceIndicator {
        public static final int FAIL = 0;
        public static final int TRANSPARENT = 0;
        public static final int NORMAL = R.drawable.cam_auto_focus_inactive_icn;
        public static final int SUCCESS = R.drawable.cam_auto_focus_focus_locked_icn;
        public static final int PRIORITY = R.drawable.cam_auto_focus_inactive_selected_icn;
    }

    public static class MultiIndicator {
        public static final int FAIL = 0;
        public static final int NORMAL = R.drawable.cam_auto_focus_inactive_icn;
        public static final int SUCCESS = R.drawable.cam_auto_focus_focus_locked_icn;
    }

    public static class ObjectCircleIndicator {
        public static final int FAIL = 0;
        public static final int TRACKING = R.drawable.cam_auto_focus_circle_focusing_icn;
        public static final int TRACKING_RECORDING = R.drawable.cam_auto_focus_circle_focus_locked_icn;
        public static final int SUCCESS = R.drawable.cam_auto_focus_circle_focus_locked_icn;
        public static final int TOUCH = R.drawable.cam_auto_focus_circle_focusing_icn;
        public static final int TOUCH_RECORDING = R.drawable.cam_auto_focus_circle_focus_locked_icn;
        public static final int FOCUSING = R.drawable.cam_auto_focus_circle_focusing_icn;
    }

    public static class ObjectIndicator {
        public static final int FAIL = 0;
        public static final int TRACKING_SEARCHING = R.drawable.cam_auto_focus_object_tracking_1_icn;
        public static final int TRACKING_SEARCHING_RECORDING = R.drawable.cam_auto_focus_object_tracking_1_icn;
        public static final int TRACKING = R.drawable.cam_auto_focus_object_tracking_2_icn;
        public static final int TRACKING_RECORDING = R.drawable.cam_auto_focus_object_tracking_2_icn;
        public static final int SUCCESS = R.drawable.cam_auto_focus_object_tracking_2_icn;
        public static final int TOUCH = R.drawable.cam_auto_focus_object_tracking_1_icn;
        public static final int TOUCH_RECORDING = R.drawable.cam_auto_focus_object_tracking_1_icn;
        public static final int FOCUSING = R.drawable.cam_auto_focus_object_tracking_2_icn;
        public static final int LOST = R.drawable.cam_auto_focus_object_tracking_lost_icn;
    }

    public static class SingleIndicator {
        public static final int FAIL = 0;
        public static final int TOUCH = 0;
        public static final int NORMAL = R.drawable.cam_auto_focus_circle_focusing_icn;
        public static final int SUCCESS = R.drawable.cam_auto_focus_circle_focus_locked_icn;
        public static final int FOCUSING = R.drawable.cam_auto_focus_circle_focusing_icn;
    }

    public static class TouchIndicator {
        public static final int FAIL = 0;
        public static final int NORMAL = R.drawable.cam_auto_focus_circle_focusing_icn;
        public static final int TOUCH = R.drawable.cam_auto_focus_animation_touch_focusing_icn;
        public static final int RELEASE = R.drawable.cam_auto_focus_circle_focusing_icn;
        public static final int SUCCESS = R.drawable.cam_auto_focus_circle_focus_locked_icn;
        public static final int FOCUSING = R.drawable.cam_auto_focus_circle_focusing_icn;
    }
}