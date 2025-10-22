package com.sonyericsson.cameracommon.settings;

import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.commonsetting.values.AutoReview;

/* loaded from: classes.dex */
public enum AutoReviewSettingKey implements SettingKey {
    AUTO_REVIEW(R.string.cam_strings_preview_duration_title_txt, AutoReview.OFF, AutoReview.values());

    public static final String TAG = "AutoReviewSettingKey";
    private final AutoReviewSettingValue mDefault;
    private int mTitleTextId;
    private AutoReviewSettingValue[] mValues;

    AutoReviewSettingKey(int titleTextId, AutoReviewSettingValue defaultValue, AutoReviewSettingValue[] values) {
        this.mTitleTextId = titleTextId;
        this.mDefault = defaultValue;
        this.mValues = values;
    }

    public int getTitleId() {
        return this.mTitleTextId;
    }

    public AutoReviewSettingValue getDefaultValue() {
        return this.mDefault;
    }

    public AutoReviewSettingValue[] getValues() {
        return (AutoReviewSettingValue[]) this.mValues.clone();
    }

    public AutoReviewSettingValue getDefaultValue(AutoReviewSettingKey settingKey) {
        return this.mDefault;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getIconId() {
        return 0;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getTextId() {
        return 0;
    }
}