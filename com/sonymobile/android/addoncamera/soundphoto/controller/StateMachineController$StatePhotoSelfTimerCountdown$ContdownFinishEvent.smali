.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown$ContdownFinishEvent;
.super Ljava/lang/Object;
.source "StateMachineController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContdownFinishEvent"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;)V
    .registers 2

    .prologue
    .line 1795
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown$ContdownFinishEvent;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$1;

    .prologue
    .line 1795
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown$ContdownFinishEvent;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1799
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown$ContdownFinishEvent;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;->recoverFlash()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;->access$3400(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;)V

    .line 1800
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown$ContdownFinishEvent;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->startAutoFocus()Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1700(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1801
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown$ContdownFinishEvent;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown$ContdownFinishEvent;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;

    iget-object v2, v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1805
    :goto_23
    return-void

    .line 1803
    :cond_24
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown$ContdownFinishEvent;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown$ContdownFinishEvent;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;

    iget-object v2, v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    goto :goto_23
.end method
