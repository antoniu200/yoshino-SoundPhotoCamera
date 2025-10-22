package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

/* loaded from: classes.dex */
public enum ShutterSound implements CommonSettingValue {
    ON(-1, R.string.cam_strings_settings_on_txt, true, "sound1/", "on"),
    OFF(-1, R.string.cam_strings_settings_off_txt, false, "sound0/", "off");

    public static final String TAG = "ShutterSound";
    private static final int sParameterTextId = R.string.cam_strings_camera_sound_txt;
    private final String mDirectoryName;
    private final int mIconId;
    private final boolean mIsShutterSoundOn;
    private final String mProviderValue;
    private final int mTextId;

    ShutterSound(int iconId, int textId, boolean isShutterSoundOn, String directoryName, String providerValue) {
        this.mIconId = iconId;
        this.mTextId = textId;
        this.mIsShutterSoundOn = isShutterSoundOn;
        this.mDirectoryName = directoryName;
        this.mProviderValue = providerValue;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.SHUTTER_SOUND;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getIconId() {
        return this.mIconId;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getTextId() {
        return this.mTextId;
    }

    public boolean isShutterSoundOn() {
        return this.mIsShutterSoundOn;
    }

    public String getDirectoryName() {
        return this.mDirectoryName;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public String getProviderValue() {
        return this.mProviderValue;
    }

    public String getParameterName() {
        return getClass().getName();
    }

    public int getParameterKeyTextId() {
        return sParameterTextId;
    }

    public static ShutterSound getDefaultValue() {
        return ON;
    }
}