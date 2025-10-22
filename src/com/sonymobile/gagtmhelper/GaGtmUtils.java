package com.sonymobile.gagtmhelper;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.os.Build;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.tagmanager.Container;
import com.google.android.gms.tagmanager.ContainerHolder;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.android.gms.tagmanager.TagManager;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.lang.Thread;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class GaGtmUtils {
    private static final int GA_DEFAULT_DISPATCH_PERIOD = 1800;
    private static final String GTM_BUFFERED_EVENTS_FILENAME = "GTM_buffered_events";
    private static final int GTM_BUFFERED_EVENTS_VERSION = 0;
    private static final String GTM_KEY_DEVICE_BUILD_ID = "gagtm-deviceBuildId";
    private static final String GTM_KEY_DEVICE_BUILD_MODEL = "gagtm-deviceBuildModel";
    private static final String GTM_KEY_DEVICE_BUILD_TYPE = "gagtm-deviceBuildType";
    private static final String GTM_KEY_DEVICE_CUSTOMER_ID = "gagtm-deviceCustomerId";
    private static final String GTM_KEY_DEVICE_CUSTOMIZATION = "gagtm-deviceCustomization";
    private static final String GTM_KEY_DEVICE_CUSTOMIZATION_REVISION = "gagtm-deviceCustomizationRevision";
    private static final String GTM_KEY_DEVICE_NETWORK_MCC = "gagtm-deviceNetworkMcc";
    private static final String GTM_KEY_DEVICE_NETWORK_MNC = "gagtm-deviceNetworkMnc";
    private static final String GTM_KEY_DEVICE_SIM_MCC = "gagtm-deviceSimMcc";
    private static final String GTM_KEY_DEVICE_SIM_MNC = "gagtm-deviceSimMnc";
    private static final String GTM_KEY_EVENT = "event";
    private static final String GTM_KEY_EVENT_ACTION = "gagtm-eventAction";
    private static final String GTM_KEY_EVENT_CATEGORY = "gagtm-eventCategory";
    private static final String GTM_KEY_EVENT_LABEL = "gagtm-eventLabel";
    private static final String GTM_KEY_EVENT_VALUE = "gagtm-eventValue";
    private static final String GTM_KEY_EXCEPTION_DESCRIPTION = "gagtm-exceptionDescription";
    private static final String GTM_KEY_GA_DISPATCH_PERIOD = "gagtm-dispatchPeriod";
    private static final String GTM_KEY_GA_EXCEPTION_DEEP_MODE = "gagtm-exceptionDeepMode";
    private static final String GTM_KEY_GA_EXCEPTION_HASH_LIST = "gagtm-exceptionHashList";
    private static final String GTM_KEY_GA_EXCEPTION_MAX_REPORTED_ROWS = "gagtm-exceptionMaxReportedRows";
    private static final String GTM_KEY_GA_EXCEPTION_MAX_TRAVERSED_ROWS = "gagtm-exceptionMaxTraversedRows";
    private static final String GTM_KEY_GA_EXCEPTION_PACKAGE_NAMES = "gagtm-exceptionPackageNames";
    private static final String GTM_KEY_GA_FORCE_LOCAL_DISPATCH = "gagtm-forceLocalDispatch";
    private static final String GTM_KEY_SCREEN_NAME = "gagtm-screenName";
    private static final String GTM_KEY_TIMING_CATEGORY = "gagtm-timingCategory";
    private static final String GTM_KEY_TIMING_LABEL = "gagtm-timingLabel";
    private static final String GTM_KEY_TIMING_VALUE = "gagtm-timingValue";
    private static final String GTM_KEY_TIMING_VAR = "gagtm-timingVar";
    private static final String LOG_TAG = "GaGtmHelper";
    private static final int MAX_BUFFERED_PENDING_EVENTS = 50;
    private static final String SYSTEM_BUILD_CUSTOMER_ID = "ro.somc.customerid";
    private static final String SYSTEM_BUILD_CUSTOMIZATION = "ro.semc.version.cust";
    private static final String SYSTEM_BUILD_CUSTOMIZATION_REVISION = "ro.semc.version.cust_revision";
    private Context mContext;
    private GaGtmSubscriber mGaGtmSubscriber;
    private TagManager mTagManager;
    private static final Object sLock = new Object();
    private static volatile GaGtmUtils sInstance = null;
    private String mContainerId = null;
    private int mDefaultContainerResourceId = -1;
    private int mContainerLoadingTimeout = 2;
    private OnContainerLoadedListener mContainerLoadedCallback = null;
    private boolean mInitCalled = false;
    private boolean mContainerLoaded = false;
    private ContainerHolder mContainerHolder = null;
    private LinkedList<Map<String, Object>> mPendingEvents = new LinkedList<>();
    private Thread.UncaughtExceptionHandler mDefaultHandler = null;

    public interface OnContainerLoadedListener {
        void onContainerLoaded(boolean z);
    }

    public boolean init(Context context, String containerId, int defaultContainerResourceId, boolean useSomcGaSetting, int containerLoadingTimeout, OnContainerLoadedListener callback) {
        boolean z = true;
        synchronized (sLock) {
            if (this.mInitCalled) {
                if (GaGtmLog.isEnabled()) {
                    Log.d(LOG_TAG, "Ignoring call to init, already called.");
                }
                z = false;
            } else {
                this.mInitCalled = true;
                if (GaGtmLog.isEnabled()) {
                    Log.d(LOG_TAG, "setContainerId=" + containerId + " defaultContainerResourceId=" + defaultContainerResourceId + " containerLoadingTimeout=" + containerLoadingTimeout);
                    if (callback != null) {
                        Log.d(LOG_TAG, "callback" + callback.toString());
                    }
                }
                this.mContext = context.getApplicationContext();
                this.mContainerId = containerId;
                this.mDefaultContainerResourceId = defaultContainerResourceId;
                this.mContainerLoadingTimeout = containerLoadingTimeout;
                this.mContainerLoadedCallback = callback;
                this.mTagManager = TagManager.getInstance(context);
                ensureContainerLoadedLocked();
                if (useSomcGaSetting) {
                    this.mGaGtmSubscriber = new GaGtmSubscriber(context);
                    this.mGaGtmSubscriber.subscribeGaSettingChanges();
                }
            }
        }
        return z;
    }

    public boolean init(Context context, String containerId, int defaultContainerResourceId, boolean useSomcGaSetting) {
        return init(context, containerId, defaultContainerResourceId, useSomcGaSetting, this.mContainerLoadingTimeout, this.mContainerLoadedCallback);
    }

    private GaGtmUtils() {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "GaGtmUtils constructor");
        }
    }

    public void serializeQueueToFile() {
        String appVersion;
        synchronized (sLock) {
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "serializeQueueToFile");
            }
            if (this.mPendingEvents.size() == 0) {
                if (GaGtmLog.isEnabled()) {
                    Log.d(LOG_TAG, "No buffered events to serialize to file.");
                }
                return;
            }
            PackageManager manager = this.mContext.getPackageManager();
            try {
                PackageInfo info = manager.getPackageInfo(this.mContext.getPackageName(), 0);
                appVersion = info.versionName;
            } catch (PackageManager.NameNotFoundException e) {
                appVersion = "";
            }
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "Current appVersion=" + appVersion);
            }
            FileOutputStream fos = null;
            ObjectOutputStream oos = null;
            try {
                try {
                    fos = this.mContext.openFileOutput(GTM_BUFFERED_EVENTS_FILENAME, 0);
                    ObjectOutputStream oos2 = new ObjectOutputStream(fos);
                    try {
                        if (GaGtmLog.isEnabled()) {
                            Log.d(LOG_TAG, "Write version");
                        }
                        oos2.writeInt(0);
                        if (GaGtmLog.isEnabled()) {
                            Log.d(LOG_TAG, "Write app version");
                        }
                        oos2.writeObject(appVersion);
                        if (GaGtmLog.isEnabled()) {
                            Log.d(LOG_TAG, "Write pending events to file");
                        }
                        oos2.writeObject(this.mPendingEvents);
                        if (oos2 != null) {
                            try {
                                oos2.close();
                            } catch (IOException e2) {
                            }
                        }
                        if (fos != null) {
                            try {
                                fos.close();
                            } catch (IOException e3) {
                            }
                        }
                    } catch (IOException e4) {
                        e = e4;
                        oos = oos2;
                        if (GaGtmLog.isEnabled()) {
                            Log.d(LOG_TAG, "IOException=" + e.getMessage());
                        }
                        if (oos != null) {
                            try {
                                oos.close();
                            } catch (IOException e5) {
                            }
                        }
                        if (fos != null) {
                            try {
                                fos.close();
                            } catch (IOException e6) {
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        oos = oos2;
                        if (oos != null) {
                            try {
                                oos.close();
                            } catch (IOException e7) {
                            }
                        }
                        if (fos == null) {
                            throw th;
                        }
                        try {
                            fos.close();
                            throw th;
                        } catch (IOException e8) {
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e9) {
                e = e9;
            }
        }
    }

    void deserializeQueueFromFileAndPush() {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "deserializeQueueFromFile");
        }

        // 1) Quick skip if file exists but is empty
        File bufferFile = new File(mContext.getFilesDir(), GTM_BUFFERED_EVENTS_FILENAME);
        if (bufferFile.length() == 0L) {
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "File is empty skip");
            }
            return;
        }

        // 2) Read current app version (for logging; smali does not abort on mismatch)
        String appVersion = "";
        try {
            PackageManager pm = mContext.getPackageManager();
            PackageInfo info = pm.getPackageInfo(mContext.getPackageName(), 0);
            appVersion = info.versionName;
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "Current appVersion=" + appVersion);
            }
        } catch (PackageManager.NameNotFoundException e) {
            appVersion = "";
        }

        // 3) Read buffered payload
        LinkedList<Map<String, Object>> bufferedEvents = null;
        FileInputStream fis = null;
        ObjectInputStream ois = null;
        try {
            fis = mContext.openFileInput(GTM_BUFFERED_EVENTS_FILENAME);
            ois = new ObjectInputStream(fis);

            // Read version (int) then bufferedAppVersion (String), then the list
            int version = ois.readInt();
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "Read version=" + version);
            }

            Object readObject = ois.readObject();
            String bufferedAppVersion = (String) readObject;
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "Read bufferedAppVersion=" + bufferedAppVersion);
            }

            // (Smali compares appVersion.contentEquals(bufferedAppVersion) but proceeds either way)
            readObject = ois.readObject();
            bufferedEvents = (LinkedList<Map<String, Object>>) readObject;

        } catch (FileNotFoundException e) {
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "FileNotFoundException=" + e.getMessage());
            }
        } catch (OptionalDataException e) {
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "OptionalDataException=" + e.getMessage());
            }
        } catch (IOException e) {
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "IOException=" + e.getMessage());
            }
        } catch (ClassNotFoundException e) {
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "ClassNotFoundException=" + e.getMessage());
            }
        } finally {
            if (ois != null) {
                try { ois.close(); } catch (IOException ignore) {}
            }
            if (fis != null) {
                try { fis.close(); } catch (IOException ignore) {}
            }
        }

        // 4) Delete the file after reading (mirrors smali)
        boolean deleted = mContext.deleteFile(GTM_BUFFERED_EVENTS_FILENAME);
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "deleteFile(" + GTM_BUFFERED_EVENTS_FILENAME + ")=" + deleted);
        }

        // 5) Push into DataLayer under class lock
        if (bufferedEvents != null) {
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "Push buffered events");
            }
            DataLayer dataLayer = mTagManager.getDataLayer();

            synchronized (sLock) {
                Map<String, Object> bufferedEvent;
                while ((bufferedEvent = bufferedEvents.poll()) != null) {
                    if (GaGtmLog.isEnabled()) {
                        Log.d(LOG_TAG, "item=" + bufferedEvent.toString());
                    }
                    dataLayer.push(bufferedEvent);
                }
            }
        }
    }

    public static GaGtmUtils getInstance() {
        if (sInstance == null) {
            synchronized (GaGtmUtils.class) {
                if (sInstance == null) {
                    sInstance = new GaGtmUtils();
                }
            }
        }
        return sInstance;
    }

    private void ensureContainerLoadedLocked() {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "ensureContainerLoaded");
        }
        PendingResult<ContainerHolder> pendingResult = this.mTagManager.loadContainerPreferFresh(this.mContainerId, this.mDefaultContainerResourceId);
        pendingResult.setResultCallback(new ResultCallback<ContainerHolder>() { // from class: com.sonymobile.gagtmhelper.GaGtmUtils.1
            @Override // com.google.android.gms.common.api.ResultCallback
            public void onResult(ContainerHolder containerHolder) {
                boolean success = false;
                if (GaGtmLog.isEnabled()) {
                    Log.d(GaGtmUtils.LOG_TAG, "onResult:");
                }
                if (containerHolder != null) {
                    if (containerHolder.getStatus().isSuccess()) {
                        success = true;
                        GaGtmUtils.this.mContainerHolder = containerHolder;
                        Container container = containerHolder.getContainer();
                        if (container != null && GaGtmLog.isEnabled()) {
                            Log.d(GaGtmUtils.LOG_TAG, "container is default = " + container.isDefault());
                        }
                        GaGtmUtils.this.pushInitDefaultsToDataLayer();
                        GaGtmUtils.this.setContainerDefaults();
                        new Thread(new Runnable() { // from class: com.sonymobile.gagtmhelper.GaGtmUtils.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                synchronized (GaGtmUtils.sLock) {
                                    GaGtmUtils.this.mContainerLoaded = true;
                                    GaGtmUtils.this.deserializeQueueFromFileAndPush();
                                    GaGtmUtils.this.flushDataLayerQueueLocked();
                                }
                            }
                        }).start();
                    } else if (GaGtmLog.isEnabled()) {
                        Log.d(GaGtmUtils.LOG_TAG, "Error loading container");
                    }
                } else if (GaGtmLog.isEnabled()) {
                    Log.d(GaGtmUtils.LOG_TAG, "containerHolder was null");
                }
                if (GaGtmUtils.this.mContainerLoadedCallback != null) {
                    if (GaGtmLog.isEnabled()) {
                        Log.d(GaGtmUtils.LOG_TAG, "Calling callback");
                    }
                    GaGtmUtils.this.mContainerLoadedCallback.onContainerLoaded(success);
                }
            }
        }, this.mContainerLoadingTimeout, TimeUnit.SECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void flushDataLayerQueueLocked() throws InterruptedException {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "flushDataLayerQueueLocked");
        }
        DataLayer dataLayer = this.mTagManager.getDataLayer();
        while (true) {
            Map<String, Object> pendingEvent = this.mPendingEvents.poll();
            if (pendingEvent != null) {
                if (GaGtmLog.isEnabled()) {
                    Log.d(LOG_TAG, "item=" + pendingEvent.toString());
                }
                dataLayer.push(pendingEvent);
            } else {
                return;
            }
        }
    }

    public ContainerHolder getContainerHolder() {
        ContainerHolder containerHolder;
        synchronized (sLock) {
            containerHolder = this.mContainerHolder;
        }
        return containerHolder;
    }

    public void pushAppView(String screenName) {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "pushAppView screenName=" + screenName);
        }
        pushToDataLayer(DataLayer.mapOf("event", "appView", GTM_KEY_SCREEN_NAME, screenName));
    }

    public void pushEvent(String eventCategory, String eventAction, String eventLabel, long eventValue) {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "pushEvent category=" + eventCategory + " action=" + eventAction + " label=" + eventLabel + " value=" + eventValue);
        }
        pushToDataLayer(DataLayer.mapOf("event", "event", GTM_KEY_EVENT_CATEGORY, eventCategory, GTM_KEY_EVENT_ACTION, eventAction, GTM_KEY_EVENT_LABEL, eventLabel, GTM_KEY_EVENT_VALUE, String.valueOf(eventValue)));
    }

    public void pushTiming(String timingCategory, long timingValue, String timingVar, String timingLabel) {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "pushTiming category=" + timingCategory + " value=" + String.valueOf(timingValue) + " var=" + timingVar + " label=" + timingLabel);
        }
        pushToDataLayer(DataLayer.mapOf("event", "timing", GTM_KEY_TIMING_CATEGORY, timingCategory, GTM_KEY_TIMING_VALUE, String.valueOf(timingValue), GTM_KEY_TIMING_VAR, timingVar, GTM_KEY_TIMING_LABEL, timingLabel));
    }

    public void pushStartSession() {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "pushStartSession");
        }
        pushToDataLayer(DataLayer.mapOf("event", "startSession"));
    }

    public void pushEndSession() {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "pushEndSession");
        }
        pushToDataLayer(DataLayer.mapOf("event", "endSession"));
    }

    public void pushDeepEvent(String eventCategory, String eventAction, String eventLabel, long eventValue) {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "pushDeepEvent category=" + eventCategory + " action=" + eventAction + " label=" + eventLabel + " value=" + String.valueOf(eventValue));
        }
        pushToDataLayer(DataLayer.mapOf("event", "deepEvent", GTM_KEY_EVENT_CATEGORY, eventCategory, GTM_KEY_EVENT_ACTION, eventAction, GTM_KEY_EVENT_LABEL, eventLabel, GTM_KEY_EVENT_VALUE, String.valueOf(eventValue)));
    }

    public void pushException(String exceptionDescription) {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "pushException exceptionDescription=" + exceptionDescription);
        }
        pushToDataLayer(DataLayer.mapOf("event", "exception", GTM_KEY_EXCEPTION_DESCRIPTION, exceptionDescription));
    }

    public void pushDeepException(String exceptionDescription) {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "pushDeepException exceptionDescription=" + exceptionDescription);
        }
        pushToDataLayer(DataLayer.mapOf("event", "deepException", GTM_KEY_EXCEPTION_DESCRIPTION, exceptionDescription));
    }

    public void pushToDataLayer(Map<String, Object> keyValueData) {
        synchronized (sLock) {
            if (this.mContainerLoaded) {
                this.mTagManager.getDataLayer().push(keyValueData);
            } else {
                if (GaGtmLog.isEnabled()) {
                    Log.d(LOG_TAG, "Container is NOT loaded, add to queue");
                }
                if (this.mPendingEvents.size() < 50) {
                    this.mPendingEvents.add(keyValueData);
                } else if (GaGtmLog.isEnabled()) {
                    Log.w(LOG_TAG, "Max pending events reached. Dropping event " + keyValueData);
                }
            }
        }
    }

    // GaGtmUtils.java
    public synchronized void pushInitDefaultsToDataLayer() {
        String customization = "";
        String customizationRevision = "";
        String customerId = "";
        String simMnc = "";
        String simMcc = "";
        String networkMnc = "";
        String networkMcc = "";

        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "pushInitDefaultsToDataLayer");
        }

        // System properties
        try {
            customization = SystemPropertiesProxy.get(mContext, "ro.semc.version.cust");
            customizationRevision = SystemPropertiesProxy.get(mContext, "ro.semc.version.cust_revision");
            customerId = SystemPropertiesProxy.get(mContext, "ro.somc.customerid");
        } catch (Exception e) {
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "SystemProperty exception:" + e.getMessage());
            }
        }

        // SIM / network info
        final TelephonyManager tm =
                (TelephonyManager) mContext.getSystemService("phone");

        try {
            if (tm.getSimState() == TelephonyManager.SIM_STATE_READY) {
                final String simOperator = tm.getSimOperator();
                if (simOperator.length() == 5 || simOperator.length() == 6) {
                    simMcc = simOperator.substring(0, 3);
                    simMnc = simOperator.substring(3);
                }
            } else {
                if (GaGtmLog.isEnabled()) {
                    Log.d(LOG_TAG, "SIM state is not ready");
                }
            }
        } catch (Exception e) {
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "Unexpected exception reading SIM info:" + e.getMessage());
            }
        }

        try {
            final String networkOperator = tm.getNetworkOperator();
            if (networkOperator.length() == 5 || networkOperator.length() == 6) {
                networkMcc = networkOperator.substring(0, 3);
                networkMnc = networkOperator.substring(3);
            }
        } catch (Exception e) {
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "Unexpected exception reading network info:" + e.getMessage());
            }
        }

        // Debug dump before push
        if (GaGtmLog.isEnabled()) {
            Log.d(
                LOG_TAG,
                new StringBuilder()
                    .append("Pushing to data layer ")
                    .append("deviceBuildModel:").append(android.os.Build.MODEL).append(", ")
                    .append("deviceBuildId: ").append(android.os.Build.ID).append(", ")
                    .append("deviceBuildType:").append(android.os.Build.TYPE).append(", ")
                    .append("deviceCustomization:").append(customization).append(", ")
                    .append("deviceCustomizationRevision:").append(customizationRevision).append(", ")
                    .append("deviceCustomerId: ").append(customerId).append(", ")
                    .append("deviceSimMcc: ").append(simMcc).append(", ")
                    .append("deviceSimMnc: ").append(simMnc).append(", ")
                    .append("deviceNetworkMcc: ").append(networkMcc).append(", ")
                    .append("deviceNetworkMnc: ").append(networkMnc)
                    .toString()
            );
        }

        // Push defaults to GTM DataLayer
        pushToDataLayer(
            com.google.android.gms.tagmanager.DataLayer.mapOf(
                "gagtm-deviceBuildModel", android.os.Build.MODEL,
                "gagtm-deviceBuildId", android.os.Build.ID,
                "gagtm-deviceBuildType", android.os.Build.TYPE,
                "gagtm-deviceCustomization", customization,
                "gagtm-deviceCustomizationRevision", customizationRevision,
                "gagtm-deviceCustomerId", customerId,
                "gagtm-deviceSimMcc", simMcc,
                "gagtm-deviceSimMnc", simMnc,
                "gagtm-deviceNetworkMcc", networkMcc,
                "gagtm-deviceNetworkMnc", networkMnc
            )
        );
    }

    public void setContainerDefaults() {
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "setContainerDefaults");
        }
        if (this.mContainerHolder == null) {
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "container holder is null exiting");
                return;
            }
            return;
        }
        Container container = this.mContainerHolder.getContainer();
        if (container == null) {
            if (GaGtmLog.isEnabled()) {
                Log.d(LOG_TAG, "container is null exiting");
                return;
            }
            return;
        }
        int gaDispatchPeriod = (int) container.getLong(GTM_KEY_GA_DISPATCH_PERIOD);
        if (gaDispatchPeriod <= 0) {
            gaDispatchPeriod = GA_DEFAULT_DISPATCH_PERIOD;
        }
        GoogleAnalytics googleAnalytics = GoogleAnalytics.getInstance(this.mContext);
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "gaDispatchPeriod:" + gaDispatchPeriod);
        }
        googleAnalytics.setLocalDispatchPeriod(gaDispatchPeriod);
        boolean gaForceLocalDispatch = container.getLong(GTM_KEY_GA_FORCE_LOCAL_DISPATCH) == 1;
        if (GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "gaForceLocalDispatch:" + gaForceLocalDispatch);
        }
        if (gaForceLocalDispatch && GaGtmLog.isEnabled()) {
            Log.d(LOG_TAG, "gaForceLocalDispatch will be ignored, consider removing it from your container");
        }
        int gaExceptionMaxReportedRows = (int) container.getLong(GTM_KEY_GA_EXCEPTION_MAX_REPORTED_ROWS);
        GaGtmExceptionParser.setMaxReportedRows(gaExceptionMaxReportedRows);
        int gaExceptionMaxTraversedRows = (int) container.getLong(GTM_KEY_GA_EXCEPTION_MAX_TRAVERSED_ROWS);
        GaGtmExceptionParser.setMaxTraversedRows(gaExceptionMaxTraversedRows);
        String gaExceptionPackageNames = container.getString(GTM_KEY_GA_EXCEPTION_PACKAGE_NAMES);
        GaGtmExceptionParser.setEnabledPackageNames(gaExceptionPackageNames);
        String gaExceptionHashList = container.getString(GTM_KEY_GA_EXCEPTION_HASH_LIST);
        GaGtmExceptionParser.setDeepCrashHashList(gaExceptionHashList);
        String gaExceptionDeepMode = container.getString(GTM_KEY_GA_EXCEPTION_DEEP_MODE);
        GaGtmExceptionParser.setDeepMode(gaExceptionDeepMode);
    }
}