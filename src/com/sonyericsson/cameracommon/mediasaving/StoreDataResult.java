package com.sonyericsson.cameracommon.mediasaving;

import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;

/* loaded from: classes.dex */
public class StoreDataResult {
    public final SavingRequest savingRequest;
    public final MediaSavingResult storeResult;
    public final Uri uri;

    public StoreDataResult(MediaSavingResult result, Uri uri, SavingRequest request) {
        this.storeResult = result;
        if (isSuccess()) {
            this.uri = uri;
        } else {
            this.uri = Uri.EMPTY;
        }
        this.savingRequest = request;
    }

    public int getResultCode() {
        return this.storeResult.mResultCode;
    }

    public boolean isSuccess() {
        return this.storeResult == MediaSavingResult.SUCCESS;
    }

    public int getTextId() {
        return this.storeResult.mTextId;
    }
}