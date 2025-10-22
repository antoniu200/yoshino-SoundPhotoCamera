package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingConstants;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.settings.AutoReviewSettingKey;
import com.sonyericsson.cameracommon.settings.AutoReviewSettingValue;

/* loaded from: classes.dex */
public enum AutoReviewForCameraUi implements AutoReviewSettingValue, CommonSettingValue {
    ALWAYS(-1, R.string.cam_strings_preview_always_txt, 3000, CommonSettingConstants.AutoReviewForCameraUiValue.ALWAYS),
    FRONT_ONLY(-1, R.string.cam_strings_preview_only_front_txt, 3000, "front_only"),
    OFF(-1, R.string.cam_strings_settings_off_txt, 0, "off");

    public static final String TAG = "AutoReviewForCameraUi";
    private static final int sParameterTextId = R.string.cam_strings_preview_duration_txt;
    private final int mDuration;
    private final int mIconId;
    private final String mProviderValue;
    private final int mTextId;

    AutoReviewForCameraUi(int iconId, int textId, int duration, String providerValue) {
        this.mIconId = iconId;
        this.mTextId = textId;
        this.mDuration = duration;
        this.mProviderValue = providerValue;
    }

    @Override // com.sonyericsson.cameracommon.settings.AutoReviewSettingValue
    public AutoReviewSettingKey getAutoReviewSettingKey() {
        return AutoReviewSettingKey.AUTO_REVIEW;
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

    public int getDuration() {
        return this.mDuration;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.AUTO_REVIEW_FOR_CAMERA_UI;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public String getProviderValue() {
        return this.mProviderValue;
    }
}