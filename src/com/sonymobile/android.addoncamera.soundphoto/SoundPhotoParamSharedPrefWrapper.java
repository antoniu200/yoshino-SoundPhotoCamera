package com.sonymobile.android.addoncamera.soundphoto;

import android.content.Context;

/* loaded from: classes.dex */
public class SoundPhotoParamSharedPrefWrapper {
    private static final String TAG = SoundPhotoParamSharedPrefWrapper.class.getSimpleName();
    private static final String VERSION_KEY = "SHARED_PREFERNCE_VERSION";
    private final SoundPhotoParamSharedPref mEffectParamSharedPref;
    private final String mSharedPreferenceName;
    private final String mVersion;

    public SoundPhotoParamSharedPrefWrapper(Context context, String name, String version) {
        this.mEffectParamSharedPref = new SoundPhotoParamSharedPref(context, name, version);
        this.mSharedPreferenceName = name;
        this.mVersion = version;
        String sharedVersion = getParamFromSP(VERSION_KEY, "");
        boolean isAvailabeVersion = this.mVersion.equals(sharedVersion);
        if (!isAvailabeVersion) {
            this.mEffectParamSharedPref.clear();
            this.mEffectParamSharedPref.setParamFromSP(VERSION_KEY, this.mVersion);
        }
    }

    public int getParamFromSP(String key, int value) {
        return this.mEffectParamSharedPref.getParamFromSP(key, value);
    }

    public void setParamFromSP(String key, int value) {
        this.mEffectParamSharedPref.setParamFromSP(key, value);
    }

    public boolean getParamFromSP(String key, boolean value) {
        return this.mEffectParamSharedPref.getParamFromSP(key, value);
    }

    public void setParamFromSP(String key, boolean value) {
        this.mEffectParamSharedPref.setParamFromSP(key, value);
    }

    public float getParamFromSP(String key, float value) {
        return this.mEffectParamSharedPref.getParamFromSP(key, value);
    }

    public void setParamFromSP(String key, float value) {
        this.mEffectParamSharedPref.setParamFromSP(key, value);
    }

    public String getParamFromSP(String key, String value) {
        return this.mEffectParamSharedPref.getParamFromSP(key, value);
    }

    public void setParamFromSP(String key, String value) {
        this.mEffectParamSharedPref.setParamFromSP(key, value);
    }

    public String getVersion() {
        return this.mVersion;
    }

    public String getSharedPreferenceName() {
        return this.mSharedPreferenceName;
    }

    public void clear() {
        this.mEffectParamSharedPref.clear();
        this.mEffectParamSharedPref.setParamFromSP(VERSION_KEY, this.mVersion);
    }
}