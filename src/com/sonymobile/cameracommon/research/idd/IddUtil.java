package com.sonymobile.cameracommon.research.idd;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.JsonWriter;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.idd.api.Idd;
import com.sonymobile.cameracommon.research.parameters.Event;
import com.sonymobile.cameracommon.research.parameters.Screen;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class IddUtil {
    private static final String EMPTY_STRING = "";
    private static final String IDD_CLASS_NAME = "com.sonyericsson.idd.api.Idd";
    private static final String IDD_METHOD_NAME = "addAppDataJSON";
    private static final String KEY_ACTION = "action";
    private static final String KEY_ENVIRONMENT = "environment";
    private static final String KEY_LABEL = "label";
    private static final String KEY_LAUNCHEDBY = "launched_by";
    private static final String KEY_MODE = "mode";
    private static final String KEY_PERFORMANCE_BATTERY_LEVEL = "battery_level";
    private static final String KEY_PERFORMANCE_TARGET = "target";
    private static final String KEY_PERFORMANCE_THERMAL_STATUS = "thermal_status";
    private static final String KEY_PERFORMANCE_TIME = "time";
    private static final String KEY_SETTING = "setting";
    private static final String KEY_SUB_TYPE = "subtype";
    private static final String KEY_TYPE = "type";
    private static final String KEY_VALUE = "value";
    private static final String KEY_VALUE_AFTER = "after";
    private static final String KEY_VALUE_BEFORE = "before";
    public static final String TAG = "IddUtil";
    private static final String THERMAL_STATUS_HIGH = "HIGH";
    private static final String THERMAL_STATUS_NORMAL = "NORMAL";
    private static final String TYPE_CAMERA_NOT_AVAILABLE_EVENT = "CAMERA_NOT_AVAILABLE";
    private static final String TYPE_CHANGE_SETTING_EVENT = "CHANGE_SETTING_EVENT";
    private static final String TYPE_LOWBATTERY_ERROR_EVENT = "LOWBATTERY_ERROR";
    private static final String TYPE_MODE_SELECTOR_EVENT = "MODE_SELECTOR_EVENT";
    private static final String TYPE_PANORAMA_EVENT = "PANORAMA";
    private static final String TYPE_PERFORMANCE_EVENT = "PERFORMANCE";
    private static final String TYPE_PHOTO_EVENT = "PHOTO_EVENT";
    private static final String TYPE_SELFTIMER_CANCEL_EVENT = "SELFTIMER_CANCEL_EVENT";
    private static final String TYPE_SLOW_MOTION_EVENT = "SLOW_MOTION_EVENT";
    private static final String TYPE_THERMAL_ERROR_EVENT = "THERMAL_ERROR";
    private static final String TYPE_VIDEO_EVENT = "VIDEO_EVENT";
    private static Context mContext = null;
    private static String mPackageName = "";
    private static String mVersionName = "";
    private static int mVersionCode = 0;
    private static String mView = "";
    private static String mLaunchedBy = "";
    private static boolean mIsIddSupported = false;
    private static boolean mIsIddSupportAlreadyChecked = false;
    private static boolean mIsSendingAllowed = true;

    private IddUtil() {
    }

    public static void onCreate(Context context) {
        mContext = context;
    }

    private static void setPackageInfo() {
        if (mContext != null && "".equals(mPackageName)) {
            mPackageName = mContext.getPackageName();
            PackageManager pm = mContext.getPackageManager();
            try {
                mVersionName = pm.getPackageInfo(mPackageName, 0).versionName;
                mVersionCode = pm.getPackageInfo(mPackageName, 0).versionCode;
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
    }

    private static boolean checkIddSupported() throws NoSuchMethodException, SecurityException {
        if (mIsIddSupportAlreadyChecked) {
            return mIsIddSupported;
        }
        mIsIddSupported = false;
        try {
            Class.forName(IDD_CLASS_NAME).getMethod(IDD_METHOD_NAME, String.class, String.class, Integer.TYPE, JSONObject.class);
            mIsIddSupported = true;
        } catch (ClassNotFoundException e) {
        } catch (LinkageError e2) {
        } catch (NoSuchMethodException e3) {
        }
        mIsIddSupportAlreadyChecked = true;
        return mIsIddSupported;
    }

    public static void onResume() {
    }

    public static void onPause(boolean isSameActivity) {
    }

    public static void onDestroy(Context context) {
        mContext = null;
    }

    public static void setLaunchedBy(String launchedBy) {
        if (CameraLogger.isUserdebugOrEngBuild) {
            CameraLogger.p(TAG, "setLaunchedBy() : launchedBy = " + launchedBy);
        }
        mLaunchedBy = launchedBy;
    }

    public static void setView(Screen screen) {
        if (CameraLogger.isUserdebugOrEngBuild) {
            CameraLogger.p(TAG, "sendView() : screen = " + screen);
        }
        if (screen != null) {
            mView = screen.toString();
        }
    }

    public static void sendEvent(Event.Category category, String action, String label, long value) throws IOException {
        if (getTypeName(category) != null) {
            if (CameraLogger.isUserdebugOrEngBuild) {
                CameraLogger.p(TAG, "sendEvent(): category = " + category.toString() + ", action = " + action + ", label = " + label + ", value = " + value);
            }
            JsonStringBuilder jsonStringBuilder = new JsonStringBuilder(getTypeName(category));
            if (action == null) {
                action = "";
            }
            JsonStringBuilder jsonStringBuilder2 = jsonStringBuilder.set("action", action);
            if (label == null) {
                label = "";
            }
            String payLoad = jsonStringBuilder2.set(KEY_LABEL, label).set("value", Long.toString(value)).build();
            sendJsonData(payLoad);
        }
    }

    private static String getTypeName(Event.Category category) {
        if (category == null) {
            return null;
        }
        switch (category) {
        }
        return null;
    }

    public static void sendPerformanceData(String key, long millis, boolean isHeated, String batteryLevel) throws IOException {
        String logInfo = "sendPerformanceData(): key = " + (key == null ? "" : key.toString()) + ", time(millis) = " + millis + ", isHeated = " + isHeated;
        JsonStringBuilder jsonStringBuilder = new JsonStringBuilder(TYPE_PERFORMANCE_EVENT);
        if (key == null) {
            key = "";
        }
        JsonStringBuilder setJsonString = jsonStringBuilder.set(KEY_PERFORMANCE_TARGET, key).set(KEY_PERFORMANCE_TIME, Long.toString(millis)).set(KEY_PERFORMANCE_THERMAL_STATUS, isHeated ? THERMAL_STATUS_HIGH : THERMAL_STATUS_NORMAL);
        if (!TextUtils.isEmpty(batteryLevel)) {
            logInfo = logInfo + ", batteryLevel = " + batteryLevel;
            setJsonString.set(KEY_PERFORMANCE_BATTERY_LEVEL, batteryLevel);
        }
        if (CameraLogger.isUserdebugOrEngBuild) {
            CameraLogger.p(TAG, logInfo);
        }
        String payLoad = setJsonString.build();
        sendJsonData(payLoad);
    }

    public static void sendEventAllSettings(Event.Category category, Map<String, String> env, Map<String, String> settings) throws IOException {
        if (CameraLogger.isUserdebugOrEngBuild) {
            CameraLogger.p(TAG, "sendEventAllSettings(): category = " + category.toString() + ", env = " + env + ", settings = " + settings);
        }
        String payLoad = new JsonStringBuilder(getTypeName(category)).set(KEY_ENVIRONMENT, env).set(KEY_SETTING, settings).build();
        sendJsonData(payLoad);
    }

    public static void sendEventChangedSetting(String setting, String before, String after) throws IOException {
        if (CameraLogger.isUserdebugOrEngBuild) {
            CameraLogger.p(TAG, "sendEventChangedSetting(): setting = " + setting + ", before = " + before + ", after = " + after);
        }
        JsonStringBuilder jsonStringBuilder = new JsonStringBuilder(TYPE_CHANGE_SETTING_EVENT);
        if (setting == null) {
            setting = "";
        }
        JsonStringBuilder jsonStringBuilder2 = jsonStringBuilder.set(KEY_SETTING, setting);
        if (before == null) {
            before = "";
        }
        JsonStringBuilder jsonStringBuilder3 = jsonStringBuilder2.set(KEY_VALUE_BEFORE, before);
        if (after == null) {
            after = "";
        }
        String payLoad = jsonStringBuilder3.set(KEY_VALUE_AFTER, after).build();
        sendJsonData(payLoad);
    }

    private static void sendJsonData(String payLoad) {
        if (mIsSendingAllowed) {
            setPackageInfo();
            if (checkIddSupported()) {
                try {
                    Idd.addAppDataJSON(mPackageName, mVersionName, mVersionCode, new JSONObject(payLoad));
                } catch (Throwable th) {
                }
            }
        }
    }

    private static class ValueMap {
        private final Map<String, ValueMap> mMap;
        private final String mValue;

        public ValueMap(@NonNull String val) {
            this.mMap = null;
            this.mValue = val;
        }

        public ValueMap(@NonNull Map<String, String> map) {
            this.mMap = new ArrayMap();
            this.mValue = null;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.mMap.put(entry.getKey(), new ValueMap(entry.getValue()));
            }
        }

        public String getValue() {
            return this.mValue;
        }

        public Map<String, ValueMap> getMap() {
            return this.mMap;
        }
    }

    private static class JsonStringBuilder {
        private final Map<String, ValueMap> mMap = new ArrayMap();

        public JsonStringBuilder(@NonNull String type) {
            this.mMap.put(IddUtil.KEY_TYPE, new ValueMap(type));
            this.mMap.put(IddUtil.KEY_MODE, new ValueMap(IddUtil.mView));
            this.mMap.put(IddUtil.KEY_LAUNCHEDBY, new ValueMap(IddUtil.mLaunchedBy));
        }

        public JsonStringBuilder set(String key, String val) {
            this.mMap.put(key, new ValueMap(val));
            return this;
        }

        public JsonStringBuilder set(String key, Map<String, String> map) {
            this.mMap.put(key, new ValueMap(map));
            return this;
        }

        public String build() throws IOException {
            StringWriter sw = new StringWriter();
            JsonWriter writer = new JsonWriter(sw);
            try {
                writer.setIndent(" ");
                write(writer, this.mMap);
                String string = sw.toString();
                try {
                    writer.close();
                    return string;
                } catch (IOException e) {
                    return string;
                }
            } catch (IOException e2) {
                try {
                    writer.close();
                } catch (IOException e3) {
                }
                return "";
            } catch (Throwable th) {
                try {
                    writer.close();
                } catch (IOException e4) {
                }
                throw th;
            }
        }

        private void write(JsonWriter writer, Map<String, ValueMap> map) throws IOException {
            writer.beginObject();
            for (Map.Entry<String, ValueMap> entry : map.entrySet()) {
                write(writer, entry.getKey(), entry.getValue());
            }
            writer.endObject();
        }

        private void write(JsonWriter writer, String key, ValueMap map) throws IOException {
            String val = map.getValue();
            if (val == null) {
                writer.name(key.toLowerCase(Locale.ROOT));
                write(writer, map.getMap());
            } else {
                writer.name(key.toLowerCase(Locale.ROOT)).value(val);
            }
        }
    }
}