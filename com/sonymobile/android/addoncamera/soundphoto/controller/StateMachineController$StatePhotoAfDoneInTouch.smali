.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;
.super Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoBase;
.source "StateMachineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoAfDoneInTouch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoBase;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 1393
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE_IN_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;->mCaptureState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 1394
    return-void
.end method


# virtual methods
.method public varargs handleCaptureButtonCancel([Ljava/lang/Object;)V
    .registers 6
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    const/4 v1, 0x0

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->cancelAutoFocus(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    .line 1405
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1406
    return-void
.end method

.method public varargs handleCaptureButtonRelease([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->doCapture()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2700(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 1399
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1400
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    const/4 v1, 0x1

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->cancelAutoFocus(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    .line 1424
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1425
    return-void
.end method

.method public varargs handleScreenClear([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1410
    invoke-virtual {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;->handleCaptureButtonCancel([Ljava/lang/Object;)V

    .line 1411
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1413
    return-void
.end method

.method public varargs handleStartAfSearchInTouch([Ljava/lang/Object;)V
    .registers 6
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    const/4 v1, 0x0

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->cancelAutoFocus(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    .line 1418
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearchInTouch;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearchInTouch;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1419
    return-void
.end method
