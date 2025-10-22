.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;
.super Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoBase;
.source "StateMachineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateStandby"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StateStandby"


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 713
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoBase;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 714
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_STANDBY:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->mCaptureState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 716
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startPreview()Z

    move-result v0

    if-nez v0, :cond_14

    .line 723
    :cond_13
    :goto_13
    return-void

    .line 720
    :cond_14
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mAudioSampleDataStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->startBuffering()Z

    move-result v0

    if-nez v0, :cond_13

    .line 721
    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->showRecordingErrorDialog()V
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1100(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    goto :goto_13
.end method

.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V
    .registers 8
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
    .param p2, "withExtensionFeatures"    # Z

    .prologue
    .line 747
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoBase;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 748
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_STANDBY:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->mCaptureState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 750
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startPreview()Z

    move-result v0

    if-nez v0, :cond_14

    .line 775
    :cond_13
    :goto_13
    return-void

    .line 754
    :cond_14
    if-eqz p2, :cond_1d

    .line 756
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startFaceDetection()V

    .line 760
    :cond_1d
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 761
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->enableAutoOffTimer()V

    .line 765
    :cond_2a
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 767
    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->getSensorOrientation()I
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 765
    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 771
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 772
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    .line 773
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v1

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getLaunchedBy()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SOUND_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 772
    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendView(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    goto :goto_13
.end method


# virtual methods
.method public entry()V
    .registers 5

    .prologue
    .line 727
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 728
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateRemain(JZ)J

    .line 729
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 731
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby$1;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 744
    :cond_3a
    :goto_3a
    return-void

    .line 739
    :cond_3b
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mAudioSampleDataStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->startBuffering()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 740
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->showRecordingErrorDialog()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1100(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    goto :goto_3a
.end method

.method public varargs handleCaptureButtonCancel([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 826
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->isSelfTimerEnable()Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 837
    :goto_8
    return-void

    .line 830
    :cond_9
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->resetFocusMode()V

    .line 833
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startFaceDetection()V

    .line 835
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_AF_CANCELED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public varargs handleCaptureButtonRelease([Ljava/lang/Object;)V
    .registers 6
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 841
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->isSelfTimerEnable()Z
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->updateRemain()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 842
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1300(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v1

    iget-object v1, v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->selfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    .line 843
    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->get()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->getDurationInMillisecond()I

    move-result v0

    .line 844
    .local v0, "duration":I
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;I)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 846
    .end local v0    # "duration":I
    :cond_39
    return-void
.end method

.method public varargs handleCaptureButtonTouch([Ljava/lang/Object;)V
    .registers 6
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 814
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->isSelfTimerEnable()Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 822
    :cond_8
    :goto_8
    return-void

    .line 817
    :cond_9
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->updateRemain()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 818
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->startAutoFocus()Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1700(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 819
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearchInTouch;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearchInTouch;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public varargs handleDialogOpened([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 790
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoStandbyDialog;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoStandbyDialog;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 791
    return-void
.end method

.method public varargs handleKeyCaptureDown([Ljava/lang/Object;)V
    .registers 6
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 805
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->isSelfTimerEnable()Z
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 806
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1300(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v1

    iget-object v1, v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->selfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    .line 807
    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->get()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->getDurationInMillisecond()I

    move-result v0

    .line 808
    .local v0, "duration":I
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;I)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 810
    .end local v0    # "duration":I
    :cond_39
    return-void
.end method

.method public varargs handleKeyFocusDown([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 795
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->isSelfTimerEnable()Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-nez v0, :cond_15

    .line 801
    :cond_14
    :goto_14
    return-void

    .line 798
    :cond_15
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->startAutoFocus()Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1700(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 799
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearch;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearch;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public varargs handleKeyZoomInDown([Ljava/lang/Object;)V
    .registers 6
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 858
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 859
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_d

    .line 876
    :goto_c
    return-void

    .line 865
    :cond_d
    invoke-virtual {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->handleScreenClear([Ljava/lang/Object;)V

    .line 867
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->isSmoothZoomEnabled()Z
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 868
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZooming;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZooming;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 870
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->doZoomIn()V
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1900(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    goto :goto_c

    .line 874
    :cond_2a
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showZoomHelpMessage(Z)V

    goto :goto_c
.end method

.method public varargs handleKeyZoomOutDown([Ljava/lang/Object;)V
    .registers 6
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 880
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 881
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_d

    .line 897
    :goto_c
    return-void

    .line 887
    :cond_d
    invoke-virtual {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->handleScreenClear([Ljava/lang/Object;)V

    .line 889
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->isSmoothZoomEnabled()Z
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 890
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZooming;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZooming;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 891
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->doZoomOut()V
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    goto :goto_c

    .line 895
    :cond_2a
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showZoomHelpMessage(Z)V

    goto :goto_c
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .registers 7
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 913
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 916
    return-void
.end method

.method public varargs handleOnSwitchCamera([Ljava/lang/Object;)V
    .registers 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 952
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->switchCamera()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2300(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 953
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 901
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 902
    return-void
.end method

.method public varargs handlePrepareTouchZoom([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 935
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->isSmoothZoomEnabled()Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 936
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    int-to-float v1, v1

    # setter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentZoomLength:F
    invoke-static {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2102(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;F)F

    .line 937
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingInTouch;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingInTouch;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 943
    :goto_28
    return-void

    .line 941
    :cond_29
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showZoomHelpMessage(Z)V

    goto :goto_28
.end method

.method public varargs handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 786
    return-void
.end method

.method public varargs handleRestartViewFinder([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 966
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Landroid/view/SurfaceHolder;

    .line 968
    .local v0, "surface":Landroid/view/SurfaceHolder;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startLiveViewFinder(Landroid/view/SurfaceHolder;)V

    .line 969
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startFaceDetection()V

    .line 972
    const-string v1, "StateMachine.StateStandby"

    const-string v2, "handleOnEvfPrepared() X"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-void
.end method

.method public varargs handleScreenClear([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 850
    invoke-virtual {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->handleCaptureButtonCancel([Ljava/lang/Object;)V

    .line 852
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 854
    return-void
.end method

.method public varargs handleSetFocusPosition([Ljava/lang/Object;)V
    .registers 9
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 925
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v1

    aget-object v0, p1, v5

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setFocusPosition(Landroid/graphics/PointF;)V

    .line 928
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_SELECTED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    new-array v2, v6, [Ljava/lang/Object;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    aget-object v3, p1, v6

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 931
    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 906
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateWarning;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateWarning;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 907
    return-void
.end method

.method public varargs handleStorageShouldChange([Ljava/lang/Object;)V
    .registers 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 947
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->switchStorage()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 948
    return-void
.end method

.method public isSettingUiBeOpened()Z
    .registers 2

    .prologue
    .line 957
    const/4 v0, 0x1

    return v0
.end method
