package com.sonyericsson.cameracommon.contentsview;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingConstants;
import com.sonyericsson.cameracommon.mediasaving.PredictiveCapturePathBuilder;
import com.sonyericsson.cameracommon.mediasaving.SlowMotionPathBuilder;
import com.sonyericsson.cameracommon.mediasaving.updator.CrQueryParameter;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonymobile.media.SomcMediaStore;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class DataLoader implements Callable<Integer> {
    private static final int COLUMN_INDEX_BUCKETID = 7;
    private static final int COLUMN_INDEX_DATA = 1;
    private static final int COLUMN_INDEX_HEIGHT = 5;
    private static final int COLUMN_INDEX_ID = 0;
    private static final int COLUMN_INDEX_MIME = 2;
    private static final int COLUMN_INDEX_ORIENTATION = 6;
    private static final int COLUMN_INDEX_WIDTH = 4;
    public static final String EXTENDED_FILES_COLUMN_ID = "files_id";
    public static final Uri EXTENDED_FILES_CONTENT_URI = SomcMediaStore.ExtendedFiles.getContentUri("external");
    public static final float PANORAMA_ASPECT_THRESHOLD = 1.8777778f;
    public static final String TAG = "DataLoader";
    private static final int WIDTH_PREVIEW_4K_UHD = 3840;
    private final String[] CONTENT_EXTENSIONS;
    private Context mContext;
    private final DataLoadCallback mDataLoadCallback;
    private final boolean mIsRegisterCache;
    private int mMediaId;
    private CrQueryParameter mParam;
    private int mRequestId;
    private final ContentResolver mResolver;

    interface DataLoadCallback {
        void onDataLoaded(boolean z, Content.ContentInfo contentInfo, int i, boolean z2);
    }

    public DataLoader(Context context, List<String> destinations, int index, DataLoadCallback callback, boolean isRegisterCache) {
        this.CONTENT_EXTENSIONS = new String[]{MediaSavingConstants.MEDIA_TYPE_JPEG_EXT, MediaSavingConstants.MEDIA_TYPE_3GP_EXT, MediaSavingConstants.MEDIA_TYPE_MPEG4_EXT};
        this.mParam = null;
        this.mRequestId = -1;
        this.mParam = setupQueryParam(destinations, index);
        this.mContext = context;
        this.mResolver = this.mContext.getContentResolver();
        this.mDataLoadCallback = callback;
        this.mIsRegisterCache = isRegisterCache;
    }

    public DataLoader(int requestId, Uri uri, Context context, DataLoadCallback callback, boolean isRegisterCache) {
        this.CONTENT_EXTENSIONS = new String[]{MediaSavingConstants.MEDIA_TYPE_JPEG_EXT, MediaSavingConstants.MEDIA_TYPE_3GP_EXT, MediaSavingConstants.MEDIA_TYPE_MPEG4_EXT};
        this.mParam = null;
        this.mRequestId = requestId;
        try {
            this.mMediaId = Integer.parseInt(uri.getLastPathSegment());
        } catch (Exception e) {
            CameraLogger.w(TAG, "mediaId is not corrected.");
        }
        this.mContext = context;
        this.mResolver = this.mContext.getContentResolver();
        this.mDataLoadCallback = callback;
        this.mIsRegisterCache = isRegisterCache;
    }

    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        int resultId = 0;
        boolean ok = false;
        Cursor c = null;
        Content.ContentInfo info = null;

        try {
            // Choose query strategy based on how this DataLoader was constructed
            if (mParam != null) {
                c = getLatestImageInfo();
            } else {
                c = getCoverImageInfo(mMediaId);
            }

            if (c != null) {
                try {
                    info = createContentInfo(c);
                } finally {
                    try { c.close(); } catch (Throwable ignore) {}
                }
            }

            // If the latest item is a Predictive Capture member, use its cover image instead
            if (info != null && info.mOriginalPath != null
                    && PredictiveCapturePathBuilder.isPredictiveCaptureImage(info.mOriginalPath)) {
                String timeStamp = PredictiveCapturePathBuilder.getTimeStamp(info.mOriginalPath);
                Cursor cover = null;
                try {
                    cover = getPredictiveCaptureImageInfo(timeStamp, info.mBucketId);
                    if (cover != null) {
                        Content.ContentInfo coverInfo = createContentInfo(cover);
                        if (coverInfo != null) {
                            info = coverInfo;
                        }
                    }
                } catch (Throwable t) {
                    CameraLogger.e(TAG, "call(): ", t);
                } finally {
                    if (cover != null) {
                        try { cover.close(); } catch (Throwable ignore) {}
                    }
                }
            }

            if (info != null) {
                info.mThumbnail = decodeThumbnail(info);
                ok = (info.mThumbnail != null);
                if (ok) {
                    resultId = info.mId;
                }
            }
        } catch (Throwable t) {
            CameraLogger.e(TAG, "call(): ", t);
        } finally {
            // Avoid reusing previous query conditions
            mParam = null;
        }

        // Notify caller
        mDataLoadCallback.onDataLoaded(ok, info, mRequestId, mIsRegisterCache);
        return Integer.valueOf(resultId);
    }

    private CrQueryParameter setupQueryParam(List<String> storages, int offset) {
        ArrayList<String> pathWhere = new ArrayList<>();
        generateQueryPathForEachStorage(pathWhere, storages);
        CrQueryParameter queryParam = new CrQueryParameter();
        queryParam.projection = new String[]{"_id", "_data", "mime_type", "datetaken", "width", "height", "orientation", "bucket_id"};
        queryParam.offset = offset;
        queryParam.limit = 1;
        queryParam.sortOrder = String.format(Locale.US, "%s DESC, %s DESC", "datetaken", "_id");
        StringBuilder builder = new StringBuilder();
        builder.append("(somctype!=129)");
        builder.append(" AND ");
        builder.append("(somctype!=130)");
        builder.append(" AND (");
        for (int i = 0; i < pathWhere.size(); i++) {
            if (i != 0) {
                builder.append(" OR ");
            }
            builder.append(pathWhere.get(i));
        }
        builder.append(")");
        queryParam.where = builder.toString();
        return queryParam;
    }

    private List<String> generateQueryPathForEachStorage(List<String> pathWhere, List<String> storages) {
        for (String storage : storages) {
            generateQueryPathForOneStorage(pathWhere, storage);
        }
        return pathWhere;
    }

    private List<String> generateQueryPathForOneStorage(List<String> pathWhere, String storage) {
        for (String extension : this.CONTENT_EXTENSIONS) {
            pathWhere.add(generatePathSelection(storage, Environment.DIRECTORY_DCIM, "%" + extension));
        }
        return pathWhere;
    }

    private String generatePathSelection(String... pathSegments) {
        StringBuilder builder = new StringBuilder();
        builder.append("(");
        builder.append("_data");
        builder.append(" like '");
        for (String segments : pathSegments) {
            if (!segments.startsWith("/")) {
                builder.append('/');
            }
            builder.append(segments);
        }
        builder.append("'");
        builder.append(" AND ");
        builder.append("_data NOT LIKE '%/.%'");
        builder.append(")");
        return builder.toString();
    }

    private Content.ContentInfo createContentInfo(Cursor cursor) {
        Uri uriOriginal;
        int type;
        int orientDeg;
        int mediaId = getMediaId(cursor);
        String mime = cursor.getString(2);
        String data = cursor.getString(1);
        int width = cursor.getInt(4);
        int height = cursor.getInt(5);
        int bucketId = cursor.getInt(7);
        String fileExtension = CommonUtility.getFileExtension(data);
        if (mime.equals(MediaSavingConstants.MEDIA_TYPE_JPEG_MIME) || isSupportedFileExtension(MediaSavingConstants.MEDIA_TYPE_JPEG_EXT, fileExtension)) {
            uriOriginal = Uri.withAppendedPath(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, String.valueOf(mediaId));
            type = 1;
        } else if (mime.equals(MediaSavingConstants.MEDIA_TYPE_MPEG4_MIME) || isSupportedFileExtension(MediaSavingConstants.MEDIA_TYPE_MPEG4_EXT, fileExtension) || mime.equals(MediaSavingConstants.MEDIA_TYPE_3GP_MIME) || isSupportedFileExtension(MediaSavingConstants.MEDIA_TYPE_3GP_EXT, fileExtension)) {
            uriOriginal = Uri.withAppendedPath(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, String.valueOf(mediaId));
            type = 2;
        } else if (mime.equals(MediaSavingConstants.MEDIA_TYPE_MPO_MIME)) {
            uriOriginal = Uri.withAppendedPath(QueryParameterAdapter.MPO_3DPICTURES_CONTENT_URI, String.valueOf(mediaId));
            type = 3;
        } else {
            return null;
        }
        if (type == 1) {
            orientDeg = cursor.getInt(6);
        } else {
            orientDeg = 0;
        }
        Content.ContentInfo info = new Content.ContentInfo();
        info.mId = mediaId;
        info.mOriginalUri = uriOriginal;
        info.mOriginalPath = data;
        info.mType = type;
        info.mWidth = width;
        info.mHeight = height;
        info.mOrientation = orientDeg;
        info.mMimeType = mime;
        info.mGroupedImage = getGroupedImageCount(bucketId);
        info.mSomcType = getSomcType(data);
        info.mBucketId = bucketId;
        info.mContentType = getContentType(info);
        info.mThumbnail = decodeThumbnail(info);
        return info;
    }

    private int getMediaId(Cursor cursor) {
        int mediaId = cursor.getInt(0);
        return mediaId;
    }

    private int getGroupedImageCount(int bucketId) {
        CrQueryParameter param = new CrQueryParameter();
        param.projection = new String[]{"bucket_id"};
        param.sortOrder = String.format(Locale.US, "%s DESC, %s DESC", "datetaken", "_id");
        param.where = String.format(Locale.US, "%s like '%s'", "bucket_id", Integer.valueOf(bucketId));
        Cursor result = PhotoStackQueryHelper.crQuery(this.mResolver, EXTENDED_FILES_CONTENT_URI, param);
        if (result == null) {
            return 1;
        }
        int count = result.getCount();
        result.close();
        return count;
    }

    private int getSomcType(String path) {
        int type = 0;
        CrQueryParameter param = new CrQueryParameter();
        param.projection = new String[]{"_data", SomcMediaStore.ExtendedFiles.ExtendedFileColumns.SOMC_FILE_TYPE};
        param.sortOrder = String.format(Locale.US, "%s DESC, %s DESC", "datetaken", "_id");
        param.where = String.format(Locale.US, "%s like '%s'", "_data", path);
        Cursor result = PhotoStackQueryHelper.crQuery(this.mResolver, EXTENDED_FILES_CONTENT_URI, param);
        if (result != null) {
            type = 0;
            if (result.moveToFirst()) {
                type = result.getInt(result.getColumnIndex(SomcMediaStore.ExtendedFiles.ExtendedFileColumns.SOMC_FILE_TYPE));
            }
            result.close();
        }
        return type;
    }

    private Content.ContentsType getContentType(Content.ContentInfo info) {
        if (info.mType == 1) {
            if (PredictiveCapturePathBuilder.isPredictiveCaptureImage(info.mOriginalPath)) {
                return Content.ContentsType.PREDICTIVE_CAPTURE;
            }
            if (info.mSomcType == 129 || info.mSomcType == 2) {
                return Content.ContentsType.BURST;
            }
            if (info.mSomcType == 130 || info.mSomcType == 4) {
                return Content.ContentsType.TIME_SHIFT;
            }
            if (info.mSomcType == 42) {
                return Content.ContentsType.SOUND_PHOTO;
            }
            return Content.ContentsType.PHOTO;
        }
        if (info.mType == 2) {
            if (info.mSomcType == 12) {
                return Content.ContentsType.TIME_SHIFT_VIDEO;
            }
            if (info.mSomcType == 11) {
                return Content.ContentsType.TIME_SHIFT_VIDEO_120F;
            }
            if (SlowMotionPathBuilder.isSuperSlowMotionVideo(info.mOriginalPath)) {
                return Content.ContentsType.SUPER_SLOW_MOTION_VIDEO;
            }
            if (SlowMotionPathBuilder.isSuperSlowShotVideo(info.mOriginalPath)) {
                return Content.ContentsType.SUPER_SLOW_SHOT_VIDEO;
            }
            if (SlowMotionPathBuilder.isStandardSlowMotionVideo(info.mOriginalPath)) {
                return Content.ContentsType.STANDARD_SLOW_MOTION_VIDEO;
            }
            if (SlowMotionPathBuilder.isHFRVideo(info.mOriginalPath)) {
                return Content.ContentsType.HIGH_FRAME_RATE_VIDEO;
            }
            if (info.mWidth >= WIDTH_PREVIEW_4K_UHD || info.mHeight >= WIDTH_PREVIEW_4K_UHD) {
                return Content.ContentsType.VIDEO_4K;
            }
            return Content.ContentsType.VIDEO;
        }
        return Content.ContentsType.NONE;
    }

    private Bitmap decodeThumbnail(Content.ContentInfo info) {
        if (info == null) {
            return null;
        }
        if (info.mOriginalPath == null) {
            info.mOriginalPath = getMediaPath(info.mId, info.mType);
        }
        Bitmap thumbnail = ThumbnailFactory.createMicroThumbnail(info);
        if (thumbnail != null) {
            return createAntiAliasBitmap(thumbnail, thumbnail.getWidth());
        }
        return thumbnail;
    }

    private Bitmap createAntiAliasBitmap(Bitmap bm, int size) {
        if (bm == null || bm.isRecycled()) {
            return null;
        }
        return Bitmap.createBitmap(bm, 0, 0, size, size, (Matrix) null, true);
    }

    private String getMediaPath(int mediaId, int type) {
        Uri uri;
        String string = null;
        CrQueryParameter param = new CrQueryParameter();
        switch (type) {
            case 1:
            case 3:
                uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                param.projection = new String[]{"_data"};
                param.where = String.format(Locale.US, "%s=%s", "_id", Integer.valueOf(mediaId));
                param.offset = 0;
                param.limit = 1;
                break;
            case 2:
                uri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                param.projection = new String[]{"_data"};
                param.where = String.format(Locale.US, "%s=%s", "_id", Integer.valueOf(mediaId));
                param.offset = 0;
                param.limit = 1;
                break;
            default:
                return string;
        }
        Cursor cursor = PhotoStackQueryHelper.crQuery(this.mResolver, uri, param);
        if (cursor != null) {
            try {
                if (cursor.moveToPosition(0)) {
                    string = cursor.getString(0);
                }
            } catch (RuntimeException e) {
                CameraLogger.e(TAG, "The specified column isn't found.");
            } finally {
                cursor.close();
            }
        }
        return string;
    }

    private Cursor getPredictiveCaptureImageInfo(String timeStamp, int bucketId) {
        CrQueryParameter queryParam = new CrQueryParameter();
        queryParam.projection = new String[]{"_id", "_data", "mime_type", "datetaken", "width", "height", "orientation", "bucket_id"};
        queryParam.sortOrder = String.format(Locale.US, "%s DESC", "title");
        StringBuilder builder = new StringBuilder();
        builder.append("(_data REGEXP '.*/DSCPDC_\\d{4}_BURST" + timeStamp + "(|_" + PredictiveCapturePathBuilder.DCF_FILE_NAME_FREE_WORD_COVER + ").[jJ][pP][eE]?[gG]')");
        builder.append(" AND ");
        builder.append("(bucket_id==" + bucketId + ")");
        queryParam.where = builder.toString();
        Cursor queryResult = PhotoStackQueryHelper.crQuery(this.mResolver, EXTENDED_FILES_CONTENT_URI, queryParam);
        if (queryResult == null) {
            return null;
        }
        if (!queryResult.moveToFirst()) {
            queryResult.close();
            return null;
        }
        return queryResult;
    }

    private Cursor getLatestImageInfo() {
        Cursor queryResult = PhotoStackQueryHelper.crQuery(this.mResolver, EXTENDED_FILES_CONTENT_URI, this.mParam);
        if (queryResult == null) {
            return null;
        }
        if (!queryResult.moveToFirst()) {
            queryResult.close();
            return null;
        }
        return queryResult;
    }

    private Cursor getCoverImageInfo(int mediaId) {
        CrQueryParameter param = new CrQueryParameter();
        param.projection = new String[]{"_id", "_data", "mime_type", "datetaken", "width", "height", "orientation", "bucket_id", SomcMediaStore.ExtendedFiles.ExtendedFileColumns.SOMC_FILE_TYPE};
        param.where = String.format(Locale.US, "%s like '%s'", "_id", Integer.valueOf(mediaId));
        Cursor result = PhotoStackQueryHelper.crQuery(this.mResolver, EXTENDED_FILES_CONTENT_URI, param);
        if (result == null) {
            return null;
        }
        if (!result.moveToFirst()) {
            result.close();
            return null;
        }
        getSomcType(result.getString(1));
        return result;
    }

    private boolean isSupportedFileExtension(String supportedExtension, String fileExtension) {
        return fileExtension != null && supportedExtension.toUpperCase().equals(fileExtension.toUpperCase());
    }
}