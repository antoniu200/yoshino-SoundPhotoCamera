package com.sonyericsson.cameracommon.mediasaving.yuv2jpeg;

import android.location.Location;
import com.sonyericsson.cameracommon.mediasaving.yuv2jpeg.ExifInfo;
import java.math.BigDecimal;
import java.nio.charset.Charset;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
class ExifFactory {
    private static final int LOCATION_FORMAT_DEGREES = 0;
    private static final int LOCATION_FORMAT_MINUTES = 1;
    private static final int LOCATION_FORMAT_SECONDS = 2;
    private static final int MAKER_NAME_LIMITATION = 14;
    public static final String TAG = "ExifFactory";
    private static byte[] APP1_HEADER = {-1, -31, 3, 27, 69, 120, 105, 102, 0, 0};
    private static byte[] TIFF_HEADER_BE = {77, 77, 0, 42, 0, 0, 0, 8};
    private static byte[] TIFF_HEADER_LE = {73, 73, 42, 0, 8, 0, 0, 0};
    private static byte[] ZERO_IFD_BE = {0, 10, 1, 15, 0, 2, 0, 0, 0, 0, 0, 0, 0, -122, 1, 16, 0, 2, 0, 0, 0, 30, 0, 0, 0, -108, 1, 18, 0, 3, 0, 0, 0, 1, 0, 6, 0, 0, 1, 26, 0, 5, 0, 0, 0, 1, 0, 0, 0, -78, 1, 27, 0, 5, 0, 0, 0, 1, 0, 0, 0, -70, 1, 40, 0, 3, 0, 0, 0, 1, 0, 2, 0, 0, 1, 50, 0, 2, 0, 0, 0, 20, 0, 0, 0, -62, 2, 19, 0, 3, 0, 0, 0, 1, 0, 1, 0, 0, -121, 105, 0, 4, 0, 0, 0, 1, 0, 0, 0, -42, -120, 37, 0, 4, 0, 0, 0, 1, 0, 0, 1, -102, 0, 0, 2, -86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 1, 0, 0, 0, 72, 0, 0, 0, 1, 50, 48, 49, 49, 58, 48, 49, 58, 50, 51, 32, 49, 50, 58, 51, 52, 58, 53, 54, 0};
    private static byte[] ZERO_IFD_LE = {10, 0, 15, 1, 2, 0, 0, 0, 0, 0, -122, 0, 0, 0, 16, 1, 2, 0, 30, 0, 0, 0, -108, 0, 0, 0, 18, 1, 3, 0, 1, 0, 0, 0, 6, 0, 0, 0, 26, 1, 5, 0, 1, 0, 0, 0, -78, 0, 0, 0, 27, 1, 5, 0, 1, 0, 0, 0, -70, 0, 0, 0, 40, 1, 3, 0, 1, 0, 0, 0, 2, 0, 0, 0, 50, 1, 2, 0, 20, 0, 0, 0, -62, 0, 0, 0, 19, 2, 3, 0, 1, 0, 0, 0, 1, 0, 0, 0, 105, -121, 4, 0, 1, 0, 0, 0, -42, 0, 0, 0, 37, -120, 4, 0, 1, 0, 0, 0, -102, 1, 0, 0, -86, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 1, 0, 0, 0, 72, 0, 0, 0, 1, 0, 0, 0, 50, 48, 49, 49, 58, 48, 49, 58, 50, 51, 32, 49, 50, 58, 51, 52, 58, 53, 54, 0};
    private static byte[] EXIF_IFD_BE = {0, 9, -112, 0, 0, 7, 0, 0, 0, 4, 48, 50, 50, 48, -112, 3, 0, 2, 0, 0, 0, 20, 0, 0, 1, 84, -112, 4, 0, 2, 0, 0, 0, 20, 0, 0, 1, 104, -111, 1, 0, 7, 0, 0, 0, 4, 1, 2, 3, 0, -96, 0, 0, 7, 0, 0, 0, 4, 48, 49, 48, 48, -96, 1, 0, 3, 0, 0, 0, 1, 0, 1, 0, 0, -96, 2, 0, 4, 0, 0, 0, 1, 0, 0, 12, -64, -96, 3, 0, 4, 0, 0, 0, 1, 0, 0, 0, 0, -96, 5, 0, 4, 0, 0, 0, 1, 0, 0, 1, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 48, 49, 49, 58, 48, 49, 58, 50, 51, 32, 49, 50, 58, 51, 52, 58, 53, 54, 0, 50, 48, 49, 49, 58, 48, 49, 58, 50, 51, 32, 49, 50, 58, 51, 52, 58, 53, 54, 0};
    private static byte[] EXIF_IFD_LE = {9, 0, 0, -112, 7, 0, 4, 0, 0, 0, 48, 50, 50, 48, 3, -112, 2, 0, 20, 0, 0, 0, 84, 1, 0, 0, 4, -112, 2, 0, 20, 0, 0, 0, 104, 1, 0, 0, 1, -111, 7, 0, 4, 0, 0, 0, 1, 2, 3, 0, 0, -96, 7, 0, 4, 0, 0, 0, 48, 49, 48, 48, 1, -96, 3, 0, 1, 0, 0, 0, 1, 0, 0, 0, 2, -96, 4, 0, 1, 0, 0, 0, -64, 12, 0, 0, 3, -96, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, -96, 4, 0, 1, 0, 0, 0, 124, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 48, 49, 49, 58, 48, 49, 58, 50, 51, 32, 49, 50, 58, 51, 52, 58, 53, 54, 0, 50, 48, 49, 49, 58, 48, 49, 58, 50, 51, 32, 49, 50, 58, 51, 52, 58, 53, 54, 0};
    private static byte[] ZERO_IFD_INT_BE = {0, 2, 0, 1, 0, 2, 0, 0, 0, 4, 82, 57, 56, 0, 0, 2, 0, 7, 0, 0, 0, 4, 48, 49, 48, 48, 0, 0, 0, 0};
    private static byte[] ZERO_IFD_INT_LE = {2, 0, 1, 0, 2, 0, 4, 0, 0, 0, 82, 57, 56, 0, 2, 0, 7, 0, 4, 0, 0, 0, 48, 49, 48, 48, 0, 0, 0, 0};
    private static byte[] GPS_IFD_BE = {0, 12, 0, 0, 0, 1, 0, 0, 0, 4, 2, 2, 0, 0, 0, 1, 0, 2, 0, 0, 0, 2, 78, 0, 0, 0, 0, 2, 0, 5, 0, 0, 0, 3, 0, 0, 2, 48, 0, 3, 0, 2, 0, 0, 0, 2, 69, 0, 0, 0, 0, 4, 0, 5, 0, 0, 0, 3, 0, 0, 2, 72, 0, 5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 6, 0, 5, 0, 0, 0, 1, 0, 0, 2, 96, 0, 7, 0, 5, 0, 0, 0, 3, 0, 0, 2, 104, 0, 9, 0, 2, 0, 0, 0, 2, 65, 0, 0, 0, 0, 18, 0, 2, 0, 0, 0, 7, 0, 0, 2, -128, 0, 27, 0, 7, 0, 0, 0, 0, 0, 0, 2, -118, 0, 29, 0, 2, 0, 0, 0, 11, 0, 0, 2, -98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 71, 83, 45, 56, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 48, 49, 49, 58, 48, 49, 58, 50, 51, 0, 0};
    private static byte[] GPS_IFD_LE = {12, 0, 0, 0, 1, 0, 4, 0, 0, 0, 2, 2, 0, 0, 1, 0, 2, 0, 2, 0, 0, 0, 78, 0, 0, 0, 2, 0, 5, 0, 3, 0, 0, 0, 48, 2, 0, 0, 3, 0, 2, 0, 2, 0, 0, 0, 69, 0, 0, 0, 4, 0, 5, 0, 3, 0, 0, 0, 72, 2, 0, 0, 5, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 6, 0, 5, 0, 1, 0, 0, 0, 96, 2, 0, 0, 7, 0, 5, 0, 3, 0, 0, 0, 104, 2, 0, 0, 9, 0, 2, 0, 2, 0, 0, 0, 65, 0, 0, 0, 18, 0, 2, 0, 7, 0, 0, 0, -128, 2, 0, 0, 27, 0, 7, 0, 0, 0, 0, 0, -118, 2, 0, 0, 29, 0, 2, 0, 11, 0, 0, 0, -98, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87, 71, 83, 45, 56, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 48, 49, 49, 58, 48, 49, 58, 50, 51, 0, 0};
    private static byte[] FIRST_IFD_BE = {0, 7, 1, 3, 0, 3, 0, 0, 0, 1, 0, 6, 0, 0, 1, 18, 0, 3, 0, 0, 0, 1, 0, 6, 0, 0, 1, 26, 0, 5, 0, 0, 0, 1, 0, 0, 3, 4, 1, 27, 0, 5, 0, 0, 0, 1, 0, 0, 3, 12, 1, 40, 0, 3, 0, 0, 0, 1, 0, 2, 0, 0, 2, 1, 0, 4, 0, 0, 0, 1, 0, 0, 3, 20, 2, 2, 0, 4, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 1, 0, 0, 0, 72, 0, 0, 0, 1};
    private static byte[] FIRST_IFD_LE = {7, 0, 3, 1, 3, 0, 1, 0, 0, 0, 6, 0, 0, 0, 18, 1, 3, 0, 1, 0, 0, 0, 6, 0, 0, 0, 26, 1, 5, 0, 1, 0, 0, 0, 4, 3, 0, 0, 27, 1, 5, 0, 1, 0, 0, 0, 12, 3, 0, 0, 40, 1, 3, 0, 1, 0, 0, 0, 2, 0, 0, 0, 1, 2, 4, 0, 1, 0, 0, 0, 20, 3, 0, 0, 2, 2, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 1, 0, 0, 0, 72, 0, 0, 0, 1, 0, 0, 0};
    private static ExifInfo.ByteOrder sByteOrder = ExifInfo.ByteOrder.BIG_ENDIAN;
    private static byte[] sTiffHeader = TIFF_HEADER_BE;
    private static byte[] sZeroIFD = ZERO_IFD_BE;
    private static byte[] sExifIFD = EXIF_IFD_BE;
    private static byte[] sZeroIFDInt = ZERO_IFD_INT_BE;
    private static byte[] sGpsIFD = GPS_IFD_BE;
    private static byte[] sFirstIFD = FIRST_IFD_BE;

