package com.sonyericsson.cameracommon.mediasaving.location;

import android.content.Context;
import android.location.LocationManager;

/* loaded from: classes.dex */
public class LocationSettingsReader {
    public static final String TAG = "LocationSettingsReader";
    boolean mIsGpsLocationAllowed;
    boolean mIsNetworkLocationAllowed;

    public void readLocationSettings(Context context) {
        setIsGpsLocationAllowed(isLocationProviderAllowed(context, "gps"));
        setIsNetworkLocationAllowed(isLocationProviderAllowed(context, "network"));
    }

    public static boolean isLocationProviderAllowed(Context context, String provider) {
        LocationManager manager = (LocationManager) context.getSystemService("location");
        return manager.isProviderEnabled(provider);
    }

    private void setIsGpsLocationAllowed(boolean isGpsLocationAllowed) {
        this.mIsGpsLocationAllowed = isGpsLocationAllowed;
    }

    private void setIsNetworkLocationAllowed(boolean isNetworkLocationAllowed) {
        this.mIsNetworkLocationAllowed = isNetworkLocationAllowed;
    }

    public boolean getIsGpsLocationAllowed() {
        return this.mIsGpsLocationAllowed;
    }

    public boolean getIsNetworkLocationAllowed() {
        return this.mIsNetworkLocationAllowed;
    }
}