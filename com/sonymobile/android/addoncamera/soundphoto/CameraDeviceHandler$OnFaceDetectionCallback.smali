.class Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnFaceDetectionCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnFaceDetectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnFaceDetectionCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .registers 9
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x0

    .line 1234
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnFaceDetectionCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1900(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v2

    if-eqz v2, :cond_d

    if-eqz p2, :cond_d

    if-nez p1, :cond_15

    .line 1236
    :cond_d
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->clearFaceNum()V

    .line 1250
    :goto_14
    return-void

    .line 1240
    :cond_15
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v2

    array-length v4, p1

    invoke-virtual {v2, v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setFaceNum(I)V

    .line 1242
    new-instance v1, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;-><init>()V

    .line 1243
    .local v1, "faceDetectionResult":Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;
    array-length v4, p1

    move v2, v3

    :goto_24
    if-ge v2, v4, :cond_2e

    aget-object v0, p1, v2

    .line 1244
    .local v0, "face":Landroid/hardware/Camera$Face;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;->addFaceResult(Landroid/hardware/Camera$Face;)V

    .line 1243
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 1247
    .end local v0    # "face":Landroid/hardware/Camera$Face;
    :cond_2e
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnFaceDetectionCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1900(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v2

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-interface {v2, v4, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendStaticEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    goto :goto_14
.end method
