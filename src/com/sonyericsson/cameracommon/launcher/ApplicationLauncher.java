package com.sonyericsson.cameracommon.launcher;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.constants.CommonConstants;
import com.sonyericsson.cameracommon.device.CameraExtensionValues;
import com.sonyericsson.cameracommon.intent.IntentConstants;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingConstants;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.CommonUtility;

/* loaded from: classes.dex */
public final class ApplicationLauncher {
    private static final String ACTION_CROP = "com.android.camera.action.CROP";
    private static String ACTION_EDIT_HIGH_FRAME_RATE = "com.sonymobile.moviecreator.intent.action.TIMESHIFT_VIDEO_EDITOR";
    private static final String CROP_RETURN_DATA_REQUIRE = "return-data";
    private static final String EXTRA_APP_ICON = "extra_app_icon";
    public static final String TAG = "ApplicationLauncher";

    private ApplicationLauncher() {
    }

    public static void playback(Activity activity, String mimetype, Uri uri, int bucketId, int somcType) {
        Intent intent = new Intent();
        intent.setClass(activity, AlbumLauncher.class);
        intent.setDataAndType(uri, mimetype);
        intent.putExtra(AlbumLauncher.EXTRA_PLAYBACK, true);
        intent.putExtra(AlbumLauncher.EXTRA_BURST_BUCKETID, bucketId);
        intent.putExtra(AlbumLauncher.EXTRA_SOMCTYPE, somcType);
        boolean isActivityAvailable = CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent);
        if (isActivityAvailable) {
            activity.startActivityForResult(intent, 8);
        }
    }

    public static void launchAlbum(Activity activity, String mimetype, Uri uri, int bucketId, int somcType) {
        boolean isBurst = somcType == 2;
        AlbumLauncher.launchAlbum(activity, uri, mimetype, bucketId, isBurst);
    }

    public static void launchAlbum(Activity activity, String mimetype, Uri uri, int bucketId, int somcType, boolean isFast) {
        boolean isBurst = somcType == 2;
        AlbumLauncher.launchAlbum(activity, uri, mimetype, bucketId, isBurst, isFast);
    }

    public static boolean launchOneShotCrop(Activity activity, Uri uri, Uri extraOutput, String cropValue) {
        Bundle extras = new Bundle();
        if (cropValue.equals("circle")) {
            extras.putString("circleCrop", CameraExtensionValues.EX_TRUE);
        }
        if (extraOutput != null) {
            extras.putParcelable("output", extraOutput);
        } else {
            extras.putBoolean(CROP_RETURN_DATA_REQUIRE, true);
        }
        Intent intent = new Intent(ACTION_CROP);
        intent.setData(uri);
        intent.putExtras(extras);
        boolean isActivityAvailable = CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent);
        if (!isActivityAvailable) {
            return true;
        }
        try {
            activity.startActivityForResult(intent, 7);
            return true;
        } catch (ActivityNotFoundException e) {
            CameraLogger.e(TAG, "launchOneShotCrop failed.", e);
            return false;
        }
    }

    public static boolean launchOneShot(Activity activity, int requestCode) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.media.action.IMAGE_CAPTURE");
            intent.setComponent(IntentConstants.CAMERA_UI_ONE_SHOT_COMPONENT_NAME);
            activity.startActivityForResult(intent, requestCode);
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    public static boolean launchPickPicture(Activity activity, int requestCode) {
        try {
            Intent intent = new Intent("android.intent.action.PICK");
            intent.setType(MediaSavingConstants.MEDIA_TYPE_JPEG_MIME);
            activity.startActivityForResult(intent, requestCode);
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    public static void launchLocationSourceSettings(Activity activity) {
        Intent intent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
        intent.addCategory("android.intent.category.DEFAULT");
        boolean isActivityAvailable = CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent);
        if (isActivityAvailable) {
            try {
                activity.startActivity(intent);
            } catch (ActivityNotFoundException e) {
                CameraLogger.e(TAG, "launchLocationSourceSettings: failed.", e);
            }
        }
    }

    public static boolean startResolvedActivity(Context context, Intent intent, ResolveInfo info) {
        Intent resolvedIntent = new Intent(intent);
        ActivityInfo ai = info.activityInfo;
        resolvedIntent.setComponent(new ComponentName(ai.applicationInfo.packageName, ai.name));
        boolean isActivityAvailable = CommonUtility.isActivityAvailable(context, intent);
        if (isActivityAvailable) {
            try {
                context.startActivity(resolvedIntent);
            } catch (ActivityNotFoundException e) {
                CameraLogger.e(TAG, "startResolvedActivity failed.", e);
                return false;
            }
        }
        return true;
    }

    public static void startCameraTouchBlock(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(CommonConstants.TOUCH_BLOCKER_PACKAGE, CommonConstants.TOUCH_BLOCKER_SERVICE));
        intent.putExtra(CommonConstants.EXTRA_LAUNCHED_FROM_SMALLAPP, false);
        context.startService(intent);
    }

    public static boolean isEditorAvailable(Context context, Uri uri, String mimeType) {
        Intent intent = new Intent("android.intent.action.EDIT");
        intent.setDataAndType(uri, mimeType);
        intent.setFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        return CommonUtility.isActivityAvailable(context, intent);
    }

    public static boolean launchEditorHighFrameRate(Activity activity, Uri uri, String mimeType) {
        ActivityOptions options = ActivityOptions.makeCustomAnimation(activity, R.anim.edit_activity_fade_in, R.anim.edit_activity_fade_out);
        Intent intent = new Intent(ACTION_EDIT_HIGH_FRAME_RATE);
        intent.setDataAndType(uri, mimeType);
        intent.setFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        boolean isActivityAvailable = CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent);
        if (!isActivityAvailable) {
            return false;
        }
        activity.startActivityForResult(intent, 14, options.toBundle());
        return true;
    }
}