    ExifFactory() {
    }

    public static int getLength(ExifOption option) {
        setByteOrder(option.mByteOrder);
        int app1_length = APP1_HEADER.length + sTiffHeader.length + sZeroIFD.length + sExifIFD.length + sZeroIFDInt.length + sGpsIFD.length + sFirstIFD.length;
        return app1_length;
    }

    public static int generate(byte[] buffer, ExifOption option) {
        setByteOrder(option.mByteOrder);
        checkArguments(buffer, option);
        int last = writeTemplate(buffer);
        updateMake(buffer, option.mMake);
        updateModel(buffer, option.mModel);
        updateOrientation(buffer, option.mOrientation);
        updateDateTime(buffer, option.mDateTime);
        updatePixelXDimension(buffer, option.mPixelXDimension);
        updatePixelYDimension(buffer, option.mPixelYDimension);
        updateGpsFields(buffer, option.mGPSOption);
        updateJpegInterchangeFormatLength(buffer, option.mThumbnailDataLength);
        System.arraycopy(option.mThumbnailData, 0, buffer, last, (int) option.mThumbnailDataLength);
        int last2 = (int) (last + option.mThumbnailDataLength);
        updateExifSize(buffer, last2 - 2);
        return last2;
    }

    private static void setByteOrder(ExifInfo.ByteOrder byteOrder) {
        sByteOrder = byteOrder;
        switch (sByteOrder) {
            case BIG_ENDIAN:
                sTiffHeader = TIFF_HEADER_BE;
                sZeroIFD = ZERO_IFD_BE;
                sExifIFD = EXIF_IFD_BE;
                sZeroIFDInt = ZERO_IFD_INT_BE;
                sGpsIFD = GPS_IFD_BE;
                sFirstIFD = FIRST_IFD_BE;
                break;
            case LITTLE_ENDIAN:
                sTiffHeader = TIFF_HEADER_LE;
                sZeroIFD = ZERO_IFD_LE;
                sExifIFD = EXIF_IFD_LE;
                sZeroIFDInt = ZERO_IFD_INT_LE;
                sGpsIFD = GPS_IFD_LE;
                sFirstIFD = FIRST_IFD_LE;
                break;
        }
    }

