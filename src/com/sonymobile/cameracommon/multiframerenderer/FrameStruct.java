package com.sonymobile.cameracommon.multiframerenderer;

import com.sonymobile.cameracommon.opengl.FrameData;

/* loaded from: classes.dex */
public class FrameStruct {
    private FrameBaseFactory mFrameBaseFactory;
    private FrameData mFrameData;
    private String mFrameId;
    private boolean mIsMirrored = false;
    private boolean mNeedToTextureUpdate;
    private FrameStructVisibility mVisibility;

    public enum FrameStructVisibility {
        COMMON,
        PREVIEW_ONLY,
        VIDEO_ONLY,
        COMMON_OVERLAY
    }

    public FrameStruct(String frameId, FrameData frameData, FrameBaseFactory frameBaseFactory, boolean needToTextureUpdate, FrameStructVisibility visibility) {
        this.mFrameId = frameId;
        this.mFrameData = frameData;
        this.mFrameBaseFactory = frameBaseFactory;
        this.mNeedToTextureUpdate = needToTextureUpdate;
        this.mVisibility = visibility;
    }

    public String getFrameId() {
        return this.mFrameId;
    }

    public FrameData getFrameData() {
        return this.mFrameData;
    }

    public FrameBaseFactory getFrameBaseFactory() {
        return this.mFrameBaseFactory;
    }

    public boolean isTextureRequiredToUpdate() {
        return this.mNeedToTextureUpdate;
    }

    public void updateFrameData(FrameData frameData) {
        this.mFrameData = frameData;
    }

    public boolean isMirrored() {
        return this.mIsMirrored;
    }

    public void setMirrored(boolean isMirrored) {
        this.mIsMirrored = isMirrored;
    }

    public FrameStructVisibility getVisibility() {
        return this.mVisibility;
    }

    public void setVisibility(FrameStructVisibility visibility) {
        this.mVisibility = visibility;
    }
}