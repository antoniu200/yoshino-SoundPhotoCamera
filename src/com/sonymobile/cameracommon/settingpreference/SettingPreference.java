package com.sonymobile.cameracommon.settingpreference;

import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import com.sonymobile.cameracommon.settingpreference.ParameterApplyerInterface;
import com.sonymobile.cameracommon.settingpreference.ParameterSet;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class SettingPreference<T extends ParameterApplyerInterface, U extends ParameterSet<T>> {
    private static final String DELIMITER = "-";
    public static final String GLOBAL_PREFIX = "global";
    public static final String TAG = "SettingPreference";
    private final U mParameters;
    private final String mPrefix;

    public SettingPreference(String prefix, U parameters) {
        this.mPrefix = prefix;
        this.mParameters = parameters;
    }

    public U parameters() {
        return this.mParameters;
    }

    public void apply(T applyer) {
        this.mParameters.apply(applyer);
    }

    public ParameterValue get(ParameterKey key) {
        return this.mParameters.get(key).get();
    }

    public void set(ParameterValue value) {
        this.mParameters.get(value.key()).setWithAutoCast(value);
    }

    public ParameterValue[] options(ParameterKey key) {
        return this.mParameters.get(key).getOptions();
    }

    public SettingSelectability getSelectability(ParameterKey key) {
        return this.mParameters.get(key).getSelectability();
    }

    public boolean contains(ParameterKey key) {
        return this.mParameters.keys().contains(key);
    }

    public final void restore(ParamSharedPrefWrapper sharedPreference, ParameterKey[] parameters) {
        String value;
        Map<String, String> keyAndValueMap = new HashMap<>();
        for (ParameterKey key : parameters) {
            if (key.isPersistent() && (value = sharedPreference.getParamFromSP(getSharedPreferenceKey(key), (String) null)) != null) {
                keyAndValueMap.put(key.name(), value);
            }
        }
        readStringMapToLoad(keyAndValueMap);
    }

    public final void store(ParamSharedPrefWrapper sharedPreference) {
        for (Map.Entry<String, String> entry : getStringMapToWriteInSP().entrySet()) {
            sharedPreference.setParamToSP(entry.getKey(), entry.getValue());
        }
    }

    private String getSharedPreferenceKey(ParameterKey key) {
        return this.mPrefix + DELIMITER + key.name();
    }

    private Map<String, String> getStringMapToWriteInSP() {
        String value;
        Map<String, String> paramsMap = new HashMap<>();
        for (ParameterKey key : this.mParameters.keys()) {
            ParameterHolder<?> holder = this.mParameters.get(key);
            if (key.isPersistent() && isSelectable(holder) && (value = holder.serialize()) != null) {
                paramsMap.put(getSharedPreferenceKey(key), value);
            }
        }
        return paramsMap;
    }

    private void readStringMapToLoad(Map<String, String> paramsMap) {
        String value;
        for (ParameterKey key : this.mParameters.keys()) {
            ParameterHolder<?> holder = this.mParameters.get(key);
            if (key.isPersistent() && isSelectable(holder) && (value = paramsMap.get(key.name())) != null) {
                holder.deserialize(value);
            }
        }
    }

    private boolean isSelectable(ParameterHolder<?> parameter) {
        return parameter.getSelectability() == SettingSelectability.SELECTABLE;
    }
}