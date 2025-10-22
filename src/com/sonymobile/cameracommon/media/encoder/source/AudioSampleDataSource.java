package com.sonymobile.cameracommon.media.encoder.source;

import android.media.MediaCodec;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class AudioSampleDataSource extends AudioSampleDataSourceBase {
    private static final String TAG = "AudioSampleDataSource";

    public AudioSampleDataSource(MediaCodec codec, int sampleRate, int channels, int format) {
        super(codec, sampleRate, channels, format);
    }

    @Override // com.sonymobile.cameracommon.media.encoder.source.AudioSampleDataSourceBase
    protected long pushToEncoder(byte[] rawDataArray, int rawDataBytes, boolean eos) throws MediaCodec.CryptoException {
        boolean hasWrittenAll = false;
        int writtenBytes = 0;
        MediaCodec codec = getCodec();
        while (!isCancelled() && !hasWrittenAll) {
            int inputBufferIndex = codec.dequeueInputBuffer(100000L);
            if (inputBufferIndex >= 0) {
                long currentPresentationTime = getPresentationTime(writtenBytes / getSampleDataBytes());
                ByteBuffer inputBuffer = getCodec().getInputBuffer(inputBufferIndex);
                int requestBytes = Math.min(inputBuffer.limit(), rawDataBytes - writtenBytes);
                inputBuffer.clear();
                inputBuffer.put(rawDataArray, writtenBytes, requestBytes);
                int size = inputBuffer.position();
                writtenBytes += size;
                hasWrittenAll = writtenBytes >= rawDataBytes;
                int flags = (hasWrittenAll && eos) ? 4 : 0;
                codec.queueInputBuffer(inputBufferIndex, 0, size, currentPresentationTime, flags);
            }
        }
        return writtenBytes / getSampleDataBytes();
    }
}