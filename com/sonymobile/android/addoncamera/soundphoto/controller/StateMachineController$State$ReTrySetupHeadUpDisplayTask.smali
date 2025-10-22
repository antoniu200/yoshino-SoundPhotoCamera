.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State$ReTrySetupHeadUpDisplayTask;
.super Ljava/lang/Object;
.source "StateMachineController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReTrySetupHeadUpDisplayTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;)V
    .registers 2
    .param p1, "this$1"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State$ReTrySetupHeadUpDisplayTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 466
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State$ReTrySetupHeadUpDisplayTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    iget-object v1, v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 467
    return-void
.end method
