package com.sonyericsson.cameracommon.viewfinder.indicators;

import android.widget.ImageView;
import com.sonyericsson.cameracommon.utility.RotationUtil;

/* loaded from: classes.dex */
public class Indicator {
    protected final ImageView mView;
    protected boolean mOn = false;
    protected boolean mVisible = false;

    public Indicator(ImageView view) {
        this.mView = view;
        update();
    }

    public void setImageResource(int resource) {
        this.mView.setImageResource(resource);
    }

    public void show() {
        this.mVisible = true;
        update();
    }

    public void hide() {
        this.mVisible = false;
        update();
    }

    public void set(boolean on) {
        this.mOn = on;
        update();
    }

    public void setSensorOrientation(int orientation) {
        this.mView.setRotation(RotationUtil.getAngle(orientation));
    }

    protected void update() {
        if (this.mOn && this.mVisible) {
            this.mView.setVisibility(0);
        } else {
            this.mView.setVisibility(8);
        }
    }
}