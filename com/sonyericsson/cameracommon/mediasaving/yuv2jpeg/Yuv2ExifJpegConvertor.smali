.class public Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;
.super Ljava/lang/Object;
.source "Yuv2ExifJpegConvertor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;
    }
.end annotation


# static fields
.field private static final APP0_MARKER:[B

.field private static final APP1_MARKER:[B

.field private static final EXIF_BYTE_ORDER_BE:[B

.field private static final EXIF_BYTE_ORDER_LE:[B

.field private static final EXIF_BYTE_ORDER_OFFSET:I = 0xb

.field private static final EXIF_CODE:[B

.field private static final EXIF_THUMBNAIL_HEIGHT:I = 0x78

.field private static final EXIF_THUMBNAIL_WIDTH:I = 0xa0

.field public static final HEADER_MARGIN:I = 0x400

.field private static final MARKER_CODE:B = -0x1t

.field private static final MARKER_SIZE:I = 0x2

.field private static final M_DHT:I = 0xc4

.field private static final M_DQT:I = 0xdb

.field private static final M_MARKER:I = 0xff

.field private static final M_SOI:I = 0xd8

.field private static final M_SOS:I = 0xda

.field private static final SEGMENT_LENGTH_AREA_SIZE:I = 0x2

.field private static final SIZE_OF_ONE_BYTE:I = 0x8

.field private static final SOI_MARKER:[B

.field public static final TAG:Ljava/lang/String; = "Yuv2ExifJpegConvertor"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 94
    new-array v0, v1, [B

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    .line 97
    new-array v0, v1, [B

    fill-array-data v0, :array_34

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP0_MARKER:[B

    .line 100
    new-array v0, v1, [B

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP1_MARKER:[B

    .line 103
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_40

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_CODE:[B

    .line 120
    new-array v0, v1, [B

    fill-array-data v0, :array_48

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_BYTE_ORDER_BE:[B

    .line 123
    new-array v0, v1, [B

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_BYTE_ORDER_LE:[B

    return-void

    .line 94
    nop

    :array_2e
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    .line 97
    nop

    :array_34
    .array-data 1
        -0x1t
        -0x20t
    .end array-data

    .line 100
    nop

    :array_3a
    .array-data 1
        -0x1t
        -0x1ft
    .end array-data

    .line 103
    nop

    :array_40
    .array-data 1
        0x45t
        0x78t
        0x69t
        0x66t
        0x0t
        0x0t
    .end array-data

    .line 120
    nop

    :array_48
    .array-data 1
        0x4dt
        0x4dt
    .end array-data

    .line 123
    nop

    :array_4e
    .array-data 1
        0x49t
        0x49t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExifHeader(Ljava/io/OutputStream;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;[B)I
    .registers 11
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;
    .param p2, "thumbnailData"    # [B

    .prologue
    .line 300
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->create(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;[B)Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;

    move-result-object v2

    .line 302
    .local v2, "exifOption":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->getLength(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)I

    move-result v4

    iget-wide v6, v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    long-to-int v5, v6

    add-int/2addr v4, v5

    new-array v0, v4, [B

    .line 304
    .local v0, "buffer":[B
    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->generate([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)I

    move-result v3

    .line 306
    .local v3, "length":I
    if-lez v3, :cond_24

    .line 308
    :try_start_14
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 309
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 310
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 311
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    array-length v4, v4
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_23} :catch_25

    add-int/2addr v3, v4

    .line 318
    :cond_24
    :goto_24
    return v3

    .line 312
    :catch_25
    move-exception v1

    .line 313
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Yuv2ExifJpegConvertor"

    const-string v5, "Add exif header failed."

    invoke-static {v4, v5, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    const/4 v3, -0x1

    goto :goto_24
.end method

.method public static addExifToPlainJpeg([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B
    .registers 9
    .param p0, "plainJpeg"    # [B
    .param p1, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

    .prologue
    const/4 v4, 0x0

    .line 61
    if-nez p0, :cond_4

    .line 85
    :goto_3
    return-object v4

    .line 66
    :cond_4
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getExifThumbnail([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B

    move-result-object v3

    .line 69
    .local v3, "thumbnailData":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .local v0, "dstOs":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, p1, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->addExifHeader(Ljava/io/OutputStream;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;[B)I

    move-result v2

    .line 73
    .local v2, "exifHeaderLength":I
    if-lez v2, :cond_25

    .line 75
    :try_start_13
    array-length v5, p0

    invoke-static {v0, p0, v5}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->appendOnlyImageFromJpegData(Ljava/io/OutputStream;[BI)V
    :try_end_17
    .catch Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException; {:try_start_13 .. :try_end_17} :catch_1c

    .line 85
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_3

    .line 76
    :catch_1c
    move-exception v1

    .line 77
    .local v1, "e":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
    const-string v5, "Yuv2ExifJpegConvertor"

    const-string v6, "Failed to append jpeg data."

    invoke-static {v5, v6, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 81
    .end local v1    # "e":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
    :cond_25
    const-string v5, "Yuv2ExifJpegConvertor"

    const-string v6, "convertYuvToExifJpeg():[Add EXIF header failed.]"

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static appendImageInExifFormat([BILjava/io/OutputStream;)V
    .registers 10
    .param p0, "inputByte"    # [B
    .param p1, "indexNextToExif"    # I
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
        }
    .end annotation

    .prologue
    .line 432
    move v0, p1

    .line 433
    .local v0, "byteCnt":I
    const/4 v2, 0x0

    .line 434
    .local v2, "isDQTDone":Z
    const/4 v1, 0x0

    .line 435
    .local v1, "isDHTDOne":Z
    :goto_3
    array-length v4, p0

    add-int/lit8 v4, v4, -0x3

    if-ge v0, v4, :cond_3f

    .line 438
    aget-byte v4, p0, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2e

    .line 439
    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid marker identifier code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    .line 440
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 444
    :cond_2e
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getSegmentLength([BI)I

    move-result v3

    .line 447
    .local v3, "segmentLength":I
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    const/16 v5, -0x26

    if-ne v4, v5, :cond_40

    .line 451
    array-length v4, p0

    sub-int/2addr v4, v0

    invoke-virtual {p2, p0, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 479
    .end local v3    # "segmentLength":I
    :cond_3f
    return-void

    .line 453
    .restart local v3    # "segmentLength":I
    :cond_40
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    const/16 v5, -0x25

    if-ne v4, v5, :cond_52

    .line 455
    if-nez v2, :cond_4e

    .line 457
    invoke-static {p0, v0, p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->appendInOneSegment([BILjava/io/OutputStream;)V

    .line 458
    const/4 v2, 0x1

    .line 477
    :cond_4e
    :goto_4e
    add-int/lit8 v4, v3, 0x2

    add-int/2addr v0, v4

    .line 478
    goto :goto_3

    .line 460
    :cond_52
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    const/16 v5, -0x3c

    if-ne v4, v5, :cond_61

    .line 462
    if-nez v1, :cond_4e

    .line 464
    invoke-static {p0, v0, p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->appendInOneSegment([BILjava/io/OutputStream;)V

    .line 465
    const/4 v1, 0x1

    goto :goto_4e

    .line 471
    :cond_61
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p2, p0, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4e
.end method

.method private static appendInOneSegment([BILjava/io/OutputStream;)V
    .registers 13
    .param p0, "inputByte"    # [B
    .param p1, "indexTargetSegment"    # I
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 495
    move v1, p1

    .line 496
    .local v1, "byteCnt":I
    if-eqz p0, :cond_9

    add-int/lit8 v7, v1, 0x1

    array-length v8, p0

    if-le v7, v8, :cond_11

    .line 497
    :cond_9
    new-instance v7, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    const-string v8, "Invalid Segment."

    invoke-direct {v7, v8}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 499
    :cond_11
    add-int/lit8 v7, v1, 0x1

    aget-byte v6, p0, v7

    .line 504
    .local v6, "targetMarker":B
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v4, "segmentInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;>;"
    :goto_1a
    array-length v7, p0

    add-int/lit8 v7, v7, -0x3

    if-ge v1, v7, :cond_4c

    .line 508
    aget-byte v7, p0, v1

    if-eq v7, v9, :cond_44

    .line 509
    new-instance v7, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid marker identifier code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, p0, v1

    and-int/lit16 v9, v9, 0xff

    .line 510
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 514
    :cond_44
    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p0, v7

    const/16 v8, -0x26

    if-ne v7, v8, :cond_71

    .line 536
    :cond_4c
    const/4 v7, 0x2

    new-array v2, v7, [B

    const/4 v7, 0x0

    aput-byte v9, v2, v7

    const/4 v7, 0x1

    aput-byte v6, v2, v7

    .line 537
    .local v2, "markerHead":[B
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 540
    const/4 v0, 0x2

    .line 541
    .local v0, "appendSegLength":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_87

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;

    .line 542
    .local v3, "segmentInfo":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;->getSegmentLength()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    add-int/2addr v0, v8

    .line 543
    goto :goto_5d

    .line 520
    .end local v0    # "appendSegLength":I
    .end local v2    # "markerHead":[B
    .end local v3    # "segmentInfo":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;
    :cond_71
    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getSegmentLength([BI)I

    move-result v5

    .line 523
    .local v5, "segmentLength":I
    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p0, v7

    if-ne v7, v6, :cond_83

    .line 526
    new-instance v7, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;

    invoke-direct {v7, v1, v5}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;-><init>(II)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_83
    add-int/lit8 v7, v5, 0x2

    add-int/2addr v1, v7

    .line 533
    goto :goto_1a

    .line 545
    .end local v5    # "segmentLength":I
    .restart local v0    # "appendSegLength":I
    .restart local v2    # "markerHead":[B
    :cond_87
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->convertToSegmentLengthBytes(I)[B

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write([B)V

    .line 548
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_92
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;

    .line 551
    .restart local v3    # "segmentInfo":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;->getIndex()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x2

    .line 552
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;->getSegmentLength()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    .line 549
    invoke-virtual {p2, p0, v8, v9}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_92

    .line 555
    .end local v3    # "segmentInfo":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;
    :cond_b0
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 556
    return-void
.end method

.method public static appendOnlyImageFromJpegData(Ljava/io/OutputStream;[BI)V
    .registers 9
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "jpegByte"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 323
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->skipApp0OrApp1Marker([B)I

    move-result v3

    .line 327
    .local v3, "index":I
    if-lez v3, :cond_1d

    .line 331
    const/16 v4, -0x25

    invoke-static {p1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getSegmentNum([BB)I

    move-result v1

    .line 332
    .local v1, "dqtNum":I
    const/16 v4, -0x3c

    invoke-static {p1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getSegmentNum([BB)I

    move-result v0

    .line 337
    .local v0, "dhtNum":I
    if-gt v1, v5, :cond_17

    if-le v0, v5, :cond_27

    .line 340
    :cond_17
    :try_start_17
    invoke-static {p1, v3, p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->appendImageInExifFormat([BILjava/io/OutputStream;)V

    .line 341
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1d} :catch_1e

    .line 355
    .end local v0    # "dhtNum":I
    .end local v1    # "dqtNum":I
    :cond_1d
    :goto_1d
    return-void

    .line 342
    .restart local v0    # "dhtNum":I
    .restart local v1    # "dqtNum":I
    :catch_1e
    move-exception v2

    .line 343
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "Yuv2ExifJpegConvertor"

    const-string v5, "Failed to append image data in exif format."

    invoke-static {v4, v5, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 348
    .end local v2    # "e":Ljava/io/IOException;
    :cond_27
    sub-int v4, p2, v3

    :try_start_29
    invoke-virtual {p0, p1, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 349
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2f} :catch_30

    goto :goto_1d

    .line 350
    :catch_30
    move-exception v2

    .line 351
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v4, "Yuv2ExifJpegConvertor"

    const-string v5, "Append image data failed."

    invoke-static {v4, v5, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method public static convertBitmapToExifJpeg(Landroid/graphics/Bitmap;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B
    .registers 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

    .prologue
    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v1, 0x0

    .line 51
    :goto_3
    return-object v1

    .line 49
    :cond_4
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->convertBitmapToPlainJpeg(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 51
    .local v0, "plainJpeg":[B
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->addExifToPlainJpeg([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B

    move-result-object v1

    goto :goto_3
.end method

.method public static convertBitmapToPlainJpeg(Landroid/graphics/Bitmap;)[B
    .registers 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 55
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 57
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static convertToSegmentLengthBytes(I)[B
    .registers 4
    .param p0, "intData"    # I

    .prologue
    .line 866
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 867
    .local v0, "bytes":[B
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 868
    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 869
    return-object v0
.end method

.method public static getExifByteOrder([B)Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;
    .registers 10
    .param p0, "inputByte"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 760
    const/4 v0, 0x0

    .line 761
    .local v0, "byteCnt":I
    if-eqz p0, :cond_1a

    array-length v3, p0

    if-lt v3, v8, :cond_1a

    aget-byte v3, p0, v0

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    aget-byte v4, v4, v7

    if-ne v3, v4, :cond_1a

    aget-byte v3, p0, v6

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    aget-byte v4, v4, v6

    if-eq v3, v4, :cond_1b

    .line 845
    :cond_1a
    :goto_1a
    return-object v2

    .line 770
    :cond_1b
    add-int/lit8 v0, v0, 0x2

    .line 773
    :goto_1d
    add-int/lit8 v3, v0, 0xb

    array-length v4, p0

    if-ge v3, v4, :cond_1a

    .line 786
    aget-byte v3, p0, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    .line 794
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    const/16 v4, -0x26

    if-eq v3, v4, :cond_1a

    .line 800
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP1_MARKER:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_a7

    .line 803
    add-int/lit8 v3, v0, 0x4

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_CODE:[B

    aget-byte v4, v4, v7

    if-ne v3, v4, :cond_a7

    add-int/lit8 v3, v0, 0x5

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_CODE:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_a7

    add-int/lit8 v3, v0, 0x6

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_CODE:[B

    aget-byte v4, v4, v8

    if-ne v3, v4, :cond_a7

    add-int/lit8 v3, v0, 0x7

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_CODE:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_a7

    add-int/lit8 v3, v0, 0x8

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_CODE:[B

    const/4 v5, 0x4

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_a7

    add-int/lit8 v3, v0, 0x9

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_CODE:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_a7

    .line 810
    add-int/lit8 v3, v0, 0xa

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_BYTE_ORDER_BE:[B

    aget-byte v4, v4, v7

    if-ne v3, v4, :cond_8f

    add-int/lit8 v3, v0, 0xb

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_BYTE_ORDER_BE:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_8f

    .line 814
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->BIG_ENDIAN:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    goto :goto_1a

    .line 815
    :cond_8f
    add-int/lit8 v3, v0, 0xa

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_BYTE_ORDER_LE:[B

    aget-byte v4, v4, v7

    if-ne v3, v4, :cond_1a

    add-int/lit8 v3, v0, 0xb

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_BYTE_ORDER_LE:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_1a

    .line 819
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->LITTLE_ENDIAN:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    goto/16 :goto_1a

    .line 838
    :cond_a7
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getSegmentLength([BI)I

    move-result v1

    .line 841
    .local v1, "segmentLength":I
    add-int/lit8 v3, v1, 0x2

    add-int/2addr v0, v3

    .line 842
    goto/16 :goto_1d
.end method

.method public static getExifThumbnail([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B
    .registers 31
    .param p0, "jfifData"    # [B
    .param p1, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

    .prologue
    .line 649
    .line 650
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getWidth()I

    move-result v26

    move/from16 v0, v26

    div-int/lit16 v0, v0, 0xa0

    move/from16 v26, v0

    .line 651
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getHeight()I

    move-result v27

    div-int/lit8 v27, v27, 0x78

    .line 649
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 654
    .local v16, "sampleSize":I
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 655
    .local v12, "option":Landroid/graphics/BitmapFactory$Options;
    const/16 v26, 0x0

    move/from16 v0, v26

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 656
    const/16 v26, 0x0

    move/from16 v0, v26

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 657
    sget-object v26, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v26

    iput-object v0, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 658
    move/from16 v0, v16

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 660
    const/16 v26, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 662
    .local v21, "srcBitmap":Landroid/graphics/Bitmap;
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 664
    .local v13, "outputStream":Ljava/io/ByteArrayOutputStream;
    if-eqz v21, :cond_14f

    .line 665
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    .line 666
    .local v22, "srcHeight":I
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    .line 667
    .local v24, "srcWidth":I
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x42f00000    # 120.0f

    div-float v8, v26, v27

    .line 668
    .local v8, "heightRate":F
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x43200000    # 160.0f

    div-float v25, v26, v27

    .line 671
    .local v25, "widhtRate":F
    cmpl-float v26, v8, v25

    if-lez v26, :cond_13f

    .line 672
    const/16 v17, 0x78

    .line 673
    .local v17, "scaledHeight":I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v26, v26, v8

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v19, v0

    .line 687
    .local v19, "scaledWidth":I
    :goto_73
    const/16 v26, 0xa0

    const/16 v27, 0x78

    sget-object v28, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v26 .. v28}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 689
    .local v5, "dstBitmap":Landroid/graphics/Bitmap;
    const/high16 v26, -0x1000000

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 691
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 692
    .local v4, "c":Landroid/graphics/Canvas;
    move/from16 v0, v19

    rsub-int v0, v0, 0xa0

    move/from16 v26, v0

    div-int/lit8 v15, v26, 0x2

    .line 693
    .local v15, "paddingWidth":I
    rsub-int/lit8 v26, v17, 0x78

    div-int/lit8 v14, v26, 0x2

    .line 695
    .local v14, "paddingHeight":I
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 698
    .local v18, "scaledThumbnailBitmap":Landroid/graphics/Bitmap;
    int-to-float v0, v15

    move/from16 v26, v0

    int-to-float v0, v14

    move/from16 v27, v0

    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 699
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v26

    if-nez v26, :cond_c2

    .line 700
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 703
    :cond_c2
    sget-object v26, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v27, 0x64

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 704
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v26

    if-nez v26, :cond_d6

    .line 705
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 712
    :cond_d6
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v26

    if-nez v26, :cond_df

    .line 713
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    .line 716
    :cond_df
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v23

    .line 717
    .local v23, "srcImage":[B
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    add-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v10, v0, [B

    .line 719
    .local v10, "integratedImage":[B
    const/4 v9, 0x0

    .line 721
    .local v9, "imageLength":I
    :try_start_f3
    move-object/from16 v0, v23

    invoke-static {v0, v10}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->integrateJfif([B[B)I
    :try_end_f8
    .catch Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException; {:try_start_f3 .. :try_end_f8} :catch_156

    move-result v9

    .line 729
    :goto_f9
    invoke-static {v10}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->skipApp0OrApp1Marker([B)I

    move-result v11

    .line 730
    .local v11, "offset":I
    sub-int v26, v9, v11

    sget-object v27, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    add-int v20, v26, v27

    .line 731
    .local v20, "size":I
    move/from16 v0, v20

    new-array v6, v0, [B

    .line 734
    .local v6, "dstImage":[B
    const/16 v26, 0x0

    sget-object v27, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    const/16 v28, 0x0

    aget-byte v27, v27, v28

    aput-byte v27, v6, v26

    .line 735
    const/16 v26, 0x1

    sget-object v27, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    const/16 v28, 0x1

    aget-byte v27, v27, v28

    aput-byte v27, v6, v26

    .line 738
    sget-object v26, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    array-length v0, v6

    move/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v10, v11, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    const/4 v10, 0x0

    .line 744
    :try_start_13b
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_13e} :catch_15b

    .line 749
    .end local v4    # "c":Landroid/graphics/Canvas;
    .end local v5    # "dstBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "dstImage":[B
    .end local v8    # "heightRate":F
    .end local v9    # "imageLength":I
    .end local v10    # "integratedImage":[B
    .end local v11    # "offset":I
    .end local v14    # "paddingHeight":I
    .end local v15    # "paddingWidth":I
    .end local v17    # "scaledHeight":I
    .end local v18    # "scaledThumbnailBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "scaledWidth":I
    .end local v20    # "size":I
    .end local v22    # "srcHeight":I
    .end local v23    # "srcImage":[B
    .end local v24    # "srcWidth":I
    .end local v25    # "widhtRate":F
    :goto_13e
    return-object v6

    .line 675
    .restart local v8    # "heightRate":F
    .restart local v22    # "srcHeight":I
    .restart local v24    # "srcWidth":I
    .restart local v25    # "widhtRate":F
    :cond_13f
    const/16 v19, 0xa0

    .line 676
    .restart local v19    # "scaledWidth":I
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v26, v26, v25

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v17, v0

    .restart local v17    # "scaledHeight":I
    goto/16 :goto_73

    .line 708
    .end local v8    # "heightRate":F
    .end local v17    # "scaledHeight":I
    .end local v19    # "scaledWidth":I
    .end local v22    # "srcHeight":I
    .end local v24    # "srcWidth":I
    .end local v25    # "widhtRate":F
    :cond_14f
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v6, v0, [B

    goto :goto_13e

    .line 722
    .restart local v4    # "c":Landroid/graphics/Canvas;
    .restart local v5    # "dstBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "heightRate":F
    .restart local v9    # "imageLength":I
    .restart local v10    # "integratedImage":[B
    .restart local v14    # "paddingHeight":I
    .restart local v15    # "paddingWidth":I
    .restart local v17    # "scaledHeight":I
    .restart local v18    # "scaledThumbnailBitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "scaledWidth":I
    .restart local v22    # "srcHeight":I
    .restart local v23    # "srcImage":[B
    .restart local v24    # "srcWidth":I
    .restart local v25    # "widhtRate":F
    :catch_156
    move-exception v7

    .line 724
    .local v7, "e":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
    move-object/from16 v10, v23

    .line 725
    array-length v9, v10

    goto :goto_f9

    .line 745
    .end local v7    # "e":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
    .restart local v6    # "dstImage":[B
    .restart local v11    # "offset":I
    .restart local v20    # "size":I
    :catch_15b
    move-exception v7

    .line 746
    .local v7, "e":Ljava/io/IOException;
    const-string v26, "Yuv2ExifJpegConvertor"

    const-string v27, "Closing output stream failed."

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13e
.end method

.method private static getSegmentLength([BI)I
    .registers 5
    .param p0, "inputByte"    # [B
    .param p1, "segmentIndex"    # I

    .prologue
    .line 856
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int v0, v1, v2

    .line 858
    .local v0, "segmentLength":I
    return v0
.end method

.method private static getSegmentNum([BB)I
    .registers 9
    .param p0, "inputByte"    # [B
    .param p1, "marker"    # B

    .prologue
    const/4 v3, -0x1

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "byteCnt":I
    if-eqz p0, :cond_13

    array-length v4, p0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_13

    aget-byte v4, p0, v0

    if-ne v4, v3, :cond_13

    const/4 v4, 0x1

    aget-byte v4, p0, v4

    const/16 v5, -0x28

    if-eq v4, v5, :cond_1c

    .line 373
    :cond_13
    const-string v4, "Yuv2ExifJpegConvertor"

    const-string v5, "Invalid SOI marker."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 414
    :cond_1b
    :goto_1b
    return v2

    .line 378
    :cond_1c
    add-int/lit8 v0, v0, 0x2

    .line 381
    const/4 v2, 0x0

    .line 382
    .local v2, "segmentNum":I
    :goto_1f
    array-length v4, p0

    add-int/lit8 v4, v4, -0x3

    if-ge v0, v4, :cond_1b

    .line 385
    aget-byte v4, p0, v0

    if-eq v4, v3, :cond_4a

    .line 386
    const-string v4, "Yuv2ExifJpegConvertor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid marker identifier code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    .line 387
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 386
    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 388
    goto :goto_1b

    .line 392
    :cond_4a
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    const/16 v5, -0x26

    if-eq v4, v5, :cond_1b

    .line 396
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    if-ne v4, p1, :cond_5a

    .line 398
    add-int/lit8 v2, v2, 0x1

    .line 405
    :cond_5a
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getSegmentLength([BI)I

    move-result v1

    .line 410
    .local v1, "segmentLength":I
    add-int/lit8 v4, v1, 0x2

    add-int/2addr v0, v4

    .line 411
    goto :goto_1f
.end method

.method public static integrateJfif([B[B)I
    .registers 30
    .param p0, "srcJpegData"    # [B
    .param p1, "dstJpegData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
        }
    .end annotation

    .prologue
    .line 146
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v25, v0

    .line 149
    .local v25, "srcJpegDataLength":I
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v15, v0, [B

    .line 151
    .local v15, "getData":[B
    const/4 v9, 0x0

    .line 154
    .local v9, "accessCount":I
    const/4 v8, 0x0

    .line 155
    .local v8, "FFDB_seg_length":I
    const/4 v6, 0x0

    .line 156
    .local v6, "FFC4_seg_length":I
    const/4 v7, 0x0

    .line 157
    .local v7, "FFDB_orgfile_length":I
    const/4 v5, 0x0

    .line 161
    .local v5, "FFC4_orgfile_length":I
    :cond_10
    :goto_10
    add-int/lit8 v26, v9, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_48

    .line 163
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v15, v26

    .line 164
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v15, v26

    .line 165
    add-int/lit8 v9, v9, 0x2

    .line 168
    const/16 v26, -0x1

    const/16 v27, 0x0

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3c

    .line 169
    new-instance v26, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    const-string v27, "No \'FF\' marker."

    invoke-direct/range {v26 .. v27}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 173
    :cond_3c
    const/16 v26, -0x26

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_f4

    .line 201
    :cond_48
    add-int/lit8 v26, v8, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 202
    .local v20, "pFFDB":[B
    add-int/lit8 v26, v6, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 205
    .local v18, "pFFC4":[B
    const/16 v26, 0x0

    const/16 v27, -0x1

    aput-byte v27, v20, v26

    .line 206
    const/16 v26, 0x1

    const/16 v27, -0x25

    aput-byte v27, v20, v26

    .line 207
    const/16 v26, 0x0

    const/16 v27, -0x1

    aput-byte v27, v18, v26

    .line 208
    const/16 v26, 0x1

    const/16 v27, -0x3c

    aput-byte v27, v18, v26

    .line 210
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 211
    .local v14, "ffdb_length":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 213
    .local v13, "ffc4_length":Ljava/lang/String;
    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 214
    .local v11, "bigIntLen":Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    .line 215
    .local v12, "bytes":[B
    const/16 v26, 0x2

    const/16 v27, 0x0

    aget-byte v27, v12, v27

    aput-byte v27, v20, v26

    .line 216
    const/16 v26, 0x3

    const/16 v27, 0x1

    aget-byte v27, v12, v27

    aput-byte v27, v20, v26

    .line 218
    new-instance v11, Ljava/math/BigInteger;

    .end local v11    # "bigIntLen":Ljava/math/BigInteger;
    invoke-direct {v11, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 219
    .restart local v11    # "bigIntLen":Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    .line 220
    array-length v0, v12

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_158

    .line 221
    const/16 v26, 0x2

    const/16 v27, 0x0

    aput-byte v27, v18, v26

    .line 222
    const/16 v26, 0x3

    const/16 v27, 0x0

    aget-byte v27, v12, v27

    aput-byte v27, v18, v26

    .line 228
    :goto_b3
    const/16 v21, 0x4

    .line 229
    .local v21, "pFFDBPos":I
    const/16 v19, 0x4

    .line 232
    .local v19, "pFFC4Pos":I
    sub-int v26, v25, v7

    sub-int v26, v26, v5

    add-int v26, v26, v8

    add-int/lit8 v26, v26, 0x2

    add-int v26, v26, v6

    add-int/lit8 v16, v26, 0x2

    .line 239
    .local v16, "integratedJpegDataLength":I
    move-object/from16 v22, p1

    .line 242
    .local v22, "pIntegratedJpegData":[B
    const/4 v9, 0x0

    .line 243
    const/16 v23, 0x0

    .line 244
    .local v23, "pos":I
    :goto_c8
    add-int/lit8 v26, v9, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_1b3

    .line 245
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v15, v26

    .line 246
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v15, v26

    .line 247
    add-int/lit8 v9, v9, 0x2

    .line 249
    const/16 v26, -0x1

    const/16 v27, 0x0

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_16a

    .line 250
    new-instance v26, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    const-string v27, "No \'FF\' marker."

    invoke-direct/range {v26 .. v27}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 175
    .end local v11    # "bigIntLen":Ljava/math/BigInteger;
    .end local v12    # "bytes":[B
    .end local v13    # "ffc4_length":Ljava/lang/String;
    .end local v14    # "ffdb_length":Ljava/lang/String;
    .end local v16    # "integratedJpegDataLength":I
    .end local v18    # "pFFC4":[B
    .end local v19    # "pFFC4Pos":I
    .end local v20    # "pFFDB":[B
    .end local v21    # "pFFDBPos":I
    .end local v22    # "pIntegratedJpegData":[B
    .end local v23    # "pos":I
    :cond_f4
    const/16 v26, -0x28

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_10

    .line 181
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 182
    .local v17, "len":[B
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v17, v26

    .line 183
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v17, v26

    .line 184
    new-instance v10, Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 185
    .local v10, "bi":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v24

    .line 187
    .local v24, "segmentLength":I
    const/16 v26, -0x3c

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_13e

    .line 190
    if-nez v6, :cond_13b

    move/from16 v26, v24

    :goto_131
    add-int v6, v6, v26

    .line 191
    add-int/lit8 v26, v24, 0x2

    add-int v5, v5, v26

    .line 198
    :cond_137
    :goto_137
    add-int v9, v9, v24

    .line 199
    goto/16 :goto_10

    .line 190
    :cond_13b
    add-int/lit8 v26, v24, -0x2

    goto :goto_131

    .line 192
    :cond_13e
    const/16 v26, -0x25

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_137

    .line 195
    if-nez v8, :cond_155

    move/from16 v26, v24

    :goto_14e
    add-int v8, v8, v26

    .line 196
    add-int/lit8 v26, v24, 0x2

    add-int v7, v7, v26

    goto :goto_137

    .line 195
    :cond_155
    add-int/lit8 v26, v24, -0x2

    goto :goto_14e

    .line 224
    .end local v10    # "bi":Ljava/math/BigInteger;
    .end local v17    # "len":[B
    .end local v24    # "segmentLength":I
    .restart local v11    # "bigIntLen":Ljava/math/BigInteger;
    .restart local v12    # "bytes":[B
    .restart local v13    # "ffc4_length":Ljava/lang/String;
    .restart local v14    # "ffdb_length":Ljava/lang/String;
    .restart local v18    # "pFFC4":[B
    .restart local v20    # "pFFDB":[B
    :cond_158
    const/16 v26, 0x2

    const/16 v27, 0x0

    aget-byte v27, v12, v27

    aput-byte v27, v18, v26

    .line 225
    const/16 v26, 0x3

    const/16 v27, 0x1

    aget-byte v27, v12, v27

    aput-byte v27, v18, v26

    goto/16 :goto_b3

    .line 253
    .restart local v16    # "integratedJpegDataLength":I
    .restart local v19    # "pFFC4Pos":I
    .restart local v21    # "pFFDBPos":I
    .restart local v22    # "pIntegratedJpegData":[B
    .restart local v23    # "pos":I
    :cond_16a
    const/16 v26, -0x26

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b4

    .line 257
    const/16 v26, 0x0

    add-int/lit8 v27, v8, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    add-int/lit8 v26, v8, 0x2

    add-int v23, v23, v26

    .line 260
    const/16 v26, 0x0

    add-int/lit8 v27, v6, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    add-int/lit8 v26, v6, 0x2

    add-int v23, v23, v26

    .line 264
    add-int/lit8 v26, v9, -0x2

    add-int/lit8 v27, v9, -0x2

    sub-int v27, v25, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    :cond_1b3
    return v16

    .line 267
    :cond_1b4
    const/16 v26, -0x28

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d4

    .line 269
    add-int/lit8 v26, v9, -0x2

    const/16 v27, 0x0

    aget-byte v27, v15, v27

    aput-byte v27, v22, v26

    .line 270
    add-int/lit8 v26, v9, -0x1

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    aput-byte v27, v22, v26

    .line 271
    add-int/lit8 v23, v23, 0x2

    .line 272
    goto/16 :goto_c8

    .line 275
    :cond_1d4
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 276
    .restart local v17    # "len":[B
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v17, v26

    .line 277
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v17, v26

    .line 278
    new-instance v10, Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 279
    .restart local v10    # "bi":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v24

    .line 281
    .restart local v24    # "segmentLength":I
    const/16 v26, -0x3c

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_21a

    .line 282
    add-int/lit8 v26, v9, 0x2

    add-int/lit8 v27, v24, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    add-int/lit8 v26, v24, -0x2

    add-int v19, v19, v26

    .line 292
    :goto_216
    add-int v9, v9, v24

    .line 293
    goto/16 :goto_c8

    .line 284
    :cond_21a
    const/16 v26, -0x25

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_23c

    .line 285
    add-int/lit8 v26, v9, 0x2

    add-int/lit8 v27, v24, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    add-int/lit8 v26, v24, -0x2

    add-int v21, v21, v26

    goto :goto_216

    .line 288
    :cond_23c
    add-int/lit8 v26, v9, -0x2

    add-int/lit8 v27, v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    add-int/lit8 v26, v24, 0x2

    add-int v23, v23, v26

    goto :goto_216
.end method

.method public static preload()V
    .registers 0

    .prologue
    .line 39
    return-void
.end method

.method public static skipApp0OrApp1Marker([B)I
    .registers 8
    .param p0, "inputByte"    # [B

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "byteCnt":I
    const/4 v2, 0x0

    .line 585
    .local v2, "siftSize":I
    array-length v3, p0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_19

    aget-byte v3, p0, v5

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_19

    aget-byte v3, p0, v6

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    aget-byte v4, v4, v6

    if-eq v3, v4, :cond_1a

    .line 634
    :cond_19
    :goto_19
    return v1

    .line 593
    :cond_1a
    add-int/lit8 v0, v0, 0x2

    .line 596
    :goto_1c
    array-length v3, p0

    add-int/lit8 v3, v3, -0x3

    if-ge v0, v3, :cond_19

    .line 599
    aget-byte v3, p0, v0

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP0_MARKER:[B

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_31

    aget-byte v3, p0, v0

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP1_MARKER:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_19

    .line 604
    :cond_31
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getSegmentLength([BI)I

    move-result v2

    .line 607
    aget-byte v3, p0, v0

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP0_MARKER:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_4e

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP0_MARKER:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_4e

    .line 609
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP0_MARKER:[B

    array-length v3, v3

    add-int/2addr v3, v0

    add-int v1, v3, v2

    .line 614
    .local v1, "index":I
    goto :goto_19

    .line 617
    .end local v1    # "index":I
    :cond_4e
    aget-byte v3, p0, v0

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP1_MARKER:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_67

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP1_MARKER:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_67

    .line 619
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP1_MARKER:[B

    array-length v3, v3

    add-int/2addr v3, v0

    add-int v1, v3, v2

    .line 625
    .restart local v1    # "index":I
    goto :goto_19

    .line 629
    .end local v1    # "index":I
    :cond_67
    add-int/2addr v0, v2

    goto :goto_1c
.end method
