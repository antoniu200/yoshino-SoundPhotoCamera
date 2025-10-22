.class Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;
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
    name = "PostDeviceInitializationTask"
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
    .line 495
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .line 497
    return-void
.end method

.method private retry()V
    .registers 5

    .prologue
    .line 542
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mPostEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 543
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    .line 546
    :cond_18
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 502
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .line 503
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .line 504
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 506
    :cond_18
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->retry()V

    .line 539
    :goto_1b
    return-void

    .line 512
    :cond_1c
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->canCurrentStateHandleAsynchronizedTask()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 514
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->prepareAdditionalFeatures(ILandroid/app/Activity;)V

    .line 518
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 520
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$500(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 522
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V

    .line 524
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$700(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    .line 528
    :cond_62
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->postEvent(Ljava/lang/Runnable;)V

    goto :goto_1b

    .line 534
    :cond_71
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;->retry()V

    goto :goto_1b
.end method
