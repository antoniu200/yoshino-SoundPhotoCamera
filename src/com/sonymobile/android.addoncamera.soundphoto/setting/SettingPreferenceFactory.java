package com.sonymobile.android.addoncamera.soundphoto.setting;

import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.AutoReview;
import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.Flash;
import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.SelfTimer;

/* loaded from: classes.dex */
public class SettingPreferenceFactory {
    public static SettingPreference create(CapturingMode mode) {
        switch (mode) {
            case MAIN:
                return createMainCamera(mode);
            case FRONT:
                return createFrontCamera(mode);
            default:
                throw new IllegalArgumentException();
        }
    }

    private static SettingPreference createMainCamera(CapturingMode mode) {
        SettingPreference set = new SettingPreference(CapturingMode.MAIN);
        set.autoReview.setOptions(AutoReview.values());
        set.autoReview.set(AutoReview.OFF);
        set.flash.setOptions(Flash.values());
        set.flash.set(Flash.AUTO);
        set.selfTimer.setOptions(SelfTimer.getOptions());
        set.selfTimer.set(SelfTimer.OFF);
        return set;
    }

    private static SettingPreference createFrontCamera(CapturingMode mode) {
        SettingPreference set = new SettingPreference(CapturingMode.FRONT);
        set.autoReview.setOptions(AutoReview.values());
        set.autoReview.set(AutoReview.OFF);
        set.selfTimer.setOptions(SelfTimer.getOptions());
        set.selfTimer.set(SelfTimer.OFF);
        return set;
    }
}