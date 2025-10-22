package com.sonyericsson.cameracommon.mediasaving;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class ThreadSafeOutputStream extends OutputStream {
    boolean mClosed;
    private OutputStream mDelegateStream;

    public ThreadSafeOutputStream(OutputStream delegate) {
        this.mDelegateStream = delegate;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.mClosed = true;
        this.mDelegateStream.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public synchronized void flush() throws IOException {
        super.flush();
    }

    @Override // java.io.OutputStream
    public synchronized void write(byte[] b, int offset, int length) throws IOException {
        if (length > 0) {
            if (!this.mClosed) {
                this.mDelegateStream.write(b, offset, length);
            }
        }
    }

    @Override // java.io.OutputStream
    public synchronized void write(int oneByte) throws IOException {
        if (!this.mClosed) {
            this.mDelegateStream.write(oneByte);
        }
    }
}