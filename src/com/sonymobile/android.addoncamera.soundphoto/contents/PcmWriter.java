package com.sonymobile.android.addoncamera.soundphoto.contents;

import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public class PcmWriter {
    private static final String TAG = PcmWriter.class.getSimpleName();
    private final RandomAccessFile mFileWriter;
    private int mPayloadBytes = 0;

    public PcmWriter(String path, short channels, short bitsPerSample, int sampleRate) throws IOException {
        this.mFileWriter = new RandomAccessFile(path, "rw");
        init(channels, bitsPerSample, sampleRate);
    }

    public void release() {
        try {
            close();
        } catch (Exception e) {
            CameraLogger.e(TAG, "release() failed: ", e);
        }
    }

    public void writeSampleData(byte[] buffer, int offset, int length) throws IOException {
        this.mFileWriter.write(buffer, offset, length);
        this.mPayloadBytes += buffer.length;
    }

    private void init(short channels, short bitsPerSample, int sampleRate) throws IOException {
        this.mFileWriter.setLength(0L);
        this.mFileWriter.writeBytes("RIFF");
        this.mFileWriter.writeInt(0);
        this.mFileWriter.writeBytes("WAVE");
        this.mFileWriter.writeBytes("fmt ");
        this.mFileWriter.writeInt(Integer.reverseBytes(16));
        this.mFileWriter.writeShort(Short.reverseBytes((short) 1));
        this.mFileWriter.writeShort(Short.reverseBytes(channels));
        this.mFileWriter.writeInt(Integer.reverseBytes(sampleRate));
        this.mFileWriter.writeInt(Integer.reverseBytes(((sampleRate * bitsPerSample) * channels) / 8));
        this.mFileWriter.writeShort(Short.reverseBytes((short) ((channels * bitsPerSample) / 8)));
        this.mFileWriter.writeShort(Short.reverseBytes(bitsPerSample));
        this.mFileWriter.writeBytes("data");
        this.mFileWriter.writeInt(0);
    }

    private void close() throws IOException {
        this.mFileWriter.seek(4L);
        this.mFileWriter.writeInt(Integer.reverseBytes(this.mPayloadBytes + 36));
        this.mFileWriter.seek(40L);
        this.mFileWriter.writeInt(Integer.reverseBytes(this.mPayloadBytes));
        this.mFileWriter.close();
    }
}