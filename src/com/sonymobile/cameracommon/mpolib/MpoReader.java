package com.sonymobile.cameracommon.mpolib;

import java.io.IOException;

/* loaded from: classes.dex */
public class MpoReader {
    private final long mCppObjId;
    private boolean mIsClosed = false;

    private native int native_getExtractJpegNum();

    private native int native_getJpegDataLength(int i);

    private native int native_getRepresentativeImageIndex();

    private static native long native_openMpoFile(String str) throws MpoFormatException, IOException;

    public native void native_closeMpoFile();

    public native void native_getJpegData(int i, byte[] bArr);

    static {
        System.loadLibrary("mpo");
    }

    public static class MpoFormatException extends Exception {
        private static final long serialVersionUID = 1;

        public MpoFormatException(String str) {
            super(str);
        }
    }

    public static MpoReader openMpoFile(String mpoFileName) throws MpoFormatException, IOException {
        return new MpoReader(native_openMpoFile(mpoFileName));
    }

    private MpoReader(long cppObjId) {
        this.mCppObjId = cppObjId;
    }

    public synchronized int getExtractJpegNum() {
        if (this.mIsClosed) {
            throw new IllegalStateException(".MPO file is already closed.\n");
        }
        return native_getExtractJpegNum();
    }

    public synchronized int getRepresentativeImageIndex() {
        if (this.mIsClosed) {
            throw new IllegalStateException(".MPO file is already closed.\n");
        }
        return native_getRepresentativeImageIndex();
    }

    public synchronized int getJpegDataLength(int index) {
        if (this.mIsClosed) {
            throw new IllegalStateException(".MPO file is already closed.\n");
        }
        return native_getJpegDataLength(index);
    }

    public synchronized void getJpegData(int index, byte[] jpegData) {
        if (this.mIsClosed) {
            throw new IllegalStateException(".MPO file is already closed.\n");
        }
        native_getJpegData(index, jpegData);
    }

    public synchronized void closeMpoFile() {
        if (this.mIsClosed) {
            throw new IllegalStateException(".MPO file is already closed.\n");
        }
        native_closeMpoFile();
        this.mIsClosed = true;
    }
}