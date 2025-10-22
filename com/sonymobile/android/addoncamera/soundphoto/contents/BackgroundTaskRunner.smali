.class public Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;
.super Ljava/lang/Object;
.source "BackgroundTaskRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;,
        Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mLock:Ljava/lang/Object;

.field private final mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->mLock:Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->mTaskList:Ljava/util/List;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->mTaskList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public cancelAll()V
    .registers 5

    .prologue
    .line 90
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 91
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->mTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;

    .line 92
    .local v0, "i":Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;
    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;->cancel()V

    goto :goto_9

    .line 94
    .end local v0    # "i":Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1

    :cond_1c
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 95
    return-void
.end method

.method public getTaskCount()I
    .registers 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_3
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 86
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public put(Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTask;)V
    .registers 5
    .param p1, "task"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTask;

    .prologue
    .line 76
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 77
    :try_start_3
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTask;)V

    .line 78
    .local v0, "taskContainer":Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->mTaskList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 80
    monitor-exit v2

    .line 81
    return-void

    .line 80
    .end local v0    # "taskContainer":Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method
