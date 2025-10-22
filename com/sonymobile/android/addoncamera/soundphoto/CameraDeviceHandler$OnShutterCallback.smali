.class Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnShutterCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .registers 6

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1900(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1189
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1900(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_SHUTTER_DONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnShutterCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$2000(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1191
    :cond_1f
    return-void
.end method
