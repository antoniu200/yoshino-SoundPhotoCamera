.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;
.super Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoBase;
.source "StateMachineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoCaptureWaitForAfDone"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StatePhotoCaptureWaitForAfDone"


# instance fields
.field private final mIsCalledByKeyEvent:Z

.field private mIsReleaseShutterKey:Z

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V
    .registers 6
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
    .param p2, "isCalledByKeyEvent"    # Z

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoBase;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 1439
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->mCaptureState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 1440
    iput-boolean p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->mIsCalledByKeyEvent:Z

    .line 1443
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_HIGHLIGHT_CAPTURED_SOUND_LEVEL:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1445
    return-void
.end method


# virtual methods
.method public varargs handleKeyCaptureUp([Ljava/lang/Object;)V
    .registers 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->mIsReleaseShutterKey:Z

    .line 1450
    return-void
.end method

.method public varargs handleOnAutoFocusDone([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1456
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->mIsReleaseShutterKey:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->mIsCalledByKeyEvent:Z

    if-nez v0, :cond_26

    .line 1457
    :cond_8
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDone;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDone;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1458
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->doCapture()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2700(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 1459
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1466
    :goto_25
    return-void

    .line 1463
    :cond_26
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDone;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDone;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1464
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->doCapture()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2700(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 1465
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    goto :goto_25
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .registers 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    const/4 v1, 0x1

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->cancelAutoFocus(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    .line 1471
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1472
    return-void
.end method
