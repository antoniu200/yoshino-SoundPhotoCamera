package com.sonymobile.cameracommon.media.encoder.source;

import android.media.MediaCodec;
import android.view.Surface;
import com.sonymobile.cameracommon.media.encoder.InputDataSource;

/* loaded from: classes.dex */
public class VideoFrameSource implements InputDataSource {
    private final MediaCodec mEncoder;

    public VideoFrameSource(MediaCodec videoEncoder) {
        this.mEncoder = videoEncoder;
    }

    public Surface createInputSurface() {
        return this.mEncoder.createInputSurface();
    }

    @Override // com.sonymobile.cameracommon.media.encoder.InputDataSource
    public void start() {
    }

    @Override // com.sonymobile.cameracommon.media.encoder.InputDataSource
    public void stop() {
        this.mEncoder.signalEndOfInputStream();
    }

    @Override // com.sonymobile.cameracommon.media.encoder.InputDataSource
    public void release() {
    }
}