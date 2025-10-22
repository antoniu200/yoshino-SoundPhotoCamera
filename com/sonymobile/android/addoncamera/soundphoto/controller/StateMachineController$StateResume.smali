.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;
.super Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;
.source "StateMachineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateResume"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StateResume"


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 6
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 577
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->mCaptureState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 578
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$900(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 579
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$900(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 580
    return-void
.end method

.method private requestToStartLiveViewFinder(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 622
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->startLiveViewFinderOnResume(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4

    .line 626
    :goto_3
    return-void

    .line 623
    :catch_4
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_3
.end method

.method private startLiveViewFinderOnResume(Landroid/view/SurfaceHolder;)V
    .registers 9
    .param p1, "targetSurface"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v6, 0x0

    .line 631
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startLiveViewFinder(Landroid/view/SurfaceHolder;)V

    .line 634
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 635
    .local v0, "previewRect":Landroid/graphics/Rect;
    if-nez v0, :cond_1e

    .line 636
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Preview is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 637
    :cond_1e
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 638
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Preview is empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 642
    :cond_2c
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .line 643
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v2

    .line 644
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .line 645
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getScreenAspect()Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    move-result-object v4

    .line 642
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 646
    .local v1, "surfaceRect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v2

    invoke-virtual {v2, v6, v1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->init(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 647
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v2

    .line 648
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 647
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setSurfaceSize(II)V

    .line 649
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v2

    .line 650
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 649
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setPreviewSize(II)V

    .line 653
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->requestPostLazyInitializationTaskExecute()V

    .line 655
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v3, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    new-array v4, v6, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 657
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->shouldChangeStorageForSdUngranted()Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 658
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v2

    if-eqz v2, :cond_a9

    .line 659
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_CHANGE_INTERNAL_STORAGE_MESSAGE:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 663
    :cond_a9
    return-void
.end method


# virtual methods
.method public varargs handleOnEvfPreparationFailed([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 599
    const-string v0, "StateMachine.StateResume"

    const-string v1, "handleOnEvfPreparationFailed() E"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .line 602
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .line 603
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1300(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v2

    iget-object v2, v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->capturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    iget v2, v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->cameraId:I

    .line 601
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->requestStartCameraOpen(Landroid/content/Context;I)V

    .line 604
    const-string v0, "StateMachine.StateResume"

    const-string v1, "handleOnEvfPreparationFailed() X"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return-void
.end method

.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .registers 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->notifyLaunch()V

    .line 586
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->requestToStartLiveViewFinder(Landroid/view/SurfaceHolder;)V

    .line 588
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mAudioSampleDataStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->startBuffering()Z

    move-result v0

    if-nez v0, :cond_23

    .line 589
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->showRecordingErrorDialog()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1100(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 595
    :goto_22
    return-void

    .line 591
    :cond_23
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startPreviewFrameCapturing()V

    .line 593
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mAudioSampleDataStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->setBufferPositionUpdateListener(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$OnBufferPositionUpdateListener;)V

    goto :goto_22
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 617
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 618
    return-void
.end method

.method public varargs handleResumeTimeout([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 610
    const-string v0, "StateMachine.StateResume"

    const-string v1, "[CameraNotAvailable] resume timeout."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->errorLogForNonUserVariant(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->showCameraNotAvailableError()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1400(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 612
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateWarning;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateWarning;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 613
    return-void
.end method
