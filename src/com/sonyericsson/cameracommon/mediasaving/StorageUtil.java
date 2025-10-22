package com.sonyericsson.cameracommon.mediasaving;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.UriPermission;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import android.os.UserHandle;
import android.os.storage.DiskInfo;
import android.os.storage.StorageManager;
import android.os.storage.VolumeInfo;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class StorageUtil {
    private static final String DUMMY_FILE_MIME_TYPE = "text/plane";
    private static final String DUMMY_FILE_NAME = "sdcard_write_test";
    public static final String KEY_SD_CARD_GRANT_URI = "KEY_SD_CARD_GRANT_URI";
    public static final String TAG = "StorageUtil";

    public enum CameraStorageType {
        INTERNAL,
        EXTERNAL_CARD,
        USB,
        UNKNOWN
    }

    public static String getVolumeState(CameraStorageType type, Context context) {
        if (isPreinstalledOrUpdatedPreinstalledApp(context)) {
            for (VolumeInfo volume : getStorageManager(context).getVolumes()) {
                if (getVolumeType(volume) == type) {
                    String envState = VolumeInfo.getEnvironmentForState(volume.getState());
                    return envState;
                }
            }
            return "removed";
        }
        switch (type) {
            case INTERNAL:
                String envState2 = Environment.getExternalStorageState(Environment.getExternalStorageDirectory());
                return envState2;
            case EXTERNAL_CARD:
                String sdcardPath = getExternalStorageRootPath();
                if (sdcardPath == null) {
                    return "removed";
                }
                String envState3 = Environment.getExternalStorageState(new File(sdcardPath));
                return envState3;
            default:
                return "removed";
        }
    }

    public static CameraStorageType getStorageTypeFromPath(String path, Context context) throws SecurityException {
        CameraStorageType type = CameraStorageType.UNKNOWN;
        if (path == null) {
            return type;
        }
        if (isPreinstalledOrUpdatedPreinstalledApp(context)) {
            for (VolumeInfo volume : getStorageManager(context).getVolumes()) {
                String mountPoint = getVolumePath(volume);
                if (mountPoint != null && path.startsWith(mountPoint)) {
                    type = getVolumeType(volume);
                }
            }
        } else if (TextUtils.equals(getInternalStorageRootPath(), path)) {
            type = CameraStorageType.INTERNAL;
        } else if (TextUtils.equals(getExternalStorageRootPath(), path)) {
            type = CameraStorageType.EXTERNAL_CARD;
        }
        return type;
    }

    public static CameraStorageType getStorageTypeFromUri(Uri uri, Context context) throws SecurityException, IOException {
        String path = getPathFromUri(context, uri);
        CameraStorageType type = getStorageTypeFromPath(path, context);
        return type;
    }

    public static String getPathFromType(CameraStorageType type, Context context) {
        if (isPreinstalledOrUpdatedPreinstalledApp(context)) {
            for (VolumeInfo volume : getStorageManager(context).getVolumes()) {
                if (type.equals(getVolumeType(volume))) {
                    return getVolumePath(volume);
                }
            }
        } else {
            switch (type) {
                case INTERNAL:
                    return getInternalStorageRootPath();
                case EXTERNAL_CARD:
                    return getExternalStorageRootPath();
            }
        }
        return null;
    }

    public static String getPathFromUri(Context context, Uri uri) {
        if (uri == null) {
            return null;
        }
        final String scheme = uri.getScheme();
        if ("file".equalsIgnoreCase(scheme)) {
            return uri.getPath();
        }
        if (!"content".equalsIgnoreCase(scheme)) {
            return null;
        }
        // Try querying the _data column (legacy real path)
        String[] proj = new String[] { "_data" };
        android.database.Cursor c = null;
        try {
            c = context.getContentResolver().query(uri, proj, null, null, null);
            if (c != null && c.moveToFirst()) {
                final int idx = c.getColumnIndexOrThrow("_data");
                return c.getString(idx);
            }
        } catch (Throwable ignore) {
            // fall through
        } finally {
            if (c != null) c.close();
        }
        return null;
    }

    private static StorageManagerProxy getStorageManager(Context context) {
        return StorageManagerProxy.createProxy((StorageManager) context.getSystemService("storage"));
    }

    public static class GetStatFsTask implements Callable<StatFs> {
        private final String mPath;

        public GetStatFsTask(String path) {
            if (path == null) {
                throw new IllegalArgumentException("Target path is null.");
            }
            this.mPath = path;
        }

        @Override // java.util.concurrent.Callable
        public StatFs call() {
            try {
                StatFs statFs = new StatFs(this.mPath);
                return statFs;
            } catch (IllegalArgumentException e) {
                CameraLogger.e(StorageUtil.TAG, "Create StatFs failed.", e);
                return null;
            }
        }
    }

    private static CameraStorageType getVolumeType(VolumeInfo volume) {
        int volumeType = volume.getType();
        if (volumeType == 2) {
            return CameraStorageType.INTERNAL;
        }
        if (volumeType == 0) {
            DiskInfo disk = volume.getDisk();
            int diskFlags = disk != null ? disk.flags : 0;
            if ((diskFlags & 4) != 0) {
                return CameraStorageType.EXTERNAL_CARD;
            }
            if ((diskFlags & 8) != 0) {
                return CameraStorageType.USB;
            }
        }
        return CameraStorageType.UNKNOWN;
    }

    public static CameraStorageType[] getMountableStorageTypes(Context context) {
        List<CameraStorageType> types = new ArrayList<>();
        types.add(CameraStorageType.EXTERNAL_CARD);
        types.add(CameraStorageType.INTERNAL);
        return (CameraStorageType[]) types.toArray(new CameraStorageType[0]);
    }

    private static String getVolumePath(VolumeInfo volume) throws SecurityException {
        File file = null;
        try {
            Method myUserId = UserHandle.class.getMethod("myUserId", new Class[0]);
            int userId = ((Integer) myUserId.invoke(null, new Object[0])).intValue();
            file = volume.getPathForUser(userId);
        } catch (IllegalAccessException e) {
        } catch (NoSuchMethodException e2) {
        } catch (InvocationTargetException e3) {
        }
        if (file == null) {
            file = volume.getPath();
        }
        if (file == null) {
            return null;
        }
        return file.getPath();
    }

    public static boolean isSDCardWritable(Context context) {
        boolean isCanWritable = false;
        String fileName = String.valueOf(new Date().getTime());
        Uri parentUri = getSdCardGrantedUri(context);
        Uri fileUri = createFile(context, parentUri, fileName);
        if (fileUri != null) {
            isCanWritable = true;
            try {
                if (!DocumentsContract.deleteDocument(context.getContentResolver(), fileUri)) {
                    CameraLogger.e(TAG, "Unable to delete file.");
                }
            } catch (FileNotFoundException e) {
                CameraLogger.e(TAG, "Unable to delete file." + e);
            }
        }
        return isCanWritable;
    }

    private static String getInternalStorageRootPath() {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    private static String getExternalStorageRootPath() {
        File root = new File("/storage/");
        File[] lists = root.listFiles();
        if (lists != null && lists.length > 0) {
            for (File f : lists) {
                if (!f.getName().matches("emulated") && !f.getName().matches("self")) {
                    return f.getAbsolutePath();
                }
            }
        }
        return null;
    }

    public static boolean isPreinstalledOrUpdatedPreinstalledApp(Context context) {
        boolean z = false;
        try {
            PackageManager pm = context.getPackageManager();
            if (pm != null) {
                PackageInfo pi = pm.getPackageInfo(context.getPackageName(), 0);
                if (pi != null && pi.applicationInfo != null) {
                    int flags = pi.applicationInfo.flags;
                    if ((flags & 128) != 0 || (flags & 1) != 0) {
                        z = true;
                    }
                } else {
                    CameraLogger.w(TAG, "Can't get package info. Assuming user app.");
                }
            } else {
                CameraLogger.w(TAG, "Can't get package info. Assuming user app.");
            }
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.w(TAG, "Can't get package info. Assuming user app.");
        }
        return z;
    }

    public static String getVolumeUuid(CameraStorageType type, Context context) {
        for (VolumeInfo volume : getStorageManager(context).getVolumes()) {
            if (getVolumeType(volume) == type) {
                String uuid = volume.getFsUuid();
                return uuid;
            }
        }
        return null;
    }

    public static Uri getSdCardGrantedUri(Context context) {
        String value = context.getSharedPreferences(MediaSavingConstants.SHARED_PREFERENCE_NAME, 0).getString(KEY_SD_CARD_GRANT_URI, null);
        if (value == null) {
            return null;
        }
        Uri resutlUri = Uri.parse(value);
        return resutlUri;
    }

    public static void setSdCardGranted(Context context, Uri grantedUri) {
        SharedPreferences.Editor editor;
        if (grantedUri != null && (editor = context.getSharedPreferences(MediaSavingConstants.SHARED_PREFERENCE_NAME, 0).edit()) != null) {
            editor.putString(KEY_SD_CARD_GRANT_URI, grantedUri.toString());
            editor.commit();
        }
    }

    public static boolean isSdCardGranted(Context context, Uri checkUri) {
        boolean result = false;
        if (checkUri == null) {
            CameraLogger.w(TAG, "checkUri is null");
            return false;
        }
        Uri documentUri = DocumentsContract.buildDocumentUriUsingTree(checkUri, DocumentsContract.getTreeDocumentId(checkUri));
        try {
            Uri fileUri = DocumentsContract.createDocument(context.getContentResolver(), documentUri, DUMMY_FILE_MIME_TYPE, DUMMY_FILE_NAME);
            if (fileUri != null) {
                if (DocumentsContract.deleteDocument(context.getContentResolver(), fileUri)) {
                    result = true;
                } else {
                    CameraLogger.e(TAG, "SD Card is not granted: delete error.");
                }
            }
        } catch (FileNotFoundException | SecurityException e) {
            CameraLogger.w(TAG, "file create failed", e);
        }
        return result;
    }

    public static synchronized Uri createFile(Context context, Uri parentUri, String path) {
        Uri child;
        Exception e;
        child = child(parentUri, path);
        if (!exists(context, child)) {
            Uri docUri = DocumentsContract.buildDocumentUriUsingTree(child, DocumentsContract.getTreeDocumentId(child));
            String parent = new File(path).getParent();
            if (!TextUtils.isEmpty(parent)) {
                docUri = createDirectory(context, parentUri, parent);
            }
            String ext = getExt(child);
            String name = getDocumentName(child);
            Uri retUri = null;
            if (!TextUtils.isEmpty(ext) && !TextUtils.isEmpty(name)) {
                String mime = MimeTypeMap.getSingleton().getMimeTypeFromExtension(ext);
                try {
                    retUri = DocumentsContract.createDocument(context.getContentResolver(), docUri, mime, name);
                } catch (FileNotFoundException e2) {
                    e = e2;
                    CameraLogger.w(TAG, "createFile() failed", e);
                    child = retUri;
                    return child;
                } catch (SecurityException e3) {
                    e = e3;
                    CameraLogger.w(TAG, "createFile() failed", e);
                    child = retUri;
                    return child;
                }
            }
            child = retUri;
        }
        return child;
    }

    public static synchronized Uri createDirectory(Context context, Uri parentUri, String path) {
        Uri child;
        Exception e;
        child = child(parentUri, path);
        if (!exists(context, child)) {
            Uri docUri = DocumentsContract.buildDocumentUriUsingTree(child, DocumentsContract.getTreeDocumentId(child));
            File file = new File(path);
            String parent = file.getParent();
            if (parent != null && !parent.isEmpty()) {
                docUri = createDirectory(context, parentUri, parent);
            }
            String name = file.getName();
            Uri retUri = null;
            try {
                retUri = DocumentsContract.createDocument(context.getContentResolver(), docUri, "vnd.android.document/directory", name);
            } catch (FileNotFoundException e2) {
                e = e2;
                CameraLogger.w(TAG, "createDirectory() failed", e);
                child = retUri;
                return child;
            } catch (SecurityException e3) {
                e = e3;
                CameraLogger.w(TAG, "createDirectory() failed", e);
                child = retUri;
                return child;
            }
            child = retUri;
        }
        return child;
    }

    public static Uri existFile(Context context, Uri parent, String path) {
        Uri u = child(parent, path);
        if (exists(context, u)) {
            return u;
        }
        return null;
    }

    private static Uri child(Uri uri, String name) {
        String docId = DocumentsContract.getTreeDocumentId(uri) + "/" + name;
        Uri newDocUri = DocumentsContract.buildDocumentUriUsingTree(uri, docId);
        return newDocUri;
    }

    private static boolean exists(Context context, Uri uri) {
        Cursor childCursor = null;
        try {
            try {
                childCursor = context.getContentResolver().query(uri, null, null, null, null);
                if (childCursor != null) {
                    boolean isExist = childCursor.moveToNext();
                    childCursor.close();
                    if (isExist) {
                    }
                }
                if (childCursor != null) {
                    childCursor.close();
                }
            } catch (RuntimeException e) {
                CameraLogger.w(TAG, "exists not found", e);
                if (childCursor != null) {
                    childCursor.close();
                }
            }
            return false;
        } finally {
            if (childCursor != null) {
                childCursor.close();
            }
        }
    }

    private static String getExt(Uri file) {
        int i;
        String name = getDocumentName(file);
        return (TextUtils.isEmpty(name) || (i = name.lastIndexOf(46)) < 0) ? "" : name.substring(i + 1);
    }

    private static String getDocumentName(Uri uri) {
        String id = DocumentsContract.getDocumentId(uri);
        return new File(id).getName();
    }

    public static String getPathAfterDcim(Uri uri, String path) {
        String uriStr = uri.toString();
        if (TextUtils.isEmpty(uriStr)) {
            return null;
        }
        if (uriStr.contains(Environment.DIRECTORY_DCIM)) {
            String afterStr = path.split(Environment.DIRECTORY_DCIM + "/", 0)[1];
            return afterStr;
        }
        String afterStr2 = path.substring(path.indexOf(Environment.DIRECTORY_DCIM));
        return afterStr2;
    }

    public static boolean isExistDcimDirectory(Uri uri) {
        String uriStr = uri.toString();
        if (TextUtils.isEmpty(uriStr) || !uriStr.contains(Environment.DIRECTORY_DCIM)) {
            return false;
        }
        return true;
    }

    public static Uri createDocumentSdCard(Context context, String path) {
        Uri parentUri = getSdCardGrantedUri(context);
        if (parentUri == null) {
            return null;
        }
        Uri documentUri = createFile(context, parentUri, getPathAfterDcim(parentUri, path));
        return documentUri;
    }

    public static Uri searchDocumentSdCard(Context context, String path) {
        Uri parentUri = getSdCardGrantedUri(context);
        if (parentUri == null) {
            return null;
        }
        Uri documentUri = existFile(context, parentUri, getPathAfterDcim(parentUri, path));
        return documentUri;
    }

    public static boolean isExistRemovableStorage(Context context) {
        File[] dirArr = context.getExternalFilesDirs(null);
        for (File dir : dirArr) {
            if (dir != null && Environment.isExternalStorageRemovable(dir)) {
                return true;
            }
        }
        return false;
    }

    public static Uri getSdGrantedUri(Context context, StorageController storageController) {
        if (storageController.getStorageState(CameraStorageType.EXTERNAL_CARD) == StorageController.StorageState.REMOVED) {
            return null;
        }
        Uri savedUri = getSdCardGrantedUri(context);
        List<UriPermission> permissionList = context.getContentResolver().getPersistedUriPermissions();
        if (permissionList.size() == 1) {
            return permissionList.get(0).getUri();
        }
        if (permissionList.size() != 0) {
            boolean isGranted = false;
            for (UriPermission permission : permissionList) {
                Uri currentUri = permission.getUri();
                if (savedUri != null && currentUri.toString().equals(savedUri.toString())) {
                    isGranted = true;
                } else {
                    context.getContentResolver().releasePersistableUriPermission(currentUri, 3);
                }
            }
            if (!isGranted) {
                return null;
            }
            return savedUri;
        }
        return null;
    }
}
