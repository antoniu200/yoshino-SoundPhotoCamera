.class Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnAutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnAutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnAutoFocusCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 8
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnAutoFocusCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1900(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1040
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnAutoFocusCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1900(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_AUTO_FOCUS_DONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1042
    :cond_1d
    return-void
.end method
