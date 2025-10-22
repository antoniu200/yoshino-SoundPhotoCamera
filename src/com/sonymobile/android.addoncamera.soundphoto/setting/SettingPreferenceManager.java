package com.sonymobile.android.addoncamera.soundphoto.setting;

import android.hardware.Camera;
import com.sonymobile.android.addoncamera.soundphoto.SoundPhotoParamSharedPrefWrapper;
import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.Flash;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.Map;

/* loaded from: classes.dex */
public class SettingPreferenceManager {
    private static final String LAST_CAPTURING_MODE_KEY = "LAST_CAPTURING_MODE";
    private static final String TAG = SettingPreferenceManager.class.getSimpleName();
    private SettingPreference mCurrentPreference;
    private final SoundPhotoParamSharedPrefWrapper mSharedPrefs;
    private final Map<CapturingMode, SettingPreference> mPreferenceMap = new EnumMap(CapturingMode.class);
    private Map<CapturingMode, Boolean> mIsInitializedMap = new EnumMap(CapturingMode.class);

    public SettingPreferenceManager(SoundPhotoParamSharedPrefWrapper sharedPrefs) {
        for (CapturingMode mode : CapturingMode.values()) {
            this.mPreferenceMap.put(mode, SettingPreferenceFactory.create(mode));
            this.mIsInitializedMap.put(mode, false);
        }
        this.mSharedPrefs = sharedPrefs;
        String modeName = sharedPrefs.getParamFromSP(LAST_CAPTURING_MODE_KEY, CapturingMode.MAIN.name());
        try {
            changeCapturingMode(CapturingMode.valueOf(modeName));
        } catch (IllegalArgumentException e) {
            changeCapturingMode(CapturingMode.MAIN);
        }
    }

    public void initialize(CapturingMode mode, Camera.Parameters cameraParameters) {
        if (!this.mIsInitializedMap.get(mode).booleanValue()) {
            boolean isRestored = false;
            for (CapturingMode m : CapturingMode.values()) {
                if (this.mIsInitializedMap.get(m).booleanValue()) {
                    isRestored = true;
                }
            }
            if (!isRestored) {
                for (SettingPreference preference : this.mPreferenceMap.values()) {
                    preference.restore(this.mSharedPrefs);
                }
            }
            SettingPreference set = this.mPreferenceMap.get(mode);
            set.flash.setOptions(Flash.getOptions(cameraParameters));
            if (!Arrays.asList(set.flash.getOptions()).contains(set.flash.get())) {
                set.flash.set(Flash.getDefaultValue((Flash[]) set.flash.getOptions()));
            }
            this.mIsInitializedMap.put(mode, true);
        }
    }

    public SettingPreference getCurrentPreference() {
        return this.mCurrentPreference;
    }

    public void changeCapturingMode(CapturingMode mode) {
        if (!this.mPreferenceMap.get(mode).equals(this.mCurrentPreference)) {
            if (this.mCurrentPreference != null && this.mCurrentPreference.flash.get() == Flash.LED_ON) {
                this.mCurrentPreference.flash.set(Flash.AUTO);
            }
            this.mCurrentPreference = this.mPreferenceMap.get(mode);
        }
    }

    public void suspend() {
        for (SettingPreference params : this.mPreferenceMap.values()) {
            params.store(this.mSharedPrefs);
        }
        this.mSharedPrefs.setParamFromSP(LAST_CAPTURING_MODE_KEY, this.mCurrentPreference.capturingMode.name());
        for (CapturingMode mode : CapturingMode.values()) {
            this.mIsInitializedMap.put(mode, false);
        }
    }

    public void release() {
        this.mPreferenceMap.clear();
        this.mIsInitializedMap.clear();
        this.mCurrentPreference = null;
    }
}