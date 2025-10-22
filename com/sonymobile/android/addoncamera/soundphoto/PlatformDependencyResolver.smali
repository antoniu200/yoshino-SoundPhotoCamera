.class public Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;
.super Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;
.source "PlatformDependencyResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver$PreviewSizeComparator;
    }
.end annotation


# static fields
.field private static final ASPECT_RATIO_CLEARANCE_PERCENTAGE:I = 0xa

.field public static final PREFERED_MAX_PREVIEW_FPS_x1000:I = 0x7530

.field public static final PREFERED_MIN_PREVIEW_FPS_x1000:I = 0x3e8

.field public static final PREFERED_PREVIEW_SIZE_RANK_FOR_FPS:I = 0x1

.field public static final PREFERED_PREVIEW_SIZE_RANK_FOR_IQ:I = 0x0

.field private static final PREFERRED_PICTURE_HEIGHT:I = 0x2d0

.field private static final PREFERRED_PREVIEW_WIDTH:I = 0x500

.field private static final TAG:Ljava/lang/String;

.field private static final mPreviewSizeComparator:Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver$PreviewSizeComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->TAG:Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver$PreviewSizeComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver$PreviewSizeComparator;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver$1;)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->mPreviewSizeComparator:Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver$PreviewSizeComparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;-><init>()V

    return-void
.end method