    private static void checkArguments(byte[] buffer, ExifOption option) {
        if (buffer == null || option == null || option.mModel == null || option.mDateTime == null || option.mThumbnailData == null) {
            throw new IllegalArgumentException("can not null");
        }
        if (option.mGPSOption != null && !option.mGPSOption.hasAltitude()) {
            option.mGPSOption.setAltitude(0.0d);
        }
        if (option.mThumbnailData.length < option.mThumbnailDataLength) {
            throw new IllegalArgumentException("thumbnail data length too big");
        }
        if (buffer.length < getLength(option) + option.mThumbnailDataLength) {
            throw new IllegalArgumentException("buffer too short");
        }
        if (option.mModel.length() == 0 || option.mDateTime.length() < "YYYY:MM:DD hh:mm:ss".length()) {
            throw new IllegalArgumentException("model or datetime too short");
        }
        if (option.mModel.length() >= 30 || option.mDateTime.length() > "YYYY:MM:DD hh:mm:ss".length()) {
            throw new IllegalArgumentException("model or datetime too long");
        }
    }

    private static void updateMake(byte[] buffer, String make) {
        String limitedString;
        if (make.length() > 14) {
            limitedString = make.substring(0, 14);
        } else {
            limitedString = make;
        }
        int length = writeASCIIValue(buffer, APP1_HEADER.length + 134, limitedString);
        writeLongValue(buffer, APP1_HEADER.length + 14, length + 1);
    }

