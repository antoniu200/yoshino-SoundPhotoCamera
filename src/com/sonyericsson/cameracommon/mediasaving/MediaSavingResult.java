package com.sonyericsson.cameracommon.mediasaving;

import com.sonymobile.android.addoncamera.soundphoto.R;
/* loaded from: classes.dex */
public enum MediaSavingResult {
    SUCCESS(true, -1, -1),
    FAIL(false, R.string.cam_strings_store_fail_txt, 0),
    FAIL_MEMORY_FULL(false, R.string.cam_strings_memory_full_save_failed_txt, 0);

    public final int mResultCode;
    public final boolean mSuccess;
    public final int mTextId;

    MediaSavingResult(boolean success, int textId, int resultCode) {
        this.mSuccess = success;
        this.mTextId = textId;
        this.mResultCode = resultCode;
    }
}