package com.sonyericsson.cameracommon.viewfinder.indicators;

import android.graphics.drawable.AnimationDrawable;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.utility.BrandConfig;

/* loaded from: classes.dex */
public class GeotagIndicator extends Indicator {
    public GeotagIndicator(ImageView view) {
        super(view);
    }

    public void isAcquired(boolean acquired) {
        if (acquired) {
            this.mView.setImageResource(getAcquiredGpsIcon());
            return;
        }
        this.mView.setImageResource(getAcquiringGpsResource());
        AnimationDrawable geotagAnim = (AnimationDrawable) this.mView.getDrawable();
        geotagAnim.start();
    }

    public void release() {
        if (this.mView.getDrawable() instanceof AnimationDrawable) {
            AnimationDrawable geotagAnim = (AnimationDrawable) this.mView.getDrawable();
            geotagAnim.stop();
        }
    }

    private int getAcquiringGpsResource() {
        return BrandConfig.isVerizonBrand() ? R.drawable.cam_acquiring_gps_vzw_anim : R.drawable.cam_acquiring_gps_anim;
    }

    private int getAcquiredGpsIcon() {
        return BrandConfig.isVerizonBrand() ? R.drawable.cam_acquired_gps_vzw_icn : R.drawable.cam_acquired_gps_icn;
    }
}