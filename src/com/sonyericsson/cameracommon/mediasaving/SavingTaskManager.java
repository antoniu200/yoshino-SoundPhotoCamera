package com.sonyericsson.cameracommon.mediasaving;

import android.app.Activity;
import android.database.sqlite.SQLiteFullException;
import android.net.Uri;
import android.os.Debug;
import android.os.Environment;
import android.os.Handler;
import android.os.ParcelFileDescriptor;

import com.sonyericsson.cameracommon.constants.CommonConstants;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.VideoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.updator.MediaProviderUpdator;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.Log;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class SavingTaskManager {
    private static final String CAN_PUSH_STORE_TASK_HPROF_FILE_NAME = "/can_push_store_task.hprof";
    private static final int MSG_ON_STORE_CALLBACK = 1;
    public static final String TAG = "SavingTaskManager";
    protected Activity mActivity;
    private ExecutorService mExecutor;
    private Object mExecutorLock;
    private final boolean mIsOneShotPhoto;
    private Queue<SavingTask> mSavingTaskQueue;
    private CameraStorageManager mStorageManager;
    private Handler mStoreDataHandler;
    private Thread mStoreVideoThread;
    private MediaProviderUpdator mUpdator;

    public enum GeoMode {
        GEO_ON,
        GEO_OFF,
        GEO_RESHOW
    }

    public enum SavedFileType {
        PHOTO,
        PHOTO_DURING_REC,
        VIDEO,
        BURST,
        TIME_SHIFT
    }

    public abstract class SavingTask implements Runnable {
        private final SavingRequest mRequest;
        private Result mResult = null;

        protected abstract int getExpectedFileSize();

        protected abstract void register(Result result);

        protected abstract Result store(Uri uri);

        public SavingTask(SavingRequest request) {
            this.mRequest = request;
        }

        protected Result getResult() {
            return this.mResult;
        }

        protected Uri assignOutput() {
            if (this.mRequest.getExtraOutput() != null) {
                if ("file".equalsIgnoreCase(this.mRequest.getExtraOutput().getScheme())) {
                    File file = new File(this.mRequest.getExtraOutput().getPath());
                    if (file.getParentFile().mkdirs()) {
                    }
                }
                return this.mRequest.getExtraOutput();
            }
            String path = this.mRequest.getSaveTimeForPredictiveCapture() == null ? SavingTaskManager.this.mStorageManager.getPhotoPath() : SavingTaskManager.this.mStorageManager.getPredictiveCapturePhotoPath(this.mRequest);
            if (path == null) {
                return null;
            }
            File outputFile = new File(path);
            return Uri.fromFile(outputFile);
        }

        protected boolean writeToStorage(byte[] data, Uri uri) {
            return SavingTaskManager.this.new ImageToFile(data, uri).storeData(null);
        }

        protected boolean writeToStorage(PhotoSavingRequest request, Uri uri) {
            if (request.isImageReaderUsing()) {
                boolean result = SavingTaskManager.this.new ImageToFile(request.getImageReaderData(), uri).storeData(null);
                request.close();
                return result;
            }
            boolean result2 = SavingTaskManager.this.new ImageToFile(request.getImageData(), uri).storeData(null);
            return result2;
        }

        protected final void notifyResult(MediaSavingResult result, Uri uri) {
            SavingTaskManager.this.notifyStoreComplete(new StoreDataResult(result, uri, this.mRequest));
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.mResult = new Result(MediaSavingResult.FAIL, Uri.EMPTY);
            Uri output = assignOutput();
            if (output != null) {
                this.mResult = store(output);
            } else {
                SavingTaskManager.this.mActivity.runOnUiThread(new Runnable() { // from class: com.sonyericsson.cameracommon.mediasaving.SavingTaskManager.SavingTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SavingTaskManager.this.mStorageManager.updateRemain(0L, true);
                    }
                });
            }
            register(this.mResult);
            SavingTaskManager.this.popPhotoSavingTask(this);
        }

        protected class Result {
            public final MediaSavingResult result;
            public final Uri uri;

            public Result(MediaSavingResult result, Uri uri) {
                this.result = result;
                this.uri = uri;
            }
        }
    }

    public class PhotoSavingTask extends SavingTask {
        final PhotoSavingRequest mRequest;

        public PhotoSavingTask(PhotoSavingRequest request) {
            super(request);
            this.mRequest = request;
        }

        @Override // com.sonyericsson.cameracommon.mediasaving.SavingTaskManager.SavingTask
        protected int getExpectedFileSize() {
            if (getResult() != null) {
                return 0;
            }
            if (this.mRequest.isImageReaderUsing()) {
                return CommonConstants.EXPECTED_CAPTURE_FILESIZE_FOR_IMAGE_READER;
            }
            return this.mRequest.getImageData().length;
        }

        @Override // com.sonyericsson.cameracommon.mediasaving.SavingTaskManager.SavingTask
        protected SavingTask.Result store(Uri output) {
            boolean needToinsert;
            if ("file".equalsIgnoreCase(output.getScheme()) || "content".equalsIgnoreCase(output.getScheme())) {
                this.mRequest.setFilePath(output.getPath());
            }
            Uri uri = null;
            MediaSavingResult result = MediaSavingResult.FAIL;
            Log.logDebug(SavingTaskManager.TAG, "[datetaken:" + this.mRequest.getDateTaken() + "]start saving");
            if (writeToStorage(this.mRequest, output)) {
                Log.logDebug(SavingTaskManager.TAG, "[datetaken:" + this.mRequest.getDateTaken() + "]store is success");
                if (this.mRequest.getExtraOutput() == null) {
                    needToinsert = true;
                } else {
                    needToinsert = this.mRequest.common.addToMediaStore;
                }
                if (needToinsert) {
                    try {
                        String filePath = this.mRequest.getFilePath();
                        if (PredictiveCapturePathBuilder.isPredictiveCaptureImage(filePath)) {
                            SimpleDateFormat format = new SimpleDateFormat(PredictiveCapturePathBuilder.DCF_FILE_NAME_DATE_FORMAT);
                            Date date = null;
                            try {
                                date = format.parse(this.mRequest.getSaveTimeForPredictiveCapture());
                            } catch (ParseException e) {
                                CameraLogger.e(SavingTaskManager.TAG, "store: parse failed. filePath:" + filePath + " time:" + this.mRequest.getSaveTimeForPredictiveCapture());
                            }
                            if (date != null) {
                                File file = new File(filePath);
                                boolean isSuccess = file.setLastModified(date.getTime());
                                if (!isSuccess) {
                                    CameraLogger.e(SavingTaskManager.TAG, "store: setLastModified failed. filePath:" + filePath + " time:" + date.getTime());
                                }
                            }
                        }
                        uri = SavingTaskManager.this.mUpdator.insertPictureContentManager(filePath);
                        result = (uri != null || "content".equalsIgnoreCase(output.getScheme())) ? MediaSavingResult.SUCCESS : MediaSavingResult.FAIL;
                        Log.logDebug(SavingTaskManager.TAG, "[datetaken:" + this.mRequest.getDateTaken() + "]insert is success:" + result.name());
                    } catch (SQLiteFullException e2) {
                        result = MediaSavingResult.FAIL_MEMORY_FULL;
                    }
                } else {
                    uri = this.mRequest.getExtraOutput();
                    result = MediaSavingResult.SUCCESS;
                }
            }
            return new SavingTask.Result(result, uri);
        }

        @Override // com.sonyericsson.cameracommon.mediasaving.SavingTaskManager.SavingTask
        protected void register(SavingTask.Result result) {
            if (result.result == MediaSavingResult.SUCCESS) {
                SavingTaskManager.this.notifyStoreComplete(new StoreDataResult(result.result, result.uri, this.mRequest));
            } else {
                SavingTaskManager.this.notifyStoreComplete(new StoreDataResult(result.result, Uri.EMPTY, this.mRequest));
            }
        }
    }

    class ImageToFile {
        private ByteBuffer mBuffer;
        private byte[] mJpegData;
        ThreadSafeOutputStream mOutputStream = null;
        private final String mPath;
        private final Uri mUri;

        public ImageToFile(byte[] jpegData, Uri uri) {
            this.mJpegData = jpegData;
            this.mUri = uri;
            if ("file".equalsIgnoreCase(uri.getScheme())) {
                this.mPath = this.mUri.getPath();
            } else {
                this.mPath = null;
            }
        }

        public ImageToFile(ByteBuffer buffer, Uri uri) {
            this.mBuffer = buffer;
            this.mUri = uri;
            if ("file".equalsIgnoreCase(uri.getScheme())) {
                this.mPath = this.mUri.getPath();
            } else {
                this.mPath = null;
            }
        }

        public String getPath() {
            if (this.mPath != null) {
                return this.mPath;
            }
            if (this.mUri != null) {
                return this.mUri.getPath();
            }
            CameraLogger.e(SavingTaskManager.TAG, "Save path and uri is not set.");
            return null;
        }

        private OutputStream createOutputStream() throws FileNotFoundException {
            if (StorageUtil.getStorageTypeFromPath(this.mPath, SavingTaskManager.this.mActivity) == StorageUtil.CameraStorageType.EXTERNAL_CARD) {
                Uri uri = StorageUtil.createDocumentSdCard(SavingTaskManager.this.mActivity, this.mPath);
                if (uri != null) {
                    ParcelFileDescriptor pfd = SavingTaskManager.this.mActivity.getContentResolver().openFileDescriptor(uri, "rw");
                    return new FileOutputStream(pfd.getFileDescriptor());
                }
                CameraLogger.e(SavingTaskManager.TAG, "Document uri is null.");
            } else {
                if (this.mPath != null) {
                    return new FileOutputStream(this.mPath);
                }
                if (this.mUri != null) {
                    return SavingTaskManager.this.mActivity.getContentResolver().openOutputStream(this.mUri);
                }
                CameraLogger.e(SavingTaskManager.TAG, "Save path and uri is not set.");
            }
            throw new FileNotFoundException();
        }

        boolean storeData(Exception dummyException) {
            OutputStream delegate = null;
            boolean success = false;

            try {
                // 1) Create the output stream and wrap it
                delegate = createOutputStream();
                synchronized (this) {
                    this.mOutputStream = new ThreadSafeOutputStream(delegate);
                }

                // 2) For the smali-compat path that injects a synthetic exception
                if (dummyException != null) {
                    throw dummyException;
                }

                // 3) Write data: either from byte[] or ByteBuffer
                if (this.mBuffer == null) {
                    // plain JPEG byte[]
                    this.mOutputStream.write(this.mJpegData, 0, this.mJpegData.length);
                } else {
                    if (this.mPath != null) {
                        // backed by a file path → use channel write for the ByteBuffer
                        FileChannel ch = ((FileOutputStream) delegate).getChannel();
                        ch.write(this.mBuffer);
                    } else {
                        // no path → copy ByteBuffer into byte[] and stream it
                        final int size = this.mBuffer.capacity();
                        this.mJpegData = new byte[size];
                        this.mBuffer.get(this.mJpegData, 0, size);
                        this.mOutputStream.write(this.mJpegData, 0, this.mJpegData.length);
                    }
                }

                success = true;

            } catch (FileNotFoundException e) {
                CameraLogger.e(SavingTaskManager.TAG, "Store fail file not found: " + e.getMessage());
                SavingTaskManager.this.mActivity.runOnUiThread(new Runnable() {
                    @Override public void run() {
                        // mirrors ImageToFile$1 behavior in your smali
                        SavingTaskManager.this.mStorageManager.updateRemain(0L, true);
                    }
                });
            } catch (IOException e) {
                CameraLogger.e(SavingTaskManager.TAG, "Store fail I/O Exception: " + this.mPath);
                SavingTaskManager.this.mActivity.runOnUiThread(new Runnable() {
                    @Override public void run() {
                        // mirrors ImageToFile$2
                        SavingTaskManager.this.mStorageManager.updateRemain(0L, true);
                    }
                });
            } catch (Exception ex) {
                CameraLogger.e(SavingTaskManager.TAG, "Occurred other exception: " + ex);
                SavingTaskManager.this.mActivity.runOnUiThread(new Runnable() {
                    @Override public void run() {
                        // mirrors ImageToFile$3
                        SavingTaskManager.this.mStorageManager.updateRemain(0L, true);
                    }
                });
            } finally {
                // 4) Flush/close like your original, and always null jpeg buffer
                if (this.mOutputStream != null) {
                    try {
                        this.mOutputStream.flush();
                        this.mOutputStream.close();
                    } catch (IOException closeErr) {
                        CameraLogger.e(SavingTaskManager.TAG, "IOException occured when closing.");
                        this.mOutputStream = null;
                    }
                }
                this.mJpegData = null;
            }

            return success;
        }
    }

    public SavingTaskManager(Activity activity, CameraStorageManager storageManager, boolean isOneShotPhoto) {
        this(activity, storageManager, isOneShotPhoto, new Handler());
    }

    public SavingTaskManager(Activity activity, CameraStorageManager storageManager, boolean isOneShotPhoto, Handler handler) {
        this.mActivity = null;
        this.mStorageManager = null;
        this.mStoreVideoThread = null;
        this.mExecutorLock = new Object();
        this.mStoreDataHandler = null;
        this.mSavingTaskQueue = new ConcurrentLinkedQueue();
        this.mActivity = activity;
        this.mStorageManager = storageManager;
        this.mStoreDataHandler = handler;
        this.mUpdator = new MediaProviderUpdator(activity, isOneShotPhoto);
        this.mIsOneShotPhoto = isOneShotPhoto;
    }

    public void request(SavingTask savingTask) {
        this.mSavingTaskQueue.add(savingTask);
        submitExecutor(savingTask);
    }

    public void storePicture(final PhotoSavingRequest request) {
        request.log();
        if (request.getImageData() != null || request.isImageReaderUsing()) {
            pushPhotoSavingTask(request);
            return;
        }
        CameraLogger.e(TAG, "### can't store a specified image file.");
        CameraLogger.e(TAG, "### so, notify a failure of storing the specified image file.");
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.sonyericsson.cameracommon.mediasaving.SavingTaskManager.1
            @Override // java.lang.Runnable
            public void run() {
                request.notifyStoreFailed(MediaSavingResult.FAIL);
                SavingTaskManager.this.shutdownExecutor();
                SavingTaskManager.this.mStorageManager.updateRemain(0L, true);
            }
        });
    }

    private void pushPhotoSavingTask(PhotoSavingRequest request) {
        SavingTask task = new PhotoSavingTask(request);
        request(task);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void popPhotoSavingTask(SavingTask task) {
        this.mSavingTaskQueue.remove(task);
    }

    protected void notifyStoreComplete(StoreDataResult result) {
        if (this.mStoreDataHandler != null) {
            Runnable task = new NotifyStoreCompletedTask(result);
            this.mStoreDataHandler.post(task);
        }
    }

    private static class NotifyStoreCompletedTask implements Runnable {
        private final StoreDataResult mResult;

        private NotifyStoreCompletedTask(StoreDataResult result) {
            this.mResult = result;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mResult != null && this.mResult.savingRequest != null) {
                this.mResult.savingRequest.notifyStoreResult(this.mResult);
            }
        }
    }

    public void storeVideo(VideoSavingRequest request) {
        request.log();
        request.getFilePath();
        if (this.mStoreVideoThread != null) {
            try {
                this.mStoreVideoThread.join(3000L);
                if (this.mStoreVideoThread != null) {
                    CameraLogger.e(TAG, "storeVideo: mStoreVideoThread timeout.");
                    this.mStorageManager.updateRemain(0L, true);
                    return;
                }
            } catch (InterruptedException e) {
            } finally {
                this.mStoreVideoThread = null;
            }
        }
        SavingVideoTask task = new SavingVideoTask(request);
        this.mStoreVideoThread = new Thread(task, MediaSavingConstants.THREAD_STORE_VIDEO);
        this.mStoreVideoThread.setPriority(1);
        this.mStoreVideoThread.start();
    }

    class SavingVideoTask implements Runnable {
        final VideoSavingRequest mRequest;

        SavingVideoTask(VideoSavingRequest request) {
            this.mRequest = request;
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaSavingResult result;
            MediaSavingResult mediaSavingResult = MediaSavingResult.FAIL;
            Uri uri = null;
            Uri mExtraUri = this.mRequest.getExtraOutput();
            try {
                if (mExtraUri == null) {
                    uri = SavingTaskManager.this.mUpdator.insertVideoAndSendIntent(this.mRequest);
                    result = uri != null ? MediaSavingResult.SUCCESS : MediaSavingResult.FAIL;
                } else {
                    if (this.mRequest.common.addToMediaStore) {
                        if ("file".equalsIgnoreCase(mExtraUri.getScheme()) || "content".equalsIgnoreCase(mExtraUri.getScheme())) {
                            this.mRequest.setFilePath(mExtraUri.getPath());
                        }
                        uri = SavingTaskManager.this.mUpdator.insertVideoAndSendIntent(this.mRequest);
                    } else {
                        uri = mExtraUri;
                    }
                    result = (uri != null || "content".equalsIgnoreCase(mExtraUri.getScheme())) ? MediaSavingResult.SUCCESS : MediaSavingResult.FAIL;
                }
            } catch (SQLiteFullException e) {
                result = MediaSavingResult.FAIL_MEMORY_FULL;
            }
            SavingTaskManager.this.notifyStoreComplete(new StoreDataResult(result, uri, this.mRequest));
            SavingTaskManager.this.mStoreVideoThread = null;
        }
    }

    void cancelSavingVideoTask() {
        if (this.mStoreVideoThread != null) {
            this.mStoreVideoThread.interrupt();
            try {
                this.mStoreVideoThread.join();
            } catch (InterruptedException ex) {
                CameraLogger.e(TAG, "cancelSavingVideoTask interrupted.", ex);
            } finally {
                this.mStoreVideoThread = null;
            }
        }
    }

    public void onResume() {
    }

    public boolean canPushStoreTask() {
        if (isEnoughMemory(getUsedMemory())) {
            return true;
        }
        Runtime.getRuntime().gc();
        if (isEnoughMemory(getUsedMemory())) {
            return true;
        }
        CameraLogger.e(TAG, "Temporarily reject capture request since app is low on memory:");
        CameraLogger.e(TAG, "\t queueSize: " + this.mSavingTaskQueue.size());
        CameraLogger.e(TAG, "\tusedMemory: " + getUsedMemory() + "byte");
        CameraLogger.e(TAG, "\t maxMemory: " + Runtime.getRuntime().maxMemory() + "byte");
        if (CameraLogger.isUserdebugOrEngBuild && this.mSavingTaskQueue.size() == 0) {
            try {
                String path = Environment.getExternalStorageDirectory() + CAN_PUSH_STORE_TASK_HPROF_FILE_NAME;
                Debug.dumpHprofData(path);
            } catch (IOException e) {
                CameraLogger.e(TAG, "canPushStoreTask() fail to dump hprof");
            }
        }
        return false;
    }

    private static long getUsedMemory() {
        return Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory();
    }

    private static boolean isEnoughMemory(long usedMemory) {
        return usedMemory < (Runtime.getRuntime().maxMemory() * 7) / 10;
    }

    public long getExpectedTotalSavedPicturesSize() {
        long reservedSize = 0;
        Queue<SavingTask> queue = new LinkedList<>(this.mSavingTaskQueue);
        for (SavingTask element : queue) {
            reservedSize += element.getExpectedFileSize();
        }
        return reservedSize;
    }

    public void release() {
        this.mStoreDataHandler = null;
    }

    private void submitExecutor(SavingTask task) {
        synchronized (this.mExecutorLock) {
            if (this.mExecutor == null) {
                this.mExecutor = Executors.newSingleThreadExecutor();
            }
            this.mExecutor.execute(task);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shutdownExecutor() {
        synchronized (this.mExecutorLock) {
            if (this.mExecutor != null) {
                this.mExecutor.shutdown();
                this.mExecutor = null;
                this.mSavingTaskQueue.clear();
            }
        }
    }
}
