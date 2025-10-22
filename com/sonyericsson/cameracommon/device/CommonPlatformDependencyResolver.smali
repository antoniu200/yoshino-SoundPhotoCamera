.class public Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;
.super Ljava/lang/Object;
.source "CommonPlatformDependencyResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;,
        Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;
    }
.end annotation


# static fields
.field private static final ASPECT_TOLERANCE:D = 0.05

.field public static final TAG:Ljava/lang/String; = "CommonPlatformDependencyResolver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Landroid/hardware/Camera$Parameters;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->setDcModeIfSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static equalsRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 10
    .param p0, "r1"    # Landroid/graphics/Rect;
    .param p1, "r2"    # Landroid/graphics/Rect;

    .prologue
    .line 278
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v6, v6

    div-double v0, v4, v6

    .line 279
    .local v0, "ratio1":D
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v6, v6

    div-double v2, v4, v6

    .line 281
    .local v2, "ratio2":D
    sub-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3fa999999999999aL    # 0.05

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_29

    const/4 v4, 0x1

    :goto_28
    return v4

    :cond_29
    const/4 v4, 0x0

    goto :goto_28
.end method

.method private static getDcModeSupportedValueList(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .registers 7
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    const-string v3, "sony-dc-mode-values"

    invoke-virtual {p0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "values":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "stringListValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1f

    .line 134
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v5, :cond_1f

    aget-object v1, v4, v3

    .line 135
    .local v1, "token":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 138
    .end local v1    # "token":Ljava/lang/String;
    :cond_1f
    return-object v0
.end method

.method private static getOptimalPreviewRect(Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;
    .registers 9
    .param p0, "optimalPreviewSizeComparator"    # Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;
    .param p1, "captureSize"    # Landroid/graphics/Rect;
    .param p2, "preferedPreviewSize"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;",
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
    .line 205
    .local p3, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v1, 0x0

    .line 208
    .local v1, "result":Landroid/graphics/Rect;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 213
    .local v0, "previewSize":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 216
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->equalsRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 217
    if-nez v1, :cond_25

    .line 218
    move-object v1, v0

    goto :goto_5

    .line 221
    :cond_25
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;->compare(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    if-gez v3, :cond_5

    .line 222
    move-object v1, v0

    goto :goto_5

    .line 231
    .end local v0    # "previewSize":Landroid/graphics/Rect;
    :cond_2d
    return-object v1
.end method

.method public static getOptimalStillPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;
    .registers 4
    .param p0, "captureSize"    # Landroid/graphics/Rect;
    .param p1, "preferedPreviewSize"    # Landroid/graphics/Rect;
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
    .line 163
    .local p2, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, p0, p1, p2}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->getOptimalPreviewRect(Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getOptimalVideoPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;
    .registers 4
    .param p0, "captureSize"    # Landroid/graphics/Rect;
    .param p1, "preferedPreviewSize"    # Landroid/graphics/Rect;
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
    .line 188
    .local p2, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, p0, p1, p2}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->getOptimalPreviewRect(Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final getRect(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Landroid/graphics/Rect;
    .registers 11
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 308
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_8

    .line 321
    :cond_7
    :goto_7
    return-object v3

    .line 313
    :cond_8
    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "tokens":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 316
    :try_start_12
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_27} :catch_29

    move-object v3, v4

    goto :goto_7

    .line 317
    :catch_29
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "CommonPlatformDependencyResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse parameter for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private static getSupportedValueList(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .registers 7
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    const-string v3, "sony-video-nr-values"

    invoke-virtual {p0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "values":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v0, "stringListValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1f

    .line 270
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v5, :cond_1f

    aget-object v1, v4, v3

    .line 271
    .local v1, "token":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 274
    .end local v1    # "token":Ljava/lang/String;
    :cond_1f
    return-object v0
.end method

.method public static isVideoNrSupported(Landroid/hardware/Camera$Parameters;)Z
    .registers 3
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->getSupportedValueList(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static setDcModeIfSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->getDcModeSupportedValueList(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 122
    invoke-virtual {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_d
    return-void
.end method

.method protected static toRect(Landroid/hardware/Camera$Size;)Landroid/graphics/Rect;
    .registers 5
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    const/4 v3, 0x0

    .line 248
    if-nez p0, :cond_5

    const/4 v0, 0x0

    .line 249
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4
.end method

.method protected static toRectList(Ljava/util/List;)Ljava/util/List;
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
    .line 253
    .local p0, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p0, :cond_8

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    :cond_7
    return-object v0

    .line 256
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
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

    .line 258
    .local v1, "size":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_11

    .line 259
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;->toRect(Landroid/hardware/Camera$Size;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method protected static toString(Landroid/graphics/Rect;)Ljava/lang/String;
    .registers 6
    .param p0, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 239
    if-nez p0, :cond_5

    .line 240
    const-string v0, "null"

    .line 242
    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%d,%d,%d,%d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 243
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 242
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
