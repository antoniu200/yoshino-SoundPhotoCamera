package com.sonymobile.android.addoncamera.soundphoto.setting;

import com.sonymobile.android.addoncamera.soundphoto.R;

/* loaded from: classes.dex */
public enum Parameters implements ParameterKey {
    AUTO_REVIEW(R.string.cam_strings_preview_duration_title_txt, true),
    FACING(R.string.cam_strings_camera_switching_txt, true),
    FLASH(R.string.cam_strings_flash_title_txt, true),
    SELF_TIMER(R.string.cam_strings_self_timer_txt, true),
    SCENE(-1, false),
    WHITE_BALANCE(-1, false),
    FOCUS_MODE(-1, false),
    HDR(-1, false),
    STABILIZER(-1, false);

    private final boolean mIsPersistent;
    private final int mTextId;

    Parameters(int textId, boolean isPersistent) {
        this.mTextId = textId;
        this.mIsPersistent = isPersistent;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.setting.ParameterKey
    public int textId() {
        return this.mTextId;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.setting.ParameterKey
    public boolean isPersistent() {
        return this.mIsPersistent;
    }
}