    private static void updateModel(byte[] buffer, String value) {
        int length = writeASCIIValue(buffer, APP1_HEADER.length + 148, value);
        writeLongValue(buffer, APP1_HEADER.length + 26, length + 1);
    }

    private static void updateOrientation(byte[] buffer, int orientation) {
        writeShortValue(buffer, APP1_HEADER.length + 42, orientation);
        writeShortValue(buffer, APP1_HEADER.length + 704, orientation);
    }

    private static void updateDateTime(byte[] buffer, String dateTime) {
        writeASCIIValue(buffer, APP1_HEADER.length + 194, dateTime);
        writeASCIIValue(buffer, APP1_HEADER.length + 340, dateTime);
        writeASCIIValue(buffer, APP1_HEADER.length + 360, dateTime);
    }

    private static void updatePixelXDimension(byte[] buffer, long pixelXDimension) {
        writeLongValue(buffer, (APP1_HEADER.length + 308) - 12, pixelXDimension);
    }

    private static void updatePixelYDimension(byte[] buffer, long pixelYDimension) {
        writeLongValue(buffer, (APP1_HEADER.length + 320) - 12, pixelYDimension);
    }

    private static void updateGpsFields(byte[] buffer, Location location) {
        if (location != null) {
            boolean ret = writeGpsInfoToHeader(buffer, location);
            if (ret) {
                return;
            }
        }
        removeGpsInfoFromHeader(buffer);
    }

