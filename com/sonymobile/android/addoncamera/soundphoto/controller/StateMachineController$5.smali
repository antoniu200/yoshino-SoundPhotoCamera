.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$5;
.super Ljava/lang/Object;
.source "StateMachineController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->onBufferPositionUpdated(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

.field final synthetic val$milliSec:I

.field final synthetic val$volume:I


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 2651
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$5;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    iput p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$5;->val$milliSec:I

    iput p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$5;->val$volume:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$5;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_RECORD_PROGRESS_UPDATED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$5;->val$milliSec:I

    .line 2656
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$5;->val$volume:I

    .line 2657
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2654
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->sendStaticEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 2658
    return-void
.end method
