package com.sonyericsson.cameracommon.commonsetting;

import android.provider.BaseColumns;

/* loaded from: classes.dex */
public class CommonSettingConstants {
    private static final String AUTHORITY = "com.sonymobile.android.addoncamera.dummy.provider";
    public static final String COMMONSETTING_TABLE = "commonsettings";
    public static final String TAG = "CommonSettingConstants";

    public static final class AutoReviewForCameraUiValue {
        public static final String ALWAYS = "always";
        public static final String FRONT_ONLY = "front_only";
        static final String KEY = "auto_review_for_camera_ui";
        public static final String OFF = "off";
    }

    public static final class AutoReviewValue {
        public static final String EDIT = "edit";
        static final String KEY = "auto_review";
        public static final String LONG = "long";
        public static final String OFF = "off";
        public static final String SHORT = "short";
        public static final String UNLIMITED = "unlimited";
    }

    public static final class AutoUploadValue {
        static final String KEY = "auto_upload";
        public static final String OFF = "off";
        public static final String ON = "on";
    }

    public interface CommonSettingColumns extends BaseColumns {
        public static final String NAME = "name";
        public static final String VALUE = "value";
    }

    public static final class DoNotShowAgainCheckForGeotagDialogValue {
        public static final String CHECKED = "checked";
        static final String KEY = "do_not_show_again_check_for_geotag_dialog_value";
        public static final String NOT_CHECKED = "not_checked";
    }

    public static final class FastCaptureValue {
        public static final String FCC_STATUS_OFF = "fcc.status.off";
        public static final String FCC_STATUS_ON = "fcc.status.on";
        static final String KEY = "fast-capture";
        public static final String KEY_FCC_SETTING = "com.sonymobile.camera.quick_launch";
        public static final String KEY_FCC_STATUS = "key.fcc.status";
        public static final String LAUNCH_AND_CAPTURE = "photo-launch-and-capture";
        public static final String LAUNCH_AND_RECORDING = "video-launch-and-recording";
        public static final String LAUNCH_ONLY = "photo-launch-only";
        public static final String OFF = "off";
        public static final String VIDEO_LAUNCH_ONLY = "video-launch-only";
    }

    public static final class FlashValue {
        public static final String AUTO = "auto";
        static final String KEY = "flash";
        public static final String LED_OFF = "flashlight_off";
        public static final String LED_ON = "flashlight_on";
        public static final String OFF = "off";
        public static final String ON = "fill_flash";
        public static final String PHOTO_LIGHT_ON_AS_FLASH = "photoLight";
        public static final String RED_EYE = "red_eye_reduction";
    }

    public static final class GeoTagValue {
        static final String KEY = "geo_tag";
        public static final String OFF = "off";
        public static final String ON = "on";
    }

    public static final class GridLineValue {
        static final String KEY = "grid_line";
        public static final String OFF = "off";
        public static final String ON = "on";
    }

    public static final class HelpGuideValue {
        static final String KEY = "help_guide";
    }

    public static final class PhotoLightValue {
        static final String KEY = "photo_light";
        public static final String OFF = "off";
        public static final String ON = "on";
    }

    public static final class ShutterSoundValue {
        static final String KEY = "shutter_sound";
        public static final String OFF = "off";
        public static final String ON = "on";
    }

    public static final class SoftwareLicenses {
        static final String KEY = "software_licenses";
    }

    public static final class StorageValue {
        public static final String EMMC = "emmc";
        public static final String INTERNAL_MASS_STORAGE = "internal_mass_storage";
        static final String KEY = "storage";
        public static final String MEMORY_CARD = "memory_card";
        public static final String SDCARD = "sdcard";
    }

    public static final class TermOfUseValue {
        static final String KEY = "term_of_use";
    }

    public static final class TouchBlockValue {
        static final String KEY = "touch_block";
    }

    public static final class TouchCaptureForCameraUiValue {
        public static final String FRONT_ONLY = "front_only";
        static final String KEY = "touch_capture_for_camera_ui";
        public static final String OFF = "off";
        public static final String ON = "on";
    }

    public static final class TouchCaptureValue {
        static final String KEY = "touch_capture";
        public static final String OFF = "off";
        public static final String ON = "on";
    }

    public static final class VolumeKeyValue {
        public static final String HW_CAMERA_KEY = "HW_camera_key";
        static final String KEY = "volume_key";
        public static final String VOLUME = "volume";
        public static final String ZOOM = "zoom";
    }

    public static String getAuthority() {
        return AUTHORITY;
    }
}