.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateFinalize;
.super Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;
.source "StateMachineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateFinalize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 1960
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateFinalize;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 1961
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateFinalize;->mCaptureState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 1962
    return-void
.end method


# virtual methods
.method public varargs handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1968
    return-void
.end method
