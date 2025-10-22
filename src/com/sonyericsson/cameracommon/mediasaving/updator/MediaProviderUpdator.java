package com.sonyericsson.cameracommon.mediasaving.updator;

import android.content.Context;
import android.database.sqlite.SQLiteFullException;
import android.media.MediaScannerConnection;
import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.VideoSavingRequest;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.File;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class MediaProviderUpdator {
    public static final String TAG = "MediaProviderUpdator";
    private static final int TIME_OUT_SCANNER_IN_MILLI = 30000;
    protected Context mContext;
    private final boolean mIsOneShotPhoto;

    public MediaProviderUpdator(Context context, boolean isOneShotPhoto) {
        this.mContext = null;
        this.mContext = context;
        this.mIsOneShotPhoto = isOneShotPhoto;
    }

    public StoreDataResult insertPictureAndSendIntent(PhotoSavingRequest request, boolean isSendIntent) {
        String filePath = request.getFilePath();
        MediaSavingResult result = MediaSavingResult.FAIL;
        Uri uri = Uri.EMPTY;
        if (filePath != null) {
            try {
                uri = scanFile(filePath);
                if (uri != null) {
                    result = MediaSavingResult.SUCCESS;
                }
            } catch (SQLiteFullException e) {
                result = MediaSavingResult.FAIL_MEMORY_FULL;
            }
        }
        if (result == MediaSavingResult.SUCCESS) {
            request.notifyStoreResult(new StoreDataResult(result, uri, request));
        } else {
            CameraLogger.e(TAG, "Failed to inserting a photo:" + result);
            request.notifyStoreFailed(result);
        }
        return new StoreDataResult(result, uri, request);
    }

    public Uri insertPictureContentManager(String path) {
        Uri uri = scanFile(path);
        return uri;
    }

    private synchronized Uri scanFile(String path) {
        Uri scanResult = null;
        synchronized (this) {
            if (path != null) {
                OnScanCompletedListener listener = new OnScanCompletedListener(path);
                MediaScannerConnection.scanFile(this.mContext, new String[]{path}, null, listener);
                scanResult = listener.getScanResult();
            } else {
                CameraLogger.e(TAG, "Illegal argument. scanFile is called with null.");
            }
        }
        return scanResult;
    }

    private static class OnScanCompletedListener implements MediaScannerConnection.OnScanCompletedListener {
        private final CountDownLatch mLatch = new CountDownLatch(1);
        private Uri mScanResult;

        public OnScanCompletedListener(String filename) {
        }

        @Override // android.media.MediaScannerConnection.OnScanCompletedListener
        public void onScanCompleted(String filename, Uri uri) {
            this.mScanResult = uri;
            this.mLatch.countDown();
        }

        public Uri getScanResult() {
            try {
                if (!this.mLatch.await(30000L, TimeUnit.MILLISECONDS)) {
                    CameraLogger.e(MediaProviderUpdator.TAG, "getScanResult is timeout.");
                }
            } catch (InterruptedException e) {
                CameraLogger.e(MediaProviderUpdator.TAG, "scan file failed.", e);
            }
            return this.mScanResult;
        }
    }

    private Uri insertVideoContentManager(VideoSavingRequest request) {
        String filePath = request.getFilePath();
        Uri uri = scanFile(filePath);
        return uri;
    }

    public Uri insertVideoAndSendIntent(VideoSavingRequest request) {
        MediaSavingResult result = MediaSavingResult.FAIL;
        Uri uri = Uri.EMPTY;
        String filePath = request.getFilePath();
        if (filePath != null) {
            File file = new File(filePath);
            if (!file.exists() || !file.canRead()) {
                return null;
            }
            uri = insertVideoContentManager(request);
            if (uri != null) {
                result = MediaSavingResult.SUCCESS;
            }
        }
        if (result != MediaSavingResult.SUCCESS) {
            CameraLogger.e(TAG, "Failed to inserting a video:" + result);
        }
        return uri;
    }
}