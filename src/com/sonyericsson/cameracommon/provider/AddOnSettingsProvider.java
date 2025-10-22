package com.sonyericsson.cameracommon.provider;

import android.content.ContentProvider;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.util.SparseArray;
import com.sonyericsson.cameracommon.appsui.CameraCommonProviderConstants;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingDefaultLoader;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class AddOnSettingsProvider extends ContentProvider {
    private static final String AUTHORITY = "com.sonymobile.android.addoncamera.dummy.provider";
    private static final String DATABASE_NAME = "dummy.db";
    private static final int DATABASE_VERSION = 5;
    private static final String DIR_TYPE_BASE = "vnd.android.cursor.dir/";
    private static final String ITEM_TYPE_BASE = "vnd.android.cursor.item/";
    private static SparseArray<String> MIMETYPE_LIST = new SparseArray<>();
    private static final String TAG = "AddOnSettingsProvider";
    private UriMatcher URI_MATCHER;
    private SQLiteOpenHelper mOpenHelper;
    int mProcessingBatchCount = 0;

    interface CameraParameter {
        public static final Uri CONTENT_URI = CameraCommonProviderConstants.CAMERAPARAMETER_CONTENT_URI;
        public static final String MIME_TYPE = "cameraparameter";
        public static final String NAME = "cameraparameters";
        public static final String PATH = "cameraparameters";
    }

    interface CapturingMode {
        public static final Uri CONTENT_URI = CameraCommonProviderConstants.CAPTURINGMODE_CONTENT_URI;
        public static final String MIME_TYPE = "capturingmode";
        public static final String NAME = "capturingmodes";
        public static final String PATH = "capturingmodes";
    }

    interface CommonSetting {
        public static final Uri CONTENT_URI = CameraCommonProviderConstants.COMMONSETTING_CONTENT_URI;
        public static final String MIME_TYPE = "commonsetting";
        public static final String NAME = "commonsettings";
        public static final String PATH = "commonsettings";
    }

    interface Path {
        public static final int CAMERAPARAMETER_DIR = 3;
        public static final int CAMERAPARAMETER_ITEM = 4;
        public static final int CAPTURINGMODE_DIR = 1;
        public static final int CAPTURINGMODE_ITEM = 2;
        public static final int COMMONSETTING_DIR = 5;
        public static final int COMMONSETTING_ITEM = 6;
    }

    private void setupUriMatcher() {
        this.URI_MATCHER = new UriMatcher(-1);
        this.URI_MATCHER.addURI(getAuthority(), "capturingmodes", 1);
        this.URI_MATCHER.addURI(getAuthority(), "capturingmodes/#", 2);
        this.URI_MATCHER.addURI(getAuthority(), "cameraparameters", 3);
        this.URI_MATCHER.addURI(getAuthority(), "cameraparameters/#", 4);
        this.URI_MATCHER.addURI(getAuthority(), "commonsettings", 5);
        this.URI_MATCHER.addURI(getAuthority(), "commonsettings/#", 6);
        MIMETYPE_LIST.put(1, "vnd.android.cursor.dir/capturingmode");
        MIMETYPE_LIST.put(2, "vnd.android.cursor.item/capturingmode");
        MIMETYPE_LIST.put(3, "vnd.android.cursor.dir/cameraparameter");
        MIMETYPE_LIST.put(4, "vnd.android.cursor.item/cameraparameter");
        MIMETYPE_LIST.put(5, "vnd.android.cursor.dir/commonsetting");
        MIMETYPE_LIST.put(6, "vnd.android.cursor.item/commonsetting");
    }

    void incrementProcessingBatchCount() {
        synchronized (this) {
            this.mProcessingBatchCount++;
        }
    }

    void decrementProcessingBatchCount() {
        synchronized (this) {
            this.mProcessingBatchCount--;
        }
    }

    private boolean isProcessingBatch() {
        boolean z;
        synchronized (this) {
            z = this.mProcessingBatchCount > 0;
        }
        return z;
    }

    static class MyOpenHelper extends SQLiteOpenHelper {
        private final Context mContext;

        public MyOpenHelper(Context ctx, String databaseName) {
            super(ctx, databaseName, (SQLiteDatabase.CursorFactory) null, 5);
            this.mContext = ctx;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase db) throws SQLException {
            if (!existTable(db, "capturingmodes")) {
                createCapturingModeTable(db);
            }
            if (!existTable(db, "cameraparameters")) {
                createCameraParameterTable(db);
            }
            if (!existTable(db, "commonsettings")) {
                createCommonSettingTable(this.mContext, db);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) throws SQLException {
            String shutterSoundValue = queryShutterSoundValue(db);
            deleteTables(db);
            createCapturingModeTable(db);
            createCameraParameterTable(db);
            createCommonSettingTable(this.mContext, db);
            if (shutterSoundValue != null) {
                updateShutterSoundValue(db, shutterSoundValue);
            }
        }

        static void createCapturingModeTable(SQLiteDatabase db) throws SQLException {
            db.execSQL("CREATE TABLE capturingmodes (_id INTEGER PRIMARY KEY AUTOINCREMENT,package TEXT, activity TEXT, mode_name TEXT, capture_type INTEGER, visibility_normal INTEGER, visibility_oneshot INTEGER, visibility_shortcut INTEGER, sort_order INTEGER, selectorlabel_id INTEGER, selectoricon_id INTEGER, shortcutlabel_id INTEGER, shortcuticon_id INTEGER, descriptionlabel_id INTEGER, UNIQUE(package,mode_name));");
        }

        static void createCameraParameterTable(SQLiteDatabase db) throws SQLException {
            db.execSQL("CREATE TABLE cameraparameters (_id INTEGER PRIMARY KEY AUTOINCREMENT,camera_id INTEGER UNIQUE,parameters TEXT,build_fingerprint TEXT);");
        }

        static void createCommonSettingTable(Context context, SQLiteDatabase db) throws SQLException {
            db.execSQL("CREATE TABLE commonsettings (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE, value TEXT);");
            CommonSettingDefaultLoader.load(context, db);
        }

        static void deleteTables(SQLiteDatabase db) throws SQLException {
            db.execSQL("DROP TABLE IF EXISTS capturingmodes");
            db.execSQL("DROP TABLE IF EXISTS cameraparameters");
            db.execSQL("DROP TABLE IF EXISTS commonsettings");
        }

        static boolean existTable(SQLiteDatabase db, String table) {
            Cursor c = null;
            try {
                c = db.rawQuery("SELECT name FROM sqlite_master WHERE type='table' AND name='" + table + "'", null);
                if (c != null) {
                    if (c.getCount() > 0) {
                    }
                }
                if (c != null) {
                    c.close();
                }
                return false;
            } finally {
                if (c != null) {
                    c.close();
                }
            }
        }

        static String queryShutterSoundValue(SQLiteDatabase db) {
            Cursor c = db.query("commonsettings", new String[]{"value"}, "name = ?", new String[]{CommonSettingDefaultLoader.Record.SHUTTER_SOUND.mProviderKey}, null, null, null);
            String shutterSoundValue = null;
            if (c != null) {
                try {
                    if (c.getCount() == 1) {
                        c.moveToFirst();
                        shutterSoundValue = c.getString(0);
                    }
                } finally {
                    c.close();
                }
            }
            return shutterSoundValue;
        }

        static void updateShutterSoundValue(SQLiteDatabase db, String shutterSoundValue) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", shutterSoundValue);
            db.update("commonsettings", contentValues, "name = ?", new String[]{CommonSettingDefaultLoader.Record.SHUTTER_SOUND.mProviderKey});
        }
    }

    public AddOnSettingsProvider() {
        setupUriMatcher();
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.mOpenHelper = new MyOpenHelper(getContext(), getDataBaseName());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        SQLiteDatabase database = this.mOpenHelper.getReadableDatabase();
        Cursor c = database.query(getTableName(uri), projection, selection, selectionArgs, null, null, sortOrder);
        return c;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        SQLiteDatabase database = this.mOpenHelper.getWritableDatabase();
        String name = getTableName(uri);
        long id = database.insert(name, null, contentValues);
        Uri inserted = null;
        if (id != -1) {
            inserted = Uri.withAppendedPath(uri, String.valueOf(id));
            if (!isProcessingBatch()) {
                onCompleteOperation(uri);
            }
        }
        return inserted;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        SQLiteDatabase database = this.mOpenHelper.getWritableDatabase();
        int count = database.delete(getTableName(uri), selection, selectionArgs);
        if (count > 0 && !isProcessingBatch()) {
            onCompleteOperation(uri);
        }
        return count;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        SQLiteDatabase database = this.mOpenHelper.getWritableDatabase();
        String name = getTableName(uri);
        int count = 0;
        if (selection != null) {
            try {
                count = database.update(name, values, selection, selectionArgs);
                if (count > 0 && !isProcessingBatch()) {
                    onCompleteOperation(uri);
                    return count;
                }
                return count;
            } catch (SQLiteConstraintException e) {
                CameraLogger.e(TAG, "Failed to update the record. Message : " + e.getMessage());
                return count;
            }
        }
        long id = database.replace(getTableName(uri), null, values);
        if (id == -1) {
            return 0;
        }
        if (!isProcessingBatch()) {
            onCompleteOperation(uri);
        }
        return 1;
    }

    @Override // android.content.ContentProvider
    public ContentProviderResult[] applyBatch(ArrayList<ContentProviderOperation> operations) throws OperationApplicationException {
        incrementProcessingBatchCount();
        ContentProviderResult[] result = super.applyBatch(operations);
        decrementProcessingBatchCount();
        HashSet<Uri> updated = new HashSet<>();
        Iterator<ContentProviderOperation> it = operations.iterator();
        while (it.hasNext()) {
            ContentProviderOperation i = it.next();
            if (i.getUri() != null) {
                updated.add(i.getUri());
            }
        }
        Iterator<Uri> it2 = updated.iterator();
        while (it2.hasNext()) {
            onCompleteOperation(it2.next());
        }
        return result;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return MIMETYPE_LIST.get(this.URI_MATCHER.match(uri));
    }

    private String getTableName(Uri uri) {
        int match = this.URI_MATCHER.match(uri);
        switch (match) {
            case 1:
                return "capturingmodes";
            case 2:
            case 4:
            default:
                throw new SQLException("Invalid uri for this content provider. uri:" + uri);
            case 3:
                return "cameraparameters";
            case 5:
                return "commonsettings";
        }
    }

    private void onCompleteOperation(Uri uri) {
        if (uri != null) {
            getContext().getContentResolver().notifyChange(uri, null);
        }
    }

    private int getCountOf(String name) {
        SQLiteDatabase database = this.mOpenHelper.getReadableDatabase();
        Cursor c = database.query(name, new String[0], null, null, null, null, null);
        if (c == null) {
            return 0;
        }
        int count = c.getCount();
        c.close();
        return count;
    }

    private void in(Uri uri) {
        String methodName = Thread.currentThread().getStackTrace()[3].getMethodName();
        long threadId = Thread.currentThread().getId();
        CameraLogger.d(TAG, "### [", Long.valueOf(threadId), "]", methodName, "() --> start #" + uri);
    }

    private void out() {
        String methodName = Thread.currentThread().getStackTrace()[3].getMethodName();
        long threadId = Thread.currentThread().getId();
        CameraLogger.d(TAG, "### [", Long.valueOf(threadId), "]", methodName, "() --> end");
    }

    private void debug(String message) {
        String methodName = Thread.currentThread().getStackTrace()[3].getMethodName();
        long threadId = Thread.currentThread().getId();
        CameraLogger.d(TAG, "### [", Long.valueOf(threadId), "]", methodName, "() " + message);
    }

    protected String getDataBaseName() {
        return DATABASE_NAME;
    }

    public String getAuthority() {
        return AUTHORITY;
    }
}