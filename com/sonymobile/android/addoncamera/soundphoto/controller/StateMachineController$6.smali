.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$6;
.super Ljava/lang/Object;
.source "StateMachineController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->onAudioCaptureFinished(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

.field final synthetic val$audioData:Ljava/nio/ByteBuffer;

.field final synthetic val$sender:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 2685
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$6;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$6;->val$sender:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    iput-object p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$6;->val$audioData:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2688
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$6;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_SOUND_CAPTURE_COMPLETED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$6;->val$sender:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$6;->val$audioData:Ljava/nio/ByteBuffer;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2690
    return-void
.end method
