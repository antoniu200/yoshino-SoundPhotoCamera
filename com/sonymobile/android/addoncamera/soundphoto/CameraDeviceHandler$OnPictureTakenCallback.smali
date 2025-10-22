.class Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnPictureTakenCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnPictureTakenCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnPictureTakenCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 8
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1197
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_SHOT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v4}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 1198
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->outResult()V

    .line 1199
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_SHOT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 1206
    invoke-static {}, Lcom/sonymobile/cameracommon/testevent/TestEventSender;->onPictureTaken()V

    .line 1209
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnPictureTakenCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$2000(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setImageData([B)V

    .line 1212
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnPictureTakenCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1900(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1213
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnPictureTakenCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1900(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_TAKE_PICTURE_DONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnPictureTakenCallback;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 1214
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$2000(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1213
    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1223
    :cond_38
    return-void
.end method