.method public static getDefaultFocusMode(ILandroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .registers 4
    .param p0, "cameraType"    # I
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 246
    .local v0, "allSupported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 248
    const-string v1, "continuous-picture"

    .line 257
    :goto_e
    return-object v1

    .line 251
    :cond_f
    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 253
    const-string v1, "auto"

    goto :goto_e

    .line 257
    :cond_1a
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method public static getDefaultResolution(Landroid/hardware/Camera$Parameters;)Landroid/graphics/Rect;
    .registers 9
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 110
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    .line 111
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v2, :cond_9

    .line 125
    :cond_8
    :goto_8
    return-object v3

    .line 115
    :cond_9
    const/4 v0, 0x0

    .line 116
    .local v0, "max":Landroid/hardware/Camera$Size;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 117
    .local v1, "size":Landroid/hardware/Camera$Size;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->pixels(Landroid/hardware/Camera$Size;)I

    move-result v5

    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->pixels(Landroid/hardware/Camera$Size;)I

    move-result v6

    if-le v5, v6, :cond_e

    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->isAspectRatio16_9(Landroid/hardware/Camera$Size;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 118
    move-object v0, v1

    goto :goto_e

    .line 121
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    :cond_2c
    if-eqz v0, :cond_8

    .line 125
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_8
.end method

.method public static getDefaultSceneMode(ILandroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .registers 4
    .param p0, "cameraType"    # I
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    .line 204
    .local v0, "allScenes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_8

    .line 205
    const/4 v1, 0x0

    .line 218
    :goto_7
    return-object v1

    .line 208
    :cond_8
    const/4 v1, 0x1

    if-ne p0, v1, :cond_16

    .line 209
    const-string v1, "soft-skin"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 210
    const-string v1, "soft-skin"

    goto :goto_7

    .line 213
    :cond_16
    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 214
    const-string v1, "auto"

    goto :goto_7

    .line 218
    :cond_21
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public static getDefaultWhiteBalance(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .registers 3
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    .line 226
    .local v0, "allWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_8

    .line 227
    const/4 v1, 0x0

    .line 236
    :goto_7
    return-object v1

    .line 231
    :cond_8
    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 232
    const-string v1, "auto"

    goto :goto_7

    .line 236
    :cond_13
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public static getOptimalPreviewFpsRangeAccordintTo(Landroid/hardware/Camera$Parameters;)[I
    .registers 7
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v5, 0x2

    .line 185
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v1

    .line 187
    .local v1, "supprotedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v1, :cond_2b

    .line 188
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 189
    .local v0, "range":[I
    const/4 v3, 0x0

    aget v3, v0, v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_b

    const/4 v3, 0x1

    aget v3, v0, v3

    const/16 v4, 0x7530

    if-ne v3, v4, :cond_b

    .line 191
    new-array v2, v5, [I

    fill-array-data v2, :array_32

    .line 198
    .end local v0    # "range":[I
    :goto_2a
    return-object v2

    :cond_2b
    new-array v2, v5, [I

    fill-array-data v2, :array_3a

    goto :goto_2a

    .line 191
    nop

    :array_32
    .array-data 4
        0x3e8
        0x7530
    .end array-data

    .line 198
    :array_3a
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static getOptimalPreviewSizeAccordingTo(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .registers 18
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "capRect"    # Landroid/graphics/Rect;
    .param p2, "requiredRank"    # I

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "allSize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/high16 v10, 0x42c80000    # 100.0f

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    float-to-int v2, v10

    .line 55
    .local v2, "capAspect":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v5, "optimalSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1c
    :goto_1c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_53

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 57
    .local v9, "size":Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 59
    .local v6, "prefered":Landroid/hardware/Camera$Size;
    if-eqz v6, :cond_1c

    .line 60
    iget v11, v6, Landroid/hardware/Camera$Size;->width:I

    iget v12, v9, Landroid/hardware/Camera$Size;->width:I

    if-ge v11, v12, :cond_3a

    iget v11, v6, Landroid/hardware/Camera$Size;->height:I

    iget v12, v9, Landroid/hardware/Camera$Size;->height:I

    if-lt v11, v12, :cond_1c

    .line 65
    :cond_3a
    const/high16 v11, 0x42c80000    # 100.0f

    iget v12, v9, Landroid/hardware/Camera$Size;->width:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    iget v12, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    float-to-int v7, v11

    .line 66
    .local v7, "previewAspect":I
    sub-int v1, v2, v7

    .line 68
    .local v1, "aspectDiff":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v12, 0xa

    if-ge v11, v12, :cond_1c

    .line 69
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 75
    .end local v1    # "aspectDiff":I
    .end local v6    # "prefered":Landroid/hardware/Camera$Size;
    .end local v7    # "previewAspect":I
    .end local v9    # "size":Landroid/hardware/Camera$Size;
    :cond_53
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_80

    .line 76
    sget-object v10, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->mPreviewSizeComparator:Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver$PreviewSizeComparator;

    invoke-static {v5, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 78
    move/from16 v8, p2

    .line 79
    .local v8, "rank":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v11, p2, 0x1

    if-ge v10, v11, :cond_6e

    .line 80
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    .line 83
    :cond_6e
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 85
    .local v4, "optimal":Landroid/hardware/Camera$Size;
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, v4, Landroid/hardware/Camera$Size;->width:I

    iget v14, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 96
    .end local v4    # "optimal":Landroid/hardware/Camera$Size;
    .end local v8    # "rank":I
    :goto_7f
    return-object v10

    .line 89
    :cond_80
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 90
    .local v3, "defaultSize":Landroid/hardware/Camera$Size;
    if-eqz v3, :cond_92

    .line 91
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, v3, Landroid/hardware/Camera$Size;->width:I

    iget v14, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_7f

    .line 96
    :cond_92
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    goto :goto_7f
.end method

.method public static getOptimalStillPreviewSize(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 10
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "targetRect"    # Landroid/graphics/Rect;

    .prologue
    const/16 v7, 0x500

    const/16 v6, 0x2d0

    const/4 v5, 0x0

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "preferred":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 164
    .local v2, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 165
    .local v1, "size":Landroid/hardware/Camera$Size;
    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    if-eq v4, v7, :cond_22

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    if-ne v4, v6, :cond_e

    .line 168
    :cond_22
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "preferred":Landroid/graphics/Rect;
    invoke-direct {v0, v5, v5, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 173
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    .restart local v0    # "preferred":Landroid/graphics/Rect;
    :cond_27
    if-nez v0, :cond_33

    .line 174
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->getOptimalPreviewSizeAccordingTo(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 179
    :cond_33
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->toRectList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->getOptimalStillPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v3

    return-object v3
.end method

.method private static isAspectRatio16_9(Landroid/hardware/Camera$Size;)Z
    .registers 4
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    const/4 v0, 0x0

    .line 141
    if-nez p0, :cond_4

    .line 144
    :cond_3
    :goto_3
    return v0

    :cond_4
    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    mul-int/lit8 v1, v1, 0x9

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    mul-int/lit8 v2, v2, 0x10

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static isFaceDetectionSupported(Landroid/hardware/Camera$Parameters;)Z
    .registers 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_8

    .line 274
    const/4 v0, 0x1

    .line 276
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isFlashSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .registers 4
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 263
    .local v0, "allSupported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_e

    .line 264
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 265
    const/4 v1, 0x1

    .line 268
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private static pixels(Landroid/hardware/Camera$Size;)I
    .registers 3
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 133
    if-nez p0, :cond_4

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_3
    return v0

    :cond_4
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    goto :goto_3
.end method
