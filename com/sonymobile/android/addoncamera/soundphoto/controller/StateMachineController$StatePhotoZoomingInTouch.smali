.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingInTouch;
.super Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingBase;
.source "StateMachineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoZoomingInTouch"
.end annotation


# instance fields
.field private final mStartZoomStep:I

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 1330
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingBase;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 1331
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING_IN_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingInTouch;->mCaptureState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 1333
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingInTouch;->mStartZoomStep:I

    .line 1334
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    int-to-float v0, v0

    # setter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentZoomLength:F
    invoke-static {p1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2102(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;F)F

    .line 1335
    return-void
.end method


# virtual methods
.method public varargs handleCancelTouchZoom([Ljava/lang/Object;)V
    .registers 6
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1351
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1361
    return-void
.end method

.method public varargs handleScreenClear([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1355
    invoke-virtual {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingInTouch;->handleCaptureButtonCancel([Ljava/lang/Object;)V

    .line 1356
    return-void
.end method

.method public varargs handleStartTouchZoom([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1339
    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1340
    .local v0, "scaleLength":F
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingInTouch;->mStartZoomStep:I

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->doZoom(IF)V
    invoke-static {v1, v2, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;IF)V

    .line 1341
    return-void
.end method

.method public varargs handleStopTouchZoom([Ljava/lang/Object;)V
    .registers 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->doStopZoom()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2400(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 1346
    return-void
.end method
