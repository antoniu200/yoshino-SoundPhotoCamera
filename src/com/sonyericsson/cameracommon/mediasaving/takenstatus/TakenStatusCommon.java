package com.sonyericsson.cameracommon.mediasaving.takenstatus;

import android.location.Location;
import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class TakenStatusCommon {
    public static final String TAG = "TakenStatusCommon";
    public final boolean addToMediaStore;
    public final String cropValue;
    public final boolean doPostProcessing;
    public final String fileExtension;
    public final int height;
    public final Location location;
    protected List<WeakReference<SavingRequest.StoreDataCallback>> mCallbacks;
    protected int mCaptureIdForPredictiveCapture;
    protected long mDateTaken;
    protected Uri mExtraOutput;
    protected String mFilePath;
    protected int mRequestId;
    protected String mSaveTimeForPredictiveCapture;
    protected int mSomcType;
    public final String mimeType;
    public final int orientation;
    public final SavingTaskManager.SavedFileType savedFileType;
    public final int width;

    public TakenStatusCommon(long dateTaken_in, int orientation_in, Location location_in, int width_in, int height_in, String mimeType_in, String fileExtension_in, SavingTaskManager.SavedFileType savedFileType_in, String path, String cropValue_in, boolean addToMediaStore_in, boolean doPostProcessing_in) {
        this.mRequestId = -1;
        this.mDateTaken = 0L;
        this.mCallbacks = new ArrayList();
        this.mSomcType = 0;
        this.mDateTaken = dateTaken_in;
        this.orientation = orientation_in;
        this.location = location_in;
        this.width = width_in;
        this.height = height_in;
        this.mimeType = mimeType_in;
        this.fileExtension = fileExtension_in;
        this.savedFileType = savedFileType_in;
        this.mFilePath = path;
        this.cropValue = cropValue_in;
        this.addToMediaStore = addToMediaStore_in;
        this.doPostProcessing = doPostProcessing_in;
    }

    public TakenStatusCommon(TakenStatusCommon data) {
        this.mRequestId = -1;
        this.mDateTaken = 0L;
        this.mCallbacks = new ArrayList();
        this.mSomcType = 0;
        this.mRequestId = data.mRequestId;
        this.mDateTaken = data.mDateTaken;
        this.orientation = data.orientation;
        this.location = data.location;
        this.width = data.width;
        this.height = data.height;
        this.mimeType = data.mimeType;
        this.fileExtension = data.fileExtension;
        this.savedFileType = data.savedFileType;
        this.mFilePath = data.mFilePath;
        this.mCallbacks = data.mCallbacks;
        this.cropValue = data.cropValue;
        this.addToMediaStore = data.addToMediaStore;
        this.doPostProcessing = data.doPostProcessing;
        this.mExtraOutput = data.mExtraOutput;
        this.mSomcType = data.mSomcType;
    }

    public TakenStatusCommon(TakenStatusCommon data, String newFilePath, long newDataTaken) {
        this.mRequestId = -1;
        this.mDateTaken = 0L;
        this.mCallbacks = new ArrayList();
        this.mSomcType = 0;
        this.mRequestId = data.mRequestId;
        this.mDateTaken = newDataTaken;
        this.orientation = data.orientation;
        this.location = data.location;
        this.width = data.width;
        this.height = data.height;
        this.mimeType = data.mimeType;
        this.fileExtension = data.fileExtension;
        this.savedFileType = data.savedFileType;
        this.mFilePath = newFilePath;
        this.mCallbacks = data.mCallbacks;
        this.cropValue = data.cropValue;
        this.addToMediaStore = data.addToMediaStore;
        this.doPostProcessing = data.doPostProcessing;
    }

    public void log() {
    }
}