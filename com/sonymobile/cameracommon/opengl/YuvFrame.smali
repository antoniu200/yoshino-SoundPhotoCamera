.class public Lcom/sonymobile/cameracommon/opengl/YuvFrame;
.super Lcom/sonymobile/cameracommon/opengl/FrameBase;
.source "YuvFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;
    }
.end annotation


# static fields
.field private static final NUM_OF_FRAME_TEXTURES:I = 0x2

.field public static final TAG:Ljava/lang/String; = "YuvFrame"

.field protected static final TEXTURE_INDEX_VU:I = 0x1

.field protected static final TEXTURE_INDEX_Y:I


# instance fields
.field private mAlphaInGLSL:I

.field private mFrameAspectRatio:F

.field protected mFrameTextures:[I

.field private mShouldKeepAspect:Z

.field private mTextureVuInGLSL:I

.field private mTextureYInGLSL:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string v0, "yuvframe"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/FrameBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShouldKeepAspect:Z

    .line 64
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->initializeTextures()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "shouldKeepAspect"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/FrameBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShouldKeepAspect:Z

    .line 76
    iput-boolean p3, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShouldKeepAspect:Z

    .line 79
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->initializeTextures()V

    .line 80
    return-void
.end method

.method private initializeTextures()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 245
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    if-nez v0, :cond_f

    .line 246
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    .line 247
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 249
    :cond_f
    return-void
.end method

.method private static isNearlyEquals(FF)Z
    .registers 5
    .param p0, "target"    # F
    .param p1, "actual"    # F

    .prologue
    .line 375
    const v0, 0x3a83126f    # 0.001f

    .line 376
    .local v0, "TOLERANCE":F
    sub-float v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method protected static final native nativeGlTexImage2D(III[BI)I
.end method

.method private setFrameTextures([BIIII)V
    .registers 13
    .param p1, "byteArray"    # [B
    .param p2, "offsetY"    # I
    .param p3, "offsetVu"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    sget-object v6, Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;->LUMINANCE:Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;

    move-object v0, p0

    move v2, p4

    move v3, p5

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->createTextureAndSetTo(III[BILcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;)V

    .line 281
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    div-int/lit8 v2, p4, 0x2

    div-int/lit8 v3, p5, 0x2

    sget-object v6, Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;->LUMINANCE_ALPHA:Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;

    move-object v0, p0

    move-object v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->createTextureAndSetTo(III[BILcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;)V

    .line 288
    return-void
.end method


# virtual methods
.method protected createTextureAndSetTo(III[BILcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;)V
    .registers 10
    .param p1, "textureId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "byteArray"    # [B
    .param p5, "offset"    # I
    .param p6, "dataType"    # Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;

    .prologue
    const v2, 0x46180400    # 9729.0f

    const/16 v1, 0xde1

    .line 298
    if-nez p4, :cond_8

    .line 327
    :goto_7
    return-void

    .line 304
    :cond_8
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 307
    const/16 v0, 0x2800

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 312
    const/16 v0, 0x2801

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 318
    iget v0, p6, Lcom/sonymobile/cameracommon/opengl/YuvFrame$TextureDataType;->type:I

    invoke-static {v0, p2, p3, p4, p5}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->nativeGlTexImage2D(III[BI)I

    .line 326
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_7
.end method

.method protected doRender()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mVertexBuffers:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mTexCoordBuffers:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    iget v3, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShaderProgram:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->renderYuvFrame(II[II)Z

    .line 141
    return-void
.end method

.method public finalizeTextures()V
    .registers 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    if-eqz v0, :cond_b

    .line 254
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 256
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameTextures:[I

    .line 257
    return-void
.end method

.method protected initializeShaderProgram()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    .line 126
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShaderProgram:I

    const-string v1, "textureY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mTextureYInGLSL:I

    .line 128
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShaderProgram:I

    const-string v1, "textureVu"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mTextureVuInGLSL:I

    .line 132
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShaderProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mAlphaInGLSL:I

    .line 134
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 135
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->initializeShaderProgram()V

    .line 136
    return-void
.end method

.method public release()V
    .registers 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->release()V

    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->finalizeShaderProgram()V

    .line 93
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->finalizeTextures()V

    .line 94
    return-void
.end method

.method protected renderYuvFrame(II[II)Z
    .registers 8
    .param p1, "vertexBufObj"    # I
    .param p2, "texCoordBufObj"    # I
    .param p3, "yuvTextures"    # [I
    .param p4, "shaderProgramObject"    # I

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setupTexture(II[I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 177
    :goto_7
    return v0

    .line 164
    :cond_8
    invoke-virtual {p0, p4}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setupParameter(I)V

    .line 167
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setupMvpMatrix()V

    .line 170
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 171
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 172
    const-string v1, "YuvFrame"

    const-string v2, ".render():[Draw frame Error]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 177
    :cond_21
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public setTextureYvu(II[BII)V
    .registers 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "byteArray"    # [B
    .param p4, "offsetY"    # I
    .param p5, "offsetVu"    # I

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->initializeTextures()V

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p1

    move v5, p2

    .line 113
    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setFrameTextures([BIIII)V

    .line 120
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameAspectRatio:F

    .line 121
    return-void
.end method

.method protected setupMvpMatrix()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 228
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 229
    .local v0, "mvpMatrix":[F
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 232
    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mSequencedLocalMatrix:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 233
    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mGlobalMatrix:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 235
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mMvpMatrixInGLSL:I

    const/4 v3, 0x1

    invoke-static {v2, v3, v1, v0, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 241
    return-void
.end method

.method protected setupParameter(I)V
    .registers 4
    .param p1, "shaderProgramObject"    # I

    .prologue
    .line 223
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mAlphaInGLSL:I

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mAlpha:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 224
    return-void
.end method

.method protected setupTexture(II[I)Z
    .registers 13
    .param p1, "vertexBufObj"    # I
    .param p2, "texCoordBufObj"    # I
    .param p3, "yuvTextures"    # [I

    .prologue
    const/16 v2, 0x1406

    const/16 v8, 0xde1

    const v7, 0x8892

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 186
    invoke-static {v7, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 187
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mVertexInGLSL:I

    const/4 v1, 0x3

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 194
    invoke-static {v7, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 195
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mTexCoordInGLSL:I

    const/4 v1, 0x2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 202
    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 205
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 206
    aget v0, p3, v3

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 207
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 208
    aget v0, p3, v6

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 209
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 210
    const-string v0, "YuvFrame"

    const-string v1, ".draw():[Texture binder Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_45
    return v3

    .line 215
    :cond_46
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mTextureYInGLSL:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 216
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mTextureVuInGLSL:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    move v3, v6

    .line 219
    goto :goto_45
.end method

.method public updateTextureBuffer([F)V
    .registers 10
    .param p1, "tex"    # [F

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 352
    iget-boolean v3, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mShouldKeepAspect:Z

    if-eqz v3, :cond_41

    .line 354
    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-nez v3, :cond_f

    .line 372
    :goto_e
    return-void

    .line 359
    :cond_f
    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 360
    .local v2, "rootViewAspectRatio":F
    const/4 v1, 0x0

    .line 361
    .local v1, "i":I
    iget v3, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameAspectRatio:F

    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->isNearlyEquals(FF)Z

    move-result v3

    if-nez v3, :cond_41

    .line 362
    array-length v4, p1

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v4, :cond_41

    aget v0, p1, v3

    .line 364
    .local v0, "f":F
    rem-int/lit8 v5, v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3c

    .line 365
    sub-float v5, v0, v7

    mul-float/2addr v5, v2

    iget v6, p0, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->mFrameAspectRatio:F

    div-float/2addr v5, v6

    add-float/2addr v5, v7

    aput v5, p1, v1

    .line 367
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    .line 362
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 371
    .end local v0    # "f":F
    .end local v1    # "i":I
    .end local v2    # "rootViewAspectRatio":F
    :cond_41
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->updateTextureBuffer([F)V

    goto :goto_e
.end method
