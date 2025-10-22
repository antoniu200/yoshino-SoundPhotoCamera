.class public Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;
.super Ljava/lang/Object;
.source "ThumbnailFactory.java"


# static fields
.field private static final MAX_NUM_PIXELS_MICRO_THUMBNAIL:I = 0x4b00

.field public static final TAG:Ljava/lang/String; = "ThumbnailFactory"

.field public static final TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60

.field private static final UNCONSTRAINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 16
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v12, -0x1

    .line 234
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 235
    .local v4, "w":D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 237
    .local v0, "h":D
    if-ne p2, v12, :cond_12

    move v2, v6

    .line 239
    .local v2, "lowerBound":I
    :goto_b
    if-ne p1, v12, :cond_20

    const/16 v3, 0x80

    .line 242
    .local v3, "upperBound":I
    :goto_f
    if-ge v3, v2, :cond_34

    .line 252
    .end local v2    # "lowerBound":I
    :cond_11
    :goto_11
    return v2

    .line 237
    .end local v3    # "upperBound":I
    :cond_12
    mul-double v8, v4, v0

    int-to-double v10, p2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    goto :goto_b

    .line 239
    .restart local v2    # "lowerBound":I
    :cond_20
    int-to-double v8, p1

    div-double v8, v4, v8

    .line 240
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, p1

    div-double v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    .line 239
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v3, v8

    goto :goto_f

    .line 247
    .restart local v3    # "upperBound":I
    :cond_34
    if-ne p2, v12, :cond_3a

    if-ne p1, v12, :cond_3a

    move v2, v6

    .line 248
    goto :goto_11

    .line 249
    :cond_3a
    if-eq p1, v12, :cond_11

    move v2, v3

    .line 252
    goto :goto_11
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 219
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 221
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_e

    .line 222
    const/4 v1, 0x1

    .line 223
    .local v1, "roundedSize":I
    :goto_9
    if-ge v1, v0, :cond_14

    .line 224
    shl-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 227
    .end local v1    # "roundedSize":I
    :cond_e
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 229
    .restart local v1    # "roundedSize":I
    :cond_14
    return v1
.end method

.method public static createMicroThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Landroid/graphics/Bitmap;
    .registers 10
    .param p0, "info"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 58
    const/4 v0, 0x0

    .line 64
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 65
    .local v5, "temp":Landroid/graphics/Bitmap;
    :try_start_4
    iget v6, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    packed-switch v6, :pswitch_data_a4

    .line 89
    const-string v6, "ThumbnailFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createMicroThumbnail() wrong type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_23
    if-eqz v5, :cond_30

    .line 94
    const/16 v6, 0x60

    const/16 v7, 0x60

    invoke-static {v5, v6, v7}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_30} :catch_78
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_30} :catch_92

    .line 105
    :cond_30
    :goto_30
    if-nez v0, :cond_9d

    .line 106
    const-string v6, "ThumbnailFactory"

    const-string v7, "createMicroThumbnail() can\'t create a Micro thumbnail."

    invoke-static {v6, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_39
    :goto_39
    return-object v4

    .line 67
    :pswitch_3a
    :try_start_3a
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 68
    goto :goto_23

    .line 72
    :pswitch_41
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 73
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 74
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 75
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 76
    iget-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v6, :cond_39

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v6, v7, :cond_39

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v6, v7, :cond_39

    .line 79
    const/16 v6, 0x60

    const/16 v7, 0x4b00

    invoke-static {v3, v6, v7}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 82
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 83
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 84
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 85
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_76} :catch_78
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3a .. :try_end_76} :catch_92

    move-result-object v5

    .line 87
    goto :goto_23

    .line 99
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_78
    move-exception v2

    .line 100
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "ThumbnailFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createMicroThumbnail() got exception ex :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 101
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_92
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v6, "ThumbnailFactory"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 110
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_9d
    iget v6, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOrientation:I

    invoke-static {v0, v6}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;->rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 111
    .local v4, "result":Landroid/graphics/Bitmap;
    goto :goto_39

    .line 65
    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3a
        :pswitch_41
    .end packed-switch
.end method

