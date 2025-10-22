package com.sonyericsson.cameracommon.launcher;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import com.sonyericsson.cameracommon.contentsview.PredictiveCaptureStoreInfo;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingConstants;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class AlbumLauncher extends Activity {
    public static final String EXTRA_BURST_BUCKETID = "burst_bucketId";
    public static final String EXTRA_PLAYBACK = "android.intent.extra.finishOnCompletion";
    private static final boolean EXTRA_PLAYBACK_DEFAULT = false;
    public static final String EXTRA_SOMCTYPE = "somc_type";
    private static final String PLAYER_PACKAGE_NAME = "com.sonyericsson.android.camera3d";
    public static final String TAG = "AlbumLauncher";

    private enum MimeType {
        PHOTO(MediaSavingConstants.MEDIA_TYPE_JPEG_MIME),
        MPO(MediaSavingConstants.MEDIA_TYPE_MPO_MIME),
        MP4(MediaSavingConstants.MEDIA_TYPE_MPEG4_MIME),
        THREEGPP(MediaSavingConstants.MEDIA_TYPE_3GP_MIME),
        UNKOWN("");

        final String mText;

        MimeType(String text) {
            this.mText = text;
        }

        static MimeType fromText(String text) {
            for (MimeType i : values()) {
                if (i.mText.equals(text)) {
                    return i;
                }
            }
            return UNKOWN;
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        Uri uri = getIntent().getData();
        String mimetype = getIntent().getType();
        boolean playback = getIntent().getBooleanExtra(EXTRA_PLAYBACK, false);
        int somcType = getIntent().getIntExtra(EXTRA_SOMCTYPE, 0);
        boolean isBurst = somcType == 2;
        int bucketId = getIntent().getIntExtra(EXTRA_BURST_BUCKETID, -1);
        try {
            if (playback) {
                if (launchPlayer(uri, mimetype, bucketId, isBurst)) {
                    finish();
                }
            } else {
                launchAlbum(this, uri, mimetype, bucketId, isBurst);
                finish();
            }
        } catch (ActivityNotFoundException e) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        Uri uri = getIntent().getData();
        String mimetype = getIntent().getType();
        switch (requestCode) {
            case 1:
                launchAlbum(this, uri, mimetype, -1, false);
                break;
        }
        finish();
    }

    public static void launchAlbum(Activity activity, Uri uri, String mimetype, int bucketId, boolean isBurst) {
        launchAlbum(activity, uri, mimetype, bucketId, isBurst, true);
    }

    public static void launchAlbum(Activity activity, Uri uri, String mimetype, int bucketId, boolean isBurst, boolean isFast) {
        launchAlbum(activity, uri, mimetype, bucketId, isBurst, isFast, null);
    }

    public static void launchAlbum(Activity activity, Uri uri, String mimetype, int bucketId, boolean isBurst, boolean isFast, PredictiveCaptureStoreInfo predictiveCaptureStoreInfo) {
        Intent intent;
        if (CommonUtility.isCoreCameraApp(activity)) {
            intent = new Intent("com.sonymobile.album.action.VIEW");
        } else {
            intent = new Intent("com.android.camera.action.REVIEW");
        }
        if (isFast) {
            intent.putExtra(com.sonyericsson.album.fastview.Intent.EXTRA_FAST_VIEW_MODE, true);
        }
        intent.addCategory("android.intent.category.DEFAULT");
        if (MimeType.fromText(mimetype) == MimeType.MPO) {
            intent.setDataAndType(uri, MimeType.PHOTO.mText);
        } else {
            intent.setDataAndType(uri, mimetype);
        }
        if (isBurst) {
            intent.putExtra(EXTRA_BURST_BUCKETID, bucketId);
        }
        if (predictiveCaptureStoreInfo != null) {
            intent.putExtra("com.sonymobile.album.intent.extra.PREDICTIVE_CAPTURE_COUNT", predictiveCaptureStoreInfo.getCaptureNum());
        }
        boolean isActivityAvailable = CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent);
        if (isActivityAvailable) {
            activity.startActivityForResult(intent, 8);
        } else {
            launchReviewApp(activity, uri, mimetype, 8);
        }
    }

    public static void launchAlbumSecure(Activity activity, List<Uri> uriList, List<String> mimeList, PredictiveCaptureStoreInfo predictiveCaptureStoreInfo) {
        if (uriList.size() == 0 || mimeList.size() == 0) {
            throw new RuntimeException("album image uri is empty.");
        }
        Intent intent = new Intent("com.sonymobile.album.action.VIEW");
        intent.putExtra(com.sonyericsson.album.fastview.Intent.EXTRA_FAST_VIEW_MODE, true);
        intent.putExtra("com.sonyericsson.album.intent.extra.ALLOWED_ONLY", true);
        ArrayList<Uri> intentUriList = new ArrayList<>();
        ListIterator<Uri> listIterator = uriList.listIterator();
        int uriTotalLength = 0;
        while (listIterator.hasNext()) {
            Uri uri = listIterator.next();
            uriTotalLength += uri.toString().length();
            if (1024 <= uriTotalLength) {
                break;
            } else {
                intentUriList.add(uri);
            }
        }
        intent.putParcelableArrayListExtra("com.sonyericsson.album.intent.extra.ALLOWED_LIST", intentUriList);
        intent.addCategory("android.intent.category.DEFAULT");
        intent.setDataAndType(uriList.get(0), mimeList.get(0));
        if (predictiveCaptureStoreInfo != null) {
            intent.putExtra("com.sonymobile.album.intent.extra.PREDICTIVE_CAPTURE_COUNT", predictiveCaptureStoreInfo.getCaptureNum());
        }
        boolean isActivityAvailable = CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent);
        if (isActivityAvailable) {
            activity.startActivityForResult(intent, 9);
        } else {
            launchReviewApp(activity, uriList.get(0), mimeList.get(0), 9);
        }
    }

    private static void launchReviewApp(Activity activity, Uri uri, String mimetype, int requestCode) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(uri, mimetype);
        try {
            activity.startActivityForResult(intent, requestCode);
        } catch (ActivityNotFoundException e) {
        }
    }

    private boolean launchPlayer(Uri uri, String mimetype, int bucketId, boolean isBurst) {
        switch (MimeType.fromText(mimetype)) {
            case MP4:
            case THREEGPP:
                launchPlayer(this, uri, mimetype);
                return false;
            case MPO:
                playMpo(uri, mimetype);
                return false;
            default:
                launchAlbum(this, uri, mimetype, bucketId, isBurst);
                return true;
        }
    }

    public static void launchPlayer(Activity activity, Uri uri, String mimetype) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.putExtra(EXTRA_PLAYBACK, true);
        intent.setDataAndType(uri, mimetype);
        boolean isActivityAvailable = CommonUtility.isActivityAvailable(activity, intent);
        if (isActivityAvailable) {
            activity.startActivityForResult(intent, 1);
        }
    }

    private void playMpo(Uri uri, String mimetype) {
        Intent intent = new Intent();
        intent.setPackage(PLAYER_PACKAGE_NAME);
        intent.addCategory("android.intent.category.DEFAULT");
        intent.putExtra(EXTRA_PLAYBACK, true);
        intent.setDataAndType(uri, mimetype);
        boolean isActivityAvailable = CommonUtility.isActivityAvailable(getApplicationContext(), intent);
        if (isActivityAvailable) {
            startActivityForResult(intent, 1);
        }
    }
}
