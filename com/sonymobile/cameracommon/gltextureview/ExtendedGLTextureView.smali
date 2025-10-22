.class public Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;
.super Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;
.source "ExtendedGLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;
    }
.end annotation


# static fields
.field public static final Z_ORDER_STEP_SIZE:F = 2.0E-5f


# instance fields
.field private mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

.field private final mIsContinuousRenderingRequired:Z

.field private final mRequiredRenderingInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;-><init>(Landroid/content/Context;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    .line 106
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mIsContinuousRenderingRequired:Z

    .line 107
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mRequiredRenderingInterval:I

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    .line 120
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mIsContinuousRenderingRequired:Z

    .line 121
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mRequiredRenderingInterval:I

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isContinuousRenderingRequired"    # Z
    .param p3, "requiredFps"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;-><init>(Landroid/content/Context;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    .line 138
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mIsContinuousRenderingRequired:Z

    .line 139
    const/16 v0, 0x3e8

    div-int/2addr v0, p3

    iput v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mRequiredRenderingInterval:I

    .line 140
    return-void
.end method

.method public static allocFloatBuffer([F)Ljava/nio/FloatBuffer;
    .registers 4
    .param p0, "array"    # [F

    .prologue
    .line 217
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 218
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 220
    .local v0, "fBuf":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 221
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 223
    return-object v0
.end method

.method public static bindTextureAndBitmap(ILandroid/graphics/Bitmap;)V
    .registers 7
    .param p0, "textureObject"    # I
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const v4, 0x812f

    const v3, 0x46180400    # 9729.0f

    const/4 v2, 0x0

    const/16 v1, 0xde1

    .line 370
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 373
    const/16 v0, 0x2800

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 377
    const/16 v0, 0x2801

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 383
    const/16 v0, 0x2802

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 387
    const/16 v0, 0x2803

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 393
    const/16 v0, 0x1908

    invoke-static {v1, v2, v0, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;I)V

    .line 401
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 402
    return-void
.end method

.method public static checkGlErrorWithException()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 189
    .local v0, "error":I
    if-eqz v0, :cond_1c

    .line 190
    const-string v2, "OpenGL error [0x%08x]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v2, v1}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    .end local v1    # "message":Ljava/lang/String;
    :cond_1c
    return-void
.end method

.method private static get4x4RotationMatrix(FFFF)[F
    .registers 10
    .param p0, "rotDeg"    # F
    .param p1, "vecX"    # F
    .param p2, "vecY"    # F
    .param p3, "vecZ"    # F

    .prologue
    const/4 v1, 0x0

    .line 281
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 284
    .local v0, "rotMatrix":[F
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 289
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 297
    return-object v0
.end method

.method private static get4x4ScalingMatrix(FFF)[F
    .registers 6
    .param p0, "scaleX"    # F
    .param p1, "scaleY"    # F
    .param p2, "scaleZ"    # F

    .prologue
    const/4 v2, 0x0

    .line 301
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 304
    .local v0, "scalingMatrix":[F
    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 309
    invoke-static {v0, v2, p0, p1, p2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 316
    return-object v0
.end method

.method private static get4x4TranslationMatrix(FFF)[F
    .registers 6
    .param p0, "transX"    # F
    .param p1, "transY"    # F
    .param p2, "transZ"    # F

    .prologue
    const/4 v2, 0x0

    .line 263
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 266
    .local v0, "transMatrix":[F
    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 270
    invoke-static {v0, v2, p0, p1, p2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 277
    return-object v0
.end method

.method public static isGlErrorOccured()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 202
    .local v0, "error":I
    if-eqz v0, :cond_1c

    .line 203
    const-string v3, "TraceLog"

    const-string v4, "OpenGL error [0x%08x]."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_1b
    return v1

    :cond_1c
    move v1, v2

    goto :goto_1b
.end method

.method public static loadBitmapFromResourceAs9Patch(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "resId"    # I
    .param p3, "ninePatchBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 419
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 420
    .local v7, "option":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 421
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 428
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 427
    invoke-static {v3, p2, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 432
    .local v2, "rawBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    if-nez v3, :cond_1f

    .line 434
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 453
    :goto_1e
    return v1

    .line 439
    :cond_1f
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 442
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 445
    .local v0, "npd":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 448
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 449
    .local v6, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 451
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 453
    const/4 v1, 0x1

    goto :goto_1e
.end method

.method static loadShaderSourceCodesFrom(Landroid/content/Context;I)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "glslFileId"    # I

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v2, "builder":Ljava/lang/StringBuilder;
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 239
    .local v5, "res":Landroid/content/res/Resources;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_18} :catch_3b
    .catchall {:try_start_6 .. :try_end_18} :catchall_52

    .line 242
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, "line":Ljava/lang/String;
    :goto_1c
    if-eqz v4, :cond_26

    .line 244
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_65
    .catchall {:try_start_18 .. :try_end_24} :catchall_62

    move-result-object v4

    goto :goto_1c

    .line 250
    :cond_26
    if-eqz v1, :cond_68

    .line 252
    :try_start_28
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_31

    move-object v0, v1

    .line 259
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/res/Resources;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2c
    :goto_2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 253
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "res":Landroid/content/res/Resources;
    :catch_31
    move-exception v3

    .line 254
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "TraceLog"

    const-string v7, "Fail to close BufferedReader."

    invoke-static {v6, v7, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 255
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2c

    .line 247
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/res/Resources;
    :catch_3b
    move-exception v3

    .line 248
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3c
    :try_start_3c
    const-string v6, "TraceLog"

    const-string v7, "Can not load shader file."

    invoke-static {v6, v7, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_52

    .line 250
    if-eqz v0, :cond_2c

    .line 252
    :try_start_45
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_2c

    .line 253
    :catch_49
    move-exception v3

    .line 254
    const-string v6, "TraceLog"

    const-string v7, "Fail to close BufferedReader."

    invoke-static {v6, v7, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 250
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_52
    move-exception v6

    :goto_53
    if-eqz v0, :cond_58

    .line 252
    :try_start_55
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    .line 255
    :cond_58
    :goto_58
    throw v6

    .line 253
    :catch_59
    move-exception v3

    .line 254
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "TraceLog"

    const-string v8, "Fail to close BufferedReader."

    invoke-static {v7, v8, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 250
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "res":Landroid/content/res/Resources;
    :catchall_62
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_53

    .line 247
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_65
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3c

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_68
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2c
.end method

.method public static rotate([FFFF)V
    .registers 16
    .param p0, "matrix"    # [F
    .param p1, "rotRadX"    # F
    .param p2, "rotRadY"    # F
    .param p3, "rotRadZ"    # F

    .prologue
    .line 339
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p1

    const v1, 0x40490fdb    # (float)Math.PI

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->get4x4RotationMatrix(FFFF)[F

    move-result-object v2

    .line 341
    .local v2, "rotX":[F
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 342
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p2

    const v1, 0x40490fdb    # (float)Math.PI

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->get4x4RotationMatrix(FFFF)[F

    move-result-object v5

    .line 344
    .local v5, "rotY":[F
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v7, p0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 345
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p3

    const v1, 0x40490fdb    # (float)Math.PI

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v3, v4}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->get4x4RotationMatrix(FFFF)[F

    move-result-object v8

    .line 347
    .local v8, "rotZ":[F
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v10, p0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 348
    return-void
.end method

.method public static scale([FFFF)V
    .registers 10
    .param p0, "matrix"    # [F
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "scaleZ"    # F

    .prologue
    const/4 v1, 0x0

    .line 358
    invoke-static {p1, p2, p3}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->get4x4ScalingMatrix(FFF)[F

    move-result-object v2

    .local v2, "scaleMat":[F
    move-object v0, p0

    move v3, v1

    move-object v4, p0

    move v5, v1

    .line 359
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 360
    return-void
.end method

.method public static translate([FFFF)V
    .registers 10
    .param p0, "matrix"    # [F
    .param p1, "transX"    # F
    .param p2, "transY"    # F
    .param p3, "transZ"    # F

    .prologue
    const/4 v1, 0x0

    .line 327
    invoke-static {p1, p2, p3}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->get4x4TranslationMatrix(FFF)[F

    move-result-object v2

    .local v2, "transMat":[F
    move-object v0, p0

    move v3, v1

    move-object v4, p0

    move v5, v1

    .line 328
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 329
    return-void
.end method


# virtual methods
.method public onPause()V
    .registers 5

    .prologue
    .line 167
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    if-eqz v1, :cond_13

    .line 168
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->release()V

    .line 170
    :try_start_9
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->join(J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_17

    .line 174
    :goto_10
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    .line 177
    :cond_13
    invoke-super {p0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->onPause()V

    .line 180
    return-void

    .line 171
    :catch_17
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TraceLog"

    const-string v2, "Fail to join."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 149
    invoke-super {p0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->onResume()V

    .line 151
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mIsContinuousRenderingRequired:Z

    if-eqz v0, :cond_1c

    .line 152
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    iget v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mRequiredRenderingInterval:I

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;-><init>(Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;I)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    .line 153
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->setPriority(I)V

    .line 154
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->mContinuousRenderingThread:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->start()V

    .line 158
    :cond_1c
    return-void
.end method
