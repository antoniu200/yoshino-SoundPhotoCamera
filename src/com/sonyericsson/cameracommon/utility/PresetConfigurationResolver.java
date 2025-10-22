package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.values.Geotag;
import com.sonyericsson.cameracommon.commonsetting.values.ShutterSound;
import com.sonyericsson.cameracommon.mediasaving.location.LocationSettingsReader;

/* loaded from: classes.dex */
public class PresetConfigurationResolver {
    public static final String Af_SUCCESS_FILE_PATH = "/system/media/audio/camera/common/af_success.m4a";
    public static final String KEY_SHUTTER_SOUND = "COMMON_PARAMS_SHUTTER_SOUND";
    public static final String RECORD_SOUND_FILE_PATH_ON = "/system/media/audio/ui/VideoRecord.ogg";
    public static final String SHUTTER_SOUND_FILE_PATH_OFF = "off";
    public static final String SHUTTER_SOUND_FILE_PATH_ON = "/system/media/audio/ui/camera_click.ogg";
    public static final String TAG = "PresetConfigurationResolver";
    public static final String VALUE_SHUTTER_SOUND_OFF = "OFF";
    public static final String VALUE_SHUTTER_SOUND_ON = "SOUND1";

    public static String getShutterSoundFilePath(BaseActivity cont) {
        boolean sound = isShutterSoundEnabled(cont);
        return getShutterSoundFilePath(sound);
    }

    public static String getShutterSoundFilePath(boolean isShutterSoundEnabled) {
        if (isShutterSoundEnabled) {
            return SHUTTER_SOUND_FILE_PATH_ON;
        }
        return "off";
    }

    public static String getRecordSoundFilePath(boolean isShutterSoundEnabled) {
        if (isShutterSoundEnabled) {
            return RECORD_SOUND_FILE_PATH_ON;
        }
        return "off";
    }

    public static boolean isShutterSoundEnabled(BaseActivity act) {
        CommonSettingValue commonvalue = act.getCommonSettings().get(CommonSettingKey.SHUTTER_SOUND);
        return commonvalue != ShutterSound.OFF;
    }

    public static boolean isGeoTagEnabled(CommonSettingValue geotag, Context context) {
        if (geotag == Geotag.ON) {
            boolean gps = LocationSettingsReader.isLocationProviderAllowed(context, "gps");
            boolean net = LocationSettingsReader.isLocationProviderAllowed(context, "network");
            if (gps || net) {
                return true;
            }
        }
        return false;
    }
}