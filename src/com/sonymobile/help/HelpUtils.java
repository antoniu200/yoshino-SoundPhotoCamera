package com.sonymobile.help;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;

/* loaded from: classes.dex */
public class HelpUtils {
    public static final Uri BASE_URI = Uri.parse("help://com.sonymobile.helpapp/support");
    public static final String PARAM_APP = "app";
    public static final String PARAM_CATEGORY = "category";
    public static final String PARAM_VERSION = "version";

    private HelpUtils() {
    }

    public static void uriWithAddedVersionParameter(Context context, Uri.Builder builder) {
        try {
            PackageInfo info = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            builder.appendQueryParameter(PARAM_VERSION, Integer.toString(info.versionCode));
        } catch (PackageManager.NameNotFoundException e) {
        }
    }
}
