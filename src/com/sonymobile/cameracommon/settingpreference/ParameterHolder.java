package com.sonymobile.cameracommon.settingpreference;

import com.sonymobile.cameracommon.settingpreference.ParameterValue;

/* loaded from: classes.dex */
public class ParameterHolder<T extends ParameterValue> {
    public static final String NO_VALUE = "NO_VALUE";
    public static final String REGULAR_EXPRESSION = "@";
    public static final String TAG = "ParameterHolder";
    private final T mDefaultValue;
    private T mCurrentValue = null;
    private T[] mOptions = null;
    private SettingSelectability mSelectability = SettingSelectability.UNSUPPORTED;

    public ParameterHolder(T defaultValue) {
        this.mDefaultValue = defaultValue;
    }

    public ParameterKey getKey() {
        return this.mDefaultValue.key();
    }

    public void setOptions(T... tArr) {
        this.mOptions = (T[]) ((ParameterValue[]) tArr.clone());
        if (this.mOptions.length == 0) {
            this.mSelectability = SettingSelectability.UNSUPPORTED;
        } else if (this.mOptions.length == 1) {
            this.mSelectability = SettingSelectability.FIX;
        } else {
            this.mSelectability = SettingSelectability.SELECTABLE;
        }
    }

    public T[] getOptions() {
        return (T[]) ((ParameterValue[]) this.mOptions.clone());
    }

    public SettingSelectability getSelectability() {
        return this.mSelectability;
    }

    public void set(T value) {
        this.mCurrentValue = value;
        if (this.mSelectability == SettingSelectability.UNSUPPORTED) {
            setOptions(this.mCurrentValue);
        }
    }

    void setWithAutoCast(ParameterValue value) {
        // Accept null or values that match the default's runtime class; otherwise, throw.
        if (value == null || mDefaultValue.getClass().isInstance(value)) {
            // Note: T erases to ParameterValue at bytecode level, so this assignment is valid.
            mCurrentValue = (T) value; // unchecked at source level
            return;
        }
        throw new IllegalArgumentException();
    }

    public T get() {
        return this.mCurrentValue;
    }

    public String serialize() {
        return this.mCurrentValue == null ? "NO_VALUE" : this.mCurrentValue.getClass().getName() + "@" + this.mCurrentValue.toString();
    }

    public void deserialize(String valueStr) {
        if (!valueStr.equals("NO_VALUE")) {
            String[] token = valueStr.split("@");
            if (token.length >= 2) {
                T parameterValue = null;
                try {
                    parameterValue = (T) enumByName(token[0], token[1]);
                } catch (ClassCastException e) {
                } catch (ClassNotFoundException e2) {
                } catch (IllegalArgumentException e3) {
                } catch (LinkageError e4) {
                }
                if (parameterValue != null) {
                    set(parameterValue);
                }
            }
        }
    }
    private static <E extends Enum<E>> E enumByName(String fqcn, String name) throws ClassNotFoundException {
        Class<?> raw = Class.forName(fqcn);
        // Ensure it's an Enum subclass, then ask Enum.valueOf for the constant
        Class<? extends Enum> enumClass = raw.asSubclass(Enum.class);
        return (E) Enum.valueOf((Class) enumClass, name);
    }
}
