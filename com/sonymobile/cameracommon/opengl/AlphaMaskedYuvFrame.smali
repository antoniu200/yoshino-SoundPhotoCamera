.class public Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;
.super Lcom/sonymobile/cameracommon/opengl/YuvFrame;
.source "AlphaMaskedYuvFrame.java"


# static fields
.field private static final MASKTEXCOORD:[F

.field public static final TAG:Ljava/lang/String; = "AlphaMaskedYuvFrame"

.field private static final TEXTURE_INDEX_MASK:I = 0x3


# instance fields
.field private mMaskBmp:Landroid/graphics/Bitmap;

.field private mMaskTexCoordBuffer:[I

.field private mMaskTexCoordInGLSL:I

.field private mMaskTexture:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->MASKTEXCOORD:[F

    return-void

    :array_a
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

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "maskResId"    # I

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 29
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordInGLSL:I

    .line 33
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    .line 56
    invoke-direct {p0, p3}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->initializeMaskTexture(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "maskImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x1

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 29
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordInGLSL:I

    .line 33
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    .line 70
    invoke-direct {p0, p3}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->initializeMaskTexture(Landroid/graphics/Bitmap;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "maskImage"    # Landroid/graphics/Bitmap;
    .param p4, "shouldKeepAspect"    # Z

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-direct {p0, p1, p2, p4}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    .line 29
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordInGLSL:I

    .line 33
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    .line 86
    invoke-direct {p0, p3}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->initializeMaskTexture(Landroid/graphics/Bitmap;)V

    .line 87
    return-void
.end method

.method private finalizeMaskTexture()V
    .registers 4

    .prologue
    .line 252
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 253
    return-void
.end method

.method private initializeMaskTexture(I)V
    .registers 6
    .param p1, "maskResId"    # I

    .prologue
    const/4 v3, 0x0

    .line 208
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 211
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 212
    .local v0, "option":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 213
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 215
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 214
    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    .line 219
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->prepareMaskTexture()V

    .line 220
    return-void
.end method

.method private initializeMaskTexture(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 224
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 227
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    .line 229
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->prepareMaskTexture()V

    .line 230
    return-void
.end method

.method private prepareMaskTexture()V
    .registers 6

    .prologue
    const v4, 0x47012f00    # 33071.0f

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 234
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->bindTextureAndBitmap(ILandroid/graphics/Bitmap;)V

    .line 237
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 239
    const/16 v0, 0x2802

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 243
    const/16 v0, 0x2803

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 248
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 249
    return-void
.end method


# virtual methods
.method protected disableLocalFunctions()Z
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 156
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->disableLocalFunctions()Z

    move-result v0

    return v0
.end method

.method protected doRender()V
    .registers 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->prepareMaskTexture()V

    .line 164
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->doRender()V

    .line 165
    return-void
.end method

.method protected enableLocalFunctions()Z
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 149
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->enableLocalFunctions()Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 4

    .prologue
    .line 124
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->release()V

    .line 127
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->finalizeMaskTexture()V

    .line 130
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1a

    .line 131
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 132
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 134
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    .line 138
    :cond_1a
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 142
    return-void
.end method

.method public setShaderProgram(I)V
    .registers 6
    .param p1, "shaderProgram"    # I

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setShaderProgram(I)V

    .line 95
    :try_start_3
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mShaderProgram:I

    const-string v2, "aMaskTexCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordInGLSL:I

    .line 98
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V
    :try_end_10
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_3 .. :try_end_10} :catch_1f

    .line 104
    :goto_10
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 107
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->MASKTEXCOORD:[F

    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->updateMaskTextureBuffer([F)V

    .line 108
    return-void

    .line 99
    :catch_1f
    move-exception v0

    .line 100
    .local v0, "e":Lcom/sonymobile/cameracommon/opengl/OpenGlException;
    const-string v1, "AlphaMaskedYuvFrame"

    const-string v2, "OpenGL initialize Error."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method protected setupParameter(I)V
    .registers 4
    .param p1, "shaderProgramObject"    # I

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setupParameter(I)V

    .line 201
    const-string v1, "uAlphaMaskTexture"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 203
    .local v0, "textureMask":I
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 204
    return-void
.end method

.method protected setupTexture(II[I)Z
    .registers 11
    .param p1, "vertexBufObj"    # I
    .param p2, "texCoordBufObj"    # I
    .param p3, "yuvTextures"    # [I

    .prologue
    const v6, 0x8892

    const/4 v3, 0x0

    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setupTexture(II[I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 194
    :goto_a
    return v3

    .line 176
    :cond_b
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 177
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordInGLSL:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 184
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 187
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 188
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 189
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 190
    const-string v0, "AlphaMaskedYuvFrame"

    const-string v1, ".draw():[Texture binder Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 194
    :cond_3c
    const/4 v3, 0x1

    goto :goto_a
.end method

.method public updateMaskTextureBuffer([F)V
    .registers 7
    .param p1, "maskTex"    # [F

    .prologue
    const/4 v4, 0x0

    const v3, 0x8892

    .line 111
    invoke-static {p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 113
    .local v0, "maskTexCoordBuf":Ljava/nio/FloatBuffer;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    aget v1, v1, v4

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 116
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    const v2, 0x88e8

    .line 114
    invoke-static {v3, v1, v0, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 119
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 120
    return-void
.end method
