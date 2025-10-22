package com.sonymobile.cameracommon.memorybuffer;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
class NativeByteBufferAllocator {
    static native ByteBuffer allocate(int i);

    static native void release(ByteBuffer byteBuffer);

    NativeByteBufferAllocator() {
    }

    static {
        System.loadLibrary("nativebytebuffer");
    }
}