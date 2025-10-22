package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

/* loaded from: classes.dex */
public enum TouchCapture implements CommonSettingValue {
    ON(-1, R.string.cam_strings_settings_on_txt, true, "on"),
    OFF(-1, R.string.cam_strings_settings_off_txt, false, "off");

    public static final String TAG = "TouchCapture";
    private static final int sParameterTextId = R.string.cam_strings_touch_capturing_title_txt;
    private final int mIconId;
    private final boolean mIsTouchCaptureOn;
    private final String mProviderValue;
    private final int mTextId;

    TouchCapture(int iconId, int textId, boolean isTouchCaptureOn, String providerValue) {
        this.mIconId = iconId;
        this.mTextId = textId;
        this.mIsTouchCaptureOn = isTouchCaptureOn;
        this.mProviderValue = providerValue;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.TOUCH_CAPTURE;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getIconId() {
        return this.mIconId;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getTextId() {
        return this.mTextId;
    }

    public boolean isTouchCaptureOn() {
        return this.mIsTouchCaptureOn;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public String getProviderValue() {
        return this.mProviderValue;
    }

    public String getParameterName() {
        return getClass().getName();
    }

    public int getCommonSettingKeyTextId() {
        return sParameterTextId;
    }

    public static TouchCapture getDefaultValue() {
        return OFF;
    }
}