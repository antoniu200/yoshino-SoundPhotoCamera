package com.sonymobile.cameracommon.memorybuffer;

/* loaded from: classes.dex */
public class LockByteArray {
    private final byte[] mByteArray;
    private boolean mIsLocked = false;
    private final LockByteChangedListener mListener;

    public interface LockByteChangedListener {
        void unlocked();
    }

    public LockByteArray(int length, LockByteChangedListener listener) {
        this.mByteArray = new byte[length];
        this.mListener = listener;
    }

    public synchronized boolean isLocked() {
        return this.mIsLocked;
    }

    public synchronized void unlock() {
        if (this.mIsLocked) {
            this.mIsLocked = false;
            this.mListener.unlocked();
        }
    }

    public synchronized byte[] getByteArrayAndLock() {
        byte[] bArr;
        if (this.mIsLocked) {
            bArr = null;
        } else {
            this.mIsLocked = true;
            bArr = this.mByteArray;
        }
        return bArr;
    }

    public byte[] getByteArray() {
        return this.mByteArray;
    }

    public boolean isHoldingTheArray(byte[] byteArrays) {
        return this.mByteArray == byteArrays;
    }
}