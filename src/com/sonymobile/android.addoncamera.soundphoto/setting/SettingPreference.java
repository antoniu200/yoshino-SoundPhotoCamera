package com.sonymobile.android.addoncamera.soundphoto.setting;

import com.sonymobile.android.addoncamera.soundphoto.SoundPhotoParamSharedPrefWrapper;
import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.AutoReview;
import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.Flash;
import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.SelfTimer;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class SettingPreference {
    private static final String DELIMITER = "-";
    public static final String TAG = SettingPreference.class.getSimpleName();
    public final CapturingMode capturingMode;
    private final Map<ParameterKey, ParameterHolder<?>> mHolders = new HashMap();
    public final ParameterHolder<AutoReview> autoReview = makeHolder(AutoReview.OFF);
    public final ParameterHolder<Flash> flash = makeHolder(Flash.AUTO);
    public final ParameterHolder<SelfTimer> selfTimer = makeHolder(SelfTimer.OFF);

    protected <T extends ParameterValue> ParameterHolder<T> makeHolder(T initValue) {
        ParameterHolder<T> holder = new ParameterHolder<>(initValue);
        this.mHolders.put(holder.getKey(), holder);
        return holder;
    }

    public SettingPreference(CapturingMode mode) {
        this.capturingMode = mode;
    }

    public void apply(ParameterApplyer applyer, boolean withoutCommit) {
        if (this.autoReview.getSelectability() != SettingSelectability.UNSUPPORTED) {
            applyer.set((AutoReview) this.autoReview.get());
        }
        if (this.flash.getSelectability() != SettingSelectability.UNSUPPORTED) {
            applyer.set((Flash) this.flash.get());
        }
        if (this.selfTimer.getSelectability() != SettingSelectability.UNSUPPORTED) {
            applyer.set((SelfTimer) this.selfTimer.get());
        }
        if (!withoutCommit) {
            applyer.commit();
        }
    }

    public void set(ParameterValue value) {
        this.mHolders.get(value.key()).setWithAutoCast(value);
    }

    public ParameterValue get(ParameterKey key) {
        return this.mHolders.get(key).get();
    }

    public ParameterValue[] options(ParameterKey key) {
        return this.mHolders.get(key).getOptions();
    }

    public SettingSelectability getSelectability(Parameters key) {
        return this.mHolders.get(key).getSelectability();
    }

    public void restore(SoundPhotoParamSharedPrefWrapper sharedPreference) {
        String value;
        Map<String, String> keyAndValueMap = new HashMap<>();
        for (Parameters key : Parameters.values()) {
            if (key.isPersistent() && (value = sharedPreference.getParamFromSP(getSharedPreferenceKey(key), (String) null)) != null) {
                keyAndValueMap.put(key.name(), value);
            }
        }
        readStringMapToLoad(keyAndValueMap);
        if (this.flash.get() == Flash.LED_ON) {
            this.flash.set(Flash.AUTO);
        }
    }

    public void store(SoundPhotoParamSharedPrefWrapper sharedPreference) {
        for (Map.Entry<String, String> entry : getStringMapToWriteInSP().entrySet()) {
            sharedPreference.setParamFromSP(entry.getKey(), entry.getValue());
        }
    }

    private String getSharedPreferenceKey(ParameterKey key) {
        return this.capturingMode + DELIMITER + key.name();
    }

    private Map<String, String> getStringMapToWriteInSP() {
        String value;
        Map<String, String> paramsMap = new HashMap<>();
        for (ParameterHolder<?> holder : this.mHolders.values()) {
            ParameterKey key = holder.getKey();
            if (key.isPersistent() && isSelectable(holder) && (value = holder.serialize()) != null) {
                paramsMap.put(getSharedPreferenceKey(key), value);
            }
        }
        return paramsMap;
    }

    private void readStringMapToLoad(Map<String, String> paramsMap) {
        String value;
        for (ParameterHolder<?> holder : this.mHolders.values()) {
            ParameterKey key = holder.getKey();
            if (key.isPersistent() && isSelectable(holder) && (value = paramsMap.get(key.name())) != null) {
                holder.deserialize(value);
            }
        }
    }

    private boolean isSelectable(ParameterHolder<?> parameter) {
        return parameter.getSelectability() == SettingSelectability.SELECTABLE;
    }
}