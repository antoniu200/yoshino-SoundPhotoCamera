package com.sonymobile.android.addoncamera.soundphoto.view.settingui;

import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.values.Geotag;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagSettingListener;
import com.sonyericsson.cameracommon.utility.RegionConfig;

/* loaded from: classes.dex */
class GeotagDialogListener implements GeotagSettingListener {
    private final BaseActivity mActivity;
    private final SoundPhotoSettingUi mSoundPhotoSettingUi;

    GeotagDialogListener(BaseActivity activity, SoundPhotoSettingUi soundPhotoSettingUi) {
        this.mActivity = activity;
        this.mSoundPhotoSettingUi = soundPhotoSettingUi;
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.location.GeotagSettingListener
    public void onSet(boolean available) {
        Geotag geotag;
        if (available) {
            geotag = Geotag.ON;
        } else {
            geotag = Geotag.OFF;
        }
        this.mActivity.getGeoTagManager().updateLocation(geotag);
        this.mActivity.getCommonSettings().set(geotag);
        if (RegionConfig.isChinaRegion(this.mActivity) && !available) {
            this.mSoundPhotoSettingUi.openMenuAndSelectCommonTab();
        }
    }
}