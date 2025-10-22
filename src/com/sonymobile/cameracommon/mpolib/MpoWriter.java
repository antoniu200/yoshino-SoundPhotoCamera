package com.sonymobile.cameracommon.mpolib;

import java.io.IOException;

/* loaded from: classes.dex */
public class MpoWriter {
    public static native void addCombineJpegData(byte[] bArr, int i) throws IOException;

    public static native void addCombineJpegFile(String str) throws IOException;

    public static native void endCombineJpegToMpo();

    private static native void getOutputData(byte[] bArr);

    private static native int getOutputDataLength();

    public static native void startCombineJpegToMpo(int i, boolean z) throws IOException;

    static {
        System.loadLibrary("mpo");
    }

    public static byte[] getOutputData() {
        byte[] data = new byte[getOutputDataLength()];
        getOutputData(data);
        return data;
    }
}