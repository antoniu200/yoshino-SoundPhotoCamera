.class public Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;,
        Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;,
        Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;,
        Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;,
        Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;
    }
.end annotation


# static fields
.field public static final DCF_DIR_NAME_FREE_WORD:Ljava/lang/String; = "ANDRO"

.field public static final DCF_FILE_NAME_FREE_WORD_MOVIE:Ljava/lang/String; = "MOV_"

.field public static final DCF_FILE_NAME_FREE_WORD_PICTURE:Ljava/lang/String; = "DSC_"

.field public static final LENGTH_OF_DIR_NAME:I = 0x8

.field public static final LENGTH_OF_FILE_NAME:I = 0xc

.field public static final MAX_DIR_NAME:I = 0x3e7

.field public static final MAX_FILE_NAME:I = 0x270f

.field public static final MIN_DIR_NAME:I = 0x64

.field public static final MIN_FILE_NAME:I = 0x1

.field private static final SCAN_RESULT_FAILED:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;

.field private static final SCAN_WAIT_TIME:I = 0xea60

.field public static final TAG:Ljava/lang/String; = "DcfPathBuilder"

.field public static final TYPE_PICTURE:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1

.field public static final VOLUME_EXTERNAL:Ljava/lang/String; = "external"


# instance fields
.field private mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

.field private mDirNo:I

.field private mFileNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

.field private mFileNo:I

.field private final mRoot:Ljava/lang/String;

.field private mScanExecutor:Ljava/util/concurrent/ExecutorService;

.field private mScanFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mScanResult:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    .line 82
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;->SCAN_FAILED:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;II)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->SCAN_RESULT_FAILED:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "root"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;

    .line 180
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mRoot:Ljava/lang/String;

    .line 181
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    .line 182
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    .line 184
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mScanExecutor:Ljava/util/concurrent/ExecutorService;

    .line 193
    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mRoot:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Z
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->checkDirectory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    return-object v0
.end method

