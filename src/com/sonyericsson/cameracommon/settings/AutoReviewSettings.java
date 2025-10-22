package com.sonyericsson.cameracommon.settings;

import java.util.HashMap;

/* loaded from: classes.dex */
public class AutoReviewSettings {
    public static final String TAG = "AutoReviewSettings";
    private final HashMap<AutoReviewSettingKey, AutoReviewSettingValue> mSettings = new HashMap<>();

    public AutoReviewSettingValue get(AutoReviewSettingKey key) {
        AutoReviewSettingValue value = this.mSettings.get(key);
        if (value == null) {
            return key.getDefaultValue(key);
        }
        return value;
    }

    public void set(AutoReviewSettingValue value) {
        AutoReviewSettingKey key = value.getAutoReviewSettingKey();
        this.mSettings.put(key, value);
    }
}