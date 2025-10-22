.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;
.super Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoBase;
.source "StateMachineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePause"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StatePause"


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 6
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 1813
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoBase;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 1814
    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;->mCaptureState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 1817
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->stopFaceDetection()V

    .line 1820
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->stopLiveViewFinder()V

    .line 1823
    :try_start_17
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mAudioSampleDataStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->stopBuffering()V

    .line 1825
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 1826
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CLEAR_INDICATOR_PROGRESS:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_30} :catch_46

    .line 1833
    :cond_30
    :goto_30
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->stopPreviewFrameCapturing()V

    .line 1834
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mPreviewFrameStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->clear()V

    .line 1836
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1300(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->suspend()V

    .line 1837
    return-void

    .line 1829
    :catch_46
    move-exception v0

    .line 1830
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "StateMachine.StatePause"

    const-string v2, "Interrupted AudioSampleDataStore.stopBuffering()"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method


# virtual methods
.method public varargs handleFinalize([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateFinalize;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateFinalize;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1857
    return-void
.end method

.method public varargs handleRestartViewFinder([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1865
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Landroid/view/SurfaceHolder;

    .line 1867
    .local v0, "surface":Landroid/view/SurfaceHolder;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startLiveViewFinder(Landroid/view/SurfaceHolder;)V

    .line 1868
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startFaceDetection()V

    .line 1871
    const-string v1, "StateMachine.StatePause"

    const-string v2, "handleOnEvfPrepared() X"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    return-void
.end method

.method public varargs handleResume([Ljava/lang/Object;)V
    .registers 8
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1843
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1844
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_21

    .line 1846
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_CAMERA_MODE_CHANGED_TO:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    new-array v3, v4, [Ljava/lang/Object;

    .line 1848
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 1846
    invoke-interface {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1851
    :cond_21
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    new-array v3, v5, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1852
    return-void
.end method