.method public static createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 183
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_6
    invoke-virtual {v2, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 185
    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_e} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_e} :catch_31
    .catchall {:try_start_6 .. :try_end_e} :catchall_46

    move-result-object v0

    .line 192
    :try_start_f
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_12} :catch_13

    .line 197
    :goto_12
    return-object v0

    .line 193
    :catch_13
    move-exception v1

    .line 194
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v3, "ThumbnailFactory"

    const-string v4, "Ignore failures while cleaning up."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 186
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1c
    move-exception v1

    .line 187
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_1d
    const-string v3, "ThumbnailFactory"

    const-string v4, "Assume this is a corrupt video file."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_46

    .line 192
    :try_start_24
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_12

    .line 193
    :catch_28
    move-exception v1

    .line 194
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v3, "ThumbnailFactory"

    const-string v4, "Ignore failures while cleaning up."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 188
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_31
    move-exception v1

    .line 189
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    :try_start_32
    const-string v3, "ThumbnailFactory"

    const-string v4, "Assume this is a corrupt video file."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_46

    .line 192
    :try_start_39
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_12

    .line 193
    :catch_3d
    move-exception v1

    .line 194
    const-string v3, "ThumbnailFactory"

    const-string v4, "Ignore failures while cleaning up."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 191
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_46
    move-exception v3

    .line 192
    :try_start_47
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 195
    :goto_4a
    throw v3

    .line 193
    :catch_4b
    move-exception v1

    .line 194
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    const-string v4, "ThumbnailFactory"

    const-string v5, "Ignore failures while cleaning up."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method

.method public static createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 162
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_6
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 164
    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_e} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_e} :catch_31
    .catchall {:try_start_6 .. :try_end_e} :catchall_46

    move-result-object v0

    .line 171
    :try_start_f
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_12} :catch_13

    .line 176
    :goto_12
    return-object v0

    .line 172
    :catch_13
    move-exception v1

    .line 173
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v3, "ThumbnailFactory"

    const-string v4, "Ignore failures while cleaning up."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 165
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1c
    move-exception v1

    .line 166
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_1d
    const-string v3, "ThumbnailFactory"

    const-string v4, "Assume this is a corrupt video file."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_46

    .line 171
    :try_start_24
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_12

    .line 172
    :catch_28
    move-exception v1

    .line 173
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v3, "ThumbnailFactory"

    const-string v4, "Ignore failures while cleaning up."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 167
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_31
    move-exception v1

    .line 168
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    :try_start_32
    const-string v3, "ThumbnailFactory"

    const-string v4, "Assume this is a corrupt video file."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_46

    .line 171
    :try_start_39
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_12

    .line 172
    :catch_3d
    move-exception v1

    .line 173
    const-string v3, "ThumbnailFactory"

    const-string v4, "Ignore failures while cleaning up."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 170
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_46
    move-exception v3

    .line 171
    :try_start_47
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 174
    :goto_4a
    throw v3

    .line 172
    :catch_4b
    move-exception v1

    .line 173
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    const-string v4, "ThumbnailFactory"

    const-string v5, "Ignore failures while cleaning up."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method

.method private static rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degree"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 139
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 140
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 141
    .local v4, "h":I
    move-object v0, p0

    .line 143
    .local v0, "result":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_25

    .line 144
    :try_start_d
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 145
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v1, p1

    int-to-float v2, v3

    div-float/2addr v2, v10

    int-to-float v6, v4

    div-float/2addr v6, v10

    invoke-virtual {v5, v1, v2, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 146
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 147
    .local v9, "temp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_24} :catch_26
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_24} :catch_4a

    .line 148
    move-object v0, v9

    .line 155
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v9    # "temp":Landroid/graphics/Bitmap;
    :cond_25
    :goto_25
    return-object v0

    .line 150
    :catch_26
    move-exception v8

    .line 151
    .local v8, "exArg":Ljava/lang/IllegalArgumentException;
    const-string v1, "ThumbnailFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException : width = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", height = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 152
    .end local v8    # "exArg":Ljava/lang/IllegalArgumentException;
    :catch_4a
    move-exception v7

    .line 153
    .local v7, "ex":Ljava/lang/Exception;
    const-string v1, "ThumbnailFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : width = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", height = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public static tryCreateThumbnail(Ljava/lang/String;)Z
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 122
    const/4 v1, 0x0

    .line 124
    .local v1, "isSuccess":Z
    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 125
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 126
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 127
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 128
    iget-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_1c

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v4, :cond_1c

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_21

    if-ne v3, v4, :cond_1e

    .line 129
    :cond_1c
    const/4 v3, 0x0

    .line 135
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_1d
    return v3

    .line 131
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1e
    const/4 v1, 0x1

    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_1f
    move v3, v1

    .line 135
    goto :goto_1d

    .line 132
    :catch_21
    move-exception v0

    .line 133
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "ThumbnailFactory"

    const-string v4, "createMicroThumbnail() : "

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method
