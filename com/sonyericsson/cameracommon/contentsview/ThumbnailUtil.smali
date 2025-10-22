.class public Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;
.super Ljava/lang/Object;
.source "ThumbnailUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ThumbnailUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createThumbnailViewFromJpeg(Landroid/app/Activity;[BI)Landroid/widget/RelativeLayout;
    .registers 14
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "data"    # [B
    .param p2, "orientationDegree"    # I

    .prologue
    .line 35
    const/4 v5, 0x0

    .line 36
    .local v5, "thumbnailContainer":Landroid/widget/RelativeLayout;
    if-nez p1, :cond_c

    .line 37
    const-string v9, "ThumbnailUtil"

    const-string v10, "data is null"

    invoke-static {v9, v10}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 90
    .end local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .local v6, "thumbnailContainer":Landroid/widget/RelativeLayout;
    :goto_b
    return-object v6

    .line 42
    .end local v6    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .restart local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    :cond_c
    const/4 v7, 0x0

    .line 43
    .local v7, "thumbnailImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 44
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isCoreCameraApp(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 45
    sget v9, Lcom/sonyericsson/cameracommon/R$layout;->content_early_thumbnail_core_camera:I

    const/4 v10, 0x0

    .line 46
    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 52
    .restart local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    :goto_20
    sget v9, Lcom/sonyericsson/cameracommon/R$id;->early_thumbnail_image:I

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "thumbnailImage":Landroid/widget/ImageView;
    check-cast v7, Landroid/widget/ImageView;

    .line 55
    .restart local v7    # "thumbnailImage":Landroid/widget/ImageView;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 56
    .local v3, "option":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 57
    const/4 v9, 0x0

    array-length v10, p1

    invoke-static {p1, v9, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 59
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 60
    .local v8, "width":I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 61
    .local v1, "height":I
    if-le v8, v1, :cond_75

    .line 62
    int-to-float v9, v1

    const/high16 v10, 0x42c00000    # 96.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 70
    :goto_45
    const/4 v9, 0x0

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 71
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v9, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 72
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 73
    const/4 v9, 0x0

    array-length v10, p1

    invoke-static {p1, v9, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/16 v9, 0x60

    const/16 v10, 0x60

    invoke-static {v0, v9, v10}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    const/4 v4, 0x0

    .line 81
    .local v4, "result":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_64

    .line 82
    invoke-static {v0, p2}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 84
    :cond_64
    if-eqz v4, :cond_80

    .line 85
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_69
    move-object v6, v5

    .line 90
    .end local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .restart local v6    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    goto :goto_b

    .line 49
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "height":I
    .end local v3    # "option":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "result":Landroid/graphics/Bitmap;
    .end local v6    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .end local v8    # "width":I
    .restart local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    :cond_6b
    sget v9, Lcom/sonyericsson/cameracommon/R$layout;->content_early_thumbnail:I

    const/4 v10, 0x0

    .line 50
    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    check-cast v5, Landroid/widget/RelativeLayout;

    .restart local v5    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    goto :goto_20

    .line 65
    .restart local v1    # "height":I
    .restart local v3    # "option":Landroid/graphics/BitmapFactory$Options;
    .restart local v8    # "width":I
    :cond_75
    int-to-float v9, v8

    const/high16 v10, 0x42c00000    # 96.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_45

    .line 87
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "result":Landroid/graphics/Bitmap;
    :cond_80
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_69
.end method

.method public static createThumbnailViewFromUri(Landroid/app/Activity;Landroid/net/Uri;)Landroid/widget/RelativeLayout;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->createThumbnailViewFromUri(Landroid/app/Activity;Landroid/net/Uri;I)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public static createThumbnailViewFromUri(Landroid/app/Activity;Landroid/net/Uri;I)Landroid/widget/RelativeLayout;
    .registers 19
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "orientationDegree"    # I

    .prologue
    .line 125
    const/4 v9, 0x0

    .line 126
    .local v9, "thumbnailContainer":Landroid/widget/RelativeLayout;
    if-nez p1, :cond_c

    .line 127
    const-string v13, "ThumbnailUtil"

    const-string v14, "uri is null"

    invoke-static {v13, v14}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v9

    .line 204
    .end local v9    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .local v10, "thumbnailContainer":Landroid/widget/RelativeLayout;
    :goto_b
    return-object v10

    .line 132
    .end local v10    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .restart local v9    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    :cond_c
    const/4 v11, 0x0

    .line 133
    .local v11, "thumbnailImage":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 134
    .local v6, "inflater":Landroid/view/LayoutInflater;
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isCoreCameraApp(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_8a

    .line 135
    sget v13, Lcom/sonyericsson/cameracommon/R$layout;->content_early_thumbnail_core_camera:I

    const/4 v14, 0x0

    .line 136
    invoke-virtual {v6, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .end local v9    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    check-cast v9, Landroid/widget/RelativeLayout;

    .line 142
    .restart local v9    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    :goto_20
    sget v13, Lcom/sonyericsson/cameracommon/R$id;->early_thumbnail_image:I

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "thumbnailImage":Landroid/widget/ImageView;
    check-cast v11, Landroid/widget/ImageView;

    .line 145
    .restart local v11    # "thumbnailImage":Landroid/widget/ImageView;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 146
    .local v7, "option":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 147
    const/4 v5, 0x0

    .line 149
    .local v5, "iStream":Ljava/io/InputStream;
    :try_start_31
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_3a} :catch_94

    move-result-object v5

    .line 153
    :goto_3b
    const/4 v13, 0x0

    invoke-static {v5, v13, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 155
    if-eqz v5, :cond_44

    .line 156
    :try_start_41
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_ae

    .line 161
    :cond_44
    :goto_44
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 162
    .local v12, "width":I
    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 163
    .local v4, "height":I
    if-le v12, v4, :cond_c9

    .line 164
    int-to-float v13, v4

    const/high16 v14, 0x42c00000    # 96.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    iput v13, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 172
    :goto_54
    const/4 v13, 0x0

    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 173
    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v13, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 174
    const/4 v13, 0x1

    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 176
    :try_start_5e
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_67} :catch_d4

    move-result-object v5

    .line 180
    :goto_68
    const/4 v13, 0x0

    invoke-static {v5, v13, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 182
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_72

    .line 183
    :try_start_6f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_ef

    .line 190
    :cond_72
    :goto_72
    const/16 v13, 0x60

    const/16 v14, 0x60

    invoke-static {v1, v13, v14}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 194
    const/4 v8, 0x0

    .line 195
    .local v8, "result":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_83

    .line 196
    move/from16 v0, p2

    invoke-static {v1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 198
    :cond_83
    if-eqz v8, :cond_10a

    .line 199
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_88
    move-object v10, v9

    .line 204
    .end local v9    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .restart local v10    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    goto :goto_b

    .line 139
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "height":I
    .end local v5    # "iStream":Ljava/io/InputStream;
    .end local v7    # "option":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "result":Landroid/graphics/Bitmap;
    .end local v10    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    .end local v12    # "width":I
    .restart local v9    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    :cond_8a
    sget v13, Lcom/sonyericsson/cameracommon/R$layout;->content_early_thumbnail:I

    const/4 v14, 0x0

    .line 140
    invoke-virtual {v6, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .end local v9    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    check-cast v9, Landroid/widget/RelativeLayout;

    .restart local v9    # "thumbnailContainer":Landroid/widget/RelativeLayout;
    goto :goto_20

    .line 150
    .restart local v5    # "iStream":Ljava/io/InputStream;
    .restart local v7    # "option":Landroid/graphics/BitmapFactory$Options;
    :catch_94
    move-exception v2

    .line 151
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v13, "ThumbnailUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileNotFoundException :  = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 158
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_ae
    move-exception v2

    .line 159
    .local v2, "e":Ljava/io/IOException;
    const-string v13, "ThumbnailUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException :  = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 167
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "height":I
    .restart local v12    # "width":I
    :cond_c9
    int-to-float v13, v12

    const/high16 v14, 0x42c00000    # 96.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    iput v13, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_54

    .line 177
    :catch_d4
    move-exception v3

    .line 178
    .local v3, "e1":Ljava/io/FileNotFoundException;
    const-string v13, "ThumbnailUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileNotFoundException :  = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_68

    .line 185
    .end local v3    # "e1":Ljava/io/FileNotFoundException;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_ef
    move-exception v2

    .line 186
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v13, "ThumbnailUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException :  = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_72

    .line 201
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v8    # "result":Landroid/graphics/Bitmap;
    :cond_10a
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_88
.end method

.method public static rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degree"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 94
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 95
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 96
    .local v4, "h":I
    move-object v0, p0

    .line 98
    .local v0, "result":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_25

    .line 99
    :try_start_d
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 100
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v1, p1

    int-to-float v2, v3

    div-float/2addr v2, v10

    int-to-float v6, v4

    div-float/2addr v6, v10

    invoke-virtual {v5, v1, v2, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 101
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 102
    .local v9, "temp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_24} :catch_26
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_24} :catch_4a

    .line 103
    move-object v0, v9

    .line 110
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v9    # "temp":Landroid/graphics/Bitmap;
    :cond_25
    :goto_25
    return-object v0

    .line 105
    :catch_26
    move-exception v8

    .line 106
    .local v8, "exArg":Ljava/lang/IllegalArgumentException;
    const-string v1, "ThumbnailUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException : width = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", height = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 107
    .end local v8    # "exArg":Ljava/lang/IllegalArgumentException;
    :catch_4a
    move-exception v7

    .line 108
    .local v7, "ex":Ljava/lang/Exception;
    const-string v1, "ThumbnailUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : width = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", height = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method
