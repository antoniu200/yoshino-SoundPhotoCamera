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

    /** Returns string value, or null if not found. Never throws. */
    public static String getString(Context ctx, String pkg, int resId) {
        PackageManager pm = ctx.getPackageManager();
        try {
            Resources res = pm.getResourcesForApplication(pkg);
            return res.getString(resId);
        } catch (Resources.NotFoundException e) {
            CameraLogger.w(TAG, "String ID not found: " + resId + " in " + pkg, e);
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.w(TAG, "Package not found for string: " + pkg, e);
            return null;
        }
    }

    public static int getInteger(Context context, int id) {
        return getInteger(context, PACKAGE_NAME, id);
    }

    public static int getInteger(Context context, String packageName, int id) {
        PackageManager pm = context.getPackageManager();
        try {
            Resources camR = pm.getResourcesForApplication(packageName);
            return camR.getInteger(id);
        } catch (Resources.NotFoundException e) {
            CameraLogger.w(TAG, "Integer ID not found: " + id + " in " + packageName, e);
            return 0;
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.w(TAG, "Package not found for string: " + packageName, e);
            return 0;
        }
    }

    public static float getFloat(Context context, int id) {
        return Float.valueOf(context.getResources().getString(id)).floatValue();
    }

    public static boolean getBoolean(Context context, int id) {
        return getBoolean(context, PACKAGE_NAME, id);
    }

    public static boolean getBoolean(Context context, String packageName, int id) {
        PackageManager pm = context.getPackageManager();
        try {
            Resources camR = pm.getResourcesForApplication(packageName);
            return camR.getBoolean(id);
        } catch (Resources.NotFoundException e) {
            CameraLogger.w(TAG, "Boolean ID not found: " + id + " in " + packageName, e);
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.w(TAG, "Package not found for string: " + packageName, e);
            return false;
        }
    }

    public static Drawable getDrawable(Context context, int id) {
        return getDrawable(context, PACKAGE_NAME, id);
    }

    public static Drawable getDrawable(Context context, String packageName, int id) {
        PackageManager pm = context.getPackageManager();
        try {
            Resources camR = pm.getResourcesForApplication(packageName);
            return camR.getDrawable(id, null);
        } catch (Resources.NotFoundException e) {
            CameraLogger.w(TAG, "Drawable ID not found: " + id + " in " + packageName, e);
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.w(TAG, "Package not found for string: " + packageName, e);
            return null;
        }
    }

    public static int getDimensionPixelSize(Context context, int id) {
        return getDimensionPixelSize(context, PACKAGE_NAME, id);
    }

    /** Returns dimension pixel size, or 0 if not found. Never throws. */
    public static int getDimensionPixelSize(Context ctx, String pkg, int resId) {
        PackageManager pm = ctx.getPackageManager();
        try {
            Resources res = pm.getResourcesForApplication(pkg);
            return res.getDimensionPixelSize(resId);
        } catch (Resources.NotFoundException e) {
            CameraLogger.w(TAG, "Dimen ID not found: " + resId + " in " + pkg, e);
            return 0;
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.w(TAG, "Package not found for dimen: " + pkg, e);
            return 0;
        }
    }

    public static int getDimensionPixelOffset(Context context, int id) {
        return getDimensionPixelOffset(context, PACKAGE_NAME, id);
    }

    public static int getDimensionPixelOffset(Context context, String packageName, int id) {
        PackageManager pm = context.getPackageManager();
        try {
            Resources camR = pm.getResourcesForApplication(packageName);
            return camR.getDimensionPixelOffset(id);
        } catch (Resources.NotFoundException e) {
            CameraLogger.w(TAG, "Dimen ID not found: " + id + " in " + packageName, e);
            return 0;
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.w(TAG, "Package not found for dimen: " + packageName, e);
            return 0;
        }
    }

    public static int getPixelFromRate(Context context, int id, int base) {
        return (int) ((base * getFloat(context, id)) / 100.0f);
    }

    public static float getDimension(Context context, int id) {
        return getDimension(context, PACKAGE_NAME, id);
    }

    public static float getDimension(Context context, String packageName, int id) {
        PackageManager pm = context.getPackageManager();
        try {
            Resources camR = pm.getResourcesForApplication(packageName);
            return camR.getDimension(id);
        } catch (Resources.NotFoundException e) {
            CameraLogger.w(TAG, "Dimen ID not found: " + id + " in " + packageName, e);
            return 0;
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.w(TAG, "Package not found for dimen: " + packageName, e);
            return 0;
        }
    }

    public static ColorStateList getColorStateList(Context context, int id) {
        return getColorStateList(context, PACKAGE_NAME, id);
    }

    public static ColorStateList getColorStateList(Context context, String packageName, int id) {
        PackageManager pm = context.getPackageManager();
        try {
            Resources camR = pm.getResourcesForApplication(packageName);
            return camR.getColorStateList(id, null);
        } catch (Resources.NotFoundException e) {
            CameraLogger.w(TAG, "Color State ID not found: " + id + " in " + packageName, e);
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.w(TAG, "Package not found for dimen: " + packageName, e);
            return null;
        }
    }

    public static String getApplicationLabel(Context context, String packageName) {
        PackageManager pm = context.getPackageManager();
        try {
            ApplicationInfo ai = pm.getApplicationInfo(packageName, 0);
            return (String) pm.getApplicationLabel(ai);
        } catch (Resources.NotFoundException e) {
            CameraLogger.w(TAG, "Application label not found in " + packageName, e);
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.w(TAG, "Package not found for dimen: " + packageName, e);
            return null;
        }
    }
}
