package com.sonymobile.cameracommon.memorybuffer;

import com.sonymobile.cameracommon.memorybuffer.LockByteArray;

/* loaded from: classes.dex */
public class LockByteArrayRing {
    private final LockByteArray[] mByteArrays;
    private int mCurrentIndex = 0;

    public LockByteArrayRing(int numberOfBuffer, int lengthOfOneBuffer, LockByteArray.LockByteChangedListener listener) {
        this.mByteArrays = new LockByteArray[numberOfBuffer];
        for (int i = 0; i < numberOfBuffer; i++) {
            this.mByteArrays[i] = new LockByteArray(lengthOfOneBuffer, listener);
        }
    }

    public synchronized LockByteArray getCurrent() {
        return this.mByteArrays[this.mCurrentIndex];
    }

    public synchronized LockByteArray getNext() {
        return this.mByteArrays[getNextIndex()];
    }

    public synchronized void increment() {
        this.mCurrentIndex = getNextIndex();
    }

    private int getNextIndex() {
        return (this.mCurrentIndex + 1) % this.mByteArrays.length;
    }

    public synchronized LockByteArray findByByteArray(byte[] byteArray) {
        LockByteArray lba;
        LockByteArray[] lockByteArrayArr = this.mByteArrays;
        int length = lockByteArrayArr.length;
        int i = 0;
        while (true) {
            if (i < length) {
                lba = lockByteArrayArr[i];
                if (lba.isHoldingTheArray(byteArray)) {
                    break;
                }
                i++;
            } else {
                lba = null;
                break;
            }
        }
        return lba;
    }
}