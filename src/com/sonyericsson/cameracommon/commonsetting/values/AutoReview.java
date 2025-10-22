package com.sonyericsson.cameracommon.commonsetting.values;

import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingConstants;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.settings.AutoReviewSettingKey;
import com.sonyericsson.cameracommon.settings.AutoReviewSettingValue;

/* loaded from: classes.dex */
public enum AutoReview implements AutoReviewSettingValue, CommonSettingValue {
    UNLIMITED(-1, R.string.cam_strings_preview_duration_unlimited_txt, -1, CommonSettingConstants.AutoReviewValue.UNLIMITED),
    LONG(-1, R.string.cam_strings_preview_duration_5sec_txt, 5000, CommonSettingConstants.AutoReviewValue.LONG),
    SHORT(-1, R.string.cam_strings_preview_duration_3sec_txt, 3000, CommonSettingConstants.AutoReviewValue.SHORT),
    EDIT(-1, R.string.cam_strings_preview_edit_txt, 0, CommonSettingConstants.AutoReviewValue.EDIT),
    OFF(-1, R.string.cam_strings_settings_off_txt, 0, "off");

    public static final String TAG = "AutoReview";
    private static final int sParameterTextId = R.string.cam_strings_preview_duration_txt;
    private final int mDuration;
    private final int mIconId;
    private final String mProviderValue;
    private final int mTextId;

    AutoReview(int iconId, int textId, int duration, String providerValue) {
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
        return CommonSettingKey.AUTO_REVIEW;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public String getProviderValue() {
        return this.mProviderValue;
    }

    public static AutoReview getDefaultValue() {
        return OFF;
    }
}