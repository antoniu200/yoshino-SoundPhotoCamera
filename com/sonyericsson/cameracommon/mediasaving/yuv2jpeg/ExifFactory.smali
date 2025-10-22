.class Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;
.super Ljava/lang/Object;
.source "ExifFactory.java"


# static fields
.field private static APP1_HEADER:[B = null

.field private static EXIF_IFD_BE:[B = null

.field private static EXIF_IFD_LE:[B = null

.field private static FIRST_IFD_BE:[B = null

.field private static FIRST_IFD_LE:[B = null

.field private static GPS_IFD_BE:[B = null

.field private static GPS_IFD_LE:[B = null

.field private static final LOCATION_FORMAT_DEGREES:I = 0x0

.field private static final LOCATION_FORMAT_MINUTES:I = 0x1

.field private static final LOCATION_FORMAT_SECONDS:I = 0x2

.field private static final MAKER_NAME_LIMITATION:I = 0xe

.field public static final TAG:Ljava/lang/String; = "ExifFactory"

.field private static TIFF_HEADER_BE:[B

.field private static TIFF_HEADER_LE:[B

.field private static ZERO_IFD_BE:[B

.field private static ZERO_IFD_INT_BE:[B

.field private static ZERO_IFD_INT_LE:[B

.field private static ZERO_IFD_LE:[B

.field private static sByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

.field private static sExifIFD:[B

.field private static sFirstIFD:[B

.field private static sGpsIFD:[B

.field private static sTiffHeader:[B

.field private static sZeroIFD:[B

.field private static sZeroIFDInt:[B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0xce

    const/16 v4, 0xa6

    const/16 v3, 0x6a

    const/16 v2, 0x1e

    const/16 v1, 0x8

    .line 39
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_88

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    .line 43
    new-array v0, v1, [B

    fill-array-data v0, :array_92

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->TIFF_HEADER_BE:[B

    .line 45
    new-array v0, v1, [B

    fill-array-data v0, :array_9a

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->TIFF_HEADER_LE:[B

    .line 47
    new-array v0, v5, [B

    fill-array-data v0, :array_a2

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_BE:[B

    .line 73
    new-array v0, v5, [B

    fill-array-data v0, :array_10e

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_LE:[B

    .line 99
    new-array v0, v4, [B

    fill-array-data v0, :array_17a

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->EXIF_IFD_BE:[B

    .line 119
    new-array v0, v4, [B

    fill-array-data v0, :array_1d2

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->EXIF_IFD_LE:[B

    .line 139
    new-array v0, v2, [B

    fill-array-data v0, :array_22a

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_INT_BE:[B

    .line 145
    new-array v0, v2, [B

    fill-array-data v0, :array_23e

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_INT_LE:[B

    .line 151
    const/16 v0, 0x110

    new-array v0, v0, [B

    fill-array-data v0, :array_252

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->GPS_IFD_BE:[B

    .line 183
    const/16 v0, 0x110

    new-array v0, v0, [B

    fill-array-data v0, :array_2de

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->GPS_IFD_LE:[B

    .line 215
    new-array v0, v3, [B

    fill-array-data v0, :array_36a

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->FIRST_IFD_BE:[B

    .line 229
    new-array v0, v3, [B

    fill-array-data v0, :array_3a4

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->FIRST_IFD_LE:[B

    .line 244
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->BIG_ENDIAN:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .line 247
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->TIFF_HEADER_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sTiffHeader:[B

    .line 248
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFD:[B

    .line 249
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->EXIF_IFD_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sExifIFD:[B

    .line 250
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_INT_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFDInt:[B

    .line 251
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->GPS_IFD_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sGpsIFD:[B

    .line 252
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->FIRST_IFD_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sFirstIFD:[B

    return-void

    .line 39
    :array_88
    .array-data 1
        -0x1t
        -0x1ft
        0x3t
        0x1bt
        0x45t
        0x78t
        0x69t
        0x66t
        0x0t
        0x0t
    .end array-data

    .line 43
    nop

    :array_92
    .array-data 1
        0x4dt
        0x4dt
        0x0t
        0x2at
        0x0t
        0x0t
        0x0t
        0x8t
    .end array-data

    .line 45
    :array_9a
    .array-data 1
        0x49t
        0x49t
        0x2at
        0x0t
        0x8t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 47
    :array_a2
    .array-data 1
        0x0t
        0xat
        0x1t
        0xft
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x7at
        0x1t
        0x10t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1et
        0x0t
        0x0t
        0x0t
        -0x6ct
        0x1t
        0x12t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x6t
        0x0t
        0x0t
        0x1t
        0x1at
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x4et
        0x1t
        0x1bt
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x46t
        0x1t
        0x28t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x1t
        0x32t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        -0x3et
        0x2t
        0x13t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x79t
        0x69t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x2at
        -0x78t
        0x25t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        -0x66t
        0x0t
        0x0t
        0x2t
        -0x56t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
    .end array-data

    .line 73
    nop

    :array_10e
    .array-data 1
        0xat
        0x0t
        0xft
        0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x7at
        0x0t
        0x0t
        0x0t
        0x10t
        0x1t
        0x2t
        0x0t
        0x1et
        0x0t
        0x0t
        0x0t
        -0x6ct
        0x0t
        0x0t
        0x0t
        0x12t
        0x1t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
        0x1at
        0x1t
        0x5t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x4et
        0x0t
        0x0t
        0x0t
        0x1bt
        0x1t
        0x5t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x46t
        0x0t
        0x0t
        0x0t
        0x28t
        0x1t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x32t
        0x1t
        0x2t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        -0x3et
        0x0t
        0x0t
        0x0t
        0x13t
        0x2t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x69t
        -0x79t
        0x4t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x2at
        0x0t
        0x0t
        0x0t
        0x25t
        -0x78t
        0x4t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x66t
        0x1t
        0x0t
        0x0t
        -0x56t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
    .end array-data

    .line 99
    nop

    :array_17a
    .array-data 1
        0x0t
        0x9t
        -0x70t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x30t
        0x32t
        0x32t
        0x30t
        -0x70t
        0x3t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x1t
        0x54t
        -0x70t
        0x4t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x6ft
        0x1t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x1t
        0x2t
        0x3t
        0x0t
        -0x60t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x30t
        0x31t
        0x30t
        0x30t
        -0x60t
        0x1t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x60t
        0x2t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0xct
        -0x40t
        -0x60t
        0x3t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x60t
        0x5t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x7ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
    .end array-data

    .line 119
    nop

    :array_1d2
    .array-data 1
        0x9t
        0x0t
        0x0t
        -0x70t
        0x7t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x30t
        0x32t
        0x32t
        0x30t
        0x3t
        -0x70t
        0x2t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x54t
        0x1t
        0x0t
        0x0t
        0x4t
        -0x70t
        0x2t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x68t
        0x1t
        0x0t
        0x0t
        0x1t
        -0x6ft
        0x7t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x3t
        0x0t
        0x0t
        -0x60t
        0x7t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x30t
        0x31t
        0x30t
        0x30t
        0x1t
        -0x60t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
        -0x60t
        0x4t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x40t
        0xct
        0x0t
        0x0t
        0x3t
        -0x60t
        0x4t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        -0x60t
        0x4t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x7ct
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
    .end array-data

    .line 139
    nop

    :array_22a
    .array-data 1
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x4t
        0x52t
        0x39t
        0x38t
        0x0t
        0x0t
        0x2t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x30t
        0x31t
        0x30t
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 145
    nop

    :array_23e
    .array-data 1
        0x2t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x52t
        0x39t
        0x38t
        0x0t
        0x2t
        0x0t
        0x7t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x30t
        0x31t
        0x30t
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 151
    nop

    :array_252
    .array-data 1
        0x0t
        0xct
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x4t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x4et
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x2t
        0x30t
        0x0t
        0x3t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x2t
        0x48t
        0x0t
        0x5t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x2t
        0x60t
        0x0t
        0x7t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x2t
        0x68t
        0x0t
        0x9t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
        0x12t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x2t
        -0x80t
        0x0t
        0x1bt
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        -0x76t
        0x0t
        0x1dt
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0xbt
        0x0t
        0x0t
        0x2t
        -0x62t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x57t
        0x47t
        0x53t
        0x2dt
        0x38t
        0x34t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x0t
        0x0t
    .end array-data

    .line 183
    :array_2de
    .array-data 1
        0xct
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x4et
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x5t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x30t
        0x2t
        0x0t
        0x0t
        0x3t
        0x0t
        0x2t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x45t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x5t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x48t
        0x2t
        0x0t
        0x0t
        0x5t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x5t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x60t
        0x2t
        0x0t
        0x0t
        0x7t
        0x0t
        0x5t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x68t
        0x2t
        0x0t
        0x0t
        0x9t
        0x0t
        0x2t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x41t
        0x0t
        0x0t
        0x0t
        0x12t
        0x0t
        0x2t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        -0x80t
        0x2t
        0x0t
        0x0t
        0x1bt
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x76t
        0x2t
        0x0t
        0x0t
        0x1dt
        0x0t
        0x2t
        0x0t
        0xbt
        0x0t
        0x0t
        0x0t
        -0x62t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x57t
        0x47t
        0x53t
        0x2dt
        0x38t
        0x34t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x0t
        0x0t
    .end array-data

    .line 215
    :array_36a
    .array-data 1
        0x0t
        0x7t
        0x1t
        0x3t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x6t
        0x0t
        0x0t
        0x1t
        0x12t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x6t
        0x0t
        0x0t
        0x1t
        0x1at
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x3t
        0x4t
        0x1t
        0x1bt
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x3t
        0xct
        0x1t
        0x28t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x2t
        0x1t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x3t
        0x14t
        0x2t
        0x2t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 229
    nop

    :array_3a4
    .array-data 1
        0x7t
        0x0t
        0x3t
        0x1t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
        0x12t
        0x1t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
        0x1at
        0x1t
        0x5t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x4t
        0x3t
        0x0t
        0x0t
        0x1bt
        0x1t
        0x5t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xct
        0x3t
        0x0t
        0x0t
        0x28t
        0x1t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x4t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x14t
        0x3t
        0x0t
        0x0t
        0x2t
        0x2t
        0x4t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkArguments([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)V
    .registers 8
    .param p0, "buffer"    # [B
    .param p1, "option"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;

    .prologue
    .line 342
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mDateTime:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailData:[B

    if-nez v0, :cond_18

    .line 344
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_18
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mGPSOption:Landroid/location/Location;

    if-eqz v0, :cond_2b

    .line 348
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mGPSOption:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 350
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mGPSOption:Landroid/location/Location;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 355
    :cond_2b
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailData:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3d

    .line 356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "thumbnail data length too big"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_3d
    array-length v0, p0

    int-to-long v0, v0

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->getLength(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_53

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_53
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mDateTime:Ljava/lang/String;

    .line 362
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "YYYY:MM:DD hh:mm:ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_71

    .line 363
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "model or datetime too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_71
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_89

    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mDateTime:Ljava/lang/String;

    .line 366
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "YYYY:MM:DD hh:mm:ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_91

    .line 367
    :cond_89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "model or datetime too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_91
    return-void
.end method

.method private static convertLocation(DI)Ljava/lang/String;
    .registers 19
    .param p0, "coordinate"    # D
    .param p2, "outputType"    # I

    .prologue
    const/16 v14, 0x3a

    const/4 v11, 0x1

    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    const/4 v10, 0x2

    .line 433
    const-wide v8, -0x3f99800000000000L    # -180.0

    cmpg-double v8, p0, v8

    if-ltz v8, :cond_1e

    const-wide v8, 0x4066800000000000L    # 180.0

    cmpl-double v8, p0, v8

    if-gtz v8, :cond_1e

    .line 434
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 435
    :cond_1e
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "coordinate="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p0

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 438
    :cond_39
    if-eqz p2, :cond_5e

    move/from16 v0, p2

    if-eq v0, v11, :cond_5e

    move/from16 v0, p2

    if-eq v0, v10, :cond_5e

    .line 441
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "outputType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 444
    :cond_5e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v8, 0x0

    cmpg-double v8, p0, v8

    if-gez v8, :cond_73

    .line 448
    const/16 v8, 0x2d

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    move-wide/from16 v0, p0

    neg-double v0, v0

    move-wide/from16 p0, v0

    .line 452
    :cond_73
    move/from16 v0, p2

    if-eq v0, v11, :cond_7b

    move/from16 v0, p2

    if-ne v0, v10, :cond_9f

    .line 453
    :cond_7b
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v3, v8

    .line 454
    .local v3, "location_degrees":I
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    int-to-double v8, v3

    sub-double p0, p0, v8

    .line 457
    mul-double p0, p0, v12

    .line 458
    move/from16 v0, p2

    if-ne v0, v10, :cond_9f

    .line 459
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 460
    .local v4, "location_minutes":I
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    int-to-double v8, v4

    sub-double p0, p0, v8

    .line 463
    mul-double p0, p0, v12

    .line 467
    .end local v3    # "location_degrees":I
    .end local v4    # "location_minutes":I
    :cond_9f
    new-instance v2, Ljava/math/BigDecimal;

    move-wide/from16 v0, p0

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 468
    .local v2, "bd":Ljava/math/BigDecimal;
    const/4 v8, 0x5

    const/4 v9, 0x4

    invoke-virtual {v2, v8, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    .line 469
    .local v6, "location_seconds":D
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static fillNullValue([BII)V
    .registers 6
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "count"    # I

    .prologue
    .line 665
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_b

    .line 666
    add-int v1, p1, v0

    const/4 v2, 0x0

    aput-byte v2, p0, v1

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 668
    :cond_b
    return-void
.end method

.method public static generate([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)I
    .registers 8
    .param p0, "buffer"    # [B
    .param p1, "option"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;

    .prologue
    .line 291
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->setByteOrder(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;)V

    .line 293
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->checkArguments([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)V

    .line 295
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeTemplate([B)I

    move-result v0

    .line 297
    .local v0, "last":I
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mMake:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateMake([BLjava/lang/String;)V

    .line 298
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mModel:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateModel([BLjava/lang/String;)V

    .line 299
    iget v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mOrientation:I

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateOrientation([BI)V

    .line 300
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mDateTime:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateDateTime([BLjava/lang/String;)V

    .line 301
    iget-wide v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mPixelXDimension:J

    invoke-static {p0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updatePixelXDimension([BJ)V

    .line 302
    iget-wide v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mPixelYDimension:J

    invoke-static {p0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updatePixelYDimension([BJ)V

    .line 303
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mGPSOption:Landroid/location/Location;

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateGpsFields([BLandroid/location/Location;)V

    .line 304
    iget-wide v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    invoke-static {p0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateJpegInterchangeFormatLength([BJ)V

    .line 305
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailData:[B

    const/4 v2, 0x0

    iget-wide v4, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    long-to-int v3, v4

    invoke-static {v1, v2, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    int-to-long v2, v0

    iget-wide v4, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 308
    add-int/lit8 v1, v0, -0x2

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateExifSize([BI)V

    .line 310
    return v0
.end method

.method public static getLength(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)I
    .registers 4
    .param p0, "option"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;

    .prologue
    .line 276
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->setByteOrder(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;)V

    .line 277
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sTiffHeader:[B

    array-length v2, v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFD:[B

    array-length v2, v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sExifIFD:[B

    array-length v2, v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFDInt:[B

    array-length v2, v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sGpsIFD:[B

    array-length v2, v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sFirstIFD:[B

    array-length v2, v2

    add-int v0, v1, v2

    .line 280
    .local v0, "app1_length":I
    return v0
.end method

.method private static removeGpsInfoFromHeader([B)V
    .registers 5
    .param p0, "buffer"    # [B

    .prologue
    .line 573
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x9

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeShortValue([BII)V

    .line 574
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x76

    const/16 v1, 0xb

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->fillNullValue([BII)V

    .line 575
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x76

    const-wide/16 v2, 0x2aa

    invoke-static {p0, v0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 576
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x19a

    const/16 v1, 0x110

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->fillNullValue([BII)V

    .line 577
    return-void
.end method

.method private static setByteOrder(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;)V
    .registers 3
    .param p0, "byteOrder"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .prologue
    .line 315
    sput-object p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .line 317
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$yuv2jpeg$ExifInfo$ByteOrder:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 338
    :goto_f
    return-void

    .line 319
    :pswitch_10
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->TIFF_HEADER_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sTiffHeader:[B

    .line 320
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFD:[B

    .line 321
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->EXIF_IFD_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sExifIFD:[B

    .line 322
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_INT_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFDInt:[B

    .line 323
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->GPS_IFD_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sGpsIFD:[B

    .line 324
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->FIRST_IFD_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sFirstIFD:[B

    goto :goto_f

    .line 327
    :pswitch_29
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->TIFF_HEADER_LE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sTiffHeader:[B

    .line 328
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_LE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFD:[B

    .line 329
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->EXIF_IFD_LE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sExifIFD:[B

    .line 330
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_INT_LE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFDInt:[B

    .line 331
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->GPS_IFD_LE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sGpsIFD:[B

    .line 332
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->FIRST_IFD_LE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sFirstIFD:[B

    goto :goto_f

    .line 317
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_10
        :pswitch_29
    .end packed-switch
.end method

.method private static updateDateTime([BLjava/lang/String;)V
    .registers 3
    .param p0, "buffer"    # [B
    .param p1, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 394
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0xc2

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 395
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x154

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 396
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x168

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 397
    return-void
.end method

.method private static updateExifSize([BI)V
    .registers 4
    .param p0, "buffer"    # [B
    .param p1, "size"    # I

    .prologue
    .line 585
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x8

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->BIG_ENDIAN:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    invoke-static {p0, v0, p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeShortValue([BIILcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;)V

    .line 586
    return-void
.end method

.method private static updateGpsFields([BLandroid/location/Location;)V
    .registers 3
    .param p0, "buffer"    # [B
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 408
    if-eqz p1, :cond_9

    .line 410
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeGpsInfoToHeader([BLandroid/location/Location;)Z

    move-result v0

    .line 411
    .local v0, "ret":Z
    if-eqz v0, :cond_9

    .line 419
    .end local v0    # "ret":Z
    :goto_8
    return-void

    .line 417
    :cond_9
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->removeGpsInfoFromHeader([B)V

    goto :goto_8
.end method

.method private static updateJpegInterchangeFormatLength([BJ)V
    .registers 4
    .param p0, "buffer"    # [B
    .param p1, "thumbnailDataLength"    # J

    .prologue
    .line 581
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x2fc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 582
    return-void
.end method

.method private static updateMake([BLjava/lang/String;)V
    .registers 8
    .param p0, "buffer"    # [B
    .param p1, "make"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xe

    .line 373
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_22

    .line 374
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "limitedString":Ljava/lang/String;
    :goto_d
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x86

    invoke-static {p0, v2, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    move-result v0

    .line 380
    .local v0, "length":I
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0xe

    add-int/lit8 v3, v0, 0x1

    int-to-long v4, v3

    invoke-static {p0, v2, v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 381
    return-void

    .line 376
    .end local v0    # "length":I
    .end local v1    # "limitedString":Ljava/lang/String;
    :cond_22
    move-object v1, p1

    .restart local v1    # "limitedString":Ljava/lang/String;
    goto :goto_d
.end method

.method private static updateModel([BLjava/lang/String;)V
    .registers 6
    .param p0, "buffer"    # [B
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 384
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    add-int/lit16 v1, v1, 0x94

    invoke-static {p0, v1, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    move-result v0

    .line 385
    .local v0, "length":I
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1a

    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-static {p0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 386
    return-void
.end method

.method private static updateOrientation([BI)V
    .registers 3
    .param p0, "buffer"    # [B
    .param p1, "orientation"    # I

    .prologue
    .line 389
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2a

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeShortValue([BII)V

    .line 390
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x2c0

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeShortValue([BII)V

    .line 391
    return-void
.end method

.method private static updatePixelXDimension([BJ)V
    .registers 4
    .param p0, "buffer"    # [B
    .param p1, "pixelXDimension"    # J

    .prologue
    .line 400
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x134

    add-int/lit8 v0, v0, -0xc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 401
    return-void
.end method

.method private static updatePixelYDimension([BJ)V
    .registers 4
    .param p0, "buffer"    # [B
    .param p1, "pixelYDimension"    # J

    .prologue
    .line 404
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x140

    add-int/lit8 v0, v0, -0xc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 405
    return-void
.end method

.method private static writeASCIIValue([BILjava/lang/String;)I
    .registers 6
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 608
    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 609
    .local v0, "dst":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 610
    array-length v1, v0

    return v1
.end method

.method private static writeByteValue([BII)V
    .registers 5
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # I

    .prologue
    .line 614
    add-int/lit8 v0, p1, 0x0

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 615
    return-void
.end method

.method private static writeGpsInfoToHeader([BLandroid/location/Location;)Z
    .registers 23
    .param p0, "buffer"    # [B
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 474
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 475
    .local v10, "calendar":Ljava/util/Calendar;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 477
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    .line 478
    .local v14, "latitude":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v14, v2

    if-gez v2, :cond_22

    .line 479
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1b0

    const-string v3, "S"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 483
    neg-double v14, v14

    .line 486
    :cond_22
    const/16 v16, 0x0

    .line 488
    .local v16, "latitudeStr":Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_25
    invoke-static {v14, v15, v2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->convertLocation(DI)Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_28} :catch_184

    move-result-object v16

    .line 493
    const-string v2, ":"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 496
    .local v13, "latitudeParts":[Ljava/lang/String;
    :try_start_31
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x230

    const/4 v2, 0x0

    aget-object v2, v13, v2

    .line 497
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    .line 496
    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 498
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x238

    const/4 v2, 0x1

    aget-object v2, v13, v2

    .line 499
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    .line 498
    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 500
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x240

    const/4 v2, 0x2

    aget-object v2, v13, v2

    .line 502
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v4

    float-to-long v4, v2

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    .line 500
    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_6e} :catch_187

    .line 508
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    .line 509
    .local v18, "longitude":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v18, v2

    if-gez v2, :cond_89

    .line 510
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1c8

    const-string v3, "W"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 514
    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 517
    :cond_89
    const/16 v20, 0x0

    .line 519
    .local v20, "longitudeStr":Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_8c
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->convertLocation(DI)Ljava/lang/String;
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8c .. :try_end_91} :catch_18a

    move-result-object v20

    .line 525
    const-string v2, ":"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 528
    .local v17, "longitudeParts":[Ljava/lang/String;
    :try_start_9a
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x248

    const/4 v2, 0x0

    aget-object v2, v17, v2

    .line 529
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    .line 528
    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 530
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x250

    const/4 v2, 0x1

    aget-object v2, v17, v2

    .line 531
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    .line 530
    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 532
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x258

    const/4 v2, 0x2

    aget-object v2, v17, v2

    .line 534
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v4

    float-to-long v4, v2

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    .line 532
    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V
    :try_end_d7
    .catch Ljava/lang/NumberFormatException; {:try_start_9a .. :try_end_d7} :catch_18d

    .line 540
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    .line 541
    .local v8, "altitude":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v8, v2

    if-gez v2, :cond_ec

    .line 542
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1e0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeByteValue([BII)V

    .line 544
    :cond_ec
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x260

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v8

    double-to-long v4, v4

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 547
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 549
    const/4 v12, 0x0

    .line 551
    .local v12, "gpsDateStamp":Ljava/lang/String;
    :try_start_109
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x268

    const/16 v2, 0xb

    .line 552
    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    .line 551
    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 553
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x270

    const/16 v2, 0xc

    .line 554
    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v4, v2

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    .line 553
    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 555
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x278

    const/16 v2, 0xd

    .line 557
    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    .line 555
    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 559
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%04d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 560
    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 559
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_177
    .catch Ljava/lang/IllegalArgumentException; {:try_start_109 .. :try_end_177} :catch_190

    move-result-object v12

    .line 566
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x29e

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 568
    const/4 v2, 0x1

    .end local v8    # "altitude":D
    .end local v12    # "gpsDateStamp":Ljava/lang/String;
    .end local v13    # "latitudeParts":[Ljava/lang/String;
    .end local v17    # "longitudeParts":[Ljava/lang/String;
    .end local v18    # "longitude":D
    .end local v20    # "longitudeStr":Ljava/lang/String;
    :goto_183
    return v2

    .line 489
    :catch_184
    move-exception v11

    .line 491
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_183

    .line 503
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v13    # "latitudeParts":[Ljava/lang/String;
    :catch_187
    move-exception v11

    .line 505
    .local v11, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_183

    .line 520
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v18    # "longitude":D
    .restart local v20    # "longitudeStr":Ljava/lang/String;
    :catch_18a
    move-exception v11

    .line 522
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_183

    .line 535
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v17    # "longitudeParts":[Ljava/lang/String;
    :catch_18d
    move-exception v11

    .line 537
    .local v11, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_183

    .line 561
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "altitude":D
    .restart local v12    # "gpsDateStamp":Ljava/lang/String;
    :catch_190
    move-exception v11

    .line 563
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_183
.end method

.method private static writeLongValue([BIJ)V
    .registers 12
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # J

    .prologue
    const-wide/32 v2, 0x1000000

    const-wide/32 v6, 0x10000

    const-wide/16 v4, 0x100

    .line 639
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$yuv2jpeg$ExifInfo$ByteOrder:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_58

    .line 656
    :goto_15
    return-void

    .line 641
    :pswitch_16
    add-int/lit8 v0, p1, 0x0

    div-long v2, p2, v2

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 642
    add-int/lit8 v0, p1, 0x1

    div-long v2, p2, v6

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 643
    add-int/lit8 v0, p1, 0x2

    div-long v2, p2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 644
    add-int/lit8 v0, p1, 0x3

    rem-long v2, p2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_15

    .line 647
    :pswitch_37
    add-int/lit8 v0, p1, 0x3

    div-long v2, p2, v2

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 648
    add-int/lit8 v0, p1, 0x2

    div-long v2, p2, v6

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 649
    add-int/lit8 v0, p1, 0x1

    div-long v2, p2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 650
    add-int/lit8 v0, p1, 0x0

    rem-long v2, p2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_15

    .line 639
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_16
        :pswitch_37
    .end packed-switch
.end method

.method private static writeRationalValue([BIJJ)V
    .registers 8
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "denominator"    # J
    .param p4, "numerator"    # J

    .prologue
    .line 660
    add-int/lit8 v0, p1, 0x0

    invoke-static {p0, v0, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 661
    add-int/lit8 v0, p1, 0x4

    invoke-static {p0, v0, p4, p5}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 662
    return-void
.end method

.method private static writeShortValue([BII)V
    .registers 4
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # I

    .prologue
    .line 618
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeShortValue([BIILcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;)V

    .line 619
    return-void
.end method

.method private static writeShortValue([BIILcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;)V
    .registers 6
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # I
    .param p3, "byteOrder"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .prologue
    .line 623
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$yuv2jpeg$ExifInfo$ByteOrder:[I

    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 636
    :goto_b
    return-void

    .line 625
    :pswitch_c
    add-int/lit8 v0, p1, 0x0

    div-int/lit16 v1, p2, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 626
    add-int/lit8 v0, p1, 0x1

    rem-int/lit16 v1, p2, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_b

    .line 629
    :pswitch_1b
    add-int/lit8 v0, p1, 0x1

    div-int/lit16 v1, p2, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 630
    add-int/lit8 v0, p1, 0x0

    rem-int/lit16 v1, p2, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_b

    .line 623
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_1b
    .end packed-switch
.end method

.method private static writeTemplate([B)I
    .registers 5
    .param p0, "buffer"    # [B

    .prologue
    const/4 v3, 0x0

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, "last":I
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 591
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 592
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sTiffHeader:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sTiffHeader:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 593
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sTiffHeader:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 594
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFD:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 596
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sExifIFD:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sExifIFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 597
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sExifIFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 598
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFDInt:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFDInt:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 599
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFDInt:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 600
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sGpsIFD:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sGpsIFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sGpsIFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 602
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sFirstIFD:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sFirstIFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sFirstIFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 604
    return v0
.end method
