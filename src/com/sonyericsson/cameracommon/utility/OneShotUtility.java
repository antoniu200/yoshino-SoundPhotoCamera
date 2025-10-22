package com.sonyericsson.cameracommon.utility;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.Uri;

/* loaded from: classes.dex */
public class OneShotUtility {
    public static final String KEY_ADD_TO_MEDIA_STORE = "addToMediaStore";
    public static final int REQUEST_ONE_SHOT = 1;
    public static final String TAG = "OneShotUtility";

    public static Intent createResultIntent(Activity activity, Uri uri, String mime, int orientation) throws Throwable {
        Bitmap thumbnail = new ImageLoader(activity, uri, orientation).load();
        return createResultIntent(uri, mime, thumbnail);
    }

    public static Intent createResultIntent(Uri uri, String mime, Bitmap thumb) {
        Intent intent = new Intent("inline-data");
        if (thumb != null) {
            float scale = 1.0f / computeSampleSize(thumb.getWidth(), thumb.getHeight(), -1, 51200);
            Matrix m = new Matrix();
            m.setScale(scale, scale);
            Bitmap temp = Bitmap.createBitmap(thumb, 0, 0, thumb.getWidth(), thumb.getHeight(), m, true);
            Bitmap attach = temp.copy(Bitmap.Config.ARGB_8888, false);
            temp.recycle();
            intent.putExtra("data", attach);
        }
        intent.setDataAndType(uri, mime);
        return intent;
    }

    public static int computeSampleSize(double w, double h, int minSideLength, int maxNumOfPixels) {
        int initialSize = computeInitialSampleSize(w, h, minSideLength, maxNumOfPixels);
        if (initialSize <= 8) {
            int roundedSize = 1;
            while (roundedSize < initialSize) {
                roundedSize <<= 1;
            }
            return roundedSize;
        }
        int roundedSize2 = ((initialSize + 7) / 8) * 8;
        return roundedSize2;
    }

    private static int computeInitialSampleSize(double w, double h, int minSideLength, int maxNumOfPixels) {
        int lowerBound = maxNumOfPixels < 0 ? 1 : (int) Math.ceil(Math.sqrt((w * h) / maxNumOfPixels));
        int upperBound = minSideLength < 0 ? 128 : (int) Math.min(Math.floor(w / minSideLength), Math.floor(h / minSideLength));
        if (upperBound >= lowerBound) {
            if (maxNumOfPixels < 0 && minSideLength < 0) {
                return 1;
            }
            if (minSideLength >= 0) {
                return upperBound;
            }
            return lowerBound;
        }
        return lowerBound;
    }
}