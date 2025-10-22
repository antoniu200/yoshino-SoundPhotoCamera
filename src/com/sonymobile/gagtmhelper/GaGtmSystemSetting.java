package com.sonymobile.gagtmhelper;

import android.content.Context;
import android.provider.Settings;
import android.util.Log;
import com.google.android.gms.analytics.GoogleAnalytics;

/* loaded from: classes.dex */
public class GaGtmSystemSetting {
    private static final String LOG_TAG = "GaGtmHelper";
    private static final String SOMC_GA_ENABLED_SETTING = "somc.google_analytics_enabled";

    public static boolean isSomcGaEnabled(Context context) {
        return Settings.System.getInt(context.getContentResolver(), SOMC_GA_ENABLED_SETTING, 1) == 1;
    }

    public static void readAndSetSomcGa(Context context) {
        boolean gaEnabled = isSomcGaEnabled(context);
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "somc.google_analytics_enabled=" + gaEnabled);
        }
        GoogleAnalytics.getInstance(context).setAppOptOut(!gaEnabled);
    }
}