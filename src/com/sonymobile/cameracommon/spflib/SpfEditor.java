package com.sonymobile.cameracommon.spflib;

import androidx.core.view.InputDeviceCompat;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class SpfEditor {
    private int mHandle;

    private static native boolean nativeAddSoundData(int i, int i2, int i3, int i4, int i5, int i6, int i7, byte[] bArr);

    private static native void nativeClose(int i);

    private static native boolean nativeDeleteSoundData(int i);

    private static native int nativeGetSoundCodec(int i);

    private static native int nativeGetSoundData(int i, byte[] bArr);

    private static native int nativeGetSoundDataSize(int i);

    private static native boolean nativeGetSoundMetadata(int i, SoundMetaData soundMetaData);

    private static native void nativeInsertAppThreeMarkerToBuffer(ByteBuffer byteBuffer);

    private static native void nativeInsertAppThreeMarkerToFile(String str);

    private static native boolean nativeIsSpfFile(int i);

    private static native int nativeOpenWithBuffer(ByteBuffer byteBuffer);

    private static native int nativeOpenWithFile(String str);

    private static native boolean nativeSucceedSoundDataTo(int i, String str);

    static {
        System.loadLibrary("spf");
    }

    public SpfEditor(ByteBuffer jpegDataBuffer) {
        nativeInsertAppThreeMarkerToBuffer(jpegDataBuffer);
        this.mHandle = nativeOpenWithBuffer(jpegDataBuffer);
        if (this.mHandle == 0) {
            throw new IllegalArgumentException("SpfEditor could not read the specified data.");
        }
    }

    public SpfEditor(String filepath) throws IOException {
        nativeInsertAppThreeMarkerToFile(filepath);
        this.mHandle = nativeOpenWithFile(filepath);
        if (this.mHandle == 0) {
            throw new IOException("SpfEditor could not read the specified data.");
        }
    }

    public void release() {
        nativeClose(this.mHandle);
        this.mHandle = 0;
    }

    public boolean isSpf() {
        return nativeIsSpfFile(this.mHandle);
    }

    public SoundCodec getSoundCodec() {
        return SoundCodec.fromCode(nativeGetSoundCodec(this.mHandle));
    }

    public SoundMetaData getSoundMetaData() {
        SoundMetaData metadata = new SoundMetaData();
        if (nativeGetSoundMetadata(this.mHandle, metadata)) {
            return metadata;
        }
        return null;
    }

    public byte[] getSoundData() {
        byte[] buff = new byte[getSoundDataSize()];
        int size = nativeGetSoundData(this.mHandle, buff);
        byte[] result = new byte[size];
        System.arraycopy(buff, 0, result, 0, result.length);
        return result;
    }

    public boolean addSoundData(SoundCodec codec, SoundMetaData metaData, byte[] sounddata) {
        if (isSpf()) {
            return false;
        }
        return nativeAddSoundData(this.mHandle, codec.code, metaData.mDuration, metaData.mPreDuration, metaData.mShutterSoundStatus, metaData.mMicrophoneCount, metaData.mMicrophoneType, sounddata);
    }

    public boolean succeedSoundDataTo(String filePath) {
        if (!isSpf()) {
            return false;
        }
        nativeInsertAppThreeMarkerToFile(filePath);
        return nativeSucceedSoundDataTo(this.mHandle, filePath);
    }

    public boolean deleteSoundData() {
        return nativeDeleteSoundData(this.mHandle);
    }

    public enum SoundCodec {
        WAV_LPCM(InputDeviceCompat.SOURCE_KEYBOARD),
        AAC(258),
        UNDEFINED(0);

        private final int code;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static SoundCodec[] valuesCustom() {
            SoundCodec[] soundCodecArrValuesCustom = values();
            int length = soundCodecArrValuesCustom.length;
            SoundCodec[] soundCodecArr = new SoundCodec[length];
            System.arraycopy(soundCodecArrValuesCustom, 0, soundCodecArr, 0, length);
            return soundCodecArr;
        }

        SoundCodec(int code) {
            this.code = code;
        }

        static SoundCodec fromCode(int code) {
            for (SoundCodec i : valuesCustom()) {
                if (i.code == code) {
                    return i;
                }
            }
            return UNDEFINED;
        }
    }

    public enum ShutterSoundStatus {
        UNKNOWN(0),
        EXISTING(1),
        NONE(2);

        private final int code;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static ShutterSoundStatus[] valuesCustom() {
            ShutterSoundStatus[] shutterSoundStatusArrValuesCustom = values();
            int length = shutterSoundStatusArrValuesCustom.length;
            ShutterSoundStatus[] shutterSoundStatusArr = new ShutterSoundStatus[length];
            System.arraycopy(shutterSoundStatusArrValuesCustom, 0, shutterSoundStatusArr, 0, length);
            return shutterSoundStatusArr;
        }

        ShutterSoundStatus(int code) {
            this.code = code;
        }

        static ShutterSoundStatus fromCode(int code) {
            for (ShutterSoundStatus i : valuesCustom()) {
                if (i.code == code) {
                    return i;
                }
            }
            return UNKNOWN;
        }
    }

    public enum MicrophoneType {
        UNKNOWN(0),
        INTERNAL(1),
        EXTERNAL(2);

        private final int code;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static MicrophoneType[] valuesCustom() {
            MicrophoneType[] microphoneTypeArrValuesCustom = values();
            int length = microphoneTypeArrValuesCustom.length;
            MicrophoneType[] microphoneTypeArr = new MicrophoneType[length];
            System.arraycopy(microphoneTypeArrValuesCustom, 0, microphoneTypeArr, 0, length);
            return microphoneTypeArr;
        }

        MicrophoneType(int code) {
            this.code = code;
        }

        static MicrophoneType fromCode(int code) {
            for (MicrophoneType i : valuesCustom()) {
                if (i.code == code) {
                    return i;
                }
            }
            return UNKNOWN;
        }
    }

    public static class SoundMetaData {
        private static final int INVALID_VALUE = -1;
        private int mDuration = -1;
        private int mPreDuration = -1;
        private int mShutterSoundStatus = -1;
        private int mMicrophoneCount = -1;
        private int mMicrophoneType = -1;

        public void setDuration(int value) {
            this.mDuration = value;
        }

        public int getDuration() {
            return this.mDuration;
        }

        public boolean hasDuration() {
            return this.mDuration != -1;
        }

        public void setPreDuration(int value) {
            this.mPreDuration = value;
        }

        public int getPreDuration() {
            return this.mPreDuration;
        }

        public boolean hasPreDuration() {
            return this.mPreDuration != -1;
        }

        public void setShutterSoundStatus(ShutterSoundStatus value) {
            this.mShutterSoundStatus = value.code;
        }

        public ShutterSoundStatus getShutterSoundStatus() {
            return ShutterSoundStatus.fromCode(this.mShutterSoundStatus);
        }

        public boolean hasShutterSoundStatus() {
            return this.mShutterSoundStatus != -1;
        }

        public void setMicrophoneCount(int value) {
            this.mMicrophoneCount = value;
        }

        public int getMicrophoneCount() {
            return this.mMicrophoneCount;
        }

        public boolean hasMicrophoneCount() {
            return this.mMicrophoneCount != -1;
        }

        public void setMicrophoneType(MicrophoneType value) {
            this.mMicrophoneType = value.code;
        }

        public MicrophoneType getMicrophoneType() {
            return MicrophoneType.fromCode(this.mMicrophoneType);
        }

        public boolean hasMicrophoneType() {
            return this.mMicrophoneType != -1;
        }
    }

    private int getSoundDataSize() {
        return nativeGetSoundDataSize(this.mHandle);
    }
}