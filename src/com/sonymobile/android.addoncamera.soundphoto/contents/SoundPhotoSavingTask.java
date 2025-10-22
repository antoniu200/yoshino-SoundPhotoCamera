package com.sonymobile.android.addoncamera.soundphoto.contents;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import java.io.File;

/* loaded from: classes.dex */
public class SoundPhotoSavingTask extends SavingTaskManager.PhotoSavingTask {
    private static final String TAG = SoundPhotoSavingTask.class.getSimpleName();
    private final Context mContext;
    private byte[] mMpoData;
    private PhotoSavingRequest mRequest;

    public SoundPhotoSavingTask(Context context,
                                SavingTaskManager savingTaskManager,
                                PhotoSavingRequest request,
                                byte[] mpoData) {
        // The correct super signature (per bytecode) includes both savingTaskManager and request.
        super(savingTaskManager, request);

        mContext = context;
        mRequest = request;
        mMpoData = mpoData;
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.SavingTaskManager.PhotoSavingTask, com.sonyericsson.cameracommon.mediasaving.SavingTaskManager.SavingTask
    protected int getExpectedFileSize() {
        if (this.mRequest == null || this.mRequest.getImageData() == null) {
            return 0;
        }
        if (this.mMpoData == null) {
            return this.mRequest.getImageData().length;
        }
        return this.mRequest.getImageData().length + this.mMpoData.length;
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.SavingTaskManager.PhotoSavingTask, com.sonyericsson.cameracommon.mediasaving.SavingTaskManager.SavingTask
    protected SavingTaskManager.SavingTask.Result store(Uri output) {
        if ("file".equals(output.getScheme())) {
            this.mRequest.setFilePath(output.getPath());
        }
        String jpegFilePath = output.getPath();
        if (!writeToStorage(this.mRequest.getImageData(), output)) {
            return new SavingTaskManager.SavingTask.Result(MediaSavingResult.FAIL, Uri.EMPTY);
        }
        if (this.mMpoData != null) {
            String mpoFilePath = removeExtension(jpegFilePath) + ".MPO";
            if (!writeToStorage(this.mMpoData, Uri.fromFile(new File(mpoFilePath)))) {
                return new SavingTaskManager.SavingTask.Result(MediaSavingResult.FAIL, Uri.EMPTY);
            }
        }
        return null;
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.SavingTaskManager.PhotoSavingTask, com.sonyericsson.cameracommon.mediasaving.SavingTaskManager.SavingTask
    protected void register(SavingTaskManager.SavingTask.Result result) {
        if (result == null) {
            String jpegFilePath = this.mRequest.getFilePath();
            String mpoFilePath = removeExtension(jpegFilePath) + ".MPO";
            if (this.mMpoData == null) {
                MediaScannerConnection.scanFile(this.mContext, new String[]{jpegFilePath}, null, new OnScanCompletedSoundPhotoContentListener(jpegFilePath));
            } else {
                MediaScannerConnection.scanFile(this.mContext, new String[]{mpoFilePath, jpegFilePath}, null, new OnScanCompletedSoundPhotoContentListener(jpegFilePath));
            }
        } else {
            notifyResult(result.result, Uri.EMPTY);
        }
        this.mRequest = null;
        this.mMpoData = null;
    }

    private class OnScanCompletedSoundPhotoContentListener implements MediaScannerConnection.OnScanCompletedListener {
        private final String mJpegFilename;

        public OnScanCompletedSoundPhotoContentListener(String jpegFilename) {
            this.mJpegFilename = jpegFilename;
        }

        @Override // android.media.MediaScannerConnection.OnScanCompletedListener
        public void onScanCompleted(String filename, Uri uri) {
            if (filename.equals(this.mJpegFilename)) {
                SoundPhotoSavingTask.this.notifyResult(MediaSavingResult.SUCCESS, uri);
            }
        }
    }

    private String removeExtension(String fileName) {
        if (fileName == null) {
            return null;
        }
        int point = fileName.lastIndexOf(".");
        if (point != -1) {
            return fileName.substring(0, point);
        }
        return fileName;
    }
}