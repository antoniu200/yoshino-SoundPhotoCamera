package com.sonyericsson.cameracommon.contentsview;

import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public class MpoUtils {
    public static final int MULTIANGLE = 2;
    public static final int STEREO = 1;
    public static final String TAG = "MpoUtils";
    public static final int UNKNOWN = 0;

    private MpoUtils() {
    }

    public static int getType(String mpoPath) throws Throwable {
        RandomAccessFile stream = null;
        try {
            try {
                RandomAccessFile stream2 = new RandomAccessFile(mpoPath, "r");
                try {
                    byte[] marker = new byte[2];
                    while (2 <= stream2.read(marker)) {
                        if (!isSOI(marker[0], marker[1]) && !isEOI(marker[0], marker[1])) {
                            if (!isAPP(marker[0], marker[1])) {
                                break;
                            }
                            long current = stream2.getFilePointer();
                            long length = stream2.readShort();
                            long nextMerker = current + length;
                            if (isAPP2(marker[0], marker[1]) && checkFormatIdentifier(stream2)) {
                                stream2.readShort();
                                skip(stream2, 6);
                                int tags = stream2.readShort();
                                for (int i = 0; i < tags; i++) {
                                    if (checkMPEntryTag(stream2)) {
                                        skip(stream2, 2);
                                        int entries = stream2.readInt() / 16;
                                        int iTypeFromEntries = typeFromEntries(entries);
                                        if (stream2 != null) {
                                            try {
                                                stream2.close();
                                            } catch (IOException e) {
                                            }
                                        }
                                        return iTypeFromEntries;
                                    }
                                    skip(stream2, 10);
                                }
                            }
                            stream2.seek(nextMerker);
                        }
                    }
                    if (stream2 != null) {
                        try {
                            stream2.close();
                        } catch (IOException e2) {
                        }
                    }
                } catch (Exception e3) {
                    stream = stream2;
                    CameraLogger.e(TAG, "Fail to analize a mpo file by IO Exception. message:" + e3.getMessage());
                    if (stream != null) {
                        try {
                            stream.close();
                        } catch (IOException e4) {
                        }
                    }
                    return 0;
                } catch (Throwable th) {
                    stream = stream2;
                    if (stream != null) {
                        try {
                            stream.close();
                        } catch (IOException e5) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
            }
        } catch (Exception e6) {
        }
        return 0;
    }

    private static class JpegMaker {
        static final byte APP0 = -32;
        static final byte APP15 = -17;
        static final byte APP2 = -30;
        static final byte EOI = -39;
        static final byte MARKER = -1;
        static final byte SOI = -40;

        private JpegMaker() {
        }
    }

    static boolean isSOI(byte first, byte second) {
        return first == -1 && second == -40;
    }

    static boolean isEOI(byte first, byte second) {
        return first == -1 && second == -39;
    }

    static boolean isAPP(byte first, byte second) {
        return first == -1 && second >= -32 && second <= -17;
    }

    static boolean isAPP2(byte first, byte second) {
        return first == -1 && second == -30;
    }

    static int typeFromEntries(int entries) {
        if (entries == 2) {
            return 1;
        }
        return entries != 15 ? 0 : 2;
    }

    static boolean checkFormatIdentifier(RandomAccessFile stream) throws IOException {
        byte[] buff = new byte[4];
        if (buff.length != stream.read(buff)) {
            return false;
        }
        return buff[0] == 77 && buff[1] == 80 && buff[2] == 70 && buff[3] == 0;
    }

    static boolean checkMPEntryTag(RandomAccessFile stream) throws IOException {
        short buff = stream.readShort();
        return 45058 == (65535 & buff);
    }

    static void skip(RandomAccessFile stream, int bytes) throws IOException {
        if (bytes != stream.skipBytes(bytes)) {
            throw new EOFException();
        }
    }
}
