package com.sonyericsson.cameracommon.mediasaving.updator;

import android.content.ContentValues;

/* loaded from: classes.dex */
public final class CrUpdateParameter {
    public ContentValues values = null;
    public String where = null;
    public String[] selectionArgs = null;

    public void clear() {
        this.values = null;
        this.where = null;
        this.selectionArgs = null;
    }
}