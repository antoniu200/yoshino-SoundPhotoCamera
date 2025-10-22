package com.sonyericsson.album.fastview;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import android.util.Log;

/* loaded from: classes.dex */
public class PackageManagerUtil {
    private static final String LOG_TAG = "PackageManagerUtil";

    private PackageManagerUtil() {
    }

    public static String getMetadataString(@NonNull Context context, String packageName, String key) throws PackageManager.NameNotFoundException {
        try {
            ApplicationInfo info = context.getPackageManager().getApplicationInfo(packageName, 128);
            if (info == null || info.metaData == null) {
                return null;
            }
            String ret = info.metaData.getString(key);
            return ret;
        } catch (PackageManager.NameNotFoundException e) {
            Log.d(LOG_TAG, "NameNotFoundException : " + e);
            return null;
        }
    }

    public static String getApkPath(@NonNull Context context, String packageName) {
        try {
            String apkPath = context.getPackageManager().getApplicationInfo(packageName, 0).sourceDir;
            return apkPath;
        } catch (PackageManager.NameNotFoundException e) {
            Log.d(LOG_TAG, "NameNotFoundException : " + e);
            return null;
        }
    }

    public static Context getPackageContext(@NonNull Context context, @NonNull String packageName) throws PackageManager.NameNotFoundException {
        if (!packageName.equals(context.getPackageName())) {
            Context targetContext = null;
            try {
                targetContext = context.createPackageContext(packageName, 3);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(LOG_TAG, "NameNotFoundException : " + e);
            }
            return targetContext;
        }
        return context;
    }
}