package com.sonyericsson.cameracommon.utility;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class ByteBufferUtil {
    public static final String TAG = "ByteBufferUtil";

    public static byte[] array(ByteBuffer src) {
        ByteBuffer src2 = src.duplicate();
        byte[] dst = new byte[src2.limit()];
        src2.rewind();
        src2.get(dst);
        return dst;
    }
}