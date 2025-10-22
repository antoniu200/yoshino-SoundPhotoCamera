.class public Lcom/sonyericsson/cameracommon/utility/PositionConverter;
.super Ljava/lang/Object;
.source "PositionConverter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PositionConverter"

.field private static final sDeviceRect:Landroid/graphics/Rect;

.field private static sInstance:Lcom/sonyericsson/cameracommon/utility/PositionConverter;


# instance fields
.field private mMatrixFromDeviceToPreview:Landroid/graphics/Matrix;

.field private mMatrixFromDeviceToSurface:Landroid/graphics/Matrix;

.field private mMatrixFromPreviewToSurface:Landroid/graphics/Matrix;

.field private mMatrixFromSurfaceToDevice:Landroid/graphics/Matrix;

.field private mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mPrepared:Z

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x3e8

    const/16 v1, -0x3e8

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sInstance:Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;
    .registers 9
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 375
    if-nez p2, :cond_f

    .line 376
    const-string v1, "PositionConverter"

    const-string v2, "Matrix to convert rect is null. Surface has not been created."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 382
    :goto_e
    return-object v1

    .line 379
    :cond_f
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 380
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 381
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 382
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_e
.end method

.method public static getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sInstance:Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    return-object v0
.end method

.method private getMatrix()Landroid/graphics/Matrix;
    .registers 5

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 93
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 95
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    if-eqz v2, :cond_22

    .line 96
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 102
    :goto_10
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    .line 103
    .local v0, "layoutOrientationResolver":Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v2, v3, :cond_26

    .line 104
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 108
    :goto_21
    return-object v1

    .line 98
    .end local v0    # "layoutOrientationResolver":Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;
    :cond_22
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_10

    .line 106
    .restart local v0    # "layoutOrientationResolver":Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;
    :cond_26
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_21
.end method


# virtual methods
.method public convertDeviceToFace(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromPreviewToSurface:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public convertFaceFromDeviceToPreview(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToPreview:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public convertFaceToDevice(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public convertFromDeviceToSurface(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .prologue
    .line 338
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 339
    .local v1, "matrixFromDeviceToSurface":Landroid/graphics/Matrix;
    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 343
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    .line 344
    .local v0, "layoutOrientationResolver":Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v2, v3, :cond_2e

    .line 345
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 346
    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 348
    :cond_2e
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v2

    return-object v2
.end method

.method public convertFromSurfaceToDevice(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .prologue
    .line 320
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 321
    .local v0, "matrixSurfaceToDevice":Landroid/graphics/Matrix;
    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 324
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method public convertToDevice(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .prologue
    .line 266
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToDevice:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v0

    .line 267
    .local v0, "dstRect":Landroid/graphics/Rect;
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 268
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 270
    :cond_13
    return-object v0
.end method

.method public convertToLandscapeSurface(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .prologue
    .line 298
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    .line 299
    .local v0, "layoutOrientationResolver":Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v2, v3, :cond_21

    .line 300
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 301
    .local v1, "matrixFromPortraitToLand":Landroid/graphics/Matrix;
    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 302
    const/4 v2, 0x0

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 303
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object p1

    .line 305
    .end local v1    # "matrixFromPortraitToLand":Landroid/graphics/Matrix;
    .end local p1    # "srcRect":Landroid/graphics/Rect;
    :cond_21
    return-object p1
.end method

.method public convertToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToSurface:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceRect()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 386
    new-instance v0, Landroid/graphics/Rect;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getPreviewSize()Landroid/graphics/Rect;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 390
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public init(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "mirror"    # Z
    .param p2, "surface"    # Landroid/graphics/Rect;
    .param p3, "preview"    # Landroid/graphics/Rect;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    if-ne v0, p1, :cond_14

    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    .line 78
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    .line 79
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_17

    .line 80
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPrepared:Z

    .line 83
    :cond_17
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    .line 84
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    .line 85
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    .line 87
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setSurfaceSize(II)V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPrepared:Z

    .line 90
    return-void
.end method

.method public setOrientation(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPrepared:Z

    if-eqz v0, :cond_5

    .line 238
    :goto_4
    return-void

    .line 233
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToSurface:Landroid/graphics/Matrix;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToPreview:Landroid/graphics/Matrix;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToDevice:Landroid/graphics/Matrix;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromPreviewToSurface:Landroid/graphics/Matrix;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_4
.end method

.method public setPreviewSize(II)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPrepared:Z

    if-eqz v0, :cond_d

    .line 198
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    if-ne v0, p1, :cond_d

    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    if-ne v0, p2, :cond_d

    .line 221
    :goto_c
    return-void

    .line 203
    :cond_d
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

    .line 204
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromPreviewToSurface:Landroid/graphics/Matrix;

    .line 206
    iput p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    .line 207
    iput p2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 212
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v1, :cond_4d

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 218
    :cond_4d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromPreviewToSurface:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_c
.end method

.method public setSurfaceSize(II)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v6, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 121
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPrepared:Z

    if-eqz v1, :cond_11

    .line 122
    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    if-ne v1, p1, :cond_11

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    if-ne v1, p2, :cond_11

    .line 185
    :goto_10
    return-void

    .line 127
    :cond_11
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToSurface:Landroid/graphics/Matrix;

    .line 128
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToPreview:Landroid/graphics/Matrix;

    .line 129
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToDevice:Landroid/graphics/Matrix;

    .line 130
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

    .line 131
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromPreviewToSurface:Landroid/graphics/Matrix;

    .line 133
    iput p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    .line 134
    iput p2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    .line 136
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToSurface:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    .line 137
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v3, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    .line 138
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 136
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 139
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToSurface:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 143
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToPreview:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    int-to-float v2, v2

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    .line 144
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    int-to-float v3, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    .line 145
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 143
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToPreview:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 151
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    .line 152
    .local v0, "layoutOrientationResolver":Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v1, v2, :cond_102

    .line 153
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToDevice:Landroid/graphics/Matrix;

    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 154
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToDevice:Landroid/graphics/Matrix;

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    .line 155
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    .line 156
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 154
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 163
    :goto_b0
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    if-eqz v1, :cond_11e

    .line 165
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToDevice:Landroid/graphics/Matrix;

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 174
    :goto_c4
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 177
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v1, v2, :cond_ed

    .line 178
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 179
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 182
    :cond_ed
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromPreviewToSurface:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/16 :goto_10

    .line 158
    :cond_102
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToDevice:Landroid/graphics/Matrix;

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    .line 159
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    .line 160
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 158
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_b0

    .line 169
    :cond_11e
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToDevice:Landroid/graphics/Matrix;

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_c4
.end method
