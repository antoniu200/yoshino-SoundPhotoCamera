.class public Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;,
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$NotifyStoreCompletedTask;,
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;,
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;,
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;,
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;,
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$GeoMode;
    }
.end annotation


# static fields
.field private static final CAN_PUSH_STORE_TASK_HPROF_FILE_NAME:Ljava/lang/String; = "/can_push_store_task.hprof"

.field private static final MSG_ON_STORE_CALLBACK:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SavingTaskManager"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mExecutorLock:Ljava/lang/Object;

.field private final mIsOneShotPhoto:Z

.field private mSavingTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

.field private mStoreDataHandler:Landroid/os/Handler;

.field private mStoreVideoThread:Ljava/lang/Thread;

.field private mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;Z)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "storageManager"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    .param p3, "isOneShotPhoto"    # Z

    .prologue
    .line 496
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;ZLandroid/os/Handler;)V

    .line 497
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;ZLandroid/os/Handler;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "storageManager"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    .param p3, "isOneShotPhoto"    # Z
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    .line 60
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    .line 63
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutorLock:Ljava/lang/Object;

    .line 72
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mSavingTaskQueue:Ljava/util/Queue;

    .line 505
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    .line 509
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    .line 514
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    .line 515
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    invoke-direct {v0, p1, p3}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    .line 516
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mIsOneShotPhoto:Z

    .line 517
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->popPhotoSavingTask(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->shutdownExecutor()V

    return-void
.end method

.method static synthetic access$502(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private static getUsedMemory()J
    .registers 4

    .prologue
    .line 778
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static isEnoughMemory(J)Z
    .registers 6
    .param p0, "usedMemory"    # J

    .prologue
    .line 788
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x7

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    cmp-long v0, p0, v0

    if-gez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private popPhotoSavingTask(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V
    .registers 3
    .param p1, "task"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mSavingTaskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 575
    return-void
.end method

.method private pushPhotoSavingTask(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .registers 3
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 568
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 569
    .local v0, "task":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->request(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V

    .line 570
    return-void
.end method

.method private shutdownExecutor()V
    .registers 3

    .prologue
    .line 833
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 834
    :try_start_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_14

    .line 835
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 837
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mSavingTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 839
    :cond_14
    monitor-exit v1

    .line 840
    return-void

    .line 839
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private submitExecutor(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V
    .registers 4
    .param p1, "task"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    .prologue
    .line 823
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 824
    :try_start_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_d

    .line 825
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 827
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 828
    monitor-exit v1

    .line 829
    return-void

    .line 828
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public canPushStoreTask()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 745
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->getUsedMemory()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->isEnoughMemory(J)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 769
    :cond_b
    :goto_b
    return v2

    .line 749
    :cond_c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 751
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->getUsedMemory()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->isEnoughMemory(J)Z

    move-result v3

    if-nez v3, :cond_b

    .line 755
    const-string v2, "SavingTaskManager"

    const-string v3, "Temporarily reject capture request since app is low on memory:"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const-string v2, "SavingTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t queueSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mSavingTaskQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string v2, "SavingTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tusedMemory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->getUsedMemory()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "byte"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string v2, "SavingTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t maxMemory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "byte"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    sget-boolean v2, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v2, :cond_b0

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mSavingTaskQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-nez v2, :cond_b0

    .line 762
    :try_start_96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/can_push_store_task.hprof"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_b0} :catch_b3

    .line 769
    .end local v1    # "path":Ljava/lang/String;
    :cond_b0
    :goto_b0
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 765
    :catch_b3
    move-exception v0

    .line 766
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "SavingTaskManager"

    const-string v3, "canPushStoreTask() fail to dump hprof"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0
.end method

.method cancelSavingVideoTask()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 720
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    if-eqz v1, :cond_11

    .line 721
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 723
    :try_start_a
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_12
    .catchall {:try_start_a .. :try_end_f} :catchall_1d

    .line 728
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 731
    :cond_11
    :goto_11
    return-void

    .line 725
    :catch_12
    move-exception v0

    .line 726
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_13
    const-string v1, "SavingTaskManager"

    const-string v2, "cancelSavingVideoTask interrupted."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1d

    .line 728
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    goto :goto_11

    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_1d
    move-exception v1

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    throw v1
.end method

.method public getExpectedTotalSavedPicturesSize()J
    .registers 9

    .prologue
    .line 797
    const-wide/16 v4, 0x0

    .line 799
    .local v4, "reservedSize":J
    new-instance v2, Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mSavingTaskQueue:Ljava/util/Queue;

    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 800
    .local v2, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;>;"
    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 801
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 802
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    .line 803
    .local v0, "element":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->getExpectedFileSize()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 804
    goto :goto_d

    .line 808
    .end local v0    # "element":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;
    :cond_20
    return-wide v4
.end method

.method protected notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 4
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 584
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    if-eqz v1, :cond_f

    .line 585
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$NotifyStoreCompletedTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$NotifyStoreCompletedTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;)V

    .line 586
    .local v0, "task":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 591
    .end local v0    # "task":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 735
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreDataHandler:Landroid/os/Handler;

    .line 818
    return-void
.end method

.method public request(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V
    .registers 3
    .param p1, "savingTask"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mSavingTaskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->submitExecutor(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V

    .line 526
    return-void
.end method

.method public storePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .registers 4
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 546
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->log()V

    .line 548
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->isImageReaderUsing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 549
    :cond_f
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->pushPhotoSavingTask(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 563
    :goto_12
    return-void

    .line 551
    :cond_13
    const-string v0, "SavingTaskManager"

    const-string v1, "### can\'t store a specified image file."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v0, "SavingTaskManager"

    const-string v1, "### so, notify a failure of storing the specified image file."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_12
.end method

.method public storeVideo(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V
    .registers 10
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 625
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->log()V

    .line 626
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2c

    .line 635
    :try_start_d
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->join(J)V

    .line 636
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2a

    .line 638
    const-string v2, "SavingTaskManager"

    const-string v3, "storeVideo: mStoreVideoThread timeout."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v5, v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateRemain(JZ)J
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_27} :catch_45
    .catchall {:try_start_d .. :try_end_27} :catchall_49

    .line 646
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 654
    :goto_29
    return-void

    .line 646
    :cond_2a
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 650
    :cond_2c
    :goto_2c
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V

    .line 651
    .local v1, "task":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "Store video thread"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    .line 652
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    invoke-virtual {v2, v7}, Ljava/lang/Thread;->setPriority(I)V

    .line 653
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_29

    .line 643
    .end local v1    # "task":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;
    :catch_45
    move-exception v2

    .line 646
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    goto :goto_2c

    :catchall_49
    move-exception v2

    iput-object v6, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;

    throw v2
.end method
