.class public Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "ExtendedGlSurfaceView.java"


# static fields
.field public static final IS_OPENGL_DEBUG:Z = false

.field private static final TARGET_OPEN_GL_ES_VERSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->setEGLContextClientVersion(I)V

    .line 51
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->setDebugFlags(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->setEGLContextClientVersion(I)V

    .line 67
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->setDebugFlags(I)V

    .line 68
    return-void
.end method

.method public static allocByteBuffer([B)Ljava/nio/ByteBuffer;
    .registers 4
    .param p0, "array"    # [B

    .prologue
    .line 121
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 122
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 123
    .local v0, "bBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    return-object v0
.end method

.method public static allocFloatBuffer([F)Ljava/nio/FloatBuffer;
    .registers 4
    .param p0, "array"    # [F

    .prologue
    .line 105
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 106
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 108
    .local v0, "fBuf":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
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

    .line 276
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 279
    const/16 v0, 0x2800

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 283
    const/16 v0, 0x2801

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 289
    const/16 v0, 0x2802

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 293
    const/16 v0, 0x2803

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 299
    const/16 v0, 0x1908

    invoke-static {v1, v2, v0, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;I)V

    .line 307
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 308
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
    .line 76
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 77
    .local v0, "error":I
    if-eqz v0, :cond_1c

    .line 78
    const-string v2, "OpenGL error [0x%08x]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v2, v1}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
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

    .line 187
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 190
    .local v0, "rotMatrix":[F
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 195
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 203
    return-object v0
.end method

.method private static get4x4ScalingMatrix(FFF)[F
    .registers 6
    .param p0, "scaleX"    # F
    .param p1, "scaleY"    # F
    .param p2, "scaleZ"    # F

    .prologue
    const/4 v2, 0x0

    .line 207
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 210
    .local v0, "scalingMatrix":[F
    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 215
    invoke-static {v0, v2, p0, p1, p2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 222
    return-object v0
.end method

.method private static get4x4TranslationMatrix(FFF)[F
    .registers 6
    .param p0, "transX"    # F
    .param p1, "transY"    # F
    .param p2, "transZ"    # F

    .prologue
    const/4 v2, 0x0

    .line 169
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 172
    .local v0, "transMatrix":[F
    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 176
    invoke-static {v0, v2, p0, p1, p2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 183
    return-object v0
.end method

.method public static isGlErrorOccured()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 90
    .local v0, "error":I
    if-eqz v0, :cond_1c

    .line 91
    const-string v3, "TraceLog"

    const-string v4, "OpenGL error [0x%08x]."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_1b
    return v1

    :cond_1c
    move v1, v2

    goto :goto_1b
.end method

.method static loadShaderSourceCodesFrom(Landroid/content/Context;[I)Ljava/lang/String;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "glslFileId"    # [I

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_8
    :try_start_8
    array-length v8, p1

    if-ge v4, v8, :cond_36

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 143
    .local v7, "res":Landroid/content/res/Resources;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    aget v9, p1, v4

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1f} :catch_3c

    .line 145
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "line":Ljava/lang/String;
    :goto_23
    if-eqz v6, :cond_2d

    .line 147
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    goto :goto_23

    .line 150
    :cond_2d
    if-eqz v0, :cond_32

    .line 151
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_32} :catch_54

    .line 140
    :cond_32
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_8

    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "res":Landroid/content/res/Resources;
    :cond_36
    move-object v0, v1

    .line 165
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_37
    :goto_37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 154
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_3c
    move-exception v3

    move-object v0, v1

    .line 155
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/IOException;
    :goto_3e
    const-string v8, "TraceLog"

    const-string v9, "Can not load shader file."

    invoke-static {v8, v9, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    if-eqz v0, :cond_37

    .line 158
    :try_start_47
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_37

    .line 159
    :catch_4b
    move-exception v5

    .line 160
    .local v5, "io_e":Ljava/io/IOException;
    const-string v8, "TraceLog"

    const-string v9, "Fail to close BufferedReader."

    invoke-static {v8, v9, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 154
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "io_e":Ljava/io/IOException;
    .restart local v7    # "res":Landroid/content/res/Resources;
    :catch_54
    move-exception v3

    goto :goto_3e
.end method

.method public static rotate([FFFF)V
    .registers 16
    .param p0, "matrix"    # [F
    .param p1, "rotRadX"    # F
    .param p2, "rotRadY"    # F
    .param p3, "rotRadZ"    # F

    .prologue
    .line 245
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p1

    const v1, 0x40490fdb    # (float)Math.PI

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->get4x4RotationMatrix(FFFF)[F

    move-result-object v2

    .line 247
    .local v2, "rotX":[F
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 248
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p2

    const v1, 0x40490fdb    # (float)Math.PI

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->get4x4RotationMatrix(FFFF)[F

    move-result-object v5

    .line 250
    .local v5, "rotY":[F
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v7, p0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 251
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p3

    const v1, 0x40490fdb    # (float)Math.PI

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v3, v4}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->get4x4RotationMatrix(FFFF)[F

    move-result-object v8

    .line 253
    .local v8, "rotZ":[F
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v10, p0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 254
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

    .line 264
    invoke-static {p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->get4x4ScalingMatrix(FFF)[F

    move-result-object v2

    .local v2, "scaleMat":[F
    move-object v0, p0

    move v3, v1

    move-object v4, p0

    move v5, v1

    .line 265
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 266
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

    .line 233
    invoke-static {p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->get4x4TranslationMatrix(FFF)[F

    move-result-object v2

    .local v2, "transMat":[F
    move-object v0, p0

    move v3, v1

    move-object v4, p0

    move v5, v1

    .line 234
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 235
    return-void
.end method
