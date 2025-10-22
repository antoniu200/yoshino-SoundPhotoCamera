package com.sonyericsson.cameracommon.intent;

import android.content.ComponentName;
import com.sonyericsson.cameracommon.constants.CommonConstants;

/* loaded from: classes.dex */
public class IntentConstants {
    public static final String ACTION_FRONT_STILL_IMAGE_CAMERA = "com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA";
    public static final String ACTION_FRONT_VIDEO_CAMERA = "com.sonyericsson.android.camera.action.FRONT_VIDEO_CAMERA";
    public static final String CAMERA_LAUNCH_SOURCE_POWER_DOUBLE_TAP = "power_double_tap";
    public static final ComponentName CAMERA_UI_COMPONENT_NAME = new ComponentName(CommonConstants.CORE_CAMERA_PACKAGE, "com.sonyericsson.android.camera.CameraActivity");
    public static final ComponentName CAMERA_UI_ONE_SHOT_COMPONENT_NAME = new ComponentName(CommonConstants.CORE_CAMERA_PACKAGE, "com.sonyericsson.android.camera.CameraActivityForCaptureOnlyPhoto");
    public static final String EXTRA_CALLING_ACTIVITY = "calling-activity";
    public static final String EXTRA_CALLING_MODE = "calling-mode";
    public static final String EXTRA_CALLING_PACKAGE = "calling-package";
    public static final String EXTRA_CAMERA_LAUNCH_SOURCE = "com.android.systemui.camera_launch_source";
    public static final String EXTRA_CAPTURING_MODE = "com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE";
    public static final String EXTRA_LAUNCHED_BY_ANOTHER_CAMERA = "com.sonyericsson.android.camera3d.extra.launchedByAnotherCamera";
    public static final String EXTRA_LAUNCHED_BY_FAST_CAPTURING = "com.sonyericsson.android.camera.extra.launchedByFastCapturing";
    public static final String EXTRA_PERMISSIONS_LIST = "permissions_list";
    public static final String EXTRA_REQUEST_ADVANCED_SETTINGS_DIALOG_OPEN = "com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogopen";
    public static final String EXTRA_REQUEST_APPS_UI = "com.sonyericsson.android.camera.extra.requstAppsUi";
    public static final String TAG = "IntentConstants";

    public static class BroadcastIntent {
        public static final String ACTION_CAMERA_FINISH = "com.sonyericsson.android.camera.intent.action.FINISH";
        public static final String ACTION_CAMERA_FINISH_CAMERAACTIVITY = "com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY";
        public static final String ACTION_CAMERA_LAUNCH = "com.sonyericsson.android.camera.intent.action.LAUNCH";
        public static final String ACTION_CAMERA_NEW_PICT = "com.android.camera.NEW_PICTURE";
        public static final String ACTION_MUSICSERVICE_COMMAND = "com.android.music.musicservicecommand";
        public static final String EXTRA_PREDICTIVE_CAPTURE_DIRECTORY_PATH = "com.sonyericsson.android.camera.extra.PREDICTIVE_CAPTURE_DIRECTORY_PATH";
        public static final String MUSICSERVICE_COMMAND = "command";
        public static final String MUSICSERVICE_COMMAND_PAUSE = "pause";
        public static final String PREDICTIVE_CAPTURE_SAVE_COMPLETED = "com.sonyericsson.android.camera.intent.action.PREDICTIVE_CAPTURE_SAVE_COMPLETED";
    }
}