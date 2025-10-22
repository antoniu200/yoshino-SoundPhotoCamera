package com.sonyericsson.cameracommon.mediasaving.takenstatus;

/* loaded from: classes.dex */
public class TakenStatusPhoto {
    public static final String TAG = "TakenStatusPhoto";
    protected Facing mFacing;
    protected byte[] mImage;

    public enum Facing {
        FRONT,
        BACK,
        UNKNOWN
    }

    public TakenStatusPhoto() {
        this.mFacing = Facing.UNKNOWN;
    }

    public TakenStatusPhoto(TakenStatusPhoto data) {
        this.mFacing = Facing.UNKNOWN;
        this.mImage = data.mImage;
        this.mFacing = data.mFacing;
    }

    public TakenStatusPhoto(Facing facing) {
        this.mFacing = Facing.UNKNOWN;
        this.mFacing = facing;
    }

    public boolean isFront() {
        return this.mFacing == Facing.FRONT;
    }

    public void log() {
    }
}