.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown$LedLightImpl;
.super Ljava/lang/Object;
.source "StateMachineController.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/selftimerfeedback/LedLight;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LedLightImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;)V
    .registers 2

    .prologue
    .line 1782
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown$LedLightImpl;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$1;

    .prologue
    .line 1782
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown$LedLightImpl;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;)V

    return-void
.end method


# virtual methods
.method public turnOff()V
    .registers 3

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown$LedLightImpl;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setTorch(Z)V

    .line 1792
    return-void
.end method

.method public turnOn()V
    .registers 3

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown$LedLightImpl;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setTorch(Z)V

    .line 1787
    return-void
.end method
