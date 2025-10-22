package com.sonyericsson.cameracommon.mediasaving.updator;

import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteFullException;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.DocumentsContract;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Locale;

/* loaded from: classes.dex */
public class ContentResolverUtil {
    private static final String MPO_EXTENSION = ".MPO";
    public static final String TAG = "ContentResolverUtil";

    static class AsyncDeleteTask extends AsyncTask<Void, Void, Boolean> {
        private final Context mContext;
        private final ContentResolverUtilListener mListener;
        private final Uri mUri;
        private final boolean mWithMpo;

        public AsyncDeleteTask(Context context, Uri uri, boolean withMpo, ContentResolverUtilListener listener) {
            this.mContext = context;
            this.mUri = uri;
            this.mWithMpo = withMpo;
            this.mListener = listener;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... params) {
            return Boolean.valueOf(ContentResolverUtil.deleteImageImpl(this.mContext, this.mUri, this.mWithMpo));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean result) {
            if (this.mListener != null) {
                this.mListener.onDeleted(result.booleanValue(), this.mUri);
            }
        }
    }

    public static Cursor crQuery(Context context, Uri uri, CrQueryParameter params) {
        String order;
        Cursor result = null;
        try {
            if (params.limit > 0) {
                order = String.format(Locale.US, "%s limit %d offset %d", params.sortOrder, Integer.valueOf(params.limit), Integer.valueOf(params.offset));
            } else {
                order = params.sortOrder;
            }
            result = context.getContentResolver().query(uri, params.projection, params.where, params.selectionArgs, order);
            return result;
        } catch (Exception e) {
            return result;
        }
    }

    public static int crDelete(Context context, Uri uri, CrDeleteParameter params) {
        try {
            int result = context.getContentResolver().delete(uri, params.where, params.selectionArgs);
            return result;
        } catch (Exception e) {
            return 0;
        }
    }

    public static int crBulkInsert(Context context, Uri uri, ContentValues[] params) {
        try {
            int result = context.getContentResolver().bulkInsert(uri, params);
            return result;
        } catch (SQLiteFullException e) {
            throw e;
        } catch (Exception e2) {
            return 0;
        }
    }

    public static int crUpdate(Context context, Uri uri, CrUpdateParameter params) {
        try {
            int result = context.getContentResolver().update(uri, params.values, params.where, params.selectionArgs);
            return result;
        } catch (SQLiteFullException e) {
            throw e;
        } catch (Exception e2) {
            return 0;
        }
    }

    public static OutputStream crOpenOutputStream(Context context, Uri uri) throws FileNotFoundException {
        try {
            OutputStream result = context.getContentResolver().openOutputStream(uri);
            return result;
        } catch (Exception e) {
            return null;
        }
    }

    public static InputStream crOpenInputStream(Context context, Uri uri) throws FileNotFoundException {
        try {
            InputStream result = context.getContentResolver().openInputStream(uri);
            return result;
        } catch (Exception e) {
            return null;
        }
    }

    public static boolean isExist(Context context, Uri uri) throws IOException {
        boolean result = true;
        InputStream is = null;
        try {
            is = context.getContentResolver().openInputStream(uri);
        } catch (Exception e) {
            result = false;
        }
        if (is != null) {
            try {
                is.close();
            } catch (Exception e2) {
            }
        }
        return result;
    }

    public static boolean deleteImage(Context context, Uri uri) {
        return deleteImageImpl(context, uri, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean deleteImageImpl(Context context, Uri uri, boolean withMpo) {
        if (uri == null) {
            return false;
        }
        CrQueryParameter params = new CrQueryParameter();
        params.projection = new String[]{"_id", "_data"};
        params.where = null;
        params.selectionArgs = null;
        params.sortOrder = null;
        params.limit = 0;
        params.offset = 0;
        Cursor cur = crQuery(context, uri, params);
        int failCount = 0;
        if (cur != null) {
            for (int i = 0; i < cur.getCount(); i++) {
                cur.moveToPosition(i);
                String path = cur.getString(1);
                if (StorageUtil.getStorageTypeFromPath(path, context) != StorageUtil.CameraStorageType.EXTERNAL_CARD) {
                    CrDeleteParameter deleteParams = new CrDeleteParameter();
                    deleteParams.where = "_id=" + Long.valueOf(ContentUris.parseId(uri)).toString();
                    deleteParams.selectionArgs = null;
                    int number = crDelete(context, uri, deleteParams);
                    if (number != 1) {
                        failCount++;
                    }
                } else {
                    boolean isDelete = deleteImageByFilePath(context, path);
                    if (!isDelete) {
                        failCount++;
                    }
                }
                if (withMpo) {
                    deleteImageByFilePath(context, removeExtension(path) + MPO_EXTENSION);
                }
            }
            cur.close();
        }
        if (failCount == 0) {
            return true;
        }
        return false;
    }

    public static void executeDeteleTask(Context context, Uri uri, boolean withMpo, ContentResolverUtilListener listener) {
        AsyncDeleteTask task = new AsyncDeleteTask(context, uri, withMpo, listener);
        task.execute(new Void[0]);
    }

    private static boolean deleteImageByFilePath(Context context, String filePath) {
        boolean isDelete = false;
        if (StorageUtil.getStorageTypeFromPath(filePath, context) != StorageUtil.CameraStorageType.EXTERNAL_CARD) {
            isDelete = new File(filePath).delete();
        } else {
            Uri uri = StorageUtil.searchDocumentSdCard(context, filePath);
            if (uri != null) {
                try {
                    isDelete = DocumentsContract.deleteDocument(context.getContentResolver(), uri);
                } catch (FileNotFoundException | SecurityException ex) {
                    CameraLogger.e(TAG, "deleteDocument: [occurred Exception.]", ex);
                }
            }
        }
        if (isDelete) {
            MediaScannerConnection.scanFile(context, new String[]{filePath}, new String[]{null}, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtil.1
                @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                public void onScanCompleted(String path, Uri uri2) {
                }
            });
        }
        return isDelete;
    }

    private static String removeExtension(String fileName) {
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
