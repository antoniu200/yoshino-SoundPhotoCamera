package com.sonyericsson.cameracommon.mediasaving;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import com.sonyericsson.cameracommon.constants.CommonConstants;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.PerfLog;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class DcfPathBuilder {
    public static final String DCF_DIR_NAME_FREE_WORD = "ANDRO";
    public static final String DCF_FILE_NAME_FREE_WORD_MOVIE = "MOV_";
    public static final String DCF_FILE_NAME_FREE_WORD_PICTURE = "DSC_";
    public static final int LENGTH_OF_DIR_NAME = 8;
    public static final int LENGTH_OF_FILE_NAME = 12;
    public static final int MAX_DIR_NAME = 999;
    public static final int MAX_FILE_NAME = 9999;
    public static final int MIN_DIR_NAME = 100;
    public static final int MIN_FILE_NAME = 1;
    private static final ScanResult SCAN_RESULT_FAILED = new ScanResult(ScanResultState.SCAN_FAILED, -1, -1);
    private static final int SCAN_WAIT_TIME = 60000;
    public static final String TAG = "DcfPathBuilder";
    public static final int TYPE_PICTURE = 0;
    public static final int TYPE_VIDEO = 1;
    public static final String VOLUME_EXTERNAL = "external";
    private DcfImageDirNameFilter mDirNameFilter;
    private int mDirNo;
    private DcfImageFileNameFilter mFileNameFilter;
    private int mFileNo;
    private final String mRoot;
    private Future<?> mScanFuture;
    private ScanResult mScanResult = null;
    private ExecutorService mScanExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.sonyericsson.cameracommon.mediasaving.DcfPathBuilder.1
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(CommonConstants.THREAD_SCAN_STORAGE);
            thread.setPriority(5);
            return thread;
        }
    });

    private enum ScanResultState {
        SCAN_SUCCEEDED,
        SCAN_FAILED
    }

    private static class ScanResult {
        final int resultDirNo;
        final int resultFileNo;
        final ScanResultState resultState;

        ScanResult(ScanResultState state, int dirNo, int fileNo) {
            this.resultState = state;
            this.resultDirNo = dirNo;
            this.resultFileNo = fileNo;
        }
    }

    private static class DcfImageDirNameFilter implements FilenameFilter {
        private String mFilterDirName;
        private int mFilterDirNo;

        private DcfImageDirNameFilter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String name) {
            int id;
            try {
                if (name.length() == 8 && (id = Integer.parseInt((String) name.subSequence(0, 3))) >= this.mFilterDirNo && 100 <= id && id <= 999 && (String.format(Locale.US, "%03d", Integer.valueOf(id)) + DcfPathBuilder.DCF_DIR_NAME_FREE_WORD).equalsIgnoreCase(name)) {
                    File checkFile = new File(file, name);
                    if (checkFile.isDirectory()) {
                        this.mFilterDirNo = id;
                        this.mFilterDirName = checkFile.getAbsolutePath();
                        return true;
                    }
                }
                return false;
            } catch (NumberFormatException e) {
                return false;
            }
        }
    }

    private static class DcfImageFileNameFilter implements FilenameFilter {
        private int mFilterFileNo;

        private DcfImageFileNameFilter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String name) {
            int id;
            try {
                if (name.length() != 12 || (id = Integer.parseInt((String) name.subSequence(4, 8))) < this.mFilterFileNo || 1 > id || id > 9999) {
                    return false;
                }
                this.mFilterFileNo = id;
                return true;
            } catch (NumberFormatException e) {
                return false;
            }
        }
    }

    public DcfPathBuilder(String root) {
        this.mRoot = root;
        this.mDirNameFilter = new DcfImageDirNameFilter();
        this.mFileNameFilter = new DcfImageFileNameFilter();
    }

    public void startScan() {
        synchronized (this) {
            if (this.mScanFuture != null) {
                if (this.mScanFuture.isDone()) {
                    this.mScanFuture = null;
                } else {
                    return;
                }
            }
            if (this.mScanFuture == null) {
                this.mScanFuture = this.mScanExecutor.submit(new ScanTask());
            }
        }
    }

    class ScanTask implements Callable<ScanResult> {
        private int mScanDirNo = 100;
        private int mScanFileNo = 1;

        ScanTask() {
        }

        @Override // java.util.concurrent.Callable
        public ScanResult call() {
            ScanResultState resultState;
            PerfLog.DCF_PATH_BUILDER_SCAN.begin();
            if (search()) {
                resultState = ScanResultState.SCAN_SUCCEEDED;
            } else {
                CameraLogger.e(DcfPathBuilder.TAG, "Scan failed.");
                resultState = ScanResultState.SCAN_FAILED;
                this.mScanDirNo = -1;
                this.mScanFileNo = -1;
            }
            PerfLog.DCF_PATH_BUILDER_SCAN.end();
            return new ScanResult(resultState, this.mScanDirNo, this.mScanFileNo);
        }

        private final boolean search() {
            if (DcfPathBuilder.checkDirectory(DcfPathBuilder.this.mRoot)) {
                return searchImageDir();
            }
            CameraLogger.e(DcfPathBuilder.TAG, "search error DCIM is not exist. " + DcfPathBuilder.this.mRoot);
            return false;
        }

        private boolean searchImageDir() {
            File file = new File(DcfPathBuilder.getDcimDirectory(DcfPathBuilder.this.mRoot));
            DcfPathBuilder.this.mDirNameFilter.mFilterDirNo = 100;
            String[] fileList = file.list(DcfPathBuilder.this.mDirNameFilter);
            if (fileList != null && fileList.length != 0) {
                this.mScanDirNo = DcfPathBuilder.this.mDirNameFilter.mFilterDirNo;
                String dirName = DcfPathBuilder.this.mDirNameFilter.mFilterDirName;
                return searchImageNo(DcfPathBuilder.getDcimDirectory(DcfPathBuilder.this.mRoot) + "/" + new File(dirName).getName());
            }
            this.mScanDirNo = 100;
            this.mScanFileNo = 1;
            return true;
        }

        private boolean searchImageNo(String dcimSub) {
            File file = new File(dcimSub);
            DcfPathBuilder.this.mFileNameFilter.mFilterFileNo = 1;
            String[] fileList = file.list(DcfPathBuilder.this.mFileNameFilter);
            if (fileList != null && fileList.length != 0) {
                this.mScanFileNo = DcfPathBuilder.this.mFileNameFilter.mFilterFileNo + 1;
            } else {
                this.mScanFileNo = 1;
            }
            if (this.mScanFileNo > 9999) {
                this.mScanDirNo++;
                this.mScanFileNo = 1;
            }
            if (this.mScanDirNo <= 999) {
                return true;
            }
            CameraLogger.e(DcfPathBuilder.TAG, "searchImageNo over max dir. " + this.mScanDirNo);
            return false;
        }
    }

    protected static boolean checkAndCreateDirectory(String root, Context context) {
        String dcim = getDcimDirectory(root);
        File file = new File(dcim);
        if (file.isDirectory()) {
            return true;
        }
        if (StorageUtil.getStorageTypeFromPath(root, context) != StorageUtil.CameraStorageType.EXTERNAL_CARD) {
            if (file.mkdirs()) {
                return true;
            }
            return false;
        }
        Uri parentUri = StorageUtil.getSdCardGrantedUri(context);
        if (parentUri != null) {
            if (StorageUtil.isExistDcimDirectory(parentUri) || StorageUtil.createDirectory(context, parentUri, Environment.DIRECTORY_DCIM) != null) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean checkDirectory(String root) {
        String dcim = getDcimDirectory(root);
        File file = new File(dcim);
        return file.isDirectory();
    }

    public static boolean isAlreadyLastFileExist(String root) {
        String dcim = getDcimDirectory(root);
        File maxDirectory = new File(dcim + "/" + String.format(Locale.US, "%03d", 999) + DCF_DIR_NAME_FREE_WORD);
        if (!maxDirectory.isDirectory()) {
            return false;
        }
        String photoPath = dcim + "/" + String.format(Locale.US, "%03d", 999) + DCF_DIR_NAME_FREE_WORD;
        File photoFile = new File(photoPath + "/DSC_" + String.format(Locale.US, "%04d", Integer.valueOf(MAX_FILE_NAME)) + MediaSavingConstants.MEDIA_TYPE_JPEG_EXT);
        if (photoFile.isFile()) {
            return true;
        }
        String videoPathNoExt = (dcim + "/" + String.format(Locale.US, "%03d", 999) + DCF_DIR_NAME_FREE_WORD) + "/MOV_" + String.format(Locale.US, "%04d", Integer.valueOf(MAX_FILE_NAME));
        String videoPathMp4 = videoPathNoExt + MediaSavingConstants.MEDIA_TYPE_MPEG4_EXT;
        File videoFileMp4 = new File(videoPathMp4);
        if (videoFileMp4.isFile()) {
            return true;
        }
        String videoPathMms = videoPathNoExt + MediaSavingConstants.MEDIA_TYPE_3GP_EXT;
        File videoFileMms = new File(videoPathMms);
        if (videoFileMms.isFile()) {
            return true;
        }
        return false;
    }

    private String assignImageFilePath(int type, StorageUtil.CameraStorageType storagetype, Context context) throws IOException {
        Future<?> scanFuture;
        String filePath;
        synchronized (this) {
            scanFuture = this.mScanFuture;
            this.mScanFuture = null;
        }
        if (scanFuture != null) {
            try {
                this.mScanResult = SCAN_RESULT_FAILED;
                this.mScanResult = (ScanResult) scanFuture.get(60000L, TimeUnit.MILLISECONDS);
                this.mDirNo = this.mScanResult.resultDirNo;
                this.mFileNo = this.mScanResult.resultFileNo;
            } catch (InterruptedException e) {
                throw new IOException("Failed to scan." + e);
            } catch (ExecutionException e2) {
                throw new IOException("Failed to scan." + e2);
            } catch (TimeoutException e3) {
                throw new IOException("Failed to scan." + e3);
            }
        }
        if (this.mScanResult.resultState != ScanResultState.SCAN_SUCCEEDED) {
            CameraLogger.e(TAG, "assignImageFilePath scan failed.");
            return null;
        }
        if (this.mDirNo > 999) {
            CameraLogger.e(TAG, "assignImageFilePath over max dir. " + this.mDirNo);
            return null;
        }
        String addPath = String.format(Locale.US, "%03d", Integer.valueOf(this.mDirNo)) + DCF_DIR_NAME_FREE_WORD;
        String filePath2 = getDcimDirectory(this.mRoot) + "/" + addPath;
        if (storagetype != StorageUtil.CameraStorageType.EXTERNAL_CARD) {
            File dir = new File(filePath2);
            if (!dir.exists() && !dir.mkdirs()) {
                CameraLogger.e(TAG, "assignImageFilePath create dir failed: " + dir);
                return null;
            }
        } else {
            Uri parentUri = StorageUtil.getSdCardGrantedUri(context);
            if (!StorageUtil.isExistDcimDirectory(parentUri)) {
                addPath = Environment.DIRECTORY_DCIM + "/" + addPath;
            }
            Uri uri = StorageUtil.createDirectory(context, parentUri, addPath);
            if (uri == null) {
                return null;
            }
        }
        switch (type) {
            case 0:
                filePath = filePath2 + "/DSC_";
                break;
            case 1:
                filePath = filePath2 + "/MOV_";
                break;
            default:
                CameraLogger.e(TAG, "assignImageFilePath type failed. " + type);
                return null;
        }
        String filePath3 = filePath + String.format(Locale.US, "%04d", Integer.valueOf(this.mFileNo));
        this.mFileNo++;
        if (this.mFileNo > 9999) {
            this.mDirNo++;
            this.mFileNo = 1;
            return filePath3;
        }
        return filePath3;
    }

    public static String getDcimDirectory(String root) {
        return root + "/" + Environment.DIRECTORY_DCIM;
    }

    public String getPhotoPath(StorageUtil.CameraStorageType type, Context context) {
        String path = null;
        while (true) {
            try {
                path = assignImageFilePath(0, type, context);
            } catch (IOException e) {
                CameraLogger.e(TAG, "getPhotoPath failed.", e);
            }
            if (path != null) {
                path = path + MediaSavingConstants.MEDIA_TYPE_JPEG_EXT;
            }
            if (path == null || !isAssignedFileAlreadyExist(path)) {
                break;
            }
            startScan();
        }
        return path;
    }

    public String getVideoPath(String extension, StorageUtil.CameraStorageType type, Context context) {
        String path = MediaSavingConstants.INVALID_FILE_PATH;
        while (true) {
            try {
                path = assignImageFilePath(1, type, context);
            } catch (IOException e) {
                CameraLogger.e(TAG, "getVideoPath failed.", e);
            }
            if (path == null) {
                path = MediaSavingConstants.INVALID_FILE_PATH;
            } else {
                path = path + extension;
            }
            if (path == MediaSavingConstants.INVALID_FILE_PATH || !isAssignedFileAlreadyExist(path)) {
                break;
            }
            startScan();
        }
        return path;
    }

    private boolean isAssignedFileAlreadyExist(String path) {
        if (path == null) {
            return false;
        }
        File f = new File(path);
        return f.exists();
    }

    public String getRootPath() {
        return this.mRoot;
    }
}