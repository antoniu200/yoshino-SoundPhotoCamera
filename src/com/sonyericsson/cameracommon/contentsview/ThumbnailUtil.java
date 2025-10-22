package com.sonyericsson.cameracommon.contentsview;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class ThumbnailUtil {
    public static final String TAG = "ThumbnailUtil";

    public static RelativeLayout createThumbnailViewFromJpeg(Activity activity, byte[] data, int orientationDegree) {
        RelativeLayout thumbnailContainer;
        if (data == null) {
            CameraLogger.e(TAG, "data is null");
            return null;
        }
        LayoutInflater inflater = activity.getLayoutInflater();
        if (CommonUtility.isCoreCameraApp(activity)) {
            thumbnailContainer = (RelativeLayout) inflater.inflate(R.layout.content_early_thumbnail_core_camera, (ViewGroup) null);
        } else {
            thumbnailContainer = (RelativeLayout) inflater.inflate(R.layout.content_early_thumbnail, (ViewGroup) null);
        }
        ImageView thumbnailImage = (ImageView) thumbnailContainer.findViewById(R.id.early_thumbnail_image);
        BitmapFactory.Options option = new BitmapFactory.Options();
        option.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(data, 0, data.length, option);
        int width = option.outWidth;
        int height = option.outHeight;
        if (width > height) {
            option.inSampleSize = Math.round(height / 96.0f);
        } else {
            option.inSampleSize = Math.round(width / 96.0f);
        }
        option.inJustDecodeBounds = false;
        option.inPreferredConfig = Bitmap.Config.RGB_565;
        option.inPurgeable = true;
        Bitmap bitmap = ThumbnailUtils.extractThumbnail(BitmapFactory.decodeByteArray(data, 0, data.length, option), 96, 96);
        Bitmap result = null;
        if (bitmap != null) {
            result = rotateThumbnail(bitmap, orientationDegree);
        }
        if (result != null) {
            thumbnailImage.setImageBitmap(result);
        } else {
            thumbnailImage.setImageDrawable(null);
        }
        return thumbnailContainer;
    }

    public static Bitmap rotateThumbnail(Bitmap bitmap, int degree) {
        int w = bitmap.getWidth();
        int h = bitmap.getHeight();
        if (degree == 0) {
            return bitmap;
        }
        try {
            Matrix m = new Matrix();
            m.setRotate(degree, w / 2.0f, h / 2.0f);
            Bitmap temp = Bitmap.createBitmap(bitmap, 0, 0, w, h, m, false);
            bitmap.recycle();
            return temp;
        } catch (IllegalArgumentException e) {
            CameraLogger.e(TAG, "IllegalArgumentException : width = " + w + ", height = " + h);
            return bitmap;
        } catch (Exception e2) {
            CameraLogger.e(TAG, "Exception : width = " + w + ", height = " + h);
            return bitmap;
        }
    }

    public static RelativeLayout createThumbnailViewFromUri(Activity activity, Uri uri) {
        return createThumbnailViewFromUri(activity, uri, 0);
    }

    public static RelativeLayout createThumbnailViewFromUri(Activity activity, Uri uri, int orientationDegree) {
        RelativeLayout thumbnailContainer;
        if (uri == null) {
            CameraLogger.e(TAG, "uri is null");
            return null;
        }
        LayoutInflater inflater = activity.getLayoutInflater();
        if (CommonUtility.isCoreCameraApp(activity)) {
            thumbnailContainer = (RelativeLayout) inflater.inflate(R.layout.content_early_thumbnail_core_camera, (ViewGroup) null);
        } else {
            thumbnailContainer = (RelativeLayout) inflater.inflate(R.layout.content_early_thumbnail, (ViewGroup) null);
        }
        ImageView thumbnailImage = (ImageView) thumbnailContainer.findViewById(R.id.early_thumbnail_image);
        BitmapFactory.Options option = new BitmapFactory.Options();
        option.inJustDecodeBounds = true;
        InputStream iStream = null;
        try {
            iStream = activity.getContentResolver().openInputStream(uri);
        } catch (FileNotFoundException e) {
            CameraLogger.e(TAG, "FileNotFoundException :  = " + e);
        }
        BitmapFactory.decodeStream(iStream, null, option);
        if (iStream != null) {
            try {
                iStream.close();
            } catch (IOException e2) {
                CameraLogger.e(TAG, "IOException :  = " + e2);
            }
        }
        int width = option.outWidth;
        int height = option.outHeight;
        if (width > height) {
            option.inSampleSize = Math.round(height / 96.0f);
        } else {
            option.inSampleSize = Math.round(width / 96.0f);
        }
        option.inJustDecodeBounds = false;
        option.inPreferredConfig = Bitmap.Config.RGB_565;
        option.inPurgeable = true;
        try {
            iStream = activity.getContentResolver().openInputStream(uri);
        } catch (FileNotFoundException e1) {
            CameraLogger.e(TAG, "FileNotFoundException :  = " + e1);
        }
        Bitmap bitmap = BitmapFactory.decodeStream(iStream, null, option);
        if (iStream != null) {
            try {
                iStream.close();
            } catch (IOException e3) {
                CameraLogger.e(TAG, "IOException :  = " + e3);
            }
        }
        Bitmap bitmap2 = ThumbnailUtils.extractThumbnail(bitmap, 96, 96);
        Bitmap result = null;
        if (bitmap2 != null) {
            result = rotateThumbnail(bitmap2, orientationDegree);
        }
        if (result != null) {
            thumbnailImage.setImageBitmap(result);
        } else {
            thumbnailImage.setImageDrawable(null);
        }
        return thumbnailContainer;
    }
}
