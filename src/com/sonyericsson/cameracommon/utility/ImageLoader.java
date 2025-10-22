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

    public Bitmap load() throws Throwable {
        InputStream st = null;
        Bitmap result = null;
        try {
            try {
                InputStream st2 = this.mImageData != null ? new ByteArrayInputStream(this.mImageData) : ContentResolverUtil.crOpenInputStream(this.mContext, this.mUri);
                if (st2 != null) {
                    try {
                        calcBounds(st2, this.mOption);
                        this.mOption.inSampleSize = calcRatio(this.mOption, this.mOption.inSampleSize, 1025);
                        st2.close();
                    } catch (FileNotFoundException e) {
                        st = st2;
                        CameraLogger.e(TAG, "File not found:" + this.mUri);
                        if (st != null) {
                            try {
                                st.close();
                            } catch (Exception e2) {
                                CameraLogger.e(TAG, "Close stream failed:" + e2.toString(), e2);
                            }
                        }
                        return result;
                    } catch (InvalidObjectException e3) {
                        e = e3;
                        st = st2;
                        CameraLogger.e(TAG, "Load full size error:" + e);
                        if (st != null) {
                            try {
                                st.close();
                            } catch (Exception e4) {
                                CameraLogger.e(TAG, "Close stream failed:" + e4.toString(), e4);
                            }
                        }
                        return result;
                    } catch (IOException e5) {
                        st = st2;
                        CameraLogger.e(TAG, "Close failed:" + this.mUri);
                        if (st != null) {
                            try {
                                st.close();
                            } catch (Exception e6) {
                                CameraLogger.e(TAG, "Close stream failed:" + e6.toString(), e6);
                            }
                        }
                        return result;
                    } catch (IllegalArgumentException e7) {
                        st = st2;
                        CameraLogger.e(TAG, "Maybe File access error.");
                        if (st != null) {
                            try {
                                st.close();
                            } catch (Exception e8) {
                                CameraLogger.e(TAG, "Close stream failed:" + e8.toString(), e8);
                            }
                        }
                        return result;
                    } catch (Throwable th) {
                        th = th;
                        st = st2;
                        if (st != null) {
                            try {
                                st.close();
                            } catch (Exception e9) {
                                CameraLogger.e(TAG, "Close stream failed:" + e9.toString(), e9);
                            }
                        }
                        throw th;
                    }
                }
                st = this.mImageData != null ? new ByteArrayInputStream(this.mImageData) : ContentResolverUtil.crOpenInputStream(this.mContext, this.mUri);
                if (st != null) {
                    result = loadFullSize(st, this.mOption);
                    st.close();
                }
                if (st != null) {
                    try {
                        st.close();
                    } catch (Exception e10) {
                        CameraLogger.e(TAG, "Close stream failed:" + e10.toString(), e10);
                    }
                }
            } catch (FileNotFoundException e11) {
            } catch (InvalidObjectException e12) {
                e = e12;
            } catch (IOException e13) {
            } catch (IllegalArgumentException e14) {
            }
            return result;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public Bitmap load(int outputWidth, int outputHeight) throws IOException {
        InputStream st = null;
        Bitmap result = null;
        try {
            try {
                try {
                    try {
                        st = this.mImageData != null ? new ByteArrayInputStream(this.mImageData) : ContentResolverUtil.crOpenInputStream(this.mContext, this.mUri);
                        if (st != null) {
                            this.mOption.outWidth = outputWidth;
                            this.mOption.outHeight = outputHeight;
                            result = loadFullSize(st, this.mOption);
                            st.close();
                        }
                        if (st != null) {
                            try {
                                st.close();
                            } catch (Exception e) {
                                CameraLogger.e(TAG, "Close stream failed:" + e.toString(), e);
                            }
                        }
                    } catch (InvalidObjectException e2) {
                        CameraLogger.e(TAG, "Load full size error:" + e2);
                        if (st != null) {
                            try {
                                st.close();
                            } catch (Exception e3) {
                                CameraLogger.e(TAG, "Close stream failed:" + e3.toString(), e3);
                            }
                        }
                    } catch (IllegalArgumentException e4) {
                        CameraLogger.e(TAG, "Maybe File access error.");
                        if (st != null) {
                            try {
                                st.close();
                            } catch (Exception e5) {
                                CameraLogger.e(TAG, "Close stream failed:" + e5.toString(), e5);
                            }
                        }
                    }
                } catch (FileNotFoundException e6) {
                    CameraLogger.e(TAG, "File not found:" + this.mUri);
                    if (st != null) {
                        try {
                            st.close();
                        } catch (Exception e7) {
                            CameraLogger.e(TAG, "Close stream failed:" + e7.toString(), e7);
                        }
                    }
                }
            } catch (IOException e8) {
                CameraLogger.e(TAG, "Close failed:" + this.mUri);
                if (st != null) {
                    try {
                        st.close();
                    } catch (Exception e9) {
                        CameraLogger.e(TAG, "Close stream failed:" + e9.toString(), e9);
                    }
                }
            }
            return result;
        } catch (Throwable th) {
            if (st != null) {
                try {
                    st.close();
                } catch (Exception e10) {
                    CameraLogger.e(TAG, "Close stream failed:" + e10.toString(), e10);
                }
            }
            throw th;
        }
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