package com.sonymobile.android.addoncamera.soundphoto.setting;

import com.sonymobile.android.addoncamera.soundphoto.setting.ParameterValue;

/* loaded from: classes.dex */
public class ParameterHolder<T extends ParameterValue> {
    public static final String NO_VALUE = "NO_VALUE";
    public static final String REGULAR_EXPRESSION = "@";
    private static final String TAG = ParameterHolder.class.getSimpleName();
    private final T mInitValue;
    private T mCurrentValue = null;
    private T[] mOptions = null;
    private SettingSelectability mSelectability = SettingSelectability.UNSUPPORTED;

    public ParameterHolder(T initValue) {
        this.mInitValue = initValue;
    }

    public ParameterKey getKey() {
        return this.mInitValue.key();
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
        if (this.mOptions == null) {
            return null;
        }
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
        if (value == null || mInitValue.getClass().isInstance(value)) {
            // Unchecked cast at source level; safe per runtime check above.
            mCurrentValue = (T) value;
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
