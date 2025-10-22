.class Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;
.super Ljava/lang/Object;
.source "BackgroundTaskRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundTaskContainer"
.end annotation


# instance fields
.field private mIsCanceled:Z

.field private final mTask:Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTask;

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTask;)V
    .registers 4
    .param p2, "task"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTask;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;->mTask:Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTask;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;->mIsCanceled:Z

    .line 42
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;->mIsCanceled:Z

    .line 46
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "canceled":Z
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 52
    :try_start_8
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;->mIsCanceled:Z

    .line 53
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->mTaskList:Ljava/util/List;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 56
    :cond_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1f

    .line 58
    if-eqz v0, :cond_22

    .line 59
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;->mTask:Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTask;

    invoke-interface {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTask;->onCanceled()V

    .line 67
    :goto_1e
    return-void

    .line 56
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1

    .line 63
    :cond_22
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTaskContainer;->mTask:Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTask;

    invoke-interface {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTask;->run()V

    goto :goto_1e
.end method
