package com.sonymobile.android.addoncamera.soundphoto.setting.parameters;

import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonymobile.android.addoncamera.soundphoto.setting.ParameterValue;
import com.sonymobile.android.addoncamera.soundphoto.setting.Parameters;

/* loaded from: classes.dex */
public enum AutoReview implements ParameterValue {
    ON(R.string.cam_strings_settings_on_txt),
    OFF(R.string.cam_strings_settings_off_txt),
    EDIT(R.string.cam_strings_preview_edit_txt);

    private final int mTextId;

    AutoReview(int textId) {
        this.mTextId = textId;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.setting.ParameterValue
    public Parameters key() {
        return Parameters.AUTO_REVIEW;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.setting.ParameterValue
    public int iconId() {
        return -1;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.setting.ParameterValue
    public int textId() {
        return this.mTextId;
    }
}