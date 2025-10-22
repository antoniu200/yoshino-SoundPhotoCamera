package com.sonyericsson.cameracommon.mediasaving.takenstatus;

import android.content.ContentValues;
import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public abstract class SavingRequest {
    public static final String TAG = "SavingRequest";
    public final TakenStatusCommon common;

    public interface StoreDataCallback {
        void onStoreComplete(StoreDataResult storeDataResult);
    }

    public abstract ContentValues createContentValues(String str);

    public SavingRequest(TakenStatusCommon status) {
        this.common = status;
    }

    public SavingRequest(SavingRequest request) {
        this.common = new TakenStatusCommon(request.common);
    }

    public SavingRequest(SavingRequest orig, int orientation) {
        this.common = new TakenStatusCommon(orig.common.mDateTaken, orientation, orig.common.location, orig.common.width, orig.common.height, orig.common.mimeType, orig.common.fileExtension, orig.common.savedFileType, orig.common.mFilePath, orig.common.cropValue, orig.common.addToMediaStore, orig.common.doPostProcessing);
        this.common.mCallbacks = orig.common.mCallbacks;
    }

    public void addCallback(StoreDataCallback cb) {
        for (WeakReference<StoreDataCallback> i : this.common.mCallbacks) {
            StoreDataCallback registedCallback = i.get();
            if (registedCallback == cb) {
                return;
            }
        }
        this.common.mCallbacks.add(new WeakReference<>(cb));
    }

    public int getRequestId() {
        return this.common.mRequestId;
    }

    public void setRequestId(int id) {
        this.common.mRequestId = id;
    }

    public String getFilePath() {
        return this.common.mFilePath;
    }

    public void setFilePath(String filePath) {
        this.common.mFilePath = filePath;
    }

    public long getDateTaken() {
        return this.common.mDateTaken;
    }

    public void setDateTaken(long dateTaken) {
        this.common.mDateTaken = dateTaken;
    }

    public Uri getExtraOutput() {
        return this.common.mExtraOutput;
    }

    public void setExtraOutput(Uri extraOutput) {
        this.common.mExtraOutput = extraOutput;
    }

    public int getSomcType() {
        return this.common.mSomcType;
    }

    public void setSomcType(int somcType) {
        this.common.mSomcType = somcType;
    }

    public String getSaveTimeForPredictiveCapture() {
        return this.common.mSaveTimeForPredictiveCapture;
    }

    public void setSaveTimeForPredictiveCapture(String saveTimeForPredictiveCapture) {
        this.common.mSaveTimeForPredictiveCapture = saveTimeForPredictiveCapture;
    }

    public int getCaptureIdForPredictiveCapture() {
        return this.common.mCaptureIdForPredictiveCapture;
    }

    public void setCaptureIdForPredictiveCapture(int captureIdForPredictiveCapture) {
        this.common.mCaptureIdForPredictiveCapture = captureIdForPredictiveCapture;
    }

    public void notifyStoreFailed(MediaSavingResult result) {
        StoreDataResult storeResult = new StoreDataResult(MediaSavingResult.FAIL, Uri.EMPTY, this);
        for (WeakReference<StoreDataCallback> i : this.common.mCallbacks) {
            StoreDataCallback callback = i.get();
            if (callback != null) {
                callback.onStoreComplete(storeResult);
            } else {
                return;
            }
        }
    }

    public void notifyStoreResult(StoreDataResult result) {
        for (WeakReference<StoreDataCallback> i : this.common.mCallbacks) {
            StoreDataCallback callback = i.get();
            if (callback != null) {
                callback.onStoreComplete(result);
            } else {
                return;
            }
        }
    }

    public void log() {
        this.common.log();
    }
}