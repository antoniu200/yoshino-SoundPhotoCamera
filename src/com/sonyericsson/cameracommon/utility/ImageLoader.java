package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtil;
import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import com.sonyericsson.cameracommon.utility.CameraLogger;

/* loaded from: classes.dex */
public class ImageLoader {
    private static final int FIRST_REDUCE_RATIO_FULL_IMG = 2;
    private static final int FULL_SIZE_MAX_LENGTH = 1025;
    public static final String TAG = "ImageLoader";
    private final Context mContext;
    private final byte[] mImageData;
    private final BitmapFactory.Options mOption;
    private final int mOrientation;
    private final Uri mUri;

    public ImageLoader(Context context, Uri uri, int orientation) {
        this.mContext = context;
        this.mUri = uri;
        this.mImageData = null;
        this.mOrientation = orientation;
        this.mOption = new BitmapFactory.Options();
    }

    public ImageLoader(Context context, byte[] imageData, int orientation) {
        this.mContext = context;
        this.mUri = null;
        this.mImageData = imageData;
        this.mOrientation = orientation;
        this.mOption = new BitmapFactory.Options();
    }

    public Bitmap load() {
        InputStream st = null;
        Bitmap result = null;

        try {
            // 1) First pass: bounds only (to compute inSampleSize)
            if (mImageData != null) {
                st = new ByteArrayInputStream(mImageData);
            } else {
                st = ContentResolverUtil.crOpenInputStream(mContext, mUri); 
            }
            if (st != null) {
                calcBounds(st, mOption); // sets inJustDecodeBounds, inSampleSize, preferred config
                // Compute final sample size limited by FULL_SIZE_MAX_LENGTH (0x401)
                mOption.inSampleSize = calcRatio(mOption, mOption.inSampleSize, FULL_SIZE_MAX_LENGTH);
                try {
                    st.close();
                } catch (Exception closeIgnored) {
                    /* ignore */
                }
                st = null;
            }

            // 2) Second pass: decode full (with rotation/ARGB_8888) using computed options
            if (mImageData != null) {
                st = new ByteArrayInputStream(mImageData);
            } else {
                st = ContentResolverUtil.crOpenInputStream(mContext, mUri); 
            }
            if (st != null) {
                result = loadFullSize(st, mOption);
                try {
                    st.close();
                } catch (Exception closeIgnored) {
                    /* ignore */
                }
                st = null;
            }

        } catch (InvalidObjectException e) {
            CameraLogger.e(TAG, "Load full size error:" + e);
        } catch (FileNotFoundException e) {
            CameraLogger.e(TAG, "File not found:" + mUri);
        } catch (IllegalArgumentException e) {
            CameraLogger.e(TAG, "Maybe File access error.");
        } finally {
            if (st != null) {
                try {
                    st.close();
                } catch (Exception e) {
                    CameraLogger.e(TAG, "Close stream failed: " + e);
                }
                st = null;
            }
        }
        return result;
    }

    public Bitmap load(int outputWidth, int outputHeight) {
        InputStream st = null;
        Bitmap result = null;

        try {
            if (mImageData != null) {
                st = new ByteArrayInputStream(mImageData);
            } else {
                st = ContentResolverUtil.crOpenInputStream(mContext, mUri); 
            }

            if (st != null) {
                // For this overload, smali sets desired outWidth/outHeight before loadFullSize
                mOption.outWidth = outputWidth;
                mOption.outHeight = outputHeight;

                result = loadFullSize(st, mOption);
                try {
                    st.close();
                } catch (Exception closeIgnored) { /* ignore */ }
                st = null;
            }

        } catch (InvalidObjectException e) {
            CameraLogger.e("ImageLoader", "Load full size error:" + e);
        } catch (FileNotFoundException e) {
            CameraLogger.e("ImageLoader", "File not found:" + mUri);
        } catch (IllegalArgumentException e) {
            CameraLogger.e("ImageLoader", "Maybe File access error.");
        } finally {
            if (st != null) {
                try {
                    st.close();
                } catch (Exception e) {
                    CameraLogger.e(TAG, "Close stream failed: " + e);
                }
                st = null;
            }
        }
        return result;
    }

    private void calcBounds(InputStream st, BitmapFactory.Options opt) throws InvalidObjectException, FileNotFoundException {
        opt.inSampleSize = 2;
        opt.inJustDecodeBounds = true;
        opt.inPreferredConfig = Bitmap.Config.RGB_565;
        Bitmap temp = decodeStream(st, opt);
        if (temp != null && !temp.isRecycled()) {
            temp.recycle();
        }
        if (opt.outWidth == -1 || opt.outHeight == -1) {
            CameraLogger.e(TAG, "Bitmap read error");
            throw new InvalidObjectException("Failed to calculate bounds of bitmap");
        }
    }

    private Bitmap loadFullSize(InputStream st, BitmapFactory.Options opt) throws InvalidObjectException, FileNotFoundException {
        opt.inJustDecodeBounds = false;
        opt.inDither = false;
        opt.inPreferredConfig = Bitmap.Config.ARGB_8888;
        Bitmap bmp = decodeStream(st, opt);
        if (bmp == null) {
            CameraLogger.e(TAG, "loadFullSize: Decode read error");
            throw new InvalidObjectException("Failed to decode full size image");
        }
        CameraLogger.showOrientation(TAG, "loadFullSize: mOrientation", this.mOrientation);
        if (this.mOrientation != 0) {
            Matrix rotate = new Matrix();
            float centerX = bmp.getWidth() / 2.0f;
            float centerY = bmp.getHeight() / 2.0f;
            rotate.setRotate(this.mOrientation, centerX, centerY);
            Bitmap bmp2 = Bitmap.createBitmap(bmp, 0, 0, bmp.getWidth(), bmp.getHeight(), rotate, false);
            bmp.recycle();
            Bitmap bmp3 = bmp2.copy(Bitmap.Config.ARGB_8888, false);
            bmp2.recycle();
            return bmp3;
        }
        return bmp;
    }

    private Bitmap decodeStream(InputStream st, BitmapFactory.Options opt) throws FileNotFoundException {
        Rect padding = new Rect(0, 0, 0, 0);
        Bitmap fullbmp = BitmapFactory.decodeStream(st, padding, opt);
        return fullbmp;
    }

    private int calcRatio(BitmapFactory.Options opt, int firstRatio, int limit) {
        int w = opt.outWidth * firstRatio;
        int h = opt.outHeight * firstRatio;
        int ratioW = ((w + limit) - 1) / limit;
        int ratioH = ((h + limit) - 1) / limit;
        int ratio = Math.max(ratioH, ratioW);
        if (ratio == 0) {
            return 1;
        }
        if (ratio > 1 && (w / ratio > limit || h / ratio > limit)) {
            ratio--;
        }
        return ratio;
    }
}
