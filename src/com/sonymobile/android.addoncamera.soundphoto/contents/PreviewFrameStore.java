package com.sonymobile.android.addoncamera.soundphoto.contents;

import android.graphics.Rect;
import com.sonymobile.cameracommon.memorybuffer.NativeByteBufferHolder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;

/* loaded from: classes.dex */
public class PreviewFrameStore {
    private static final String TAG = PreviewFrameStore.class.getSimpleName();
    private final int mBufferingFrameCount;
    private FrameInfo mFrameInfo = null;
    private Queue<NativeByteBufferHolder> mFrames;

    public static class FrameInfo {
        public final int format;
        public final Rect rect;

        public FrameInfo(Rect rect, int format) {
            this.rect = rect;
            this.format = format;
        }

        public int computeFrameBytes() {
            switch (this.format) {
                case 17:
                    return ((this.rect.width() * this.rect.height()) * 12) / 8;
                default:
                    throw new IllegalArgumentException("Unsupported image type:" + this.format);
            }
        }
    }

    public PreviewFrameStore(int bufferingFrameCount) {
        this.mBufferingFrameCount = bufferingFrameCount;
        this.mFrames = new ArrayDeque(this.mBufferingFrameCount);
    }

    public FrameInfo getFrameInfo() {
        return this.mFrameInfo;
    }

    public void setFrameInfo(FrameInfo info) {
        this.mFrameInfo = info;
        clear();
    }

    public void push(byte[] frame) {
        NativeByteBufferHolder buffer;
        if (this.mFrameInfo != null && frame.length == this.mFrameInfo.computeFrameBytes()) {
            if (this.mFrames.size() < this.mBufferingFrameCount) {
                buffer = NativeByteBufferHolder.allocate(frame.length);
            } else {
                buffer = this.mFrames.poll();
            }
            buffer.get().rewind();
            buffer.get().put(frame);
            this.mFrames.add(buffer);
        }
    }

    public List<NativeByteBufferHolder> get() {
        List<NativeByteBufferHolder> currentFrames = new ArrayList<>(this.mFrames);
        this.mFrames.clear();
        return currentFrames;
    }

    public void clear() {
        for (NativeByteBufferHolder i : this.mFrames) {
            if (i != null) {
                i.decrementRefCount();
            }
        }
        this.mFrames.clear();
    }

    public boolean isPreviewFrameExist() {
        return !this.mFrames.isEmpty();
    }
}