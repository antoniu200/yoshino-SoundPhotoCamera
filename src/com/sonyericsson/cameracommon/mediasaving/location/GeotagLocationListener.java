package com.sonyericsson.cameracommon.mediasaving.location;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

/* loaded from: classes.dex */
public class GeotagLocationListener implements LocationListener {
    public static final String TAG = "GeotagLocationListener";
    private final GeotagManager mGeotagManager;
    private boolean mIsDisabled = false;
    private Location mLastLocation;
    public final String mProvider;
    private boolean mValid;

    public GeotagLocationListener(GeotagManager geotagManager, String provider) {
        this.mGeotagManager = geotagManager;
        this.mProvider = provider;
        this.mLastLocation = new Location(this.mProvider);
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location newLocation) {
        this.mIsDisabled = false;
        if (newLocation.getLatitude() != 0.0d || newLocation.getLongitude() != 0.0d) {
            this.mLastLocation.set(newLocation);
            this.mValid = true;
            this.mGeotagManager.notifyStatus();
        }
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String provider) {
        this.mIsDisabled = false;
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String provider) {
        this.mValid = false;
        this.mIsDisabled = true;
        this.mGeotagManager.notifyStatus();
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String provider, int status, Bundle extras) {
        this.mIsDisabled = false;
        if (status == 0 && !this.mValid) {
            this.mGeotagManager.notifyStatus();
        }
    }

    public Location current() {
        if (this.mValid) {
            return this.mLastLocation;
        }
        return null;
    }

    public void reset() {
        this.mValid = false;
        this.mIsDisabled = false;
    }

    public boolean isDisabled() {
        return this.mIsDisabled;
    }
}