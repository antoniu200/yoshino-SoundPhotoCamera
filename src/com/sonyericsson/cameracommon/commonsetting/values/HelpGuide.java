package com.sonyericsson.cameracommon.commonsetting.values;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonymobile.help.HelpUtils;
import java.util.Locale;

/* loaded from: classes.dex */
public enum HelpGuide implements CommonSettingValue {
    NO_VALUE(-1, -1);

    private static final String CATEGORY_CAPTURE = "Capture";
    private static final String HELP_APP_PKG_NAME = "com.sonymobile.support";
    public static final String HELP_CATEGORY_CAPTURE = "Capture";
    public static final String TAG = "HelpGuide";
    private final int mIconId;
    private final int mTextId;

    HelpGuide(int iconId, int textId) {
        this.mIconId = iconId;
        this.mTextId = textId;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.HELP_GUIDE;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getIconId() {
        return this.mIconId;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getTextId() {
        return this.mTextId;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public String getProviderValue() {
        return null;
    }

    public static void startHelpApp(Context context) {
        try {
            context.startActivity(getHelpAppStartIntent(context));
        } catch (ActivityNotFoundException e) {
            CameraLogger.e(TAG, "startResolvedActivity failed.", e);
        }
    }

    public static void startOnlineHelp(Context context) {
        try {
            context.startActivity(getOnlineHelpIntent(context));
        } catch (ActivityNotFoundException e) {
            CameraLogger.e(TAG, "startOnlineHelp failed.", e);
        }
    }

    public static boolean isHelpAppAvailable(Context context) throws PackageManager.NameNotFoundException {
        Intent intent = getHelpAppStartIntent(context);
        PackageManager pm = context.getPackageManager();
        try {
            ApplicationInfo info = pm.getApplicationInfo(HELP_APP_PKG_NAME, 0);
            if (info == null) {
                return false;
            }
            ComponentName component = intent.resolveActivity(pm);
            if (component != null) {
                intent.setComponent(component);
            }
            boolean retVal = CommonUtility.isActivityAvailable(context, intent);
            return retVal;
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.e(TAG, "Somc in-device help app not found.", e);
            return false;
        }
    }

    private static Intent getHelpAppStartIntent(Context context) {
        Uri.Builder helpIntentBuilder = HelpUtils.BASE_URI.buildUpon().appendQueryParameter("app", context.getPackageName()).appendQueryParameter("category", "Capture");
        HelpUtils.uriWithAddedVersionParameter(context, helpIntentBuilder);
        return new Intent("android.intent.action.VIEW", helpIntentBuilder.build());
    }

    private static Intent getOnlineHelpIntent(Context context) {
        if (context == null) {
            return null;
        }
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https");
        builder.authority("ids.indevice.sonymobile.com");
        builder.path("in-device/getSoftwareSupport.htm");
        builder.appendQueryParameter("sourceAppName", context.getPackageName());
        builder.appendQueryParameter("sourceAppVersion", getVersionName(context));
        builder.appendQueryParameter("sourceAppView", "Capture");
        builder.appendQueryParameter("androidVersion", Build.VERSION.RELEASE);
        builder.appendQueryParameter("manufacturer", Build.MANUFACTURER);
        builder.appendQueryParameter("model", Build.MODEL);
        builder.appendQueryParameter("locale", Locale.getDefault().toString());
        builder.appendQueryParameter("output", "html");
        return new Intent("android.intent.action.VIEW", builder.build());
    }

    private static String getVersionName(Context context) throws PackageManager.NameNotFoundException {
        try {
            PackageInfo pi = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return pi.versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public static HelpGuide getDefaultValue() {
        return NO_VALUE;
    }
}