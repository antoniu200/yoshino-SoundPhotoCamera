.class public abstract Lcom/sonymobile/cameracommon/opengl/FrameBase;
.super Lcom/sonymobile/cameracommon/opengl/RenderBase;
.source "FrameBase.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;


# static fields
.field private static final DEFAULT_TEXCOORD_INDEX:I = 0x1

.field private static final DEFAULT_VERTEX_INDEX:I = 0x0

.field private static final INVALID_INDEX_IN_GLSL:I = -0x1

.field public static final TAG:Ljava/lang/String; = "FrameBase"


# instance fields
.field protected mAlpha:F

.field protected mMvpMatrixInGLSL:I

.field protected mShaderProgram:I

.field protected mTexCoordBuffers:[I

.field protected mTexCoordInGLSL:I

.field protected mVertexBuffers:[I

.field protected mVertexInGLSL:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/RenderBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    .line 39
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    .line 40
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mAlpha:F

    .line 48
    return-void
.end method

.method private checkAndBindAttriLocation()V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 121
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    if-ne v0, v1, :cond_55

    .line 122
    :cond_9
    const-string v0, "FrameBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndBindAttriLocation: mVertexInGLSL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mTexCoordInGLSL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    .line 128
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    const-string v2, "vertex"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 132
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    .line 133
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    const-string v2, "texCoord"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 138
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 139
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 141
    :cond_55
    return-void
.end method

.method private enableShaderProgram()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 237
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    if-nez v1, :cond_d

    .line 238
    const-string v1, "FrameBase"

    const-string v2, ".enableYuv2RgbShaderProgram():[Program is Invalid]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_c
    return v0

    .line 241
    :cond_d
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 242
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    .line 243
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 244
    const-string v1, "FrameBase"

    const-string v2, ".enableYuv2RgbShaderProgram():[Program Error]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 248
    :cond_25
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private finalizeVertexAndTextureCoordinatesBuffer()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 276
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 280
    return-void
.end method


# virtual methods
.method protected disableLocalFunctions()Z
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 253
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    if-eq v0, v1, :cond_a

    .line 254
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 256
    :cond_a
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    if-eq v0, v1, :cond_13

    .line 257
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 261
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract doRender()V
.end method

.method protected enableLocalFunctions()Z
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 218
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    if-eq v0, v1, :cond_a

    .line 219
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 221
    :cond_a
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    if-eq v0, v1, :cond_13

    .line 222
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 226
    :cond_13
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->enableShaderProgram()Z

    move-result v0

    if-nez v0, :cond_22

    .line 227
    const-string v0, "FrameBase"

    const-string v1, "enableFunctions():[Enable shader program failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x0

    .line 232
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x1

    goto :goto_21
.end method

.method protected finalizeShaderProgram()V
    .registers 2

    .prologue
    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    .line 268
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->finalizeVertexAndTextureCoordinatesBuffer()V

    .line 269
    return-void
.end method

.method protected initializeShaderProgram()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 69
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    const-string v3, "vertex"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    .line 72
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 75
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    const-string v3, "texCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    .line 78
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 80
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->checkAndBindAttriLocation()V

    .line 83
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    const-string v3, "mvpMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mMvpMatrixInGLSL:I

    .line 86
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 89
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 90
    .local v1, "statusChecker":[I
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 92
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 95
    aget v2, v1, v4

    if-nez v2, :cond_4a

    .line 96
    const-string v0, "TimeShiftSlider.initializeYuv2RgbShader():[Program link Error]"

    .line 97
    .local v0, "message":Ljava/lang/String;
    const-string v2, "FrameBase"

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v2, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v2, v0}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    .end local v0    # "message":Ljava/lang/String;
    :cond_4a
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->initializeVertexAndTextureCoordinatesBuffer()V

    .line 108
    return-void
.end method

.method protected initializeVertexAndTextureCoordinatesBuffer()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    .line 145
    const/16 v2, 0xc

    new-array v1, v2, [F

    .line 146
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getWidthNorm()F

    move-result v2

    mul-float/2addr v2, v4

    aput v2, v1, v7

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getHeightNorm()F

    move-result v3

    mul-float/2addr v3, v6

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v5, v1, v2

    const/4 v2, 0x3

    .line 147
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getWidthNorm()F

    move-result v3

    mul-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getHeightNorm()F

    move-result v3

    mul-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x5

    aput v5, v1, v2

    const/4 v2, 0x6

    .line 148
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getWidthNorm()F

    move-result v3

    mul-float/2addr v3, v6

    aput v3, v1, v2

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getHeightNorm()F

    move-result v3

    mul-float/2addr v3, v6

    aput v3, v1, v2

    aput v5, v1, v8

    const/16 v2, 0x9

    .line 149
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getWidthNorm()F

    move-result v3

    mul-float/2addr v3, v6

    aput v3, v1, v2

    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getHeightNorm()F

    move-result v3

    mul-float/2addr v3, v4

    aput v3, v1, v2

    const/16 v2, 0xb

    aput v5, v1, v2

    .line 152
    .local v1, "VERTEX":[F
    new-array v0, v8, [F

    fill-array-data v0, :array_76

    .line 160
    .local v0, "TEXCOORD":[F
    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    invoke-static {v2, v3, v7}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 161
    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    invoke-static {v2, v3, v7}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 164
    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->updateVertexBuffer([F)V

    .line 165
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->updateTextureBuffer([F)V

    .line 167
    return-void

    .line 152
    nop

    :array_76
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public render()V
    .registers 3

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->isVisible()Z

    move-result v0

    if-nez v0, :cond_7

    .line 214
    :cond_6
    :goto_6
    return-void

    .line 203
    :cond_7
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->enableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_15

    .line 204
    const-string v0, "FrameBase"

    const-string v1, "render():[Enable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 208
    :cond_15
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->doRender()V

    .line 210
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->disableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_6

    .line 211
    const-string v0, "FrameBase"

    const-string v1, "render():[Disable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public setAlpha(F)V
    .registers 2
    .param p1, "alpha"    # F

    .prologue
    .line 289
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mAlpha:F

    .line 290
    return-void
.end method

.method public setShaderProgram(I)V
    .registers 5
    .param p1, "shaderProgram"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    .line 56
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->initializeShaderProgram()V
    :try_end_5
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_2 .. :try_end_5} :catch_6

    .line 60
    :goto_5
    return-void

    .line 57
    :catch_6
    move-exception v0

    .line 58
    .local v0, "e":Lcom/sonymobile/cameracommon/opengl/OpenGlException;
    const-string v1, "FrameBase"

    const-string v2, "OpenGL initialize Error."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public updateTextureBuffer([F)V
    .registers 7
    .param p1, "tex"    # [F

    .prologue
    const/4 v4, 0x0

    const v3, 0x8892

    .line 182
    invoke-static {p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 184
    .local v0, "texCoordBuf":Ljava/nio/FloatBuffer;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    aget v1, v1, v4

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 187
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    const v2, 0x88e8

    .line 185
    invoke-static {v3, v1, v0, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 190
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 191
    return-void
.end method

.method public updateVertexBuffer([F)V
    .registers 7
    .param p1, "vertex"    # [F

    .prologue
    const/4 v4, 0x0

    const v3, 0x8892

    .line 170
    invoke-static {p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 172
    .local v0, "vertexBuf":Ljava/nio/FloatBuffer;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    aget v1, v1, v4

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 175
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    const v2, 0x88e8

    .line 173
    invoke-static {v3, v1, v0, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 178
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 179
    return-void
.end method
