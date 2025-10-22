.class public Lcom/sonyericsson/cameracommon/contentsview/DataLoader;
.super Ljava/lang/Object;
.source "DataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLUMN_INDEX_BUCKETID:I = 0x7

.field private static final COLUMN_INDEX_DATA:I = 0x1

.field private static final COLUMN_INDEX_HEIGHT:I = 0x5

.field private static final COLUMN_INDEX_ID:I = 0x0

.field private static final COLUMN_INDEX_MIME:I = 0x2

.field private static final COLUMN_INDEX_ORIENTATION:I = 0x6

.field private static final COLUMN_INDEX_WIDTH:I = 0x4

.field public static final EXTENDED_FILES_COLUMN_ID:Ljava/lang/String; = "files_id"

.field public static final EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

.field public static final PANORAMA_ASPECT_THRESHOLD:F = 1.8777778f

.field public static final TAG:Ljava/lang/String; = "DataLoader"

.field private static final WIDTH_PREVIEW_4K_UHD:I = 0xf00


# instance fields
.field private final CONTENT_EXTENSIONS:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDataLoadCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

.field private final mIsRegisterCache:Z

.field private mMediaId:I

.field private mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

.field private mRequestId:I

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    const-string v0, "external"

    .line 111
    invoke-static {v0}, Lcom/sonymobile/media/SomcMediaStore$ExtendedFiles;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    .line 110
    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;Landroid/content/Context;Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;Z)V
    .registers 10
    .param p1, "requestId"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;
    .param p5, "isRegisterCache"    # Z

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ".JPG"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ".3gp"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ".mp4"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 165
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mRequestId:I

    .line 167
    :try_start_1c
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mMediaId:I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_35

    .line 171
    :goto_26
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mContext:Landroid/content/Context;

    .line 172
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 173
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

    .line 174
    iput-boolean p5, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mIsRegisterCache:Z

    .line 175
    return-void

    .line 168
    :catch_35
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DataLoader"

    const-string v2, "mediaId is not corrected."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;Z)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "index"    # I
    .param p4, "callback"    # Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;
    .param p5, "isRegisterCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "destinations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".JPG"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".3gp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mRequestId:I

    .line 147
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->setupQueryParam(Ljava/util/List;I)Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 148
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mContext:Landroid/content/Context;

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 150
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

    .line 151
    iput-boolean p5, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mIsRegisterCache:Z

    .line 152
    return-void
.end method

.method private createAntiAliasBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "size"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 578
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 579
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    move v3, p2

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 581
    :cond_13
    return-object v5
.end method

