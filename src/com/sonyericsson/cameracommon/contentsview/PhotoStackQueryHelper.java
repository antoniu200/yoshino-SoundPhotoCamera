package com.sonyericsson.cameracommon.contentsview;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.database.Cursor;
import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.updator.CrDeleteParameter;
import com.sonyericsson.cameracommon.mediasaving.updator.CrQueryParameter;
import java.util.Locale;

/* loaded from: classes.dex */
public class PhotoStackQueryHelper {
    public static final String TAG = "PhotoStackQueryHelper";

    public static boolean deleteImage(ContentResolver contenResolver, Uri uri) {
        int failCount = 0;
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
        Cursor cur = crQuery(contenResolver, uri, params);
        if (cur != null) {
            for (int i = 0; i < cur.getCount(); i++) {
                cur.moveToPosition(i);
                cur.getString(1);
                CrDeleteParameter deparams = new CrDeleteParameter();
                deparams.where = "_id=" + Long.valueOf(ContentUris.parseId(uri)).toString();
                deparams.selectionArgs = null;
                int number = crDelete(contenResolver, uri, deparams);
                if (number != 1) {
                    failCount++;
                }
            }
            cur.close();
        }
        return failCount == 0;
    }

    public static synchronized Cursor crQuery(ContentResolver contentResolver, Uri uri, CrQueryParameter params) {
        Cursor result;
        String order;
        result = null;
        try {
            if (params.limit > 0) {
                order = String.format(Locale.US, "%s limit %d offset %d", params.sortOrder, Integer.valueOf(params.limit), Integer.valueOf(params.offset));
            } else {
                order = params.sortOrder;
            }
            result = contentResolver.query(uri, params.projection, params.where, params.selectionArgs, order);
        } catch (Exception e) {
        }
        return result;
    }

    public static synchronized int crDelete(ContentResolver contentResolver, Uri uri, CrDeleteParameter params) {
        int result;
        result = 0;
        try {
            result = contentResolver.delete(uri, params.where, params.selectionArgs);
        } catch (Exception e) {
        }
        return result;
    }
}