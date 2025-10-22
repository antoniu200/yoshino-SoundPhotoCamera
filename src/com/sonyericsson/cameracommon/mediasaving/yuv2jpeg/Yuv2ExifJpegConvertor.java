package com.sonyericsson.cameracommon.mediasaving.yuv2jpeg;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.core.view.ViewCompat;
import com.sonyericsson.cameracommon.mediasaving.yuv2jpeg.ExifInfo;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.System;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Yuv2ExifJpegConvertor {
    private static final int EXIF_BYTE_ORDER_OFFSET = 11;
    private static final int EXIF_THUMBNAIL_HEIGHT = 120;
    private static final int EXIF_THUMBNAIL_WIDTH = 160;
    public static final int HEADER_MARGIN = 1024;
    private static final int MARKER_SIZE = 2;
    private static final int M_DHT = 196;
    private static final int M_DQT = 219;
    private static final int M_MARKER = 255;
    private static final int M_SOI = 216;
    private static final int M_SOS = 218;
    private static final int SEGMENT_LENGTH_AREA_SIZE = 2;
    private static final int SIZE_OF_ONE_BYTE = 8;
    public static final String TAG = "Yuv2ExifJpegConvertor";
    private static final byte MARKER_CODE = -1;
    private static final byte[] SOI_MARKER = {MARKER_CODE, -40};
    private static final byte[] APP0_MARKER = {MARKER_CODE, -32};
    private static final byte[] APP1_MARKER = {MARKER_CODE, -31};
    private static final byte[] EXIF_CODE = {69, 120, 105, 102, 0, 0};
    private static final byte[] EXIF_BYTE_ORDER_BE = {77, 77};
    private static final byte[] EXIF_BYTE_ORDER_LE = {73, 73};

    public static void preload() {
    }

    public static byte[] convertBitmapToExifJpeg(Bitmap bitmap, ExifInfo exifInfo) {
        if (bitmap == null) {
            return null;
        }
        byte[] plainJpeg = convertBitmapToPlainJpeg(bitmap);
        return addExifToPlainJpeg(plainJpeg, exifInfo);
    }

    public static byte[] convertBitmapToPlainJpeg(Bitmap bitmap) {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, baos);
        return baos.toByteArray();
    }

    public static byte[] addExifToPlainJpeg(byte[] plainJpeg, ExifInfo exifInfo) throws IOException {
        if (plainJpeg == null) {
            return null;
        }
        byte[] thumbnailData = getExifThumbnail(plainJpeg, exifInfo);
        ByteArrayOutputStream dstOs = new ByteArrayOutputStream();
        int exifHeaderLength = addExifHeader(dstOs, exifInfo, thumbnailData);
        if (exifHeaderLength > 0) {
            try {
                appendOnlyImageFromJpegData(dstOs, plainJpeg, plainJpeg.length);
                return dstOs.toByteArray();
            } catch (IntegrationMakerException e) {
                CameraLogger.e(TAG, "Failed to append jpeg data.", e);
                return null;
            }
        }
        CameraLogger.e(TAG, "convertYuvToExifJpeg():[Add EXIF header failed.]");
        return null;
    }

    public static int integrateJfif(byte[] srcJpegData, byte[] dstJpegData) throws IntegrationMakerException {
        if (srcJpegData == null || srcJpegData.length < 4) {
            throw new IntegrationMakerException("src is null/too short");
        }
        if (dstJpegData == null) {
            throw new IntegrationMakerException("dst is null");
        }

        // Verify SOI
        if ((srcJpegData[0] & 0xFF) != 0xFF || (srcJpegData[1] & 0xFF) != 0xD8) {
            throw new IntegrationMakerException("src: not SOI");
        }

        // Locate APP0 (JFIF) in src
        int srcPos = 2;
        int app0Start = -1;
        int app0Total = 0;
        while (srcPos + 4 <= srcJpegData.length) {
            if ((srcJpegData[srcPos] & 0xFF) != 0xFF) {
                // Not a marker -> malformed
                break;
            }
            int marker = srcJpegData[srcPos + 1] & 0xFF;
            if (marker == 0xD9) { // EOI
                break;
            }
            if (marker == 0xDA) { // SOS - stop scanning headers
                break;
            }
            // Read segment length (big-endian) after marker
            if (srcPos + 4 > srcJpegData.length) break;
            int segLen = ((srcJpegData[srcPos + 2] & 0xFF) << 8) | (srcJpegData[srcPos + 3] & 0xFF);
            if (segLen < 2 || srcPos + 2 + 2 + (segLen - 2) > srcJpegData.length) {
                throw new IntegrationMakerException("src: invalid segment length");
            }
            if (marker == 0xE0) { // APP0
                // Check "JFIF\0"
                if (segLen >= 7 && srcPos + 4 + 5 <= srcJpegData.length) {
                    boolean jfif = (srcJpegData[srcPos + 4] == 'J'
                            && srcJpegData[srcPos + 5] == 'F'
                            && srcJpegData[srcPos + 6] == 'I'
                            && srcJpegData[srcPos + 7] == 'F'
                            && srcJpegData[srcPos + 8] == 0);
                    if (jfif) {
                        app0Start = srcPos;
                        app0Total = 2 /*marker*/ + 2 /*len field*/ + (segLen - 2);
                        break;
                    }
                }
            }
            srcPos += 2 /*marker*/ + 2 /*len*/ + (segLen - 2);
        }
        if (app0Start < 0 || app0Total <= 0) {
            throw new IntegrationMakerException("src: JFIF APP0 not found");
        }

        // Prepare to insert APP0 into dst after APP0/APP1 (if present)
        if (dstJpegData.length < 4) {
            throw new IntegrationMakerException("dst too small");
        }
        if ((dstJpegData[0] & 0xFF) != 0xFF || (dstJpegData[1] & 0xFF) != 0xD8) {
            throw new IntegrationMakerException("dst: not SOI");
        }

        // Use the class' helper when available; otherwise do a local skip.
        int insertPos;
        try {
            insertPos = skipApp0OrApp1Marker(dstJpegData);
            if (insertPos <= 0) {
                // Fallback to local scan
                throw new IllegalStateException();
            }
        } catch (Throwable ignore) {
            // Local scan: skip APP0/APP1 immediately following SOI
            int p = 2;
            while (p + 4 <= dstJpegData.length && (dstJpegData[p] & 0xFF) == 0xFF) {
                int mk = dstJpegData[p + 1] & 0xFF;
                if (mk != 0xE0 && mk != 0xE1) break; // only APP0/APP1
                int len = ((dstJpegData[p + 2] & 0xFF) << 8) | (dstJpegData[p + 3] & 0xFF);
                if (len < 2) break;
                int total = 2 + 2 + (len - 2);
                if (p + total > dstJpegData.length) break;
                p += total;
            }
            insertPos = p;
        }

        // If destination already has APP0 JFIF at the first slot, don't duplicate; replace it
        boolean dstHasApp0 = false;
        if (insertPos > 2) {
            // Check first header after SOI
            int mk = dstJpegData[2 + 1] & 0xFF;
            if (mk == 0xE0) {
                // It has APP0 – prefer replacing the first header region [2 .. 2 + existingTotal)
                int len = ((dstJpegData[2 + 2] & 0xFF) << 8) | (dstJpegData[2 + 3] & 0xFF);
                if (len >= 2) {
                    int total = 2 + 2 + (len - 2);
                    // Replace: copy SOI, then src APP0, then rest after the original APP0
                    int needed = 2 + app0Total + (dstJpegData.length - (2 + total));
                    if (needed > dstJpegData.length) {
                        throw new IntegrationMakerException("dst buffer too small for replace");
                    }
                    // Shift/copy into-place by using a temp array
                    byte[] tmp = new byte[needed];
                    System.arraycopy(dstJpegData, 0, tmp, 0, 2);
                    System.arraycopy(srcJpegData, app0Start, tmp, 2, app0Total);
                    System.arraycopy(dstJpegData, 2 + total, tmp, 2 + app0Total, dstJpegData.length - (2 + total));
                    System.arraycopy(tmp, 0, dstJpegData, 0, needed);
                    return needed;
                }
            }
        }

        // Insert after existing APP0/APP1 block (default)
        int needed = insertPos + app0Total + (dstJpegData.length - insertPos);
        if (needed > dstJpegData.length) {
            // The caller typically passes a pre-sized buffer. If not enough, signal error.
            throw new IntegrationMakerException("dst buffer too small");
        }
        byte[] tmp = new byte[needed];
        System.arraycopy(dstJpegData, 0, tmp, 0, insertPos);
        System.arraycopy(srcJpegData, app0Start, tmp, insertPos, app0Total);
        System.arraycopy(dstJpegData, insertPos, tmp, insertPos + app0Total, dstJpegData.length - insertPos);
        System.arraycopy(tmp, 0, dstJpegData, 0, needed);
        return needed;
    }

    public static int addExifHeader(OutputStream outputStream, ExifInfo exifInfo, byte[] thumbnailData) throws IOException {
        ExifOption exifOption = ExifOption.create(exifInfo, thumbnailData);
        byte[] buffer = new byte[ExifFactory.getLength(exifOption) + ((int) exifOption.mThumbnailDataLength)];
        int length = ExifFactory.generate(buffer, exifOption);
        if (length > 0) {
            try {
                outputStream.write(SOI_MARKER);
                outputStream.write(buffer, 0, length);
                outputStream.flush();
                return length + SOI_MARKER.length;
            } catch (IOException e) {
                CameraLogger.e(TAG, "Add exif header failed.", e);
                return -1;
            }
        }
        return length;
    }

    public static void appendOnlyImageFromJpegData(OutputStream outputStream, byte[] jpegByte, int length) throws IntegrationMakerException, IOException {
        int index = skipApp0OrApp1Marker(jpegByte);
        if (index > 0) {
            int dqtNum = getSegmentNum(jpegByte, (byte) -37);
            int dhtNum = getSegmentNum(jpegByte, (byte) -60);
            if (dqtNum > 1 || dhtNum > 1) {
                try {
                    appendImageInExifFormat(jpegByte, index, outputStream);
                    outputStream.flush();
                    return;
                } catch (IOException e) {
                    CameraLogger.e(TAG, "Failed to append image data in exif format.", e);
                    return;
                }
            }
            try {
                outputStream.write(jpegByte, index, length - index);
                outputStream.flush();
            } catch (IOException e2) {
                CameraLogger.e(TAG, "Append image data failed.", e2);
            }
        }
    }

    private static int getSegmentNum(byte[] inputByte, byte marker) {
        if (inputByte == null || inputByte.length < 2 || inputByte[0] != -1 || inputByte[1] != -40) {
            CameraLogger.e(TAG, "Invalid SOI marker.");
            return -1;
        }
        int byteCnt = 0 + 2;
        int segmentNum = 0;
        while (byteCnt < inputByte.length - 3) {
            if (inputByte[byteCnt] != -1) {
                CameraLogger.e(TAG, "Invalid marker identifier code: " + Integer.toHexString(inputByte[byteCnt] & MARKER_CODE));
                return -1;
            }
            if (inputByte[byteCnt + 1] != -38) {
                if (inputByte[byteCnt + 1] == marker) {
                    segmentNum++;
                }
                int segmentLength = getSegmentLength(inputByte, byteCnt);
                byteCnt += segmentLength + 2;
            } else {
                return segmentNum;
            }
        }
        return segmentNum;
    }

    private static void appendImageInExifFormat(byte[] inputByte, int indexNextToExif, OutputStream outputStream) throws IntegrationMakerException, IOException {
        int byteCnt = indexNextToExif;
        boolean isDQTDone = false;
        boolean isDHTDOne = false;
        while (byteCnt < inputByte.length - 3) {
            if (inputByte[byteCnt] != -1) {
                throw new IntegrationMakerException("Invalid marker identifier code: " + Integer.toHexString(inputByte[byteCnt] & MARKER_CODE));
            }
            int segmentLength = getSegmentLength(inputByte, byteCnt);
            if (inputByte[byteCnt + 1] == -38) {
                outputStream.write(inputByte, byteCnt, inputByte.length - byteCnt);
                return;
            }
            if (inputByte[byteCnt + 1] == -37) {
                if (!isDQTDone) {
                    appendInOneSegment(inputByte, byteCnt, outputStream);
                    isDQTDone = true;
                }
            } else if (inputByte[byteCnt + 1] == -60) {
                if (!isDHTDOne) {
                    appendInOneSegment(inputByte, byteCnt, outputStream);
                    isDHTDOne = true;
                }
            } else {
                outputStream.write(inputByte, byteCnt, segmentLength + 2);
            }
            byteCnt += segmentLength + 2;
        }
    }

    private static void appendInOneSegment(byte[] inputByte, int indexTargetSegment, OutputStream outputStream) throws IntegrationMakerException, IOException {
        int byteCnt = indexTargetSegment;
        if (inputByte == null || byteCnt + 1 > inputByte.length) {
            throw new IntegrationMakerException("Invalid Segment.");
        }
        byte targetMarker = inputByte[byteCnt + 1];
        List<SegmentInfo> segmentInfoList = new ArrayList<>();
        while (byteCnt < inputByte.length - 3) {
            if (inputByte[byteCnt] != -1) {
                throw new IntegrationMakerException("Invalid marker identifier code: " + Integer.toHexString(inputByte[byteCnt] & MARKER_CODE));
            }
            if (inputByte[byteCnt + 1] == -38) {
                break;
            }
            int segmentLength = getSegmentLength(inputByte, byteCnt);
            if (inputByte[byteCnt + 1] == targetMarker) {
                segmentInfoList.add(new SegmentInfo(byteCnt, segmentLength));
            }
            byteCnt += segmentLength + 2;
        }
        byte[] markerHead = {MARKER_CODE, targetMarker};
        outputStream.write(markerHead);
        int appendSegLength = 2;
        while (segmentInfoList.iterator().hasNext()) {
            appendSegLength += r7.next().getSegmentLength() - 2;
        }
        outputStream.write(convertToSegmentLengthBytes(appendSegLength));
        for (SegmentInfo segmentInfo : segmentInfoList) {
            outputStream.write(inputByte, segmentInfo.getIndex() + 2 + 2, segmentInfo.getSegmentLength() - 2);
        }
        segmentInfoList.clear();
    }

    private static class SegmentInfo {
        private final int mIndex;
        private final int mSegmentLength;

        SegmentInfo(int index, int segmentLength) {
            this.mIndex = index;
            this.mSegmentLength = segmentLength;
        }

        public int getIndex() {
            return this.mIndex;
        }

        public int getSegmentLength() {
            return this.mSegmentLength;
        }
    }

    public static int skipApp0OrApp1Marker(byte[] inputByte) {
        if (inputByte.length < 2 || inputByte[0] != SOI_MARKER[0] || inputByte[1] != SOI_MARKER[1]) {
            return -1;
        }
        int byteCnt = 0 + 2;
        while (byteCnt < inputByte.length - 3) {
            if (inputByte[byteCnt] != APP0_MARKER[0] && inputByte[byteCnt] != APP1_MARKER[0]) {
                return -1;
            }
            int siftSize = getSegmentLength(inputByte, byteCnt);
            if (inputByte[byteCnt] == APP0_MARKER[0] && inputByte[byteCnt + 1] == APP0_MARKER[1]) {
                return APP0_MARKER.length + byteCnt + siftSize;
            }
            if (inputByte[byteCnt] == APP1_MARKER[0] && inputByte[byteCnt + 1] == APP1_MARKER[1]) {
                return APP1_MARKER.length + byteCnt + siftSize;
            }
            byteCnt += siftSize;
        }
        return -1;
    }

    public static byte[] getExifThumbnail(byte[] jfifData, ExifInfo exifInfo) throws IOException {
        int scaledWidth;
        int scaledHeight;
        int imageLength;
        int sampleSize = Math.max(exifInfo.getWidth() / EXIF_THUMBNAIL_WIDTH, exifInfo.getHeight() / EXIF_THUMBNAIL_HEIGHT);
        BitmapFactory.Options option = new BitmapFactory.Options();
        option.inJustDecodeBounds = false;
        option.inDither = false;
        option.inPreferredConfig = Bitmap.Config.RGB_565;
        option.inSampleSize = sampleSize;
        Bitmap srcBitmap = BitmapFactory.decodeByteArray(jfifData, 0, jfifData.length, option);
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        if (srcBitmap != null) {
            int srcHeight = srcBitmap.getHeight();
            int srcWidth = srcBitmap.getWidth();
            float heightRate = srcHeight / 120.0f;
            float widhtRate = srcWidth / 160.0f;
            if (heightRate > widhtRate) {
                scaledHeight = EXIF_THUMBNAIL_HEIGHT;
                scaledWidth = (int) (srcWidth / heightRate);
            } else {
                scaledWidth = EXIF_THUMBNAIL_WIDTH;
                scaledHeight = (int) (srcHeight / widhtRate);
            }
            Bitmap dstBitmap = Bitmap.createBitmap(EXIF_THUMBNAIL_WIDTH, EXIF_THUMBNAIL_HEIGHT, Bitmap.Config.RGB_565);
            dstBitmap.eraseColor(ViewCompat.MEASURED_STATE_MASK);
            Canvas c = new Canvas(dstBitmap);
            int paddingWidth = (160 - scaledWidth) / 2;
            int paddingHeight = (120 - scaledHeight) / 2;
            Bitmap scaledThumbnailBitmap = Bitmap.createScaledBitmap(srcBitmap, scaledWidth, scaledHeight, false);
            c.drawBitmap(scaledThumbnailBitmap, paddingWidth, paddingHeight, new Paint());
            if (!scaledThumbnailBitmap.isRecycled()) {
                scaledThumbnailBitmap.recycle();
            }
            dstBitmap.compress(Bitmap.CompressFormat.JPEG, 100, outputStream);
            if (!dstBitmap.isRecycled()) {
                dstBitmap.recycle();
            }
            if (!srcBitmap.isRecycled()) {
                srcBitmap.recycle();
            }
            byte[] srcImage = outputStream.toByteArray();
            byte[] integratedImage = new byte[srcImage.length + 1024];
            try {
                imageLength = integrateJfif(srcImage, integratedImage);
            } catch (IntegrationMakerException e) {
                integratedImage = srcImage;
                imageLength = integratedImage.length;
            }
            int offset = skipApp0OrApp1Marker(integratedImage);
            int size = (imageLength - offset) + SOI_MARKER.length;
            byte[] dstImage = new byte[size];
            dstImage[0] = SOI_MARKER[0];
            dstImage[1] = SOI_MARKER[1];
            System.arraycopy(integratedImage, offset, dstImage, SOI_MARKER.length, dstImage.length - SOI_MARKER.length);
            try {
                outputStream.close();
                return dstImage;
            } catch (IOException e2) {
                CameraLogger.e(TAG, "Closing output stream failed.", e2);
                return dstImage;
            }
        }
        return new byte[0];
    }

    public static ExifInfo.ByteOrder getExifByteOrder(byte[] inputByte) {
        if (inputByte == null || inputByte.length < 2 || inputByte[0] != SOI_MARKER[0] || inputByte[1] != SOI_MARKER[1]) {
            return null;
        }
        int byteCnt = 0 + 2;
        while (byteCnt + 11 < inputByte.length && inputByte[byteCnt] == -1 && inputByte[byteCnt + 1] != -38) {
            if (inputByte[byteCnt + 1] == APP1_MARKER[1] && inputByte[byteCnt + 4] == EXIF_CODE[0] && inputByte[byteCnt + 5] == EXIF_CODE[1] && inputByte[byteCnt + 6] == EXIF_CODE[2] && inputByte[byteCnt + 7] == EXIF_CODE[3] && inputByte[byteCnt + 8] == EXIF_CODE[4] && inputByte[byteCnt + 9] == EXIF_CODE[5]) {
                if (inputByte[byteCnt + 10] == EXIF_BYTE_ORDER_BE[0] && inputByte[byteCnt + 11] == EXIF_BYTE_ORDER_BE[1]) {
                    return ExifInfo.ByteOrder.BIG_ENDIAN;
                }
                if (inputByte[byteCnt + 10] == EXIF_BYTE_ORDER_LE[0] && inputByte[byteCnt + 11] == EXIF_BYTE_ORDER_LE[1]) {
                    return ExifInfo.ByteOrder.LITTLE_ENDIAN;
                }
                return null;
            }
            int segmentLength = getSegmentLength(inputByte, byteCnt);
            byteCnt += segmentLength + 2;
        }
        return null;
    }

    private static int getSegmentLength(byte[] inputByte, int segmentIndex) {
        int segmentLength = ((inputByte[segmentIndex + 2] & MARKER_CODE) << 8) + (inputByte[segmentIndex + 3] & MARKER_CODE);
        return segmentLength;
    }

    private static byte[] convertToSegmentLengthBytes(int intData) {
        byte[] bytes = {(byte) ((intData >>> 8) & 255), (byte) (intData & 255)};
        return bytes;
    }
}