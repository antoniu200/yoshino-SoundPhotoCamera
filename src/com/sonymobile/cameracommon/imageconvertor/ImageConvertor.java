package com.sonymobile.cameracommon.imageconvertor;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.YuvImage;
import com.sonymobile.cameracommon.opengl.FrameData;
import java.nio.ByteBuffer;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

@TargetApi(19)
/* loaded from: classes.dex */
public class ImageConvertor {
    public static final String TAG = "ImageConvertor";

    private static final native int nativeConvertArgb8888ToYvu420Sp(int i, int i2, int[] iArr, byte[] bArr);

    private static final native int nativeCropYvu420Sp(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, byte[] bArr2);

    private static final native int nativeDecodeJpegFileToYvu420Sp(String str, int i, int i2, byte[] bArr, int i3, boolean z);

    private static final native int nativeDecodeJpegToYvu420Sp(byte[] bArr, int i, int i2, int i3, byte[] bArr2, int i4, boolean z);

    private static final native int nativeRotateByteArrayYuv420Left90(byte[] bArr, int i, int i2, byte[] bArr2);

    private static final native int nativeRotateByteArrayYuv420Right90(byte[] bArr, int i, int i2, byte[] bArr2);

    private static final native int nativeRotateByteBufferYuv420Left90(ByteBuffer byteBuffer, int i, int i2, ByteBuffer byteBuffer2);

    private static final native int nativeRotateByteBufferYuv420Right90(ByteBuffer byteBuffer, int i, int i2, ByteBuffer byteBuffer2);

    private static final native int nativeShrinkByteArrayYvu420Sp(byte[] bArr, int i, int i2, byte[] bArr2, int i3);

    private static final native int nativeShrinkByteBufferYvu420Sp(ByteBuffer byteBuffer, int i, int i2, ByteBuffer byteBuffer2, int i3);

    private static final native int nativeSplitYvu420Sp(int i, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i3);

    static {
        System.loadLibrary("cameracommonimageconvertor");
    }

    public static class ImageConvertorException extends RuntimeException {
        public ImageConvertorException(String msg) {
            super(msg);
        }
    }

    public static final void splitYvu420Sp(int frameWidth, int frameHeight, byte[] srcYvu, byte[] dstY, byte[] dstV, byte[] dstU, int sampleSize) {
        int ret = nativeSplitYvu420Sp(frameWidth, frameHeight, srcYvu, dstY, dstV, dstU, sampleSize);
        if (ret != 0) {
            throw new ImageConvertorException("Error Code Returned : " + ret);
        }
    }

    public static final void convertArgb8888ToYvu420Sp(int frameWidth, int frameHeight, int[] srcArgb, byte[] dstYvu) {
        int ret = nativeConvertArgb8888ToYvu420Sp(frameWidth, frameHeight, srcArgb, dstYvu);
        if (ret != 0) {
            throw new ImageConvertorException("Error Code Returned : " + ret);
        }
    }

    public enum ShrinkRatio {
        ONE(1),
        HALF(2),
        QUARTER(4),
        ONE_EIGHTH(8);

        public final int shrinkSize;

        ShrinkRatio(int ratio) {
            this.shrinkSize = ratio;
        }
    }

    public static final void shrinkYvu420Sp(ByteBuffer srcYvu, int frameWidth, int frameHeight, ByteBuffer dstYvu, ShrinkRatio shrinkRatio) {
        int ret = nativeShrinkByteBufferYvu420Sp(srcYvu, frameWidth, frameHeight, dstYvu, shrinkRatio.shrinkSize);
        if (ret != 0) {
            throw new ImageConvertorException("Error Code Returned : " + ret);
        }
    }

    public static final void shrinkYvu420Sp(byte[] srcYvu, int frameWidth, int frameHeight, byte[] dstYvu, ShrinkRatio shrinkRatio) {
        int ret = nativeShrinkByteArrayYvu420Sp(srcYvu, frameWidth, frameHeight, dstYvu, shrinkRatio.shrinkSize);
        if (ret != 0) {
            throw new ImageConvertorException("Error Code Returned : " + ret);
        }
    }

    public static final void decodeJpegToYvu420Sp(byte[] srcJpeg, int frameWidth, int frameHeight, byte[] dstYvu, boolean withRotation) {
        int ret = nativeDecodeJpegToYvu420Sp(srcJpeg, srcJpeg.length, frameWidth, frameHeight, dstYvu, dstYvu.length, withRotation);
        if (ret != 0) {
            throw new ImageConvertorException("Error Code Returned : " + ret);
        }
    }