    private static String convertLocation(double coordinate, int outputType) {
        if (coordinate < -180.0d || coordinate > 180.0d || Double.isNaN(coordinate)) {
            throw new IllegalArgumentException("coordinate=" + coordinate);
        }
        if (outputType != 0 && outputType != 1 && outputType != 2) {
            throw new IllegalArgumentException("outputType=" + outputType);
        }
        StringBuilder sb = new StringBuilder();
        if (coordinate < 0.0d) {
            sb.append('-');
            coordinate = -coordinate;
        }
        if (outputType == 1 || outputType == 2) {
            int location_degrees = (int) Math.floor(coordinate);
            sb.append(location_degrees);
            sb.append(':');
            coordinate = (coordinate - location_degrees) * 60.0d;
            if (outputType == 2) {
                int location_minutes = (int) Math.floor(coordinate);
                sb.append(location_minutes);
                sb.append(':');
                coordinate = (coordinate - location_minutes) * 60.0d;
            }
        }
        BigDecimal bd = new BigDecimal(coordinate);
        double location_seconds = bd.setScale(5, 4).doubleValue();
        sb.append(location_seconds);
        return sb.toString();
    }

    private static boolean writeGpsInfoToHeader(byte[] buffer, Location location) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(location.getTime());
        double latitude = location.getLatitude();
        if (latitude < 0.0d) {
            writeASCIIValue(buffer, APP1_HEADER.length + 432, "S");
            latitude = -latitude;
        }
        try {
            String latitudeStr = convertLocation(latitude, 2);
            String[] latitudeParts = latitudeStr.split(":");
            try {
                writeRationalValue(buffer, APP1_HEADER.length + 560, Long.parseLong(latitudeParts[0]), 1L);
                writeRationalValue(buffer, APP1_HEADER.length + 568, Long.parseLong(latitudeParts[1]), 1L);
                writeRationalValue(buffer, APP1_HEADER.length + 576, (long) (Float.parseFloat(latitudeParts[2]) * 1000.0f), 1000L);
                double longitude = location.getLongitude();
                if (longitude < 0.0d) {
                    writeASCIIValue(buffer, APP1_HEADER.length + 456, "W");
                    longitude = -longitude;
                }
                try {
                    String longitudeStr = convertLocation(longitude, 2);
                    String[] longitudeParts = longitudeStr.split(":");
                    try {
                        writeRationalValue(buffer, APP1_HEADER.length + 584, Long.parseLong(longitudeParts[0]), 1L);
                        writeRationalValue(buffer, APP1_HEADER.length + 592, Long.parseLong(longitudeParts[1]), 1L);
                        writeRationalValue(buffer, APP1_HEADER.length + 600, (long) (Float.parseFloat(longitudeParts[2]) * 1000.0f), 1000L);
                        double altitude = location.getAltitude();
                        if (altitude < 0.0d) {
                            writeByteValue(buffer, APP1_HEADER.length + 480, 1);
                        }
                        writeRationalValue(buffer, APP1_HEADER.length + 608, (long) (1000.0d * altitude), 1000L);
                        calendar.setTimeZone(TimeZone.getTimeZone("UTC"));
                        try {
                            writeRationalValue(buffer, APP1_HEADER.length + 616, calendar.get(11), 1L);
                            writeRationalValue(buffer, APP1_HEADER.length + 624, calendar.get(12) + 1, 1L);
                            writeRationalValue(buffer, APP1_HEADER.length + 632, calendar.get(13) * 1000, 1000L);
                            String gpsDateStamp = String.format(Locale.US, "%04d:%02d:%02d", Integer.valueOf(calendar.get(1)), Integer.valueOf(calendar.get(2) + 1), Integer.valueOf(calendar.get(5)));
                            writeASCIIValue(buffer, APP1_HEADER.length + 670, gpsDateStamp);
                            return true;
                        } catch (IllegalArgumentException e) {
                            return false;
                        }
                    } catch (NumberFormatException e2) {
                        return false;
                    }
                } catch (IllegalArgumentException e3) {
                    return false;
                }
            } catch (NumberFormatException e4) {
                return false;
            }
        } catch (IllegalArgumentException e5) {
            return false;
        }
    }

    private static void removeGpsInfoFromHeader(byte[] buffer) {
        writeShortValue(buffer, APP1_HEADER.length + 8, 9);
        fillNullValue(buffer, APP1_HEADER.length + 118, 11);
        writeLongValue(buffer, APP1_HEADER.length + 118, 682L);
        fillNullValue(buffer, APP1_HEADER.length + 410, 272);
    }

    private static void updateJpegInterchangeFormatLength(byte[] buffer, long thumbnailDataLength) {
        writeLongValue(buffer, APP1_HEADER.length + 764, thumbnailDataLength);
    }

    private static void updateExifSize(byte[] buffer, int size) {
        writeShortValue(buffer, APP1_HEADER.length - 8, size, ExifInfo.ByteOrder.BIG_ENDIAN);
    }

    private static int writeTemplate(byte[] buffer) {
        System.arraycopy(APP1_HEADER, 0, buffer, 0, APP1_HEADER.length);
        int last = 0 + APP1_HEADER.length;
        System.arraycopy(sTiffHeader, 0, buffer, last, sTiffHeader.length);
        int last2 = last + sTiffHeader.length;
        System.arraycopy(sZeroIFD, 0, buffer, last2, sZeroIFD.length);
        int last3 = last2 + sZeroIFD.length;
        System.arraycopy(sExifIFD, 0, buffer, last3, sExifIFD.length);
        int last4 = last3 + sExifIFD.length;
        System.arraycopy(sZeroIFDInt, 0, buffer, last4, sZeroIFDInt.length);
        int last5 = last4 + sZeroIFDInt.length;
        System.arraycopy(sGpsIFD, 0, buffer, last5, sGpsIFD.length);
        int last6 = last5 + sGpsIFD.length;
        System.arraycopy(sFirstIFD, 0, buffer, last6, sFirstIFD.length);
        return last6 + sFirstIFD.length;
    }

    private static int writeASCIIValue(byte[] buffer, int bufferPos, String value) {
        byte[] dst = value.getBytes(Charset.forName("US-ASCII"));
        System.arraycopy(dst, 0, buffer, bufferPos, dst.length);
        return dst.length;
    }

    private static void writeByteValue(byte[] buffer, int bufferPos, int value) {
        buffer[bufferPos + 0] = (byte) value;
    }

    private static void writeShortValue(byte[] buffer, int bufferPos, int value) {
        writeShortValue(buffer, bufferPos, value, sByteOrder);
    }

    private static void writeShortValue(byte[] buffer, int bufferPos, int value, ExifInfo.ByteOrder byteOrder) {
        switch (byteOrder) {
            case BIG_ENDIAN:
                buffer[bufferPos + 0] = (byte) (value / 256);
                buffer[bufferPos + 1] = (byte) (value % 256);
                break;
            case LITTLE_ENDIAN:
                buffer[bufferPos + 1] = (byte) (value / 256);
                buffer[bufferPos + 0] = (byte) (value % 256);
                break;
        }
    }

    private static void writeLongValue(byte[] buffer, int bufferPos, long value) {
        switch (sByteOrder) {
            case BIG_ENDIAN:
                buffer[bufferPos + 0] = (byte) (value / 16777216);
                buffer[bufferPos + 1] = (byte) (value / 65536);
                buffer[bufferPos + 2] = (byte) (value / 256);
                buffer[bufferPos + 3] = (byte) (value % 256);
                break;
            case LITTLE_ENDIAN:
                buffer[bufferPos + 3] = (byte) (value / 16777216);
                buffer[bufferPos + 2] = (byte) (value / 65536);
                buffer[bufferPos + 1] = (byte) (value / 256);
                buffer[bufferPos + 0] = (byte) (value % 256);
                break;
        }
    }

    private static void writeRationalValue(byte[] buffer, int bufferPos, long denominator, long numerator) {
        writeLongValue(buffer, bufferPos + 0, denominator);
        writeLongValue(buffer, bufferPos + 4, numerator);
    }

    private static void fillNullValue(byte[] buffer, int bufferPos, int count) {
        for (int i = 0; i < count; i++) {
            buffer[bufferPos + i] = 0;
        }
    }
}
