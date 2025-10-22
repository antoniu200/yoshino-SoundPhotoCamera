package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingConstants;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;

/* loaded from: classes.dex */
public enum Flash implements CommonSettingValue {
    AUTO(R.drawable.cam_flash_auto_icn, R.string.cam_strings_settings_auto_txt, "auto", true, "auto"),
    ON(R.drawable.cam_flash_fill_flash_icn, R.string.cam_strings_flash_fill_flash_txt, "on", false, CommonSettingConstants.FlashValue.ON),
    RED_EYE(R.drawable.cam_flash_red_eye_reduc_icn, R.string.cam_strings_flash_red_eye_reduc_txt, "red-eye", true, CommonSettingConstants.FlashValue.RED_EYE),
    OFF(R.drawable.cam_flash_off_icn, R.string.cam_strings_settings_off_txt, "off", false, "off"),
    LED_ON(R.drawable.cam_flash_torch_icn, R.string.cam_strings_flash_torch_txt, "torch", false, CommonSettingConstants.FlashValue.LED_ON),
    LED_OFF(R.drawable.cam_flash_torch_off_icn, R.string.cam_strings_settings_off_txt, "off", false, CommonSettingConstants.FlashValue.LED_OFF),
    PHOTO_LIGHT_ON_AS_FLASH(PhotoLight.ON.getIconId(), PhotoLight.ON.getTextId(), PhotoLight.ON.getValue(), false, CommonSettingConstants.FlashValue.PHOTO_LIGHT_ON_AS_FLASH);

    public static final String TAG = "Flash";
    private static final int sParameterTextId = R.string.cam_strings_flash_txt;
    private final int mIconId;
    private final boolean mIsSceneDependent;
    private final String mProviderValue;
    private final int mTextId;
    private final String mValue;

    Flash(int iconId, int textId, String value, boolean sceneDependent, String providerValue) {
        this.mIconId = iconId;
        this.mTextId = textId;
        this.mValue = value;
        this.mIsSceneDependent = sceneDependent;
        this.mProviderValue = providerValue;
    }

    public int getParameterKeyTextId() {
        return sParameterTextId;
    }

    public String getParameterName() {
        return getClass().getName();
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getIconId() {
        return this.mIconId;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getTextId() {
        return this.mTextId;
    }

    public String getValue() {
        return this.mValue;
    }

    public boolean isSceneDependent() {
        return this.mIsSceneDependent;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.FLASH;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public String getProviderValue() {
        return this.mProviderValue;
    }

    public static Flash getFlashFromParameterString(String flashString) {
        for (Flash flash : values()) {
            if (flash.getValue().equals(flashString)) {
                return flash;
            }
        }
        return null;
    }

    public static Flash getDefaultValue() {
        return AUTO;
    }
}