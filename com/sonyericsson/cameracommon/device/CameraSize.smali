.class public Lcom/sonyericsson/cameracommon/device/CameraSize;
.super Ljava/lang/Object;
.source "CameraSize.java"


# static fields
.field private static final ASPECT_TOLERANCE:D = 0.05

.field public static final MIN_RECORDING_DURATION:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CameraSize"

.field public static final VIDEO_MAX_SIZE:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSize(III)J
    .registers 7
    .param p0, "audioBitRate"    # I
    .param p1, "bitRate"    # I
    .param p2, "second"    # I

    .prologue
    .line 88
    add-int v0, p0, p1

    mul-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static convertCameraSize(Landroid/hardware/Camera$Size;)Landroid/graphics/Rect;
    .registers 5
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    const/4 v3, 0x0

    .line 225
    if-nez p0, :cond_5

    const/4 v0, 0x0

    .line 226
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4
.end method

.method public static convertCameraSizeList(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p0, :cond_8

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    :cond_7
    return-object v0

    .line 233
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v0, "rectList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 235
    .local v1, "size":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_11

    .line 236
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/device/CameraSize;->convertCameraSize(Landroid/hardware/Camera$Size;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method private static getAspectRatio(DD)I
    .registers 6
    .param p0, "width"    # D
    .param p2, "height"    # D

    .prologue
    .line 48
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p0

    div-double/2addr v0, p2

    double-to-int v0, v0

    return v0
.end method

.method public static getAspectRatio(Landroid/graphics/Rect;)I
    .registers 5
    .param p0, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/device/CameraSize;->getAspectRatio(DD)I

    move-result v0

    return v0
.end method

.method public static getAverageFileSize(II)J
    .registers 4
    .param p0, "audioBitRate"    # I
    .param p1, "bitRate"    # I

    .prologue
    .line 65
    const/16 v0, 0x3c

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/device/CameraSize;->computeSize(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDispayHeightWithoutNavigationBar(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 171
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getDispayWidthWithoutNavigationBar(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 166
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static getMinFileSize(II)J
    .registers 4
    .param p0, "audioBitRate"    # I
    .param p1, "bitRate"    # I

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/device/CameraSize;->computeSize(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOptimalPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;
    .registers 19
    .param p0, "baseRect"    # Landroid/graphics/Rect;
    .param p1, "maxRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    move-object/from16 v2, p1

    .line 124
    .local v2, "optimalSize":Landroid/graphics/Rect;
    const v1, 0x7fffffff

    .line 125
    .local v1, "minDiff":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-double v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-double v12, v12

    div-double v6, v10, v12

    .line 126
    .local v6, "ratio":D
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_15
    :goto_15
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_40

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 131
    .local v3, "previewSize":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-gt v11, v12, :cond_15

    .line 132
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->width()I

    move-result v12

    if-ne v11, v12, :cond_41

    .line 133
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-ne v11, v12, :cond_41

    .line 136
    move-object v2, v3

    .line 159
    .end local v3    # "previewSize":Landroid/graphics/Rect;
    :cond_40
    return-object v2

    .line 141
    .restart local v3    # "previewSize":Landroid/graphics/Rect;
    :cond_41
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-double v12, v11

    .line 142
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-double v14, v11

    div-double v4, v12, v14

    .line 143
    .local v4, "previewRatio":D
    sub-double v12, v6, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 144
    .local v8, "ratioDiff":D
    const-wide v12, 0x3fa999999999999aL    # 0.05

    cmpg-double v11, v8, v12

    if-gtz v11, :cond_15

    .line 145
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 147
    .local v0, "lengthDiff":I
    if-ge v0, v1, :cond_15

    .line 148
    move-object v2, v3

    .line 149
    move v1, v0

    goto :goto_15
.end method

.method public static getOptimalVideoSnapshotSize(Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;
    .registers 7
    .param p0, "videoSize"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "supportedSnapshotSizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v0, 0x0

    .line 206
    .local v0, "optimalSize":Landroid/graphics/Rect;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 207
    .local v1, "size":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-gt v3, v4, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 209
    if-nez v0, :cond_29

    .line 210
    move-object v0, v1

    goto :goto_5

    .line 212
    :cond_29
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 213
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 215
    move-object v0, v1

    goto :goto_5

    .line 221
    .end local v1    # "size":Landroid/graphics/Rect;
    :cond_3f
    return-object v0
.end method

.method public static getOptimalVideoSnapshotSizeFromCamerSizeList(Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;
    .registers 9
    .param p0, "videoSize"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .local p1, "supportedSnapshotSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v6, 0x0

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 196
    .local v1, "size":Landroid/hardware/Camera$Size;
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 199
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    :cond_23
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/device/CameraSize;->getOptimalVideoSnapshotSize(Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v2

    return-object v2
.end method

.method public static getVideoPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;
    .registers 4
    .param p0, "videoRect"    # Landroid/graphics/Rect;
    .param p1, "defaultRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/device/CameraSize;->getOptimalPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static isAspectRatioDifferent(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5
    .param p0, "currentRect"    # Landroid/graphics/Rect;
    .param p1, "newRect"    # Landroid/graphics/Rect;

    .prologue
    .line 180
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/device/CameraSize;->getAspectRatio(Landroid/graphics/Rect;)I

    move-result v0

    .line 181
    .local v0, "currentRatio":I
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/device/CameraSize;->getAspectRatio(Landroid/graphics/Rect;)I

    move-result v2

    .line 182
    .local v2, "newRatio":I
    const/4 v1, 0x0

    .line 183
    .local v1, "diff":Z
    if-eq v0, v2, :cond_c

    .line 184
    const/4 v1, 0x1

    .line 188
    :cond_c
    return v1
.end method
