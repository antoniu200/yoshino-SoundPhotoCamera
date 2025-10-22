package com.sonymobile.cameracommon.memorybuffer;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ByteArrayRing {
    private final List<byte[]> mByteList;
    private int mCurrentByteIndex = 0;

    public ByteArrayRing(int numberOfBuffer, int lengthOfOneBuffer) {
        this.mByteList = new ArrayList(numberOfBuffer);
        for (int i = 0; i < numberOfBuffer; i++) {
            byte[] buf = new byte[lengthOfOneBuffer];
            this.mByteList.add(buf);
        }
    }

    public synchronized byte[] getCurrent() {
        return this.mByteList.get(this.mCurrentByteIndex);
    }

    public synchronized byte[] getNext() {
        return this.mByteList.get(getNextIndex());
    }

    public synchronized void increment() {
        this.mCurrentByteIndex = getNextIndex();
    }

    private int getNextIndex() {
        if (this.mByteList.size() - 1 <= this.mCurrentByteIndex) {
            return 0;
        }
        return this.mCurrentByteIndex + 1;
    }
}