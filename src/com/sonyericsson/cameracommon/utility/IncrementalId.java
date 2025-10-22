package com.sonyericsson.cameracommon.utility;

/* loaded from: classes.dex */
public final class IncrementalId {
    public static final int INCREMENTAL_INVALID = -1;
    private static final int INCREMENTAL_MAX = 2147483646;
    private static final int INCREMENTAL_MIN = 0;
    private int mId = 0;

    public int getNext() {
        return generateNext();
    }

    public synchronized int generateNext() {
        if (this.mId >= INCREMENTAL_MAX) {
            this.mId = 0;
        }
        this.mId++;
        return this.mId;
    }

    public synchronized void clear() {
        this.mId = 0;
    }
}