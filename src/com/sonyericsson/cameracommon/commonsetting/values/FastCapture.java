package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingConstants;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

/* loaded from: classes.dex */
public enum FastCapture implements CommonSettingValue {
    LAUNCH_AND_CAPTURE(-1, R.string.cam_strings_fast_capturing_launch_and_capture_photo_txt, 1, true, CommonSettingConstants.FastCaptureValue.LAUNCH_AND_CAPTURE),
    LAUNCH_ONLY(-1, R.string.cam_strings_fast_capturing_launch_only_txt, 1, true, CommonSettingConstants.FastCaptureValue.LAUNCH_ONLY),
    LAUNCH_AND_RECORDING(-1, R.string.cam_strings_fast_capturing_launch_and_capture_video_txt, 2, true, CommonSettingConstants.FastCaptureValue.LAUNCH_AND_RECORDING),
    VIDEO_LAUNCH_ONLY(-1, R.string.cam_strings_fast_capturing_launch_only_video_txt, 2, true, CommonSettingConstants.FastCaptureValue.VIDEO_LAUNCH_ONLY),
    OFF(-1, R.string.cam_strings_settings_off_txt, 0, false, "off");

    public static final String TAG = "FastCapture";
    private static final int sParameterTextId = R.string.cam_strings_fast_capturing_txt;
    private final int mIconId;
    private final boolean mIsFastCaptureOn;
    private final String mSettingsSecureValue;
    private final int mTextId;
    private final int mType;

    FastCapture(int iconId, int textId, int type, boolean isFastCaptureOn, String settingsSecureValue) {
        this.mIconId = iconId;
        this.mTextId = textId;
        this.mType = type;
        this.mIsFastCaptureOn = isFastCaptureOn;
        this.mSettingsSecureValue = settingsSecureValue;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.FAST_CAPTURE;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getIconId() {
        return this.mIconId;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getTextId() {
        return this.mTextId;
    }

    public int getCameraType() {
        return this.mType;
    }

    public boolean isFastCaptureOn() {
        return this.mIsFastCaptureOn;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public String getProviderValue() {
        return this.mSettingsSecureValue;
    }

    public String getParameterName() {
        return getClass().getName();
    }

    public int getParameterKeyTextId() {
        return sParameterTextId;
    }

    public int getParameterkeyTitleTextId() {
        return R.string.cam_strings_fast_capturing_title_txt;
    }

    public static FastCapture getDefaultValue() {
        return LAUNCH_ONLY;
    }
}