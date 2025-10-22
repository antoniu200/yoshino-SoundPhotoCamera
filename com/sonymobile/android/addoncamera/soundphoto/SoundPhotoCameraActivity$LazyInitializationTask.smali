.class Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;
.super Ljava/lang/Object;
.source "SoundPhotoCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LazyInitializationTask"
.end annotation


# instance fields
.field private final mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    .param p2, "activity"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .line 454
    return-void
.end method

.method private retry()V
    .registers 5

    .prologue
    .line 484
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mPostEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 485
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    .line 488
    :cond_18
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 459
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .line 460
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .line 461
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 463
    :cond_18
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;->retry()V

    .line 481
    :goto_1b
    return-void

    .line 469
    :cond_1c
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->canCurrentStateHandleAsynchronizedTask()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 471
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;->retry()V

    goto :goto_1b

    .line 477
    :cond_2c
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendStaticEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    goto :goto_1b
.end method
