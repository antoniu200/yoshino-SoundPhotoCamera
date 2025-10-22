package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.os.Build;
import com.sonyericsson.cameracommon.constants.CommonConstants;

/* loaded from: classes.dex */
public class ParamSharedPrefWrapper {
    public static final String TAG = ParamSharedPrefWrapper.class.getSimpleName();
    private static final String VERSION_KEY = "SHARED_PREFERNCE_VERSION";
    private final ParamSharedPref mParamSharedPref;
    private final String mSharedPreferenceName;
    private final String mVersion;

    public ParamSharedPrefWrapper(Context context, String name, String version) {
        this.mParamSharedPref = new ParamSharedPref(context, name);
        this.mSharedPreferenceName = name;
        if (version == null || version.isEmpty()) {
            this.mVersion = "";
            return;
        }
        this.mVersion = version;
        String sharedVersion = getParamFromSP(VERSION_KEY, "");
        boolean isAvailabeVersion = this.mVersion.equals(sharedVersion);
        if (!isAvailabeVersion) {
            this.mParamSharedPref.clear();
            this.mParamSharedPref.setParamToSP(VERSION_KEY, this.mVersion);
        }
    }

    public ParamSharedPrefWrapper(Context context, String name) {
        this(context, name, null);
    }

    public int getParamFromSP(String key, int value) {
        return this.mParamSharedPref.getParamFromSP(key, value);
    }

    public void setParamToSP(String key, int value) {
        this.mParamSharedPref.setParamToSP(key, value);
    }

    public boolean getParamFromSP(String key, boolean value) {
        return this.mParamSharedPref.getParamFromSP(key, value);
    }

    public void setParamToSP(String key, boolean value) {
        this.mParamSharedPref.setParamToSP(key, value);
    }

    public float getParamFromSP(String key, float value) {
        return this.mParamSharedPref.getParamFromSP(key, value);
    }

    public void setParamToSP(String key, float value) {
        this.mParamSharedPref.setParamToSP(key, value);
    }

    public String getParamFromSP(String key, String value) {
        return this.mParamSharedPref.getParamFromSP(key, value);
    }

    public void setParamToSP(String key, String value) {
        this.mParamSharedPref.setParamToSP(key, value);
    }

    public String getVersion() {
        return this.mVersion;
    }

    public String getSharedPreferenceName() {
        return this.mSharedPreferenceName;
    }

    public void clear() {
        this.mParamSharedPref.clear();
        this.mParamSharedPref.setParamToSP(VERSION_KEY, this.mVersion);
    }

    public void checkFirmwareVersionUpdated() {
        String cachedVersion = getParamFromSP(CommonConstants.FINGERPRINT, "");
        String currentVersion = Build.FINGERPRINT;
        if (!cachedVersion.equals(currentVersion)) {
            clear();
            setParamToSP(CommonConstants.FINGERPRINT, currentVersion);
        }
    }
}