.method private assignImageFilePath(ILcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;
    .registers 19
    .param p1, "type"    # I
    .param p2, "storagetype"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    monitor-enter p0

    .line 436
    :try_start_1
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    .line 437
    .local v7, "scanFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    .line 438
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_37

    .line 440
    if-eqz v7, :cond_26

    .line 442
    :try_start_9
    sget-object v9, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->SCAN_RESULT_FAILED:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;

    iput-object v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;

    .line 443
    const-wide/32 v10, 0xea60

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v10, v11, v9}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;

    iput-object v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;

    .line 444
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;

    iget v9, v9, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;->resultDirNo:I

    iput v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:I

    .line 445
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;

    iget v9, v9, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;->resultFileNo:I

    iput v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:I
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_26} :catch_3a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_26} :catch_54
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_26} :catch_6e

    .line 457
    :cond_26
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mScanResult:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;

    iget-object v9, v9, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;->resultState:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    sget-object v10, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;->SCAN_SUCCEEDED:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    if-eq v9, v10, :cond_88

    .line 458
    const-string v9, "DcfPathBuilder"

    const-string v10, "assignImageFilePath scan failed."

    invoke-static {v9, v10}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v5, 0x0

    .line 512
    :cond_36
    :goto_36
    return-object v5

    .line 438
    .end local v7    # "scanFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :catchall_37
    move-exception v9

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v9

    .line 448
    .restart local v7    # "scanFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :catch_3a
    move-exception v4

    .line 449
    .local v4, "e":Ljava/lang/InterruptedException;
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to scan."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 450
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_54
    move-exception v4

    .line 451
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to scan."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 452
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_6e
    move-exception v4

    .line 453
    .local v4, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to scan."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 463
    .end local v4    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_88
    iget v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:I

    const/16 v10, 0x3e7

    if-le v9, v10, :cond_aa

    .line 464
    const-string v9, "DcfPathBuilder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "assignImageFilePath over max dir. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v5, 0x0

    goto :goto_36

    .line 469
    :cond_aa
    const-string v5, ""

    .line 470
    .local v5, "filePath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%03d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ANDRO"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "addPath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mRoot:Ljava/lang/String;

    invoke-static {v10}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 473
    sget-object v9, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-object/from16 v0, p2

    if-eq v0, v9, :cond_122

    .line 474
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_151

    .line 476
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_151

    .line 477
    const-string v9, "DcfPathBuilder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "assignImageFilePath create dir failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v5, 0x0

    goto/16 :goto_36

    .line 483
    .end local v3    # "dir":Ljava/io/File;
    :cond_122
    invoke-static/range {p3 .. p3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getSdCardGrantedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    .line 484
    .local v6, "parentUri":Landroid/net/Uri;
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->isExistDcimDirectory(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_137

    .line 487
    :goto_12c
    move-object/from16 v0, p3

    invoke-static {v0, v6, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->createDirectory(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 488
    .local v8, "uri":Landroid/net/Uri;
    if-nez v8, :cond_151

    .line 489
    const/4 v5, 0x0

    goto/16 :goto_36

    .line 484
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_137
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_12c

    .line 493
    .end local v6    # "parentUri":Landroid/net/Uri;
    :cond_151
    packed-switch p1, :pswitch_data_1d4

    .line 501
    const-string v9, "DcfPathBuilder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "assignImageFilePath type failed. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v5, 0x0

    goto/16 :goto_36

    .line 495
    :pswitch_171
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/DSC_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 504
    :goto_184
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%04d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 507
    iget v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:I

    .line 508
    iget v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:I

    const/16 v10, 0x270f

    if-le v9, v10, :cond_36

    .line 509
    iget v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNo:I

    .line 510
    const/4 v9, 0x1

    iput v9, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNo:I

    goto/16 :goto_36

    .line 498
    :pswitch_1c0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/MOV_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 499
    goto :goto_184

    .line 493
    :pswitch_data_1d4
    .packed-switch 0x0
        :pswitch_171
        :pswitch_1c0
    .end packed-switch
.end method

.method protected static checkAndCreateDirectory(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 8
    .param p0, "root"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 333
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "dcim":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x1

    .line 336
    .local v3, "result":Z
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 338
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    if-eq v4, v5, :cond_20

    .line 340
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 341
    const/4 v3, 0x0

    .line 361
    :cond_1f
    :goto_1f
    return v3

    .line 345
    :cond_20
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getSdCardGrantedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 346
    .local v2, "parentUri":Landroid/net/Uri;
    if-eqz v2, :cond_36

    .line 347
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->isExistDcimDirectory(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 348
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {p1, v2, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->createDirectory(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_1f

    .line 350
    const/4 v3, 0x0

    goto :goto_1f

    .line 357
    :cond_36
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method private static checkDirectory(Ljava/lang/String;)Z
    .registers 4
    .param p0, "root"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "dcim":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    return v2
.end method

.method public static getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "root"    # Ljava/lang/String;

    .prologue
    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAlreadyLastFileExist(Ljava/lang/String;)Z
    .registers 16
    .param p0, "root"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "dcim":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%03d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v14, 0x3e7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ANDRO"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    .local v1, "maxDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_42

    .line 388
    const/4 v9, 0x0

    .line 421
    :goto_41
    return v9

    .line 392
    :cond_42
    move-object v3, v0

    .line 393
    .local v3, "photoPath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%03d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v14, 0x3e7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ANDRO"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 394
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/DSC_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%04d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v14, 0x270f

    .line 395
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".JPG"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v2, "photoFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_b2

    .line 399
    const/4 v9, 0x1

    goto :goto_41

    .line 403
    :cond_b2
    move-object v8, v0

    .line 404
    .local v8, "videoPathNoExt":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%03d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v14, 0x3e7

    .line 405
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ANDRO"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 406
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/MOV_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%04d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v14, 0x270f

    .line 407
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 409
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".mp4"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 410
    .local v7, "videoPathMp4":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    .local v5, "videoFileMp4":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_130

    .line 412
    const/4 v9, 0x1

    goto/16 :goto_41

    .line 415
    :cond_130
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".3gp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 416
    .local v6, "videoPathMms":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    .local v4, "videoFileMms":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_151

    .line 418
    const/4 v9, 0x1

    goto/16 :goto_41

    .line 421
    :cond_151
    const/4 v9, 0x0

    goto/16 :goto_41
.end method

.method private isAssignedFileAlreadyExist(Ljava/lang/String;)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 590
    if-eqz p1, :cond_c

    .line 591
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 594
    .end local v0    # "f":Ljava/io/File;
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method


# virtual methods
.method public getPhotoPath(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 530
    const/4 v1, 0x0

    .line 535
    .local v1, "path":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    :try_start_2
    invoke-direct {p0, v2, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->assignImageFilePath(ILcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_24

    move-result-object v1

    .line 539
    :goto_6
    if-eqz v1, :cond_1b

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".JPG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 545
    :cond_1b
    if-eqz v1, :cond_23

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->isAssignedFileAlreadyExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 546
    :cond_23
    return-object v1

    .line 536
    :catch_24
    move-exception v0

    .line 537
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "DcfPathBuilder"

    const-string v3, "getPhotoPath failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 550
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2d
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->startScan()V

    goto :goto_1
.end method

.method public getRootPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPath(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p1, "extension"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 562
    const-string v1, "/dev/null"

    .line 567
    .local v1, "path":Ljava/lang/String;
    :goto_2
    const/4 v2, 0x1

    :try_start_3
    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->assignImageFilePath(ILcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_16

    move-result-object v1

    .line 571
    :goto_7
    if-nez v1, :cond_1f

    .line 572
    const-string v1, "/dev/null"

    .line 579
    :goto_b
    const-string v2, "/dev/null"

    if-eq v1, v2, :cond_15

    .line 580
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->isAssignedFileAlreadyExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 581
    :cond_15
    return-object v1

    .line 568
    :catch_16
    move-exception v0

    .line 569
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "DcfPathBuilder"

    const-string v3, "getVideoPath failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 574
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 585
    :cond_31
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->startScan()V

    goto :goto_2
.end method

.method public startScan()V
    .registers 3

    .prologue
    .line 203
    monitor-enter p0

    .line 205
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_10

    .line 206
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    .line 216
    :cond_10
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    if-nez v1, :cond_21

    .line 217
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)V

    .line 218
    .local v0, "scanTask":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;>;"
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mScanExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mScanFuture:Ljava/util/concurrent/Future;

    .line 221
    .end local v0    # "scanTask":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;>;"
    :cond_21
    monitor-exit p0

    .line 222
    :goto_22
    return-void

    .line 212
    :cond_23
    monitor-exit p0

    goto :goto_22

    .line 221
    :catchall_25
    move-exception v1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw v1
.end method
