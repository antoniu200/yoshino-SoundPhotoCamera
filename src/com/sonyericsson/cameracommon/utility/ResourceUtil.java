package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class ResourceUtil {
    public static final int INVALID_RESOURCE_ID = -1;
    private static final String PACKAGE_NAME = "com.sonymobile.cameracommon";
    public static final String TAG = "ResourceUtil";

    public static View getLayout(Context context, int id, ViewGroup root, LayoutInflater.Factory factory) {
        return getLayout(context, PACKAGE_NAME, id, root, factory);
    }

    private static View getLayout(Context context, String packageName, int id, ViewGroup root, LayoutInflater.Factory factory) {
        View viewGroup;
        PackageManager pm = context.getPackageManager();
        XmlResourceParser xml = null;
        try {
            try {
                Resources camR = pm.getResourcesForApplication(packageName);
                xml = camR.getLayout(id);
                Context ctx = context.createPackageContext(packageName, 2);
                LayoutInflater inflater = (LayoutInflater) ctx.getSystemService("layout_inflater");
                if (factory != null) {
                    inflater.setFactory(factory);
                }
                viewGroup = inflater.inflate(xml, root);
            } catch (PackageManager.NameNotFoundException e) {
                CameraLogger.e(TAG, "", e);
                viewGroup = null;
                if (xml != null) {
                    xml.close();
                }
            }
            return viewGroup;
        } finally {
            if (xml != null) {
                xml.close();
            }
        }
    }

    public static String getString(Context context, int id) {
        return getString(context, PACKAGE_NAME, id);
    }

    public static String getString(Context context, String packageName, int id) throws PackageManager.NameNotFoundException {
        PackageManager pm = context.getPackageManager();
        try {
            Resources camR = pm.getResourcesForApplication(packageName);
            return camR.getString(id);
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.e(TAG, "", e);
            return null;
        }
    }

    public static int getInteger(Context context, int id) {
        return getInteger(context, PACKAGE_NAME, id);
    }

    public static int getInteger(Context context, String packageName, int id) throws PackageManager.NameNotFoundException {
        PackageManager pm = context.getPackageManager();
        try {
            Resources camR = pm.getResourcesForApplication(packageName);
            return camR.getInteger(id);
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.e(TAG, "", e);
            throw new RuntimeException();
        }
    }

    public static float getFloat(Context context, int id) {
        return Float.valueOf(context.getResources().getString(id)).floatValue();
    }

    public static boolean getBoolean(Context context, int id) {
        return getBoolean(context, PACKAGE_NAME, id);
    }

    public static boolean getBoolean(Context context, String packageName, int id) throws PackageManager.NameNotFoundException {
        PackageManager pm = context.getPackageManager();
        try {
            Resources camR = pm.getResourcesForApplication(packageName);
            return camR.getBoolean(id);
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.e(TAG, "", e);
            throw new RuntimeException();
        }
    }

    public static Drawable getDrawable(Context context, int id) {
        return getDrawable(context, PACKAGE_NAME, id);
    }

    public static Drawable getDrawable(Context context, String packageName, int id) throws PackageManager.NameNotFoundException {
        PackageManager pm = context.getPackageManager();
        try {
            Resources camR = pm.getResourcesForApplication(packageName);
            return camR.getDrawable(id, null);
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.e(TAG, "", e);
            throw new RuntimeException();
        }
    }

    public static int getDimensionPixelSize(Context context, int id) {
        return getDimensionPixelSize(context, PACKAGE_NAME, id);
    }

    public static int getDimensionPixelSize(Context context, String packageName, int id) throws PackageManager.NameNotFoundException {
        PackageManager pm = context.getPackageManager();
        try {
            Resources camR = pm.getResourcesForApplication(packageName);
            return camR.getDimensionPixelSize(id);
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.e(TAG, "", e);
            throw new RuntimeException();
        }
    }

    public static int getDimensionPixelOffset(Context context, int id) {
        return getDimensionPixelOffset(context, PACKAGE_NAME, id);
    }

    public static int getDimensionPixelOffset(Context context, String packageName, int id) throws PackageManager.NameNotFoundException {
        PackageManager pm = context.getPackageManager();
        try {
            Resources camR = pm.getResourcesForApplication(packageName);
            return camR.getDimensionPixelOffset(id);
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.e(TAG, "", e);
            throw new RuntimeException();
        }
    }

    public static int getPixelFromRate(Context context, int id, int base) {
        return (int) ((base * getFloat(context, id)) / 100.0f);
    }

    public static float getDimension(Context context, int id) {
        return getDimension(context, PACKAGE_NAME, id);
    }

    public static float getDimension(Context context, String packageName, int id) throws PackageManager.NameNotFoundException {
        PackageManager pm = context.getPackageManager();
        try {
            Resources camR = pm.getResourcesForApplication(packageName);
            return camR.getDimension(id);
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.e(TAG, "", e);
            throw new RuntimeException();
        }
    }

    public static ColorStateList getColorStateList(Context context, int id) {
        return getColorStateList(context, PACKAGE_NAME, id);
    }

    public static ColorStateList getColorStateList(Context context, String packageName, int id) throws PackageManager.NameNotFoundException {
        PackageManager pm = context.getPackageManager();
        try {
            Resources camR = pm.getResourcesForApplication(packageName);
            return camR.getColorStateList(id, null);
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.e(TAG, "", e);
            throw new RuntimeException();
        }
    }

    public static String getApplicationLabel(Context context, String packageName) throws PackageManager.NameNotFoundException {
        PackageManager pm = context.getPackageManager();
        try {
            ApplicationInfo ai = pm.getApplicationInfo(packageName, 0);
            return (String) pm.getApplicationLabel(ai);
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.e(TAG, "", e);
            throw new RuntimeException();
        }
    }
}