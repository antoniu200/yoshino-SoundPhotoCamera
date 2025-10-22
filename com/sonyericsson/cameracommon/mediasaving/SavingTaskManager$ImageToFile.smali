.class Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageToFile"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mJpegData:[B

.field mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

.field private final mPath:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Ljava/nio/ByteBuffer;Landroid/net/Uri;)V
    .registers 7
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 374
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 375
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    .line 376
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    .line 377
    const-string v0, "file"

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    .line 382
    :goto_20
    return-void

    .line 380
    :cond_21
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    goto :goto_20
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;[BLandroid/net/Uri;)V
    .registers 7
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .param p2, "jpegData"    # [B
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 358
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 359
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    .line 360
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    .line 361
    const-string v0, "file"

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    .line 366
    :goto_20
    return-void

    .line 364
    :cond_21
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    goto :goto_20
.end method

.method private createOutputStream()Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    if-ne v2, v3, :cond_3f

    .line 397
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->createDocumentSdCard(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 398
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_32

    .line 399
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rw"

    .line 400
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 401
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 410
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_31
    return-object v2

    .line 403
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_32
    const-string v2, "SavingTaskManager"

    const-string v3, "Document uri is null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_39
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2

    .line 405
    :cond_3f
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz v2, :cond_4b

    .line 407
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_31

    .line 408
    :cond_4b
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_5e

    .line 410
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    goto :goto_31

    .line 412
    :cond_5e
    const-string v2, "SavingTaskManager"

    const-string v3, "Save path and uri is not set."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    .line 391
    :goto_6
    return-object v0

    .line 387
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_12

    .line 388
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 390
    :cond_12
    const-string v0, "SavingTaskManager"

    const-string v1, "Save path and uri is not set."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public storeData(Ljava/lang/Exception;)Z
    .registers 11
    .param p1, "dummyException"    # Ljava/lang/Exception;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 426
    :try_start_2
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->createOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 427
    .local v0, "delegate":Ljava/io/OutputStream;
    monitor-enter p0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_b8
    .catchall {:try_start_2 .. :try_end_7} :catchall_111

    .line 428
    :try_start_7
    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-direct {v4, v0}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    .line 429
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_4c

    .line 430
    if-eqz p1, :cond_87

    .line 431
    :try_start_11
    throw p1
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_12} :catch_12
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_12} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_12} :catch_b8
    .catchall {:try_start_11 .. :try_end_12} :catchall_111

    .line 446
    .end local v0    # "delegate":Ljava/io/OutputStream;
    :catch_12
    move-exception v1

    .line 447
    .local v1, "ex":Ljava/io/FileNotFoundException;
    :try_start_13
    const-string v4, "SavingTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Store fail file not found:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$1;

    invoke-direct {v5, p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$1;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3b
    .catchall {:try_start_13 .. :try_end_3b} :catchall_111

    .line 475
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v4, :cond_49

    .line 477
    :try_start_3f
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 478
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_49} :catch_12f

    .line 486
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :cond_49
    :goto_49
    iput-object v8, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    :goto_4b
    return v3

    .line 429
    .restart local v0    # "delegate":Ljava/io/OutputStream;
    :catchall_4c
    move-exception v4

    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v4
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_4f} :catch_12
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4f} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4f} :catch_b8
    .catchall {:try_start_4e .. :try_end_4f} :catchall_111

    .line 455
    .end local v0    # "delegate":Ljava/io/OutputStream;
    :catch_4f
    move-exception v1

    .line 456
    .local v1, "ex":Ljava/io/IOException;
    :try_start_50
    const-string v4, "SavingTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Store fail I/O Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$2;

    invoke-direct {v5, p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$2;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_76
    .catchall {:try_start_50 .. :try_end_76} :catchall_111

    .line 475
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v4, :cond_84

    .line 477
    :try_start_7a
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 478
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_84} :catch_13b

    .line 486
    :cond_84
    :goto_84
    iput-object v8, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    goto :goto_4b

    .line 433
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "delegate":Ljava/io/OutputStream;
    :cond_87
    :try_start_87
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_a8

    .line 434
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    array-length v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->write([BII)V
    :try_end_96
    .catch Ljava/io/FileNotFoundException; {:try_start_87 .. :try_end_96} :catch_12
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_96} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_96} :catch_b8
    .catchall {:try_start_87 .. :try_end_96} :catchall_111

    .line 445
    .end local v0    # "delegate":Ljava/io/OutputStream;
    :goto_96
    const/4 v3, 0x1

    .line 475
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v4, :cond_a5

    .line 477
    :try_start_9b
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 478
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a5} :catch_123

    .line 486
    :cond_a5
    :goto_a5
    iput-object v8, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    goto :goto_4b

    .line 436
    .restart local v0    # "delegate":Ljava/io/OutputStream;
    :cond_a8
    :try_start_a8
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mPath:Ljava/lang/String;

    if-eqz v4, :cond_f3

    .line 437
    check-cast v0, Ljava/io/FileOutputStream;

    .end local v0    # "delegate":Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_b7
    .catch Ljava/io/FileNotFoundException; {:try_start_a8 .. :try_end_b7} :catch_12
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_b7} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b7} :catch_b8
    .catchall {:try_start_a8 .. :try_end_b7} :catchall_111

    goto :goto_96

    .line 465
    :catch_b8
    move-exception v1

    .line 466
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_b9
    const-string v4, "SavingTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Occurred other exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$3;

    invoke-direct {v5, p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$3;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_e1
    .catchall {:try_start_b9 .. :try_end_e1} :catchall_111

    .line 475
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v4, :cond_ef

    .line 477
    :try_start_e5
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 478
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_ef} :catch_147

    .line 486
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_ef
    :goto_ef
    iput-object v8, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    goto/16 :goto_4b

    .line 439
    .restart local v0    # "delegate":Ljava/io/OutputStream;
    :cond_f3
    :try_start_f3
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    .line 440
    .local v2, "size":I
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    .line 441
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 442
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    array-length v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->write([BII)V
    :try_end_110
    .catch Ljava/io/FileNotFoundException; {:try_start_f3 .. :try_end_110} :catch_12
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_110} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_110} :catch_b8
    .catchall {:try_start_f3 .. :try_end_110} :catchall_111

    goto :goto_96

    .line 475
    .end local v0    # "delegate":Ljava/io/OutputStream;
    .end local v2    # "size":I
    :catchall_111
    move-exception v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    if-eqz v4, :cond_120

    .line 477
    :try_start_116
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->flush()V

    .line 478
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_120} :catch_152

    .line 486
    :cond_120
    :goto_120
    iput-object v8, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mJpegData:[B

    throw v3

    .line 479
    :catch_123
    move-exception v1

    .line 481
    .local v1, "ex":Ljava/io/IOException;
    const-string v4, "SavingTaskManager"

    const-string v5, "IOException occured when closing."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iput-object v8, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    goto/16 :goto_a5

    .line 479
    .local v1, "ex":Ljava/io/FileNotFoundException;
    :catch_12f
    move-exception v1

    .line 481
    .local v1, "ex":Ljava/io/IOException;
    const-string v4, "SavingTaskManager"

    const-string v5, "IOException occured when closing."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iput-object v8, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    goto/16 :goto_49

    .line 479
    :catch_13b
    move-exception v1

    .line 481
    const-string v4, "SavingTaskManager"

    const-string v5, "IOException occured when closing."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iput-object v8, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    goto/16 :goto_84

    .line 479
    .local v1, "ex":Ljava/lang/Exception;
    :catch_147
    move-exception v1

    .line 481
    .local v1, "ex":Ljava/io/IOException;
    const-string v4, "SavingTaskManager"

    const-string v5, "IOException occured when closing."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iput-object v8, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    goto :goto_ef

    .line 479
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_152
    move-exception v1

    .line 481
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string v4, "SavingTaskManager"

    const-string v5, "IOException occured when closing."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iput-object v8, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;

    goto :goto_120
.end method
