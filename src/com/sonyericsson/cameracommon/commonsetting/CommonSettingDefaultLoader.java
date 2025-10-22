package com.sonyericsson.cameracommon.commonsetting;

import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import com.sonymobile.android.addoncamera.soundphoto.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class CommonSettingDefaultLoader {

    public static final class Column {
        static final String NAME = "name";
        static final String VALUE = "value";
    }

    public enum Record {
        GEO_TAG("geo_tag", R.string.commonsetting_default_geo_tag),
        FAST_CAPTURE("fast-capture", R.string.commonsetting_default_fast_capture),
        TOUCH_CAPTURE("touch_capture", R.string.commonsetting_default_touch_capture),
        SHUTTER_SOUND("shutter_sound", R.string.commonsetting_default_shutter_sound),
        SAVE_DESTINATION("storage", R.string.commonsetting_default_storage),
        VOLUME_KEY("volume_key", R.string.commonsetting_default_volume_key),
        DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG("do_not_show_again_check_for_geotag_dialog_value", R.string.commonsetting_default_do_not_show_again_check_for_geotag_dialog);

        public final String mProviderKey;
        public final int mProviderValueResId;

        Record(String providerKey, int providerValueResId) {
            this.mProviderKey = providerKey;
            this.mProviderValueResId = providerValueResId;
        }
    }

    public static void load(Context context, SQLiteDatabase database) {
        for (ContentValues insertRecord : newContentValuesList(context)) {
            database.insert("commonsettings", null, insertRecord);
        }
    }

    public static List<ContentValues> newContentValuesList(Context context) {
        Resources res = context.getResources();
        List<ContentValues> contentValuesList = new ArrayList<>();
        for (Record eachRecord : Record.values()) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", eachRecord.mProviderKey);
            contentValues.put("value", res.getString(eachRecord.mProviderValueResId));
            contentValuesList.add(contentValues);
        }
        return contentValuesList;
    }
}