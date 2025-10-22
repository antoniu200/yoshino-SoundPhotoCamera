.class public Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
.super Ljava/lang/Object;
.source "MediaProviderUpdator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator$OnScanCompletedListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MediaProviderUpdator"

.field private static final TIME_OUT_SCANNER_IN_MILLI:I = 0x7530


# instance fields
.field protected mContext:Landroid/content/Context;

.field private final mIsOneShotPhoto:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOneShotPhoto"    # Z

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->mContext:Landroid/content/Context;

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->mContext:Landroid/content/Context;

    .line 43
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->mIsOneShotPhoto:Z

    .line 44
    return-void
.end method

.method private insertVideoContentManager(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)Landroid/net/Uri;
    .registers 4
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "filePath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->scanFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 176
    .local v1, "uri":Landroid/net/Uri;
    return-object v1
.end method

.method private declared-synchronized scanFile(Ljava/lang/String;)Landroid/net/Uri;
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 113
    monitor-enter p0

    if-eqz p1, :cond_1b

    .line 114
    :try_start_4
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator$OnScanCompletedListener;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator$OnScanCompletedListener;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "listener":Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator$OnScanCompletedListener;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 121
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator$OnScanCompletedListener;->getScanResult()Landroid/net/Uri;
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_23

    move-result-object v1

    .line 124
    .end local v0    # "listener":Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator$OnScanCompletedListener;
    :goto_19
    monitor-exit p0

    return-object v1

    .line 123
    :cond_1b
    :try_start_1b
    const-string v2, "MediaProviderUpdator"

    const-string v3, "Illegal argument. scanFile is called with null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_23

    goto :goto_19

    .line 113
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public insertPictureAndSendIntent(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;Z)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    .registers 10
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .param p2, "isSendIntent"    # Z

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "filePath":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 61
    .local v2, "result":Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 62
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_12

    .line 64
    :try_start_a
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->scanFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 65
    if-eqz v3, :cond_12

    .line 66
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_12} :catch_24

    .line 74
    :cond_12
    :goto_12
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    if-ne v2, v4, :cond_28

    .line 78
    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-direct {v4, v2, v3, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    invoke-virtual {p1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->notifyStoreResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 85
    :goto_1e
    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-direct {v4, v2, v3, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    return-object v4

    .line 68
    :catch_24
    move-exception v0

    .line 70
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_12

    .line 80
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :cond_28
    const-string v4, "MediaProviderUpdator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to inserting a photo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->notifyStoreFailed(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;)V

    goto :goto_1e
.end method

.method public insertPictureContentManager(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->scanFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 101
    .local v0, "uri":Landroid/net/Uri;
    return-object v0
.end method

.method public insertVideoAndSendIntent(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)Landroid/net/Uri;
    .registers 9
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .prologue
    .line 181
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 182
    .local v2, "result":Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 183
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_25

    .line 185
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 187
    :cond_1b
    const/4 v4, 0x0

    .line 201
    .end local v0    # "file":Ljava/io/File;
    :goto_1c
    return-object v4

    .line 190
    .restart local v0    # "file":Ljava/io/File;
    :cond_1d
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->insertVideoContentManager(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)Landroid/net/Uri;

    move-result-object v3

    .line 191
    if-eqz v3, :cond_25

    .line 192
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 196
    .end local v0    # "file":Ljava/io/File;
    :cond_25
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    if-eq v2, v4, :cond_41

    .line 197
    const-string v4, "MediaProviderUpdator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to inserting a video:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    move-object v4, v3

    .line 201
    goto :goto_1c
.end method
