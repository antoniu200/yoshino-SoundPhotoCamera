package com.sonymobile.cameracommon.media.encoder;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import java.io.IOException;

/* loaded from: classes.dex */
public class InputDataInfo {
    public final MediaCodec codec;
    public final MediaFormat codecFormat;
    public final InputDataSource source;

    private InputDataInfo(MediaFormat format, MediaCodec codec, InputDataSource source) {
        this.codecFormat = format;
        this.codec = codec;
        this.source = source;
    }

    public String mimeType() {
        return this.codecFormat.getString("mime");
    }

    public static InputDataInfo create(MediaFormat format, MediaCodec codec, InputDataSource source) {
        return new InputDataInfo(format, codec, source);
    }

    public static InputDataInfo create(MediaFormat format, InputDataSource source) throws IOException {
        MediaCodec codec = MediaCodec.createEncoderByType(format.getString("mime"));
        codec.configure(format, (Surface) null, (MediaCrypto) null, 1);
        return create(format, codec, source);
    }
}