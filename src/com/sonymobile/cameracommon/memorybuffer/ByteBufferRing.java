package com.sonymobile.cameracommon.memorybuffer;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ByteBufferRing {
    private List<ByteBuffer> mBufferList = new ArrayList();
    private int mCurrentBufferIndex = 0;

    public ByteBufferRing(int numberOfBuffer, int lengthOfOneBuffer, boolean isDirect) {
        ByteBuffer buf;
        for (int i = 0; i < numberOfBuffer; i++) {
            if (isDirect) {
                buf = ByteBuffer.allocateDirect(lengthOfOneBuffer);
            } else {
                buf = ByteBuffer.allocate(lengthOfOneBuffer);
            }
            this.mBufferList.add(buf);
        }
    }

    public synchronized void release() {
        for (ByteBuffer buf : this.mBufferList) {
            buf.clear();
        }
        this.mBufferList.clear();
    }

    public synchronized ByteBuffer getCurrent() {
        return this.mBufferList.get(this.mCurrentBufferIndex);
    }

    public synchronized ByteBuffer getNext() {
        return this.mBufferList.get(getNextIndex());
    }

    public synchronized void increment() {
        this.mCurrentBufferIndex = getNextIndex();
    }

    public synchronized ByteBuffer findByByteArray(byte[] byteArray) {
        ByteBuffer buffer;
        Iterator<ByteBuffer> it = this.mBufferList.iterator();
        while (true) {
            if (!it.hasNext()) {
                buffer = null;
                break;
            }
            buffer = it.next();
            if (buffer.array() == byteArray) {
                break;
            }
        }
        return buffer;
    }

    private int getNextIndex() {
        if (this.mBufferList.size() - 1 <= this.mCurrentBufferIndex) {
            return 0;
        }
        return this.mCurrentBufferIndex + 1;
    }
}