.class public Lcom/sonyericsson/cameracommon/utility/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static final FIRST_REDUCE_RATIO_FULL_IMG:I = 0x2

.field private static final FULL_SIZE_MAX_LENGTH:I = 0x401

.field public static final TAG:Ljava/lang/String; = "ImageLoader"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImageData:[B

.field private final mOption:Landroid/graphics/BitmapFactory$Options;

.field private final mOrientation:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "orientation"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mUri:Landroid/net/Uri;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mImageData:[B

    .line 81
    iput p3, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOrientation:I

    .line 82
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[BI)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageData"    # [B
    .param p3, "orientation"    # I

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mContext:Landroid/content/Context;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mUri:Landroid/net/Uri;

    .line 94
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mImageData:[B

    .line 95
    iput p3, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOrientation:I

    .line 96
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    .line 97
    return-void
.end method

.method private calcBounds(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)V
    .registers 6
    .param p1, "st"    # Ljava/io/InputStream;
    .param p2, "opt"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 229
    const/4 v1, 0x2

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 230
    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 231
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    .local v0, "temp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 236
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 238
    :cond_1a
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v1, v2, :cond_22

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v2, :cond_31

    .line 239
    :cond_22
    const-string v1, "ImageLoader"

    const-string v2, "Bitmap read error"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Failed to calculate bounds of bitmap"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_31
    return-void
.end method

.method private calcRatio(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 11
    .param p1, "opt"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "firstRatio"    # I
    .param p3, "limit"    # I

    .prologue
    const/4 v5, 0x1

    .line 338
    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int v4, v6, p2

    .line 339
    .local v4, "w":I
    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v0, v6, p2

    .line 341
    .local v0, "h":I
    add-int v6, v4, p3

    add-int/lit8 v6, v6, -0x1

    div-int v3, v6, p3

    .line 342
    .local v3, "ratioW":I
    add-int v6, v0, p3

    add-int/lit8 v6, v6, -0x1

    div-int v2, v6, p3

    .line 343
    .local v2, "ratioH":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 345
    .local v1, "ratio":I
    if-nez v1, :cond_1c

    .line 357
    :goto_1b
    return v5

    .line 350
    :cond_1c
    if-le v1, v5, :cond_28

    .line 351
    div-int v5, v4, v1

    if-gt v5, p3, :cond_26

    div-int v5, v0, v1

    if-le v5, p3, :cond_28

    .line 352
    :cond_26
    add-int/lit8 v1, v1, -0x1

    :cond_28
    move v5, v1

    .line 357
    goto :goto_1b
.end method

.method private decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "st"    # Ljava/io/InputStream;
    .param p2, "opt"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 313
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 318
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 321
    .local v0, "fullbmp":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private loadFullSize(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 13
    .param p1, "st"    # Ljava/io/InputStream;
    .param p2, "opt"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 271
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 272
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 273
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 276
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-nez v7, :cond_20

    .line 277
    const-string v1, "ImageLoader"

    const-string v2, "loadFullSize: Decode read error"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Failed to decode full size image"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_20
    const-string v2, "ImageLoader"

    const-string v3, "loadFullSize: mOrientation"

    iget v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOrientation:I

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->showOrientation(Ljava/lang/String;Ljava/lang/String;I)V

    .line 283
    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOrientation:I

    if-eqz v2, :cond_62

    .line 284
    move-object v0, v7

    .line 285
    .local v0, "temp":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 286
    .local v5, "rotate":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v2, v6

    .line 287
    .local v8, "centerX":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v2, v6

    .line 288
    .local v9, "centerY":F
    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {v5, v2, v8, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 289
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 290
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 292
    move-object v0, v7

    .line 293
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 294
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 297
    .end local v0    # "temp":Landroid/graphics/Bitmap;
    .end local v5    # "rotate":Landroid/graphics/Matrix;
    .end local v8    # "centerX":F
    .end local v9    # "centerY":F
    :cond_62
    return-object v7
.end method


# virtual methods
.method public load()Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, "st":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 112
    .local v1, "result":Landroid/graphics/Bitmap;
    :try_start_2
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mImageData:[B

    if-eqz v4, :cond_44

    .line 113
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mImageData:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_d
    .catch Ljava/io/InvalidObjectException; {:try_start_2 .. :try_end_d} :catch_75
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_d} :catch_b3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_f4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_d} :catch_135
    .catchall {:try_start_2 .. :try_end_d} :catchall_163

    .line 117
    .end local v2    # "st":Ljava/io/InputStream;
    .local v3, "st":Ljava/io/InputStream;
    :goto_d
    if-eqz v3, :cond_27

    .line 119
    :try_start_f
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->calcBounds(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)V

    .line 122
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    iget v6, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v7, 0x401

    invoke-direct {p0, v5, v6, v7}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->calcRatio(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 125
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 128
    :cond_27
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mImageData:[B

    if-eqz v4, :cond_4e

    .line 129
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mImageData:[B

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_32
    .catch Ljava/io/InvalidObjectException; {:try_start_f .. :try_end_32} :catch_197
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_32} :catch_193
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_32} :catch_18f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_32} :catch_18c
    .catchall {:try_start_f .. :try_end_32} :catchall_189

    .line 133
    .end local v3    # "st":Ljava/io/InputStream;
    .restart local v2    # "st":Ljava/io/InputStream;
    :goto_32
    if-eqz v2, :cond_3d

    .line 135
    :try_start_34
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->loadFullSize(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/InvalidObjectException; {:try_start_34 .. :try_end_3d} :catch_75
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_3d} :catch_b3
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3d} :catch_f4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_3d} :catch_135
    .catchall {:try_start_34 .. :try_end_3d} :catchall_163

    .line 149
    :cond_3d
    if-eqz v2, :cond_43

    .line 151
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_57

    .line 155
    :goto_42
    const/4 v2, 0x0

    .line 158
    :cond_43
    :goto_43
    return-object v1

    .line 115
    :cond_44
    :try_start_44
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->crOpenInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_4b
    .catch Ljava/io/InvalidObjectException; {:try_start_44 .. :try_end_4b} :catch_75
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_4b} :catch_b3
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4b} :catch_f4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_4b} :catch_135
    .catchall {:try_start_44 .. :try_end_4b} :catchall_163

    move-result-object v2

    move-object v3, v2

    .end local v2    # "st":Ljava/io/InputStream;
    .restart local v3    # "st":Ljava/io/InputStream;
    goto :goto_d

    .line 131
    :cond_4e
    :try_start_4e
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->crOpenInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_55
    .catch Ljava/io/InvalidObjectException; {:try_start_4e .. :try_end_55} :catch_197
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_55} :catch_193
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_55} :catch_18f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_55} :catch_18c
    .catchall {:try_start_4e .. :try_end_55} :catchall_189

    move-result-object v2

    .end local v3    # "st":Ljava/io/InputStream;
    .restart local v2    # "st":Ljava/io/InputStream;
    goto :goto_32

    .line 152
    :catch_57
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close stream failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_75
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/InvalidObjectException;
    :goto_76
    :try_start_76
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Load full size error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_76 .. :try_end_8e} :catchall_163

    .line 149
    if-eqz v2, :cond_43

    .line 151
    :try_start_90
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_95

    .line 155
    .end local v0    # "e":Ljava/io/InvalidObjectException;
    :goto_93
    const/4 v2, 0x0

    goto :goto_43

    .line 152
    .restart local v0    # "e":Ljava/io/InvalidObjectException;
    :catch_95
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close stream failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_93

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_b3
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_b4
    :try_start_b4
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not found:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ce
    .catchall {:try_start_b4 .. :try_end_ce} :catchall_163

    .line 149
    if-eqz v2, :cond_43

    .line 151
    :try_start_d0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_d6

    .line 155
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_d3
    const/4 v2, 0x0

    goto/16 :goto_43

    .line 152
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_d6
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close stream failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d3

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_f4
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    :goto_f5
    :try_start_f5
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10f
    .catchall {:try_start_f5 .. :try_end_10f} :catchall_163

    .line 149
    if-eqz v2, :cond_43

    .line 151
    :try_start_111
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_114} :catch_117

    .line 155
    .end local v0    # "e":Ljava/io/IOException;
    :goto_114
    const/4 v2, 0x0

    goto/16 :goto_43

    .line 152
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_117
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close stream failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_114

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_135
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_136
    :try_start_136
    const-string v4, "ImageLoader"

    const-string v5, "Maybe File access error."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13d
    .catchall {:try_start_136 .. :try_end_13d} :catchall_163

    .line 149
    if-eqz v2, :cond_43

    .line 151
    :try_start_13f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_142} :catch_145

    .line 155
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_142
    const/4 v2, 0x0

    goto/16 :goto_43

    .line 152
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_145
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close stream failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_142

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_163
    move-exception v4

    :goto_164
    if-eqz v2, :cond_16a

    .line 151
    :try_start_166
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_169} :catch_16b

    .line 155
    :goto_169
    const/4 v2, 0x0

    :cond_16a
    throw v4

    .line 152
    :catch_16b
    move-exception v0

    .line 153
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "ImageLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Close stream failed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_169

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "st":Ljava/io/InputStream;
    .restart local v3    # "st":Ljava/io/InputStream;
    :catchall_189
    move-exception v4

    move-object v2, v3

    .end local v3    # "st":Ljava/io/InputStream;
    .restart local v2    # "st":Ljava/io/InputStream;
    goto :goto_164

    .line 146
    .end local v2    # "st":Ljava/io/InputStream;
    .restart local v3    # "st":Ljava/io/InputStream;
    :catch_18c
    move-exception v0

    move-object v2, v3

    .end local v3    # "st":Ljava/io/InputStream;
    .restart local v2    # "st":Ljava/io/InputStream;
    goto :goto_136

    .line 144
    .end local v2    # "st":Ljava/io/InputStream;
    .restart local v3    # "st":Ljava/io/InputStream;
    :catch_18f
    move-exception v0

    move-object v2, v3

    .end local v3    # "st":Ljava/io/InputStream;
    .restart local v2    # "st":Ljava/io/InputStream;
    goto/16 :goto_f5

    .line 142
    .end local v2    # "st":Ljava/io/InputStream;
    .restart local v3    # "st":Ljava/io/InputStream;
    :catch_193
    move-exception v0

    move-object v2, v3

    .end local v3    # "st":Ljava/io/InputStream;
    .restart local v2    # "st":Ljava/io/InputStream;
    goto/16 :goto_b4

    .line 140
    .end local v2    # "st":Ljava/io/InputStream;
    .restart local v3    # "st":Ljava/io/InputStream;
    :catch_197
    move-exception v0

    move-object v2, v3

    .end local v3    # "st":Ljava/io/InputStream;
    .restart local v2    # "st":Ljava/io/InputStream;
    goto/16 :goto_76
