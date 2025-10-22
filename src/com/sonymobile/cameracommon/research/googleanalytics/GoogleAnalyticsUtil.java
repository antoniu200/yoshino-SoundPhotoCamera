package com.sonymobile.cameracommon.research.googleanalytics;

import android.content.Context;
import android.content.IntentFilter;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.android.gms.tagmanager.TagManager;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.research.parameters.Event;
import com.sonymobile.cameracommon.research.parameters.Screen;
import com.sonymobile.gagtmhelper.GaGtmSystemSetting;
import com.sonymobile.gagtmhelper.GaGtmUtils;

/* loaded from: classes.dex */
public class GoogleAnalyticsUtil {
    private static final String CONTAINER_ID = "GTM-MTPP62";
    private static final int MY_WANTED_TIMEOUT_SECONDS = 0;
    public static final String TAG = "GoogleAnalyticsUtil";
    private static Context mContext = null;
    private static final CameraAddonReceiverForGA mCameraAddonReceiverForGA = new CameraAddonReceiverForGA();

    private GoogleAnalyticsUtil() {
    }

    public static void onCreate(Context context) {
        mContext = context;
        GaGtmSystemSetting.readAndSetSomcGa(mContext);
        if (GaGtmSystemSetting.isSomcGaEnabled(mContext) && GaGtmUtils.getInstance().getContainerHolder() == null) {
            loadGtmContainer();
        }
    }

    public static void onResume() {
        registerCameraAddonReceiverForGA();
    }

    public static void onPause(boolean isSameActivity) {
        if (!isSameActivity) {
            unregisterCameraAddonReceiverForGA();
        }
    }

    public static void onDestroy(Context context) {
        mContext = null;
    }

    private static void loadGtmContainer() {
        TagManager tagManager = TagManager.getInstance(mContext);
        tagManager.setVerboseLoggingEnabled(true);
        GaGtmUtils.getInstance().init(mContext, CONTAINER_ID, R.raw.gtm_default_container, false, 0, new GaGtmUtils.OnContainerLoadedListener() { // from class: com.sonymobile.cameracommon.research.googleanalytics.GoogleAnalyticsUtil.1
            @Override // com.sonymobile.gagtmhelper.GaGtmUtils.OnContainerLoadedListener
            public void onContainerLoaded(boolean success) {
                if (success) {
                }
            }
        });
    }

    private static void registerCameraAddonReceiverForGA() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(CameraAddonReceiverForGA.ACTION_ADD_BUTTON_PRESSED);
        intentFilter.addAction(CameraAddonReceiverForGA.ACTION_APP_SELECTED);
        try {
            mContext.registerReceiver(mCameraAddonReceiverForGA, intentFilter, CameraAddonReceiverForGA.PERMISSION_CAMERA_ADDON_NOTIFY_GA, null);
        } catch (RuntimeException e) {
            CameraLogger.d(TAG, "CameraAddonReceiverForGA is already binded.");
        }
    }

    private static void unregisterCameraAddonReceiverForGA() {
        try {
            mContext.unregisterReceiver(mCameraAddonReceiverForGA);
        } catch (RuntimeException e) {
            CameraLogger.d(TAG, "CameraAddonReceiverForGA is already unbinded.");
        }
    }

    public static void setCustomDimension(String gtmKey, String value) {
        if (CameraLogger.isUserdebugOrEngBuild) {
            CameraLogger.p(TAG, "setCustomDimension() : gtmKey = " + gtmKey + ", value = " + value);
        }
        GaGtmUtils.getInstance().pushToDataLayer(DataLayer.mapOf(gtmKey, value));
    }

    public static void sendView(Screen screen) {
        if (CameraLogger.isUserdebugOrEngBuild) {
            CameraLogger.p(TAG, "sendView() : screen = " + screen);
        }
        if (screen != null) {
            GaGtmUtils.getInstance().pushAppView(screen.toString());
        }
    }

    public static void sendEvent(Event.Category category, String action, String label, long value) {
        if (CameraLogger.isUserdebugOrEngBuild) {
            CameraLogger.p(TAG, "sendEvent(): category = " + category.toString() + ", action = " + action + ", label = " + label + ", value = " + value);
        }
        GaGtmUtils.getInstance().pushEvent(category.toString(), action, label, Long.valueOf(value).longValue());
    }
}