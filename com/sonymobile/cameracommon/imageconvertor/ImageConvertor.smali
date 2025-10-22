.class public Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;
.super Ljava/lang/Object;
.source "ImageConvertor.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;,
        Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageConvertor"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "cameracommonimageconvertor"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertArgb8888ToYvu420Sp(II[I[B)V
    .registers 8
    .param p0, "frameWidth"    # I
    .param p1, "frameHeight"    # I
    .param p2, "srcArgb"    # [I
    .param p3, "dstYvu"    # [B

    .prologue
    .line 99
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeConvertArgb8888ToYvu420Sp(II[I[B)I

    move-result v0

    .line 104
    .local v0, "ret":I
    if-eqz v0, :cond_1f

    .line 105
    new-instance v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Code Returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_1f
    return-void
.end method

.method public static convertBitmapToYuv(Landroid/graphics/Bitmap;)Landroid/graphics/YuvImage;
    .registers 15
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 305
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 306
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 308
    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 309
    .local v1, "pixels":[I
    mul-int v0, v3, v7

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v9, v0, [B

    .local v9, "yuvBytes":[B
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 310
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 312
    invoke-static {v3, v7, v1, v9}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->convertArgb8888ToYvu420Sp(II[I[B)V

    .line 317
    new-instance v8, Landroid/graphics/YuvImage;

    const/16 v10, 0x11

    const/4 v13, 0x0

    move v11, v3

    move v12, v7

    invoke-direct/range {v8 .. v13}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 318
    .local v8, "yuvImage":Landroid/graphics/YuvImage;
    return-object v8
.end method

.method public static convertYuvToBitmap(Landroid/graphics/YuvImage;)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;

    .prologue
    .line 265
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 266
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 267
    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->convertYuvToBitmap(Landroid/graphics/YuvImage;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static convertYuvToBitmap(Landroid/graphics/YuvImage;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 284
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v4

    .line 285
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v2

    .line 287
    .local v2, "height":I
    const/4 v1, 0x0

    .line 288
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :try_start_9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_32

    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 289
    :try_start_f
    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v7, 0x55

    invoke-virtual {p0, v5, v7, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 290
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 291
    .local v3, "jpegByte":[B
    const/4 v5, 0x0

    array-length v7, v3

    invoke-static {v3, v5, v7, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_24} :catch_38
    .catchall {:try_start_f .. :try_end_24} :catchall_4f

    move-result-object v1

    .line 292
    if-eqz v0, :cond_2c

    if-eqz v6, :cond_34

    :try_start_29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_32

    .line 296
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "jpegByte":[B
    :cond_2c
    :goto_2c
    return-object v1

    .line 292
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "jpegByte":[B
    :catch_2d
    move-exception v5

    :try_start_2e
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2c

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "jpegByte":[B
    :catch_32
    move-exception v5

    goto :goto_2c

    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "jpegByte":[B
    :cond_34
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_37} :catch_32

    goto :goto_2c

    .line 288
    .end local v3    # "jpegByte":[B
    :catch_38
    move-exception v5

    :try_start_39
    throw v5
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    .line 292
    :catchall_3a
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_3e
    if-eqz v0, :cond_45

    if-eqz v6, :cond_4b

    :try_start_42
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_32

    :cond_45
    :goto_45
    :try_start_45
    throw v5

    :catch_46
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_45

    :cond_4b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4e} :catch_32

    goto :goto_45

    :catchall_4f
    move-exception v5

    goto :goto_3e
.end method

.method public static convertYuvToBitmap(Landroid/graphics/YuvImage;Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p1, "shrinkRatio"    # Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    .prologue
    .line 277
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 278
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 279
    iget v1, p1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->shrinkSize:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 280
    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->convertYuvToBitmap(Landroid/graphics/YuvImage;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static cropYuvImage(Landroid/graphics/YuvImage;Landroid/graphics/Rect;)Landroid/graphics/YuvImage;
    .registers 18
    .param p0, "orgImage"    # Landroid/graphics/YuvImage;
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .prologue
    .line 329
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 330
    :cond_4
    const/4 v9, 0x0

    .line 392
    :goto_5
    return-object v9

    .line 332
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 333
    .local v6, "cropWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 334
    .local v7, "cropHeight":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 335
    .local v4, "cropX":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 338
    .local v5, "cropY":I
    rem-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_1e

    .line 339
    add-int/lit8 v4, v4, 0x1

    .line 340
    add-int/lit8 v6, v6, -0x1

    .line 342
    :cond_1e
    rem-int/lit8 v9, v6, 0x2

    if-eqz v9, :cond_24

    .line 343
    add-int/lit8 v6, v6, 0x1

    .line 345
    :cond_24
    rem-int/lit8 v9, v5, 0x2

    if-eqz v9, :cond_2c

    .line 346
    add-int/lit8 v5, v5, 0x1

    .line 347
    add-int/lit8 v7, v7, -0x1

    .line 349
    :cond_2c
    rem-int/lit8 v9, v7, 0x2

    if-eqz v9, :cond_32

    .line 350
    add-int/lit8 v7, v7, 0x1

    .line 354
    :cond_32
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v2

    .line 355
    .local v2, "orgWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v3

    .line 356
    .local v3, "orgHeight":I
    if-lez v6, :cond_42

    if-ge v4, v2, :cond_42

    if-lez v7, :cond_42

    if-lt v5, v3, :cond_44

    .line 358
    :cond_42
    const/4 v9, 0x0

    goto :goto_5

    .line 360
    :cond_44
    if-gez v4, :cond_48

    .line 361
    add-int/2addr v6, v4

    .line 362
    const/4 v4, 0x0

    .line 364
    :cond_48
    add-int v9, v4, v6

    if-le v9, v2, :cond_4e

    .line 365
    sub-int v6, v2, v4

    .line 367
    :cond_4e
    if-gez v5, :cond_52

    .line 368
    add-int/2addr v7, v5

    .line 369
    const/4 v5, 0x0

    .line 371
    :cond_52
    add-int v9, v5, v7

    if-le v9, v3, :cond_58

    .line 372
    sub-int v7, v3, v5

    .line 375
    :cond_58
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v1

    .line 376
    .local v1, "orgYuvByteArray":[B
    mul-int v9, v6, v7

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    new-array v8, v9, [B

    .line 377
    .local v8, "dstYuvByteArray":[B
    invoke-static/range {v1 .. v8}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeCropYvu420Sp([BIIIIII[B)I

    move-result v15

    .line 386
    .local v15, "ret":I
    if-eqz v15, :cond_83

    .line 387
    new-instance v9, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error Code Returned : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 390
    :cond_83
    new-instance v9, Landroid/graphics/YuvImage;

    .line 392
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/YuvImage;->getYuvFormat()I

    move-result v11

    const/4 v14, 0x0

    move-object v10, v8

    move v12, v6

    move v13, v7

    invoke-direct/range {v9 .. v14}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    goto/16 :goto_5
.end method

.method public static cropYuvImage(Lcom/sonymobile/cameracommon/opengl/FrameData;Landroid/graphics/Rect;)Lcom/sonymobile/cameracommon/opengl/FrameData;
    .registers 13
    .param p0, "orgImage"    # Lcom/sonymobile/cameracommon/opengl/FrameData;
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    .line 410
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 475
    :cond_5
    return-object v8

    .line 413
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 414
    .local v5, "cropWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 415
    .local v6, "cropHeight":I
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 416
    .local v3, "cropX":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 419
    .local v4, "cropY":I
    rem-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_1a

    .line 420
    add-int/lit8 v3, v3, 0x1

    .line 421
    add-int/lit8 v5, v5, -0x1

    .line 423
    :cond_1a
    rem-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_20

    .line 424
    add-int/lit8 v5, v5, 0x1

    .line 426
    :cond_20
    rem-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_28

    .line 427
    add-int/lit8 v4, v4, 0x1

    .line 428
    add-int/lit8 v6, v6, -0x1

    .line 430
    :cond_28
    rem-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_2e

    .line 431
    add-int/lit8 v6, v6, 0x1

    .line 435
    :cond_2e
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameData;->getFrameWidth()I

    move-result v1

    .line 436
    .local v1, "orgWidth":I
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameData;->getFrameHeight()I

    move-result v2

    .line 437
    .local v2, "orgHeight":I
    if-lez v5, :cond_5

    if-ge v3, v1, :cond_5

    if-lez v6, :cond_5

    if-ge v4, v2, :cond_5

    .line 441
    if-gez v3, :cond_42

    .line 442
    add-int/2addr v5, v3

    .line 443
    const/4 v3, 0x0

    .line 445
    :cond_42
    add-int v0, v3, v5

    if-le v0, v1, :cond_48

    .line 446
    sub-int v5, v1, v3

    .line 448
    :cond_48
    if-gez v4, :cond_4c

    .line 449
    add-int/2addr v6, v4

    .line 450
    const/4 v4, 0x0

    .line 452
    :cond_4c
    add-int v0, v4, v6

    if-le v0, v2, :cond_52

    .line 453
    sub-int v6, v2, v4

    .line 456
    :cond_52
    new-instance v8, Lcom/sonymobile/cameracommon/opengl/FrameData;

    sget-object v0, Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;->YVU420_SEMIPLANAR:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    invoke-direct {v8, v0, v5, v6}, Lcom/sonymobile/cameracommon/opengl/FrameData;-><init>(Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;II)V

    .line 462
    .local v8, "dstFrameData":Lcom/sonymobile/cameracommon/opengl/FrameData;
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameData;->getByteArrayYvu()[B

    move-result-object v0

    .line 469
    invoke-virtual {v8}, Lcom/sonymobile/cameracommon/opengl/FrameData;->getByteArrayYvu()[B

    move-result-object v7

    .line 461
    invoke-static/range {v0 .. v7}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeCropYvu420Sp([BIIIIII[B)I

    move-result v9

    .line 471
    .local v9, "ret":I
    if-eqz v9, :cond_5

    .line 472
    new-instance v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error Code Returned : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final decodeJpegToYvu420Sp(Ljava/lang/String;II[BZ)V
    .registers 12
    .param p0, "srcJpegFilePath"    # Ljava/lang/String;
    .param p1, "frameWidth"    # I
    .param p2, "frameHeight"    # I
    .param p3, "dstYvu"    # [B
    .param p4, "withRotation"    # Z

    .prologue
    .line 239
    array-length v4, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeDecodeJpegFileToYvu420Sp(Ljava/lang/String;II[BIZ)I

    move-result v6

    .line 246
    .local v6, "ret":I
    if-eqz v6, :cond_25

    .line 247
    new-instance v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Code Returned : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_25
    return-void
.end method

.method public static final decodeJpegToYvu420Sp([BII[BZ)V
    .registers 13
    .param p0, "srcJpeg"    # [B
    .param p1, "frameWidth"    # I
    .param p2, "frameHeight"    # I
    .param p3, "dstYvu"    # [B
    .param p4, "withRotation"    # Z

    .prologue
    .line 202
    array-length v1, p0

    array-length v5, p3

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeDecodeJpegToYvu420Sp([BIII[BIZ)I

    move-result v7

    .line 210
    .local v7, "ret":I
    if-eqz v7, :cond_26

    .line 211
    new-instance v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Code Returned : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_26
    return-void
.end method

.method private static final native nativeConvertArgb8888ToYvu420Sp(II[I[B)I
.end method

.method private static final native nativeCropYvu420Sp([BIIIIII[B)I
.end method

.method private static final native nativeDecodeJpegFileToYvu420Sp(Ljava/lang/String;II[BIZ)I
.end method

.method private static final native nativeDecodeJpegToYvu420Sp([BIII[BIZ)I
.end method

.method private static final native nativeRotateByteArrayYuv420Left90([BII[B)I
.end method

.method private static final native nativeRotateByteArrayYuv420Right90([BII[B)I
.end method

.method private static final native nativeRotateByteBufferYuv420Left90(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)I
.end method

.method private static final native nativeRotateByteBufferYuv420Right90(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)I
.end method

.method private static final native nativeShrinkByteArrayYvu420Sp([BII[BI)I
.end method

.method private static final native nativeShrinkByteBufferYvu420Sp(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;I)I
.end method

.method private static final native nativeSplitYvu420Sp(II[B[B[B[BI)I
.end method

.method public static rotateYuv420(Landroid/graphics/YuvImage;)Landroid/graphics/YuvImage;
    .registers 7
    .param p0, "orgImage"    # Landroid/graphics/YuvImage;

    .prologue
    const/4 v5, 0x0

    .line 487
    if-nez p0, :cond_4

    .line 498
    :goto_3
    return-object v5

    .line 491
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v0

    .line 492
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v3

    .line 491
    invoke-static {v0, v2, v3}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->rotateYuv420Left90WithReversedLR([BII)[B

    move-result-object v1

    .line 494
    .local v1, "yuv":[B
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    .line 497
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v3

    .line 498
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    move-object v5, v0

    goto :goto_3
.end method

.method public static final rotateYuv420Left90(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V
    .registers 8
    .param p0, "srcByteBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "dstByteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 576
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeRotateByteBufferYuv420Left90(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)I

    move-result v0

    .line 581
    .local v0, "ret":I
    if-eqz v0, :cond_1f

    .line 582
    new-instance v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Code Returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 584
    :cond_1f
    return-void
.end method

.method public static final rotateYuv420Left90([BII[B)V
    .registers 8
    .param p0, "srcByteArray"    # [B
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "dstByteArray"    # [B

    .prologue
    .line 606
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeRotateByteArrayYuv420Left90([BII[B)I

    move-result v0

    .line 611
    .local v0, "ret":I
    if-eqz v0, :cond_1f

    .line 612
    new-instance v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Code Returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 614
    :cond_1f
    return-void
.end method

.method public static final rotateYuv420Left90WithReversedLR([BII)[B
    .registers 13
    .param p0, "data"    # [B
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I

    .prologue
    .line 639
    array-length v8, p0

    new-array v6, v8, [B

    .line 640
    .local v6, "yuv":[B
    const/4 v0, 0x0

    .line 643
    .local v0, "i":I
    move v2, p1

    .local v2, "x":I
    :goto_5
    if-lez v2, :cond_1d

    .line 644
    move v4, p2

    .local v4, "y":I
    :goto_8
    if-lez v4, :cond_1a

    .line 645
    mul-int v8, v4, p1

    sub-int v9, p1, v2

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, p0, v8

    aput-byte v8, v6, v0

    .line 646
    add-int/lit8 v0, v0, 0x1

    .line 644
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 643
    :cond_1a
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 651
    .end local v4    # "y":I
    :cond_1d
    mul-int v1, p1, p2

    .line 652
    .local v1, "offset":I
    move v0, v1

    .line 654
    div-int/lit8 v7, p2, 0x2

    .line 655
    .local v7, "yuvHeight":I
    move v2, p1

    :goto_23
    if-lez v2, :cond_48

    .line 656
    sub-int v3, p1, v2

    .line 657
    .local v3, "xPos":I
    move v4, v7

    .restart local v4    # "y":I
    :goto_28
    if-lez v4, :cond_45

    .line 658
    mul-int v8, v4, p1

    add-int v5, v1, v8

    .line 659
    .local v5, "yPos":I
    sub-int v8, v5, v3

    add-int/lit8 v8, v8, -0x2

    aget-byte v8, p0, v8

    aput-byte v8, v6, v0

    .line 660
    add-int/lit8 v0, v0, 0x1

    .line 661
    sub-int v8, v5, v3

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, p0, v8

    aput-byte v8, v6, v0

    .line 662
    add-int/lit8 v0, v0, 0x1

    .line 657
    add-int/lit8 v4, v4, -0x1

    goto :goto_28

    .line 655
    .end local v5    # "yPos":I
    :cond_45
    add-int/lit8 v2, v2, -0x2

    goto :goto_23

    .line 665
    .end local v3    # "xPos":I
    .end local v4    # "y":I
    :cond_48
    return-object v6
.end method

.method public static final rotateYuv420Right90(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V
    .registers 8
    .param p0, "srcByteBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "dstByteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 516
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeRotateByteBufferYuv420Right90(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)I

    move-result v0

    .line 521
    .local v0, "ret":I
    if-eqz v0, :cond_1f

    .line 522
    new-instance v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Code Returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 524
    :cond_1f
    return-void
.end method

.method public static final rotateYuv420Right90([BII[B)V
    .registers 8
    .param p0, "srcByteArray"    # [B
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "dstByteArray"    # [B

    .prologue
    .line 546
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeRotateByteArrayYuv420Right90([BII[B)I

    move-result v0

    .line 551
    .local v0, "ret":I
    if-eqz v0, :cond_1f

    .line 552
    new-instance v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Code Returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 554
    :cond_1f
    return-void
.end method

.method public static final shrinkYvu420Sp(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;)V
    .registers 9
    .param p0, "srcYvu"    # Ljava/nio/ByteBuffer;
    .param p1, "frameWidth"    # I
    .param p2, "frameHeight"    # I
    .param p3, "dstYvu"    # Ljava/nio/ByteBuffer;
    .param p4, "shrinkRatio"    # Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    .prologue
    .line 145
    iget v1, p4, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->shrinkSize:I

    invoke-static {p0, p1, p2, p3, v1}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeShrinkByteBufferYvu420Sp(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;I)I

    move-result v0

    .line 151
    .local v0, "ret":I
    if-eqz v0, :cond_21

    .line 152
    new-instance v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Code Returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_21
    return-void
.end method

.method public static final shrinkYvu420Sp([BII[BLcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;)V
    .registers 9
    .param p0, "srcYvu"    # [B
    .param p1, "frameWidth"    # I
    .param p2, "frameHeight"    # I
    .param p3, "dstYvu"    # [B
    .param p4, "shrinkRatio"    # Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    .prologue
    .line 169
    iget v1, p4, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->shrinkSize:I

    invoke-static {p0, p1, p2, p3, v1}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeShrinkByteArrayYvu420Sp([BII[BI)I

    move-result v0

    .line 175
    .local v0, "ret":I
    if-eqz v0, :cond_21

    .line 176
    new-instance v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Code Returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_21
    return-void
.end method

.method public static final splitYvu420Sp(II[B[B[B[BI)V
    .registers 11
    .param p0, "frameWidth"    # I
    .param p1, "frameHeight"    # I
    .param p2, "srcYvu"    # [B
    .param p3, "dstY"    # [B
    .param p4, "dstV"    # [B
    .param p5, "dstU"    # [B
    .param p6, "sampleSize"    # I

    .prologue
    .line 64
    invoke-static/range {p0 .. p6}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeSplitYvu420Sp(II[B[B[B[BI)I

    move-result v0

    .line 72
    .local v0, "ret":I
    if-eqz v0, :cond_1f

    .line 73
    new-instance v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Code Returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_1f
    return-void
.end method