.method private createContentInfo(Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .registers 16
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v13, 0x1

    .line 341
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getMediaId(Landroid/database/Cursor;)I

    move-result v5

    .line 342
    .local v5, "mediaId":I
    const/4 v11, 0x2

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 343
    .local v6, "mime":Ljava/lang/String;
    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "data":Ljava/lang/String;
    const/4 v11, 0x4

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 345
    .local v10, "width":I
    const/4 v11, 0x5

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 346
    .local v3, "height":I
    const/4 v11, 0x7

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 347
    .local v0, "bucketId":I
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "fileExtension":Ljava/lang/String;
    const-string v11, "image/jpeg"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_31

    const-string v11, ".JPG"

    .line 352
    invoke-direct {p0, v11, v2}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_73

    .line 354
    :cond_31
    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 355
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 354
    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 356
    .local v9, "uriOriginal":Landroid/net/Uri;
    const/4 v8, 0x1

    .line 380
    .local v8, "type":I
    :goto_3c
    if-ne v8, v13, :cond_c2

    .line 381
    const/4 v11, 0x6

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 386
    .local v7, "orientDeg":I
    :goto_43
    new-instance v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    invoke-direct {v4}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;-><init>()V

    .line 387
    .local v4, "info":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    iput v5, v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:I

    .line 388
    iput-object v9, v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    .line 389
    iput-object v1, v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 390
    iput v8, v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    .line 391
    iput v10, v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mWidth:I

    .line 392
    iput v3, v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mHeight:I

    .line 393
    iput v7, v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOrientation:I

    .line 394
    iput-object v6, v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    .line 395
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getGroupedImageCount(I)I

    move-result v11

    iput v11, v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mGroupedImage:I

    .line 396
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getSomcType(Ljava/lang/String;)I

    move-result v11

    iput v11, v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    .line 397
    iput v0, v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    .line 398
    invoke-direct {p0, v4}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getContentType(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    move-result-object v11

    iput-object v11, v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 399
    invoke-direct {p0, v4}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->decodeThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Landroid/graphics/Bitmap;

    move-result-object v11

    iput-object v11, v4, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mThumbnail:Landroid/graphics/Bitmap;

    .line 401
    .end local v4    # "info":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .end local v7    # "orientDeg":I
    .end local v8    # "type":I
    .end local v9    # "uriOriginal":Landroid/net/Uri;
    :goto_72
    return-object v4

    .line 357
    :cond_73
    const-string v11, "video/mp4"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_83

    const-string v11, ".mp4"

    .line 358
    invoke-direct {p0, v11, v2}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8f

    .line 360
    :cond_83
    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 361
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 360
    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 362
    .restart local v9    # "uriOriginal":Landroid/net/Uri;
    const/4 v8, 0x2

    .restart local v8    # "type":I
    goto :goto_3c

    .line 363
    .end local v8    # "type":I
    .end local v9    # "uriOriginal":Landroid/net/Uri;
    :cond_8f
    const-string v11, "video/3gpp"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9f

    const-string v11, ".3gp"

    .line 364
    invoke-direct {p0, v11, v2}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ab

    .line 366
    :cond_9f
    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 367
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 366
    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 368
    .restart local v9    # "uriOriginal":Landroid/net/Uri;
    const/4 v8, 0x2

    .restart local v8    # "type":I
    goto :goto_3c

    .line 369
    .end local v8    # "type":I
    .end local v9    # "uriOriginal":Landroid/net/Uri;
    :cond_ab
    const-string v11, "image/mpo"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c0

    .line 370
    sget-object v11, Lcom/sonyericsson/cameracommon/contentsview/QueryParameterAdapter;->MPO_3DPICTURES_CONTENT_URI:Landroid/net/Uri;

    .line 372
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 370
    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 373
    .restart local v9    # "uriOriginal":Landroid/net/Uri;
    const/4 v8, 0x3

    .restart local v8    # "type":I
    goto/16 :goto_3c

    .line 376
    .end local v8    # "type":I
    .end local v9    # "uriOriginal":Landroid/net/Uri;
    :cond_c0
    const/4 v4, 0x0

    goto :goto_72

    .line 383
    .restart local v8    # "type":I
    .restart local v9    # "uriOriginal":Landroid/net/Uri;
    :cond_c2
    const/4 v7, 0x0

    .restart local v7    # "orientDeg":I
    goto :goto_43
.end method

.method private decodeThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "info"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .prologue
    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1f

    .line 562
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 563
    iget v1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:I

    iget v2, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getMediaPath(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 565
    :cond_11
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;->createMicroThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_1f

    .line 568
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->createAntiAliasBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 574
    :cond_1f
    return-object v0
.end method

.method private varargs generatePathSelection([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "pathSegments"    # [Ljava/lang/String;

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v2, "_data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v2, " like \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    array-length v3, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v3, :cond_2d

    aget-object v1, p1, v2

    .line 321
    .local v1, "segments":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 322
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    :cond_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 326
    .end local v1    # "segments":Ljava/lang/String;
    :cond_2d
    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v2, "_data NOT LIKE \'%/.%\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private generateQueryPathForEachStorage(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "pathWhere":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "storages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    .local v0, "storage":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->generateQueryPathForOneStorage(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    goto :goto_4

    .line 293
    .end local v0    # "storage":Ljava/lang/String;
    :cond_14
    return-object p1
.end method

.method private generateQueryPathForOneStorage(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p2, "storage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "pathWhere":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 299
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_5
    if-ge v1, v4, :cond_33

    aget-object v0, v3, v1

    .line 301
    .local v0, "extension":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v2

    const/4 v6, 0x1

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v5}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->generatePathSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 307
    .end local v0    # "extension":Ljava/lang/String;
    :cond_33
    return-object p1
.end method

.method private getContentType(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
    .registers 6
    .param p1, "info"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .prologue
    const/16 v3, 0xf00

    const/4 v2, 0x2

    .line 495
    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    .line 496
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->isPredictiveCaptureImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 497
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 546
    :goto_12
    return-object v0

    .line 501
    :cond_13
    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    const/16 v1, 0x81

    if-eq v0, v1, :cond_1d

    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    if-ne v0, v2, :cond_20

    .line 503
    :cond_1d
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_12

    .line 504
    :cond_20
    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_2b

    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 506
    :cond_2b
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_12

    .line 507
    :cond_2e
    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_37

    .line 508
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->SOUND_PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_12

    .line 510
    :cond_37
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_12

    .line 513
    :cond_3a
    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    if-ne v0, v2, :cond_8a

    .line 514
    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_47

    .line 516
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_12

    .line 517
    :cond_47
    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_50

    .line 519
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT_VIDEO_120F:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_12

    .line 521
    :cond_50
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SlowMotionPathBuilder;->isSuperSlowMotionVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 522
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->SUPER_SLOW_MOTION_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_12

    .line 525
    :cond_5b
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SlowMotionPathBuilder;->isSuperSlowShotVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 526
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->SUPER_SLOW_SHOT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_12

    .line 529
    :cond_66
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SlowMotionPathBuilder;->isStandardSlowMotionVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 530
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->STANDARD_SLOW_MOTION_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_12

    .line 533
    :cond_71
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SlowMotionPathBuilder;->isHFRVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 534
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->HIGH_FRAME_RATE_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_12

    .line 537
    :cond_7c
    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mWidth:I

    if-ge v0, v3, :cond_84

    iget v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mHeight:I

    if-lt v0, v3, :cond_87

    .line 539
    :cond_84
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_12

    .line 541
    :cond_87
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_12

    .line 546
    :cond_8a
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->NONE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    goto :goto_12
.end method

.method private getCoverImageInfo(I)Landroid/database/Cursor;
    .registers 12
    .param p1, "mediaId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 709
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 710
    .local v0, "param":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v9

    const-string v5, "_data"

    aput-object v5, v4, v8

    const-string v5, "mime_type"

    aput-object v5, v4, v7

    const/4 v5, 0x3

    const-string v6, "datetaken"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "width"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "height"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "orientation"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "bucket_id"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "somctype"

    aput-object v6, v4, v5

    iput-object v4, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 717
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s like \'%s\'"

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "_id"

    aput-object v7, v6, v9

    .line 718
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 717
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 720
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v1

    .line 722
    .local v1, "result":Landroid/database/Cursor;
    if-nez v1, :cond_5c

    move-object v1, v3

    .line 733
    .end local v1    # "result":Landroid/database/Cursor;
    :goto_5b
    return-object v1

    .line 725
    .restart local v1    # "result":Landroid/database/Cursor;
    :cond_5c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_67

    .line 727
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v1, v3

    .line 728
    goto :goto_5b

    .line 731
    :cond_67
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getSomcType(Ljava/lang/String;)I

    move-result v2

    .line 733
    .local v2, "somcType":I
    goto :goto_5b
.end method

.method private getGroupedImageCount(I)I
    .registers 11
    .param p1, "bucketId"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 428
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 429
    .local v1, "param":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "bucket_id"

    aput-object v4, v3, v7

    iput-object v3, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 432
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s DESC, %s DESC"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "datetaken"

    aput-object v6, v5, v7

    const-string v6, "_id"

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 434
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s like \'%s\'"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "bucket_id"

    aput-object v6, v5, v7

    .line 435
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    .line 434
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 437
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v2

    .line 440
    .local v2, "result":Landroid/database/Cursor;
    if-nez v2, :cond_45

    .line 448
    :goto_44
    return v0

    .line 445
    :cond_45
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 446
    .local v0, "count":I
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_44
.end method

.method private getLatestImageInfo()Landroid/database/Cursor;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 686
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    .line 689
    .local v0, "queryResult":Landroid/database/Cursor;
    if-nez v0, :cond_f

    move-object v0, v1

    .line 698
    .end local v0    # "queryResult":Landroid/database/Cursor;
    :cond_e
    :goto_e
    return-object v0

    .line 692
    .restart local v0    # "queryResult":Landroid/database/Cursor;
    :cond_f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_e

    .line 694
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 695
    goto :goto_e
.end method

.method private getMediaId(Landroid/database/Cursor;)I
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 411
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 415
    .local v0, "mediaId":I
    return v0
.end method

.method private getMediaPath(II)Ljava/lang/String;
    .registers 14
    .param p1, "mediaId"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 586
    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v2}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 588
    .local v2, "param":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    packed-switch p2, :pswitch_data_84

    .line 627
    :cond_c
    :goto_c
    return-object v4

    .line 591
    :pswitch_d
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 592
    .local v3, "uri":Landroid/net/Uri;
    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "_data"

    aput-object v6, v5, v9

    iput-object v5, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 593
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s=%s"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "_id"

    aput-object v8, v7, v9

    .line 594
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    .line 593
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 595
    iput v9, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 596
    iput v10, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 612
    :goto_31
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v3, v2}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    .line 613
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_c

    .line 618
    const/4 v5, 0x0

    :try_start_3a
    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 619
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_44} :catch_72
    .catchall {:try_start_3a .. :try_end_44} :catchall_7e

    move-result-object v4

    .line 625
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_c

    .line 600
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "uri":Landroid/net/Uri;
    :pswitch_49
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 601
    .restart local v3    # "uri":Landroid/net/Uri;
    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "_data"

    aput-object v6, v5, v9

    iput-object v5, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 602
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s=%s"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "_id"

    aput-object v8, v7, v9

    .line 603
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    .line 602
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 604
    iput v9, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 605
    iput v10, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    goto :goto_31

    .line 625
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_6e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_c

    .line 621
    :catch_72
    move-exception v1

    .line 622
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_73
    const-string v5, "DataLoader"

    const-string v6, "The specified column isn\'t found."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_7e

    .line 625
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_c

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_7e
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    .line 588
    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_d
        :pswitch_49
        :pswitch_d
    .end packed-switch
.end method

.method private getPredictiveCaptureImageInfo(Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 12
    .param p1, "timeStamp"    # Ljava/lang/String;
    .param p2, "bucketId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 636
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 637
    .local v1, "queryParam":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v8

    const-string v5, "_data"

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string v6, "mime_type"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "datetaken"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "width"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "height"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "orientation"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "bucket_id"

    aput-object v6, v4, v5

    iput-object v4, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 649
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s DESC"

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "title"

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 654
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(_data REGEXP \'.*/DSCPDC_\\d{4}_BURST"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(|_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "COVER"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".[jJ][pP][eE]?[gG]\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(bucket_id=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 665
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v5, v1}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v2

    .line 667
    .local v2, "queryResult":Landroid/database/Cursor;
    if-nez v2, :cond_aa

    move-object v2, v3

    .line 676
    .end local v2    # "queryResult":Landroid/database/Cursor;
    :cond_a9
    :goto_a9
    return-object v2

    .line 670
    .restart local v2    # "queryResult":Landroid/database/Cursor;
    :cond_aa
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_a9

    .line 673
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v2, v3

    .line 674
    goto :goto_a9
.end method

.method private getSomcType(Ljava/lang/String;)I
    .registers 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 462
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 463
    .local v0, "param":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v3, v2

    const-string v4, "somctype"

    aput-object v4, v3, v7

    iput-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 467
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s DESC, %s DESC"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "datetaken"

    aput-object v6, v5, v2

    const-string v6, "_id"

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 469
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s like \'%s\'"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "_data"

    aput-object v6, v5, v2

    aput-object p1, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 471
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->EXTENDED_FILES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v1

    .line 473
    .local v1, "result":Landroid/database/Cursor;
    if-nez v1, :cond_45

    .line 485
    :goto_44
    return v2

    .line 477
    :cond_45
    const/4 v2, 0x0

    .line 478
    .local v2, "type":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 479
    const-string v3, "somctype"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 482
    :cond_56
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_44
.end method

.method private isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "supportedExtension"    # Ljava/lang/String;
    .param p2, "fileExtension"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 743
    if-nez p2, :cond_4

    .line 749
    :cond_3
    :goto_3
    return v0

    .line 746
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 747
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private setupQueryParam(Ljava/util/List;I)Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    .registers 13
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;"
        }
    .end annotation

    .prologue
    .local p1, "storages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 241
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v2, "pathWhere":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v2, p1}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->generateQueryPathForEachStorage(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 245
    new-instance v3, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v3}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 246
    .local v3, "queryParam":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v9

    const-string v5, "_data"

    aput-object v5, v4, v8

    const-string v5, "mime_type"

    aput-object v5, v4, v7

    const/4 v5, 0x3

    const-string v6, "datetaken"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "width"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "height"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "orientation"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "bucket_id"

    aput-object v6, v4, v5

    iput-object v4, v3, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 256
    iput p2, v3, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 257
    iput v8, v3, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 258
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s DESC, %s DESC"

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "datetaken"

    aput-object v7, v6, v9

    const-string v7, "_id"

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v4, "(somctype!=129)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v4, "(somctype!=130)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v4, " AND ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_86

    .line 276
    if-eqz v1, :cond_7a

    .line 277
    const-string v4, " OR "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_7a
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 281
    :cond_86
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 284
    return-object v3
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 187
    const/4 v5, 0x0

    .line 188
    .local v5, "result":Z
    const/4 v1, 0x0

    .line 191
    .local v1, "id":I
    const/4 v4, 0x0

    .line 192
    .local v4, "queryResult":Landroid/database/Cursor;
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    if-eqz v7, :cond_55

    .line 193
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getLatestImageInfo()Landroid/database/Cursor;

    move-result-object v4

    .line 198
    :goto_c
    const/4 v0, 0x0

    .line 199
    .local v0, "contentInfo":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    move-object v2, v4

    .local v2, "queryLatestResult":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 200
    if-eqz v2, :cond_3e

    .line 204
    :try_start_11
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->createContentInfo(Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_39

    .line 206
    iget-object v8, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v8}, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->isPredictiveCaptureImage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 208
    iget-object v8, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v8}, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->getTimeStamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "timeStamp":Ljava/lang/String;
    iget v8, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    .line 211
    invoke-direct {p0, v6, v8}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getPredictiveCaptureImageInfo(Ljava/lang/String;I)Landroid/database/Cursor;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_2a} :catch_61
    .catchall {:try_start_11 .. :try_end_2a} :catchall_77

    move-result-object v3

    .line 210
    .local v3, "queryPredictiveCaptureCoverImageResult":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 213
    if-eqz v3, :cond_32

    .line 214
    :try_start_2e
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->createContentInfo(Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_7a
    .catchall {:try_start_2e .. :try_end_31} :catchall_a0

    move-result-object v0

    .line 217
    :cond_32
    if-eqz v3, :cond_39

    if-eqz v9, :cond_73

    :try_start_36
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_39} :catch_5c
    .catchall {:try_start_36 .. :try_end_39} :catchall_77

    .line 221
    .end local v3    # "queryPredictiveCaptureCoverImageResult":Landroid/database/Cursor;
    .end local v6    # "timeStamp":Ljava/lang/String;
    :cond_39
    :goto_39
    if-eqz v0, :cond_3e

    .line 222
    :try_start_3b
    iget v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:I
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3d} :catch_61
    .catchall {:try_start_3b .. :try_end_3d} :catchall_77

    .line 223
    const/4 v5, 0x1

    .line 226
    :cond_3e
    if-eqz v2, :cond_45

    if-eqz v9, :cond_93

    :try_start_42
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_8e
    .catchall {:try_start_42 .. :try_end_45} :catchall_6f

    .line 227
    :cond_45
    :goto_45
    iput-object v9, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 229
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

    iget v8, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mRequestId:I

    iget-boolean v9, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mIsRegisterCache:Z

    invoke-interface {v7, v5, v0, v8, v9}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;->onDataLoaded(ZLcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;IZ)V

    .line 230
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    .line 195
    .end local v0    # "contentInfo":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .end local v2    # "queryLatestResult":Landroid/database/Cursor;
    :cond_55
    iget v7, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mMediaId:I

    invoke-direct {p0, v7}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->getCoverImageInfo(I)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_c

    .line 217
    .restart local v0    # "contentInfo":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .restart local v2    # "queryLatestResult":Landroid/database/Cursor;
    .restart local v3    # "queryPredictiveCaptureCoverImageResult":Landroid/database/Cursor;
    .restart local v6    # "timeStamp":Ljava/lang/String;
    :catch_5c
    move-exception v10

    :try_start_5d
    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_60} :catch_61
    .catchall {:try_start_5d .. :try_end_60} :catchall_77

    goto :goto_39

    .line 199
    .end local v3    # "queryPredictiveCaptureCoverImageResult":Landroid/database/Cursor;
    .end local v6    # "timeStamp":Ljava/lang/String;
    :catch_61
    move-exception v7

    :try_start_62
    throw v7
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    .line 226
    :catchall_63
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_67
    if-eqz v2, :cond_6e

    if-eqz v8, :cond_9c

    :try_start_6b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6e} :catch_97
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    :cond_6e
    :goto_6e
    :try_start_6e
    throw v7
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    .line 227
    :catchall_6f
    move-exception v7

    iput-object v9, p0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    throw v7

    .line 217
    .restart local v3    # "queryPredictiveCaptureCoverImageResult":Landroid/database/Cursor;
    .restart local v6    # "timeStamp":Ljava/lang/String;
    :cond_73
    :try_start_73
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_76} :catch_61
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    goto :goto_39

    .line 226
    .end local v3    # "queryPredictiveCaptureCoverImageResult":Landroid/database/Cursor;
    .end local v6    # "timeStamp":Ljava/lang/String;
    :catchall_77
    move-exception v7

    move-object v8, v9

    goto :goto_67

    .line 210
    .restart local v3    # "queryPredictiveCaptureCoverImageResult":Landroid/database/Cursor;
    .restart local v6    # "timeStamp":Ljava/lang/String;
    :catch_7a
    move-exception v8

    :try_start_7b
    throw v8
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7c

    .line 217
    :catchall_7c
    move-exception v7

    :goto_7d
    if-eqz v3, :cond_84

    if-eqz v8, :cond_8a

    :try_start_81
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_84} :catch_85
    .catchall {:try_start_81 .. :try_end_84} :catchall_77

    :cond_84
    :goto_84
    :try_start_84
    throw v7

    :catch_85
    move-exception v10

    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_84

    :cond_8a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_8d} :catch_61
    .catchall {:try_start_84 .. :try_end_8d} :catchall_77

    goto :goto_84

    .line 226
    .end local v3    # "queryPredictiveCaptureCoverImageResult":Landroid/database/Cursor;
    .end local v6    # "timeStamp":Ljava/lang/String;
    :catch_8e
    move-exception v8

    :try_start_8f
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_45

    :cond_93
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_45

    :catch_97
    move-exception v10

    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6e

    :cond_9c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9f
    .catchall {:try_start_8f .. :try_end_9f} :catchall_6f

    goto :goto_6e

    .line 217
    .restart local v3    # "queryPredictiveCaptureCoverImageResult":Landroid/database/Cursor;
    .restart local v6    # "timeStamp":Ljava/lang/String;
    :catchall_a0
    move-exception v7

    move-object v8, v9

    goto :goto_7d
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
