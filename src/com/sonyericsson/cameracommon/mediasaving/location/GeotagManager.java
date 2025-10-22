package com.sonyericsson.cameracommon.mediasaving.location;

import android.content.Context;
import android.content.DialogInterface;
import android.location.Location;
import android.location.LocationManager;
import android.widget.CompoundButton;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.commonsetting.values.DoNotShowAgainCheckForGeotagDialog;
import com.sonyericsson.cameracommon.commonsetting.values.Geotag;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.PermissionsUtil;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class GeotagManager {
    static final String[] REQUEST_LOCATION_PERMISSION = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"};
    public static final String TAG = "GeotagManager";
    private boolean mAcquiring = false;
    private boolean mConfirmLocationServiceDialogOpened = false;
    private final Context mContext;
    private boolean mIsItemChecked;
    private LocationAcquiredListener mLocationAcquiredListener;
    private GeotagLocationListener mLocationListenerGps;
    private GeotagLocationListener mLocationListenerNetwork;
    private LocationManager mLocationManager;

    public GeotagManager(Context context) {
        this.mContext = context;
    }

    public void assignResource() {
        if (this.mLocationListenerGps == null) {
            this.mLocationListenerGps = new GeotagLocationListener(this, "gps");
        }
        if (this.mLocationListenerNetwork == null) {
            this.mLocationListenerNetwork = new GeotagLocationListener(this, "network");
        }
        if (this.mLocationManager == null) {
            this.mLocationManager = (LocationManager) this.mContext.getSystemService("location");
        }
    }

    public void releaseResource() {
        stopReceivingLocationUpdates();
        this.mLocationManager = null;
    }

    public void release() {
        setLocationAcquiredListener(null);
        this.mLocationListenerGps = null;
        this.mLocationListenerNetwork = null;
    }

    public void setLocationAcquiredListener(LocationAcquiredListener listener) {
        this.mLocationAcquiredListener = listener;
    }

    public boolean isAcquiring() {
        return this.mAcquiring;
    }

    public synchronized void startLocationUpdates(boolean gps, boolean network) {
        if (gps) {
            try {
                this.mLocationManager.requestLocationUpdates("gps", 60000L, 0.0f, this.mLocationListenerGps);
                this.mLocationListenerGps.reset();
                this.mAcquiring = true;
            } catch (IllegalArgumentException e) {
                this.mAcquiring = false;
            } catch (SecurityException ex) {
                CameraLogger.d(TAG, "provider can't access.", ex);
                this.mAcquiring = false;
            }
        }
        if (network) {
            this.mLocationManager.requestLocationUpdates("network", 60000L, 0.0f, this.mLocationListenerNetwork);
            this.mLocationListenerNetwork.reset();
            this.mAcquiring = true;
        }
    }

    public synchronized void stopReceivingLocationUpdates() {
        if (this.mAcquiring) {
            if (this.mLocationManager != null) {
                this.mLocationListenerGps.reset();
                this.mLocationListenerNetwork.reset();
                this.mLocationManager.removeUpdates(this.mLocationListenerGps);
                this.mLocationManager.removeUpdates(this.mLocationListenerNetwork);
            }
            this.mAcquiring = false;
        }
    }

    public Location getCurrentLocation() {
        Location locNetwork = null;
        Location locGps = null;
        if (this.mLocationListenerNetwork != null) {
            locNetwork = this.mLocationListenerNetwork.current();
        }
        if (this.mLocationListenerGps != null) {
            locGps = this.mLocationListenerGps.current();
        }
        if (locGps == null) {
            if (locNetwork != null) {
                Location locGps2 = locNetwork;
                return locGps2;
            }
            return null;
        }
        return locGps;
    }

    public void notifyStatus() {
        if (isDisabled()) {
            updateLocation(Geotag.OFF);
            if (this.mLocationAcquiredListener != null) {
                this.mLocationAcquiredListener.onDisabled();
                return;
            }
            return;
        }
        boolean gps = isGpsAcquired();
        boolean net = isNetworkAcquired();
        if (gps || net) {
            if (this.mLocationAcquiredListener != null) {
                this.mLocationAcquiredListener.onAcquired(gps, net);
            }
        } else if (this.mLocationAcquiredListener != null) {
            this.mLocationAcquiredListener.onLost();
        }
    }

    public boolean isGpsAcquired() {
        if (this.mLocationListenerGps == null || this.mLocationListenerGps.current() == null) {
            return false;
        }
        return true;
    }

    public boolean isNetworkAcquired() {
        if (this.mLocationListenerNetwork == null || this.mLocationListenerNetwork.current() == null) {
            return false;
        }
        return true;
    }

    public void updateLocation(CommonSettingValue geotag) {
        assignResource();
        stopReceivingLocationUpdates();
        if (geotag == Geotag.ON) {
            if (this.mLocationAcquiredListener != null) {
                this.mLocationAcquiredListener.onLost();
            }
            boolean gps = LocationSettingsReader.isLocationProviderAllowed(this.mContext, "gps");
            boolean net = LocationSettingsReader.isLocationProviderAllowed(this.mContext, "network");
            startLocationUpdates(gps, net);
        }
    }

    private void checkLocationService(Geotag geotag, BaseActivity activity, SettingDialogController settingDialogController, GeotagSettingListener listener) {
        updateLocation(geotag);
        activity.getCommonSettings().set(geotag);
        if (listener != null) {
            listener.onSet(geotag == Geotag.ON);
        }
        if (geotag == Geotag.ON && !isLocationServiceAvailable(activity)) {
            if (settingDialogController != null) {
                settingDialogController.closeCurrentDialog();
            }
            activity.getCommonSettings().set(Geotag.ON);
            activity.getMessagePopup().showLaunchSettingAppDialog(activity, listener);
        }
    }

    public void initGeotag(final BaseActivity activity) {
        initGeotag(activity, new GeotagSettingListener() { // from class: com.sonyericsson.cameracommon.mediasaving.location.GeotagManager.1
            @Override // com.sonyericsson.cameracommon.mediasaving.location.GeotagSettingListener
            public void onSet(boolean available) {
                Geotag geotag;
                if (available) {
                    geotag = Geotag.ON;
                } else {
                    geotag = Geotag.OFF;
                }
                activity.getGeoTagManager().updateLocation(geotag);
                activity.getCommonSettings().set(geotag);
            }
        });
    }

    public boolean initGeotag(BaseActivity activity, GeotagSettingListener listener) {
        boolean pseudoflag = false;
        activity.getCommonSettings().setGeoTagPseudoOff(false);
        Geotag geotag = (Geotag) activity.getCommonSettings().get(Geotag.ON.getCommonSettingKey());
        boolean granted = isLocationPermissionGranted(activity);
        if (granted) {
            checkLocationService(geotag, activity, null, listener);
        } else {
            if (geotag == Geotag.ON) {
                geotag = Geotag.OFF;
                activity.getCommonSettings().setGeoTagPseudoOff(true);
                pseudoflag = true;
            }
            updateLocation(geotag);
        }
        return pseudoflag;
    }

    public void setGeotag(Geotag geotag, BaseActivity activity, SettingDialogController settingDialogController, GeotagSettingListener listener) {
        if (geotag == Geotag.ON) {
            boolean permissionRequested = activity.checkAndRequestSelfPermissions(13, REQUEST_LOCATION_PERMISSION);
            if (permissionRequested) {
                activity.getCommonSettings().set(Geotag.ON);
                return;
            }
        }
        checkLocationService(geotag, activity, settingDialogController, listener);
    }

    public static Geotag getGeotag(BaseActivity activity, Geotag originalValue) {
        if (originalValue != Geotag.ON || isLocationServiceAvailable(activity)) {
            return originalValue;
        }
        Geotag modifiedValue = Geotag.OFF;
        return modifiedValue;
    }

    private boolean isLocationPermissionGranted(BaseActivity activity) {
        List<String> notGranted = new ArrayList<>();
        PermissionsUtil.getSelfPermissions(activity, REQUEST_LOCATION_PERMISSION, null, notGranted);
        return notGranted.size() <= 0;
    }

    private static boolean isLocationServiceAvailable(BaseActivity activity) {
        activity.readLocationSettings();
        return activity.isGpsLocationAllowed() || activity.isNetworkLocationAllowed();
    }

    public GeotagLocationListener getLocationListener(String provider) {
        if (this.mLocationListenerGps != null && this.mLocationListenerGps.mProvider.equals(provider)) {
            return this.mLocationListenerGps;
        }
        if (this.mLocationListenerNetwork != null && this.mLocationListenerNetwork.mProvider.equals(provider)) {
            return this.mLocationListenerNetwork;
        }
        return null;
    }

    public boolean isDisabled() {
        boolean gps = false;
        boolean net = false;
        if (this.mLocationListenerGps != null) {
            gps = this.mLocationListenerGps.isDisabled();
        }
        if (this.mLocationListenerNetwork != null) {
            net = this.mLocationListenerNetwork.isDisabled();
        }
        return gps && net;
    }

    public boolean isConfirmLocationServiceDialogOpened() {
        return this.mConfirmLocationServiceDialogOpened;
    }

    public void confirmLocationService(final BaseActivity activity, CommonSettings settings, GeotagSettingListener listener) {
        Geotag geotag = (Geotag) settings.get(CommonSettingKey.GEO_TAG);
        DoNotShowAgainCheckForGeotagDialog check = (DoNotShowAgainCheckForGeotagDialog) settings.get(CommonSettingKey.DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG);
        if (check != DoNotShowAgainCheckForGeotagDialog.CHECKED) {
            switch (geotag) {
                case ON:
                    break;
                default:
                    this.mIsItemChecked = false;
                    this.mConfirmLocationServiceDialogOpened = true;
                    activity.getMessagePopup().showConfirmLocationAccess(activity, true, new ConfirmLocationAccessDialogListener(activity, settings, listener), new ConfirmLocationAccessDialogListener(activity, settings, listener), new DialogInterface.OnCancelListener() { // from class: com.sonyericsson.cameracommon.mediasaving.location.GeotagManager.2
                        @Override // android.content.DialogInterface.OnCancelListener
                        public void onCancel(DialogInterface arg0) {
                            GeotagManager.this.mConfirmLocationServiceDialogOpened = false;
                            activity.getStorageManager().updateRemain(0L, true);
                        }
                    }, new CompoundButton.OnCheckedChangeListener() { // from class: com.sonyericsson.cameracommon.mediasaving.location.GeotagManager.3
                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                        public void onCheckedChanged(CompoundButton arg0, boolean arg1) {
                            GeotagManager.this.mIsItemChecked = arg1;
                        }
                    });
                    break;
            }
        }
    }

    private class ConfirmLocationAccessDialogListener implements DialogInterface.OnClickListener {
        private final BaseActivity mActivity;
        private final GeotagSettingListener mListener;
        private final CommonSettings mSettings;

        public ConfirmLocationAccessDialogListener(BaseActivity activity, CommonSettings settings, GeotagSettingListener listener) {
            this.mActivity = activity;
            this.mSettings = settings;
            this.mListener = listener;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            if (GeotagManager.this.mIsItemChecked) {
                this.mSettings.set(DoNotShowAgainCheckForGeotagDialog.CHECKED);
            }
            switch (which) {
                case -1:
                    GeotagManager.this.setGeotag(Geotag.ON, this.mActivity, null, this.mListener);
                    break;
            }
            GeotagManager.this.mConfirmLocationServiceDialogOpened = false;
            this.mActivity.getStorageManager().updateRemain(0L, true);
        }
    }
}