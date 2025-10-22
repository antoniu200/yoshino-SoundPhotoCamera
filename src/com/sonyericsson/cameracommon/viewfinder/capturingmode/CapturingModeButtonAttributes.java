package com.sonyericsson.cameracommon.viewfinder.capturingmode;

/* loaded from: classes.dex */
public class CapturingModeButtonAttributes {
    private final int mIconId;
    private final String mName;
    private final int mTextId;

    public CapturingModeButtonAttributes(String name, int iconId, int textId) {
        this.mName = name;
        this.mIconId = iconId;
        this.mTextId = textId;
    }

    public String getName() {
        return this.mName;
    }

    public int getIconId() {
        return this.mIconId;
    }

    public int getTextId() {
        return this.mTextId;
    }
}