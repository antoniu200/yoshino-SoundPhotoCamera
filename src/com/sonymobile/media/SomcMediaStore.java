package com.sonymobile.media;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import java.util.List;

/* loaded from: classes.dex */
public final class SomcMediaStore {
    public static final String AUTHORITY_NEW = "somcmedia";
    public static final int AUTHORITY_NEW_VERSION = 400;
    public static final String AUTHORITY_OLD = "media";
    public static final String EXTERNAL_VOLUME = "external";
    private static String versionCache = null;

    public static final class ExtendedFiles {

        public interface ExtendedFileColumns extends MediaStore.Files.FileColumns {
            public static final int SOMC_CATEGORY_NONE = 0;
            public static final int SOMC_CATEGORY_SEQUENCE = 2;
            public static final int SOMC_CATEGORY_SEQUENCE_COVER = 3;
            public static final int SOMC_CATEGORY_SINGLES = 1;
            public static final String SOMC_FILE_TYPE = "somctype";
            public static final int SOMC_FILE_TYPE_AR_EFFECT = 7;
            public static final int SOMC_FILE_TYPE_BACKGROUND_DEFOCUS = 9;
            public static final int SOMC_FILE_TYPE_BURST_COVER = 2;
            public static final int SOMC_FILE_TYPE_BURST_IMAGE = 129;
            public static final int SOMC_FILE_TYPE_CINEMAGRAPH = 8;
            public static final int SOMC_FILE_TYPE_HIGHLIGHT_VIDEO = 14;
            public static final int SOMC_FILE_TYPE_HI_RES_AUDIO = 13;
            public static final int SOMC_FILE_TYPE_INFO_EYE = 5;
            public static final int SOMC_FILE_TYPE_NONE = 0;
            public static final int SOMC_FILE_TYPE_SOCIAL_CAST = 6;
            public static final int SOMC_FILE_TYPE_SOUNDPHOTO = 42;
            public static final int SOMC_FILE_TYPE_TIMESHIFT_COVER = 4;
            public static final int SOMC_FILE_TYPE_TIMESHIFT_IMAGE = 130;
            public static final int SOMC_FILE_TYPE_TIMESHIFT_VIDEO = 12;
            public static final int SOMC_FILE_TYPE_TIMESHIFT_VIDEO_120F = 11;
            public static final int SOMC_FILE_TYPE_WIKITUDE = 10;
            public static final String SOMC_FOLDER_CATEGORY = "somccategory";
        }

        public static Uri getContentUri(String volume) {
            return getContentUri(SomcMediaStore.getContext(), volume);
        }

        public static Uri getContentUri(String volume, long rowId) {
            return getContentUri(SomcMediaStore.getContext(), volume, rowId);
        }

        public static Uri getContentUri(Context context, String volume) {
            return getContentUri(volume, SomcMediaStore.getVersion(context));
        }

        public static Uri getContentUri(Context context, String volume, long rowId) {
            return getContentUri(volume, rowId, SomcMediaStore.getVersion(context));
        }

        public static Uri getContentUri(String volume, String version) {
            if (version != null && Integer.parseInt(version) >= 400) {
                Uri uri = Uri.parse("content://somcmedia/" + volume + "/extended_file");
                return uri;
            }
            Uri uri2 = Uri.parse("content://media/" + volume + "/extended_file");
            return uri2;
        }

        public static Uri getContentUri(String volume, long rowId, String version) {
            Uri uri = getContentUri(volume, version);
            if (uri != null) {
                return Uri.withAppendedPath(uri, String.valueOf(rowId));
            }
            return uri;
        }
    }

    public static Uri makeMediaStoreUri(Uri srcUri) {
        return makeMediaStoreUri(getContext(), srcUri);
    }

    public static Uri makeMediaStoreUri(Context context, Uri srcUri) {
        return makeMediaStoreUri(srcUri, getVersion(context));
    }

    public static Uri makeMediaStoreUri(Uri srcUri, String version) {
        Uri dstUri = null;
        String authority = srcUri.getAuthority();
        List<String> segs = srcUri.getPathSegments();
        if (segs.size() < 2) {
            return null;
        }
        if (version != null && Integer.parseInt(version) >= 400) {
            if (authority.equals(AUTHORITY_NEW) && segs.get(1).equals("extended_file")) {
                dstUri = Uri.parse(Uri.parse(srcUri.toString().replaceFirst("extended_file", "file")).toString().replaceFirst(AUTHORITY_NEW, AUTHORITY_OLD));
            }
        } else if (authority.equals(AUTHORITY_OLD) && segs.get(1).equals("extended_file")) {
            dstUri = Uri.parse(srcUri.toString().replaceFirst("extended_file", "file"));
        }
        return dstUri;
    }

    public static String getVersion(Context context) {
        String version = versionCache;
        if (version == null) {
            version = getVersionNew(context);
            if (version == null && (version = getVersionOld(context)) == null) {
                version = getVersionTooOld(context);
            }
            versionCache = version;
        }
        return version;
    }

    private static String getVersionTooOld(Context context) {
        Cursor c = null;
        try {
            c = context.getContentResolver().query(Uri.parse("content://media/internal/extended_version"), new String[]{"version"}, null, null, null);
        } catch (Exception e) {
            if (c != null) {
                c.close();
            }
        } catch (Throwable th) {
            if (c != null) {
                c.close();
            }
            throw th;
        }
        if (c == null || !c.moveToFirst()) {
            if (c != null) {
                c.close();
            }
            return null;
        }
        String string = c.getString(0);
        if (c == null) {
            return string;
        }
        c.close();
        return string;
    }

    private static String getVersionOld(Context context) {
        Cursor c = null;
        try {
            c = context.getContentResolver().query(Uri.parse("content://media/external/extended_version"), new String[]{"value"}, "key='version'", null, null);
        } catch (Exception e) {
            if (c != null) {
                c.close();
            }
        } catch (Throwable th) {
            if (c != null) {
                c.close();
            }
            throw th;
        }
        if (c == null || !c.moveToFirst()) {
            if (c != null) {
                c.close();
            }
            return null;
        }
        String string = c.getString(0);
        if (c == null) {
            return string;
        }
        c.close();
        return string;
    }

    private static String getVersionNew(Context context) {
        Cursor c = null;
        try {
            c = context.getContentResolver().query(Uri.parse("content://somcmedia/none/version"), null, null, null, null);
        } catch (Exception e) {
            if (c != null) {
                c.close();
            }
        } catch (Throwable th) {
            if (c != null) {
                c.close();
            }
            throw th;
        }
        if (c == null || !c.moveToFirst()) {
            if (c != null) {
                c.close();
            }
            return null;
        }
        String string = c.getString(0);
        if (c == null) {
            return string;
        }
        c.close();
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Context getContext() {
        try {
            Context context = (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, (Object[]) null);
            return context;
        } catch (Exception e) {
            return null;
        }
    }
}