.end method

.method public load(II)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "outputWidth"    # I
    .param p2, "outputHeight"    # I

    .prologue
    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, "st":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 175
    .local v1, "result":Landroid/graphics/Bitmap;
    :try_start_2
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mImageData:[B

    if-eqz v4, :cond_28

    .line 176
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mImageData:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v2    # "st":Ljava/io/InputStream;
    .local v3, "st":Ljava/io/InputStream;
    move-object v2, v3

    .line 180
    .end local v3    # "st":Ljava/io/InputStream;
    .restart local v2    # "st":Ljava/io/InputStream;
    :goto_e
    if-eqz v2, :cond_21

    .line 181
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    iput p1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 182
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    iput p2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 184
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->loadFullSize(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 186
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/InvalidObjectException; {:try_start_2 .. :try_end_21} :catch_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_21} :catch_8d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_21} :catch_ce
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_21} :catch_10f
    .catchall {:try_start_2 .. :try_end_21} :catchall_13d

    .line 198
    :cond_21
    if-eqz v2, :cond_27

    .line 200
    :try_start_23
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_31

    .line 204
    :goto_26
    const/4 v2, 0x0

    .line 207
    :cond_27
    :goto_27
    return-object v1

    .line 178
    :cond_28
    :try_start_28
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->crOpenInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2f
    .catch Ljava/io/InvalidObjectException; {:try_start_28 .. :try_end_2f} :catch_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2f} :catch_8d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2f} :catch_ce
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_2f} :catch_10f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_13d

    move-result-object v2

    goto :goto_e

    .line 201
    :catch_31
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close stream failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4f
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/InvalidObjectException;
    :try_start_50
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Load full size error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_13d

    .line 198
    if-eqz v2, :cond_27

    .line 200
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6f

    .line 204
    .end local v0    # "e":Ljava/io/InvalidObjectException;
    :goto_6d
    const/4 v2, 0x0

    goto :goto_27

    .line 201
    .restart local v0    # "e":Ljava/io/InvalidObjectException;
    :catch_6f
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close stream failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6d

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_8d
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_8e
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not found:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_8e .. :try_end_a8} :catchall_13d

    .line 198
    if-eqz v2, :cond_27

    .line 200
    :try_start_aa
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_b0

    .line 204
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_ad
    const/4 v2, 0x0

    goto/16 :goto_27

    .line 201
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_b0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close stream failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ad

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_ce
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    :try_start_cf
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e9
    .catchall {:try_start_cf .. :try_end_e9} :catchall_13d

    .line 198
    if-eqz v2, :cond_27

    .line 200
    :try_start_eb
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ee} :catch_f1

    .line 204
    .end local v0    # "e":Ljava/io/IOException;
    :goto_ee
    const/4 v2, 0x0

    goto/16 :goto_27

    .line 201
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_f1
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close stream failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ee

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_10f
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_110
    const-string v4, "ImageLoader"

    const-string v5, "Maybe File access error."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_117
    .catchall {:try_start_110 .. :try_end_117} :catchall_13d

    .line 198
    if-eqz v2, :cond_27

    .line 200
    :try_start_119
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_11c} :catch_11f

    .line 204
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_11c
    const/4 v2, 0x0

    goto/16 :goto_27

    .line 201
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_11f
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close stream failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11c

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_13d
    move-exception v4

    if-eqz v2, :cond_144

    .line 200
    :try_start_140
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_143} :catch_145

    .line 204
    :goto_143
    const/4 v2, 0x0

    :cond_144
    throw v4

    .line 201
    :catch_145
    move-exception v0

    .line 202
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "ImageLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Close stream failed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_143
.end method
