.class Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$PreviewFrameCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewFrameCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V
    .registers 2

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$PreviewFrameCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$1;

    .prologue
    .line 1513
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$PreviewFrameCallback;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 8
    .param p1, "frame"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1516
    sget-boolean v0, Lcom/sonymobile/cameracommon/util/Log;->IS_KPI:Z

    if-eqz v0, :cond_9

    const-string v0, "SoundPhoto"

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->debugShowPreviewFPS(Ljava/lang/String;)V

    .line 1522
    :cond_9
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$PreviewFrameCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->requestNextFrame()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$2100(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V

    .line 1525
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$PreviewFrameCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1900(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$PreviewFrameCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 1526
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$PreviewFrameCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1900(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_PREVIEW_FRAME:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$PreviewFrameCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 1529
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$PreviewFrameCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 1530
    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1526
    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1536
    :cond_49
    return-void
.end method
