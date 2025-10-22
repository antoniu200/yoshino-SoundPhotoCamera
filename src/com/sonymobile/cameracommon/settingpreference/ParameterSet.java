package com.sonymobile.cameracommon.settingpreference;

import com.sonymobile.cameracommon.settingpreference.ParameterApplyerInterface;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class ParameterSet<T extends ParameterApplyerInterface> {
    private final Map<ParameterKey, ParameterHolder<?>> mHolders = new HashMap();

    public abstract void apply(T t);

    protected <V extends ParameterValue> ParameterHolder<V> makeHolder(V initValue) {
        ParameterHolder<V> holder = new ParameterHolder<>(initValue);
        this.mHolders.put(holder.getKey(), holder);
        return holder;
    }

    public Set<ParameterKey> keys() {
        return this.mHolders.keySet();
    }

    public ParameterHolder<?> get(ParameterKey key) {
        return this.mHolders.get(key);
    }
}