    public static final void decodeJpegToYvu420Sp(String srcJpegFilePath, int frameWidth, int frameHeight, byte[] dstYvu, boolean withRotation) {
        int ret = nativeDecodeJpegFileToYvu420Sp(srcJpegFilePath, frameWidth, frameHeight, dstYvu, dstYvu.length, withRotation);
        if (ret != 0) {
            throw new ImageConvertorException("Error Code Returned : " + ret);
        }
    }

    public static Bitmap convertYuvToBitmap(YuvImage yuvImage) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        return convertYuvToBitmap(yuvImage, options);
    }

    public static Bitmap convertYuvToBitmap(YuvImage yuvImage, ShrinkRatio shrinkRatio) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        options.inSampleSize = shrinkRatio.shrinkSize;
        return convertYuvToBitmap(yuvImage, options);
    }

    private static Bitmap convertYuvToBitmap(YuvImage yuvImage, BitmapFactory.Options options) {
        final int width  = yuvImage.getWidth();
        final int height = yuvImage.getHeight();

        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        try {
            Rect rect = new Rect(0, 0, width, height);
            yuvImage.compressToJpeg(rect, 85, baos);
            byte[] jpeg = baos.toByteArray();
            return BitmapFactory.decodeByteArray(jpeg, 0, jpeg.length, options);
        } finally {
            try {
                baos.close();
            } catch (IOException ignored) {}
        }
    }

    public static YuvImage convertBitmapToYuv(Bitmap bmp) {
        int width = bmp.getWidth();
        int height = bmp.getHeight();
        int[] pixels = new int[width * height];
        byte[] yuvBytes = new byte[((width * height) * 3) / 2];
        bmp.getPixels(pixels, 0, width, 0, 0, width, height);
        convertArgb8888ToYvu420Sp(width, height, pixels, yuvBytes);
        YuvImage yuvImage = new YuvImage(yuvBytes, 17, width, height, null);
        return yuvImage;
    }

    public static YuvImage cropYuvImage(YuvImage orgImage, Rect cropRect) {
        if (orgImage == null || cropRect == null) {
            return null;
        }
        int cropWidth = cropRect.width();
        int cropHeight = cropRect.height();
        int cropX = cropRect.left;
        int cropY = cropRect.top;
        if (cropX % 2 != 0) {
            cropX++;
            cropWidth--;
        }
        if (cropWidth % 2 != 0) {
            cropWidth++;
        }
        if (cropY % 2 != 0) {
            cropY++;
            cropHeight--;
        }
        if (cropHeight % 2 != 0) {
            cropHeight++;
        }
        int orgWidth = orgImage.getWidth();
        int orgHeight = orgImage.getHeight();
        if (cropWidth <= 0 || cropX >= orgWidth || cropHeight <= 0 || cropY >= orgHeight) {
            return null;
        }
        if (cropX < 0) {
            cropWidth += cropX;
            cropX = 0;
        }
        if (cropX + cropWidth > orgWidth) {
            cropWidth = orgWidth - cropX;
        }
        if (cropY < 0) {
            cropHeight += cropY;
            cropY = 0;
        }
        if (cropY + cropHeight > orgHeight) {
            cropHeight = orgHeight - cropY;
        }
        byte[] orgYuvByteArray = orgImage.getYuvData();
        byte[] dstYuvByteArray = new byte[((cropWidth * cropHeight) * 3) / 2];
        int ret = nativeCropYvu420Sp(orgYuvByteArray, orgWidth, orgHeight, cropX, cropY, cropWidth, cropHeight, dstYuvByteArray);
        if (ret != 0) {
            throw new ImageConvertorException("Error Code Returned : " + ret);
        }
        return new YuvImage(dstYuvByteArray, orgImage.getYuvFormat(), cropWidth, cropHeight, null);
    }

    public static FrameData cropYuvImage(FrameData orgImage, Rect cropRect) {
        FrameData dstFrameData = null;
        if (orgImage != null && cropRect != null) {
            int cropWidth = cropRect.width();
            int cropHeight = cropRect.height();
            int cropX = cropRect.left;
            int cropY = cropRect.top;
            if (cropX % 2 != 0) {
                cropX++;
                cropWidth--;
            }
            if (cropWidth % 2 != 0) {
                cropWidth++;
            }
            if (cropY % 2 != 0) {
                cropY++;
                cropHeight--;
            }
            if (cropHeight % 2 != 0) {
                cropHeight++;
            }
            int orgWidth = orgImage.getFrameWidth();
            int orgHeight = orgImage.getFrameHeight();
            if (cropWidth > 0 && cropX < orgWidth && cropHeight > 0 && cropY < orgHeight) {
                if (cropX < 0) {
                    cropWidth += cropX;
                    cropX = 0;
                }
                if (cropX + cropWidth > orgWidth) {
                    cropWidth = orgWidth - cropX;
                }
                if (cropY < 0) {
                    cropHeight += cropY;
                    cropY = 0;
                }
                if (cropY + cropHeight > orgHeight) {
                    cropHeight = orgHeight - cropY;
                }
                dstFrameData = new FrameData(FrameData.ImageFormat.YVU420_SEMIPLANAR, cropWidth, cropHeight);
                int ret = nativeCropYvu420Sp(orgImage.getByteArrayYvu(), orgWidth, orgHeight, cropX, cropY, cropWidth, cropHeight, dstFrameData.getByteArrayYvu());
                if (ret != 0) {
                    throw new ImageConvertorException("Error Code Returned : " + ret);
                }
            }
        }
        return dstFrameData;
    }

    public static YuvImage rotateYuv420(YuvImage orgImage) {
        if (orgImage == null) {
            return null;
        }
        byte[] yuv = rotateYuv420Left90WithReversedLR(orgImage.getYuvData(), orgImage.getWidth(), orgImage.getHeight());
        return new YuvImage(yuv, 17, orgImage.getHeight(), orgImage.getWidth(), null);
    }

    public static final void rotateYuv420Right90(ByteBuffer srcByteBuffer, int srcWidth, int srcHeight, ByteBuffer dstByteBuffer) {
        int ret = nativeRotateByteBufferYuv420Right90(srcByteBuffer, srcWidth, srcHeight, dstByteBuffer);
        if (ret != 0) {
            throw new ImageConvertorException("Error Code Returned : " + ret);
        }
    }

    public static final void rotateYuv420Right90(byte[] srcByteArray, int srcWidth, int srcHeight, byte[] dstByteArray) {
        int ret = nativeRotateByteArrayYuv420Right90(srcByteArray, srcWidth, srcHeight, dstByteArray);
        if (ret != 0) {
            throw new ImageConvertorException("Error Code Returned : " + ret);
        }
    }

    public static final void rotateYuv420Left90(ByteBuffer srcByteBuffer, int srcWidth, int srcHeight, ByteBuffer dstByteBuffer) {
        int ret = nativeRotateByteBufferYuv420Left90(srcByteBuffer, srcWidth, srcHeight, dstByteBuffer);
        if (ret != 0) {
            throw new ImageConvertorException("Error Code Returned : " + ret);
        }
    }

    public static final void rotateYuv420Left90(byte[] srcByteArray, int srcWidth, int srcHeight, byte[] dstByteArray) {
        int ret = nativeRotateByteArrayYuv420Left90(srcByteArray, srcWidth, srcHeight, dstByteArray);
        if (ret != 0) {
            throw new ImageConvertorException("Error Code Returned : " + ret);
        }
    }

    public static final byte[] rotateYuv420Left90WithReversedLR(byte[] data, int srcWidth, int srcHeight) {
        byte[] yuv = new byte[data.length];
        int i = 0;
        for (int x = srcWidth; x > 0; x--) {
            for (int y = srcHeight; y > 0; y--) {
                yuv[i] = data[((y * srcWidth) - (srcWidth - x)) - 1];
                i++;
            }
        }
        int offset = srcWidth * srcHeight;
        int i2 = offset;
        int yuvHeight = srcHeight / 2;
        for (int x2 = srcWidth; x2 > 0; x2 -= 2) {
            int xPos = srcWidth - x2;
            for (int y2 = yuvHeight; y2 > 0; y2--) {
                int yPos = offset + (y2 * srcWidth);
                yuv[i2] = data[(yPos - xPos) - 2];
                int i3 = i2 + 1;
                yuv[i3] = data[(yPos - xPos) - 1];
                i2 = i3 + 1;
            }
        }
        return yuv;
    }
}