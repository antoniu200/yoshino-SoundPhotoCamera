.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateCameraSwitching;
.super Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;
.source "StateMachineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateCameraSwitching"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 1973
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateCameraSwitching;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 1974
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateCameraSwitching;->mCaptureState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 1975
    return-void
.end method


# virtual methods
.method public canSelfTimerBeOpened()Z
    .registers 2

    .prologue
    .line 2007
    const/4 v0, 0x0

    return v0
.end method

.method public varargs handleOnEvfPreparationFailed([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1992
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleOnEvfPreparationFailed() E"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateCameraSwitching;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateCameraSwitching;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .line 1995
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateCameraSwitching;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .line 1996
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1300(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v2

    iget-object v2, v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->capturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    iget v2, v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->cameraId:I

    .line 1994
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->requestStartCameraOpen(Landroid/content/Context;I)V

    .line 1997
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleOnEvfPreparationFailed() X"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    return-void
.end method

.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .registers 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1983
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Landroid/view/SurfaceHolder;

    .line 1984
    .local v0, "surface":Landroid/view/SurfaceHolder;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateCameraSwitching;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->onCameraSwitchingCompleted(Landroid/view/SurfaceHolder;)V
    invoke-static {v1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$3500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Landroid/view/SurfaceHolder;)V

    .line 1988
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateCameraSwitching;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateCameraSwitching;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 2003
    return-void
.end method
