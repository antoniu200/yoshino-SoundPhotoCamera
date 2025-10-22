package com.sonymobile.android.addoncamera.soundphoto.contents;

import com.sonymobile.cameracommon.memorybuffer.NativeByteBufferHolder;
import java.util.List;

/* loaded from: classes.dex */
public class PreviewFrameData {
    public final int height;
    public final int imageFormat;
    public final List<NativeByteBufferHolder> images;
    public final int width;

    public PreviewFrameData(int width, int height, int format, List<NativeByteBufferHolder> frames) {
        this.width = width;
        this.height = height;
        this.imageFormat = format;
        this.images = frames;
    }

    public void clear() {
        for (NativeByteBufferHolder frame : this.images) {
            frame.decrementRefCount();
        }
        this.images.clear();
    }
}