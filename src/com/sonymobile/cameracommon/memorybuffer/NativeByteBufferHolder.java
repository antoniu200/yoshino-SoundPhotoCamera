package com.sonymobile.cameracommon.memorybuffer;

import android.os.Debug;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class NativeByteBufferHolder {
    private static final boolean IS_DEBUG = false;
    public static final String TAG = "NativeByteBufferHolder";
    private final ByteBuffer mByteBuffer;
    private int mRefCount;
    private static final Object DEBUG_LOCK = new Object();
    private static int sDebugCount = 0;
    private static long sDebugUsedBytes = 0;
    private static NativeByteBufferAllocationHandler sDebugAllocationHandler = null;

    public interface NativeByteBufferAllocationHandler {
        void onAllocated(int i);

        void onReleased(int i);
    }

    public static NativeByteBufferHolder allocate(int capacity) {
        return new NativeByteBufferHolder(capacity);
    }

    private NativeByteBufferHolder(int capacity) {
        if (capacity <= 0) {
            this.mByteBuffer = ByteBuffer.allocateDirect(0);
            this.mRefCount = 0;
        } else {
            this.mByteBuffer = NativeByteBufferAllocator.allocate(capacity);
            this.mRefCount = 1;
            debugNotifyAllocated(this);
        }
    }

    public ByteBuffer get() {
        return this.mByteBuffer;
    }

    public synchronized boolean isAvairable() {
        return this.mRefCount > 0;
    }

    public synchronized boolean incrementRefCount() {
        boolean z;
        if (isAvairable()) {
            this.mRefCount++;
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public synchronized void decrementRefCount() {
        if (isAvairable()) {
            this.mRefCount--;
            if (this.mRefCount == 0) {
                NativeByteBufferAllocator.release(this.mByteBuffer);
                debugNotifyReleased(this);
            }
        }
    }

    private static String dump() {
        return "count:" + sDebugCount + " total[kb]:" + (sDebugUsedBytes / 1024) + " used[kb:" + (Debug.getNativeHeapAllocatedSize() / 1024) + " free[kb]:" + (Debug.getNativeHeapFreeSize() / 1024);
    }

    public static int debugGetCount() {
        return sDebugCount;
    }

    public long debugGetUsedBytes() {
        return sDebugUsedBytes;
    }

    public static void debugSetAllocationHandler(NativeByteBufferAllocationHandler ntiveMemoryAllocatinHandler) {
    }

    private static void debugNotifyAllocated(NativeByteBufferHolder ref) {
    }

    private static void debugNotifyReleased(NativeByteBufferHolder ref) {
    }
}
