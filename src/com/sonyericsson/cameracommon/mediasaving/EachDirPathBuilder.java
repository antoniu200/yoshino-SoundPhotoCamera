package com.sonyericsson.cameracommon.mediasaving;

import android.os.Environment;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public class EachDirPathBuilder {
    private static final String CURRENT_DIR_FORMAT = "yyyyMMddHHmmssSSS";
    private static final int MAX_FILE_NAME = 999999;
    private static final int MAX_RETRY_TIMES_FOR_CREATING_CURRENT_DIR = 100;
    private static final int MIN_FILE_NAME = 1;
    public static final String TAG = "EachDirPathBuilder";
    private String mDirPath = null;
    private int mFileNo = -1;

    public EachDirPathBuilder(String rootDirPath, String subDirName) throws IOException {
        initDirectory(rootDirPath, subDirName);
    }

    public String assignImageFilePath() {
        this.mFileNo++;
        if (this.mFileNo > MAX_FILE_NAME) {
            CameraLogger.w(TAG, "assignImageFilePath(): Max file name.");
            return null;
        }
        return this.mDirPath + DcfPathBuilder.DCF_FILE_NAME_FREE_WORD_PICTURE + String.format(Locale.US, "%06d", Integer.valueOf(this.mFileNo)) + MediaSavingConstants.MEDIA_TYPE_JPEG_EXT;
    }

    private void initDirectory(String rootDirectoryPath, String subDirectoryName) throws IOException {
        String subDir = searchSubDirectory(rootDirectoryPath, subDirectoryName);
        if (subDir == null) {
            CameraLogger.e(TAG, "initDirectory(): Fail to search sub dir is null");
            throw new IOException("Fail to search sub dir.");
        }
        File currentDir = null;
        for (int searchNum = 0; searchNum < 100; searchNum++) {
            String currentDirName = getCurrentDirName();
            currentDir = new File(subDir, currentDirName);
            if (!currentDir.isDirectory() || !currentDir.exists()) {
                break;
            }
            CameraLogger.w(TAG, "initDirectory(): Already directory exists: " + currentDirName);
            currentDir = null;
        }
        if (currentDir == null) {
            CameraLogger.e(TAG, "initDirectory(): Max retry times for creating current dir.");
            throw new IOException("Max retry times for creating current dir.");
        }
        this.mDirPath = searchDirectory(currentDir);
        if (this.mDirPath == null) {
            CameraLogger.e(TAG, "initDirectory(): Fail to search current dir: " + currentDir);
            throw new IOException("Fail to search current dir.");
        }
        this.mDirPath += File.separator;
        this.mFileNo = 0;
    }

    private final String searchSubDirectory(String rootDirectoryPath, String subDirectoryName) {
        File dcimDir = new File(getDcimDirectory(rootDirectoryPath));
        String dcimDirPath = searchDirectory(dcimDir);
        if (dcimDirPath == null) {
            return null;
        }
        File subDir = new File(dcimDirPath, subDirectoryName);
        String subDirPath = searchDirectory(subDir);
        return subDirPath;
    }

    private String getDcimDirectory(String rootDirectoryPath) {
        return rootDirectoryPath + File.separator + Environment.DIRECTORY_DCIM;
    }

    private final String searchDirectory(File file) {
        boolean result = true;
        if (!file.isDirectory() && !file.mkdirs()) {
            result = false;
        }
        if (result) {
            return file.getAbsolutePath();
        }
        CameraLogger.e(TAG, "searchDirectory() failed: " + file);
        return null;
    }

    private final String getCurrentDirName() {
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        String currentDirName = dateFormat.format(date);
        return currentDirName;
    }
}