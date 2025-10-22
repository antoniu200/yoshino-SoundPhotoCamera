.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearchInTouch$1;
.super Ljava/lang/Object;
.source "StateMachineController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearchInTouch;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearchInTouch;

.field final synthetic val$this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearchInTouch;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 3
    .param p1, "this$1"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearchInTouch;

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearchInTouch$1;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearchInTouch;

    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearchInTouch$1;->val$this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearchInTouch$1;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearchInTouch;

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearchInTouch;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_PREPARE_TOUCH_ZOOM_TIMEOUTED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1142
    return-void
.end method
