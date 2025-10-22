package com.sonyericsson.cameracommon.contentsview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.MediaMetadataRetriever;
import android.media.ThumbnailUtils;
import android.net.Uri;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.IOException;

/* loaded from: classes.dex */
public class ThumbnailFactory {
    private static final int MAX_NUM_PIXELS_MICRO_THUMBNAIL = 19200;
    public static final String TAG = "ThumbnailFactory";
    public static final int TARGET_SIZE_MICRO_THUMBNAIL = 96;
    private static final int UNCONSTRAINED = -1;

    public static Bitmap createMicroThumbnail(Content.ContentInfo info) {
        Bitmap bitmap = null;
        Bitmap temp = null;
        try {
            switch (info.mType) {
                case 1:
                case 3:
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inSampleSize = 1;
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeFile(info.mOriginalPath, options);
                    if (!options.mCancel && options.outWidth != -1 && options.outHeight != -1) {
                        options.inSampleSize = computeSampleSize(options, 96, MAX_NUM_PIXELS_MICRO_THUMBNAIL);
                        options.inJustDecodeBounds = false;
                        options.inDither = false;
                        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                        temp = BitmapFactory.decodeFile(info.mOriginalPath, options);
                        break;
                    } else {
                        return null;
                    }
                case 2:
                    temp = createVideoThumbnail(info.mOriginalPath);
                    break;
                default:
                    CameraLogger.e(TAG, "createMicroThumbnail() wrong type:" + info.mType);
                    break;
            }
            if (temp != null) {
                bitmap = ThumbnailUtils.extractThumbnail(temp, 96, 96);
                temp.recycle();
            }
        } catch (Exception ex) {
            CameraLogger.e(TAG, "createMicroThumbnail() got exception ex :" + ex);
        } catch (OutOfMemoryError e) {
            CameraLogger.e(TAG, e.toString());
        }
        if (bitmap == null) {
            CameraLogger.e(TAG, "createMicroThumbnail() can't create a Micro thumbnail.");
            return null;
        }
        return rotateThumbnail(bitmap, info.mOrientation);
    }

    public static boolean tryCreateThumbnail(String path) {
        BitmapFactory.Options options = null;
        boolean isSuccess = false;
        try {
            options = new BitmapFactory.Options();
            options.inSampleSize = 1;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(path, options);
        } catch (Exception ex) {
            CameraLogger.e(TAG, "createMicroThumbnail() : ", ex);
        }
        if (options != null) {
            if (!options.mCancel && options.outWidth != -1) {
                if (options.outHeight != -1) {
                    isSuccess = true;
                    return isSuccess;
                }
            }
        }
        return false;
    }

    private static Bitmap rotateThumbnail(Bitmap bitmap, int degree) {
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

    public static Bitmap createVideoThumbnail(String filePath) throws IOException {
        Bitmap bitmap = null;
        MediaMetadataRetriever retriever = new MediaMetadataRetriever();
        try {
            try {
                retriever.setDataSource(filePath);
                bitmap = retriever.getFrameAtTime(-1L);
            } catch (IllegalArgumentException e) {
                CameraLogger.e(TAG, "Assume this is a corrupt video file.");
                try {
                    retriever.release();
                } catch (RuntimeException e2) {
                    CameraLogger.e(TAG, "Ignore failures while cleaning up.");
                }
            } catch (RuntimeException e3) {
                CameraLogger.e(TAG, "Assume this is a corrupt video file.");
                try {
                    retriever.release();
                } catch (RuntimeException e4) {
                    CameraLogger.e(TAG, "Ignore failures while cleaning up.");
                }
            }
            return bitmap;
        } finally {
            try {
                retriever.release();
            } catch (RuntimeException e5) {
                CameraLogger.e(TAG, "Ignore failures while cleaning up.");
            }
        }
    }

    public static Bitmap createVideoThumbnail(Context context, Uri uri) throws IOException {
        Bitmap bitmap = null;
        MediaMetadataRetriever retriever = new MediaMetadataRetriever();
        try {
            try {
                retriever.setDataSource(context, uri);
                bitmap = retriever.getFrameAtTime(-1L);
            } catch (IllegalArgumentException e) {
                CameraLogger.e(TAG, "Assume this is a corrupt video file.");
                try {
                    retriever.release();
                } catch (RuntimeException e2) {
                    CameraLogger.e(TAG, "Ignore failures while cleaning up.");
                }
            } catch (RuntimeException e3) {
                CameraLogger.e(TAG, "Assume this is a corrupt video file.");
                try {
                    retriever.release();
                } catch (RuntimeException e4) {
                    CameraLogger.e(TAG, "Ignore failures while cleaning up.");
                }
            }
            return bitmap;
        } finally {
            try {
                retriever.release();
            } catch (RuntimeException e5) {
                CameraLogger.e(TAG, "Ignore failures while cleaning up.");
            }
        }
    }

    private static int computeSampleSize(BitmapFactory.Options options, int minSideLength, int maxNumOfPixels) {
        int initialSize = computeInitialSampleSize(options, minSideLength, maxNumOfPixels);
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

    private static int computeInitialSampleSize(BitmapFactory.Options options, int minSideLength, int maxNumOfPixels) {
        double w = options.outWidth;
        double h = options.outHeight;
        int lowerBound = maxNumOfPixels == -1 ? 1 : (int) Math.ceil(Math.sqrt((w * h) / maxNumOfPixels));
        int upperBound = minSideLength == -1 ? 128 : (int) Math.min(Math.floor(w / minSideLength), Math.floor(h / minSideLength));
        if (upperBound >= lowerBound) {
            if (maxNumOfPixels == -1 && minSideLength == -1) {
                return 1;
            }
            if (minSideLength != -1) {
                return upperBound;
            }
            return lowerBound;
        }
        return lowerBound;
    }
}
