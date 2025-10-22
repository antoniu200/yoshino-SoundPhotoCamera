.class public Lcom/sonyericsson/cameracommon/utility/OneShotUtility;
.super Ljava/lang/Object;
.source "OneShotUtility.java"


# static fields
.field public static final KEY_ADD_TO_MEDIA_STORE:Ljava/lang/String; = "addToMediaStore"

.field public static final REQUEST_ONE_SHOT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "OneShotUtility"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeInitialSampleSize(DDII)I
    .registers 14
    .param p0, "w"    # D
    .param p2, "h"    # D
    .param p4, "minSideLength"    # I
    .param p5, "maxNumOfPixels"    # I

    .prologue
    const/4 v2, 0x1

    .line 95
    if-gez p5, :cond_b

    move v0, v2

    .line 97
    .local v0, "lowerBound":I
    :goto_4
    if-gez p4, :cond_19

    const/16 v1, 0x80

    .line 101
    .local v1, "upperBound":I
    :goto_8
    if-ge v1, v0, :cond_2d

    .line 111
    .end local v0    # "lowerBound":I
    :cond_a
    :goto_a
    return v0

    .line 95
    .end local v1    # "upperBound":I
    :cond_b
    mul-double v4, p0, p2

    int-to-double v6, p5

    div-double/2addr v4, v6

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_4

    .line 97
    .restart local v0    # "lowerBound":I
    :cond_19
    int-to-double v4, p4

    div-double v4, p0, v4

    .line 98
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    int-to-double v6, p4

    div-double v6, p2, v6

    .line 99
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 98
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-int v1, v4

    goto :goto_8

    .line 106
    .restart local v1    # "upperBound":I
    :cond_2d
    if-gez p5, :cond_33

    if-gez p4, :cond_33

    move v0, v2

    .line 107
    goto :goto_a

    .line 108
    :cond_33
    if-ltz p4, :cond_a

    move v0, v1

    .line 111
    goto :goto_a
.end method

.method public static computeSampleSize(DDII)I
    .registers 10
    .param p0, "w"    # D
    .param p2, "h"    # D
    .param p4, "minSideLength"    # I
    .param p5, "maxNumOfPixels"    # I

    .prologue
    .line 77
    invoke-static/range {p0 .. p5}, Lcom/sonyericsson/cameracommon/utility/OneShotUtility;->computeInitialSampleSize(DDII)I

    move-result v0

    .line 81
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_e

    .line 82
    const/4 v1, 0x1

    .line 83
    .local v1, "roundedSize":I
    :goto_9
    if-ge v1, v0, :cond_14

    .line 84
    shl-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 87
    .end local v1    # "roundedSize":I
    :cond_e
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 89
    .restart local v1    # "roundedSize":I
    :cond_14
    return v1
.end method

.method public static createResultIntent(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "orientation"    # I

    .prologue
    .line 46
    new-instance v1, Lcom/sonyericsson/cameracommon/utility/ImageLoader;

    invoke-direct {v1, p0, p1, p3}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->load()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    .local v0, "thumbnail":Landroid/graphics/Bitmap;
    invoke-static {p1, p2, v0}, Lcom/sonyericsson/cameracommon/utility/OneShotUtility;->createResultIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static createResultIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/content/Intent;
    .registers 24
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "mime"    # Ljava/lang/String;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    new-instance v18, Landroid/content/Intent;

    const-string v4, "inline-data"

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v18, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_59

    .line 56
    const/16 v17, 0x0

    .line 57
    .local v17, "attach":Landroid/graphics/Bitmap;
    const/16 v20, 0x0

    .line 58
    .local v20, "temp":Landroid/graphics/Bitmap;
    const v9, 0xc800

    .line 59
    .local v9, "maxNumOfPixels":I
    const/high16 v10, 0x3f800000    # 1.0f

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    const/4 v8, -0x1

    .line 59
    invoke-static/range {v4 .. v9}, Lcom/sonyericsson/cameracommon/utility/OneShotUtility;->computeSampleSize(DDII)I

    move-result v4

    int-to-float v4, v4

    div-float v19, v10, v4

    .line 61
    .local v19, "scale":F
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 62
    .local v15, "m":Landroid/graphics/Matrix;
    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 64
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    move-object/from16 v10, p2

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 65
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 66
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    const-string v4, "data"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    .end local v9    # "maxNumOfPixels":I
    .end local v15    # "m":Landroid/graphics/Matrix;
    .end local v17    # "attach":Landroid/graphics/Bitmap;
    .end local v19    # "scale":F
    .end local v20    # "temp":Landroid/graphics/Bitmap;
    :cond_59
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    return-object v18
.end method
