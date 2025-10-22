package com.sonymobile.cameracommon.research.googleanalytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event;

/* loaded from: classes.dex */
public class CameraAddonReceiverForGA extends BroadcastReceiver {
    public static final String ACTION_ADD_BUTTON_PRESSED = "com.sonymobile.camera.addon.action.ADD_BUTTON_PRESSED";
    public static final String ACTION_APP_SELECTED = "com.sonymobile.camera.addon.action.APP_SELECTED";
    private static final String NEXT_MODE_NAME = "next_mode_name";
    private static final String NEXT_PACKAGE_NAME = "next_package_name";
    public static final String PERMISSION_CAMERA_ADDON_NOTIFY_GA = "com.sonymobile.permission.CAMERA_ADDON_NOTIFY_GA";
    public static final String TAG = "CameraAddonReceiverForGA";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action != null) {
            if (action.equals(ACTION_ADD_BUTTON_PRESSED)) {
                sendGoogleAnalyticsAddonEvent(context, Event.AddonFW.ADD_BUTTON_PRESSED, null);
            } else if (action.equals(ACTION_APP_SELECTED)) {
                String packageName = intent.getStringExtra(NEXT_PACKAGE_NAME);
                String modeName = intent.getStringExtra(NEXT_MODE_NAME);
                String packageAndModeName = packageName + "/" + modeName;
                sendGoogleAnalyticsAddonEvent(context, Event.AddonFW.APP_SELECTED_ON_MODE_SELECTOR, packageAndModeName);
            }
        }
    }

    private void sendGoogleAnalyticsAddonEvent(Context context, Event.AddonFW addonFW, String name) {
        ResearchUtil.getInstance().sendEvent(Event.Category.ADDON_FW, addonFW.toString(), name);
    }
}