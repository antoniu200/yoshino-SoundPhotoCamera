package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class ParamSharedPref {
    public static final String TAG = "ParamSharedPref";
    private SharedPreferences.Editor mEditor;
    private SharedPreferences mPref;

    ParamSharedPref(Context context, String name) {
        this.mPref = null;
        this.mEditor = null;
        try {
            this.mPref = context.getSharedPreferences(name, 0);
            this.mEditor = this.mPref.edit();
        } catch (Exception e) {
        }
    }

    public int getParamFromSP(String key, int value) {
        if (this.mPref != null) {
            return this.mPref.getInt(key, value);
        }
        return 0;
    }

    public void setParamToSP(String key, int value) {
        if (this.mEditor != null) {
            this.mEditor.putInt(key, value);
            this.mEditor.apply();
        }
    }

    public boolean getParamFromSP(String key, boolean value) {
        if (this.mPref != null) {
            return this.mPref.getBoolean(key, value);
        }
        return value;
    }

    public void setParamToSP(String key, boolean value) {
        if (this.mEditor != null) {
            this.mEditor.putBoolean(key, value);
            this.mEditor.apply();
        }
    }

    public float getParamFromSP(String key, float value) {
        if (this.mPref != null) {
            return this.mPref.getFloat(key, value);
        }
        return value;
    }

    public void setParamToSP(String key, float value) {
        if (this.mEditor != null) {
            this.mEditor.putFloat(key, value);
            this.mEditor.apply();
        }
    }

    public String getParamFromSP(String key, String value) {
        if (this.mPref != null) {
            return this.mPref.getString(key, value);
        }
        return value;
    }

    public void setParamToSP(String key, String value) {
        if (this.mEditor != null) {
            this.mEditor.putString(key, value);
            this.mEditor.apply();
        }
    }

    public void clear() {
        if (this.mEditor != null) {
            this.mEditor.clear().commit();
        }
    }
}