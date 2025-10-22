.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby$1;
.super Ljava/lang/Object;
.source "StateMachineController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->entry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;)V
    .registers 2
    .param p1, "this$1"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;

    .prologue
    .line 731
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby$1;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 734
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby$1;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;

    iget-object v1, v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 736
    return-void
.end method
