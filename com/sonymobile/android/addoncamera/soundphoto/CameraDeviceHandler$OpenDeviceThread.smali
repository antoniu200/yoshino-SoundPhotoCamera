.class Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;
.super Ljava/lang/Thread;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenDeviceThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenDeviceThread"


# instance fields
.field private volatile mIsSuccess:Z

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V
    .registers 3

    .prologue
    .line 380
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->mIsSuccess:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$1;

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .registers 2

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->mIsSuccess:Z

    return v0
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 392
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->OPEN_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v1, v4}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 397
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # setter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCurrentDeviceState:I
    invoke-static {v1, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$102(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;I)I

    .line 400
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->openCamera()Z
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 403
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->releaseCameraImmediatelyNotSynchronized()V
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V

    .line 492
    :goto_19
    return-void

    .line 409
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$500(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    # setter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$402(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_29} :catch_39

    .line 418
    :cond_29
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-nez v1, :cond_61

    .line 419
    const-string v1, "OpenDeviceThread"

    const-string v2, "run: mLatestCachedParameters is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 410
    :catch_39
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "OpenDeviceThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera.getParameters failed.ActivityIsInForeground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 413
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 415
    throw v0

    .line 425
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_61
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->notifyDeviceOpened()V
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$700(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V

    .line 428
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCameraDeviceId:I
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setPictureSizeToParameters(ILandroid/hardware/Camera$Parameters;)V
    invoke-static {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$900(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;ILandroid/hardware/Camera$Parameters;)V

    .line 429
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCameraDeviceId:I
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setPreviewSizeToParameters(ILandroid/hardware/Camera$Parameters;)V
    invoke-static {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;ILandroid/hardware/Camera$Parameters;)V

    .line 430
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setPreviewFpsRangeToParameters(Landroid/hardware/Camera$Parameters;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1100(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)V

    .line 431
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCameraDeviceId:I
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setSceneToParameters(ILandroid/hardware/Camera$Parameters;)V
    invoke-static {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;ILandroid/hardware/Camera$Parameters;)V

    .line 432
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCameraDeviceId:I
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setFocusModeToParameters(ILandroid/hardware/Camera$Parameters;)V
    invoke-static {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1300(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;ILandroid/hardware/Camera$Parameters;)V

    .line 433
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCameraDeviceId:I
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setWhiteBalanceToParameters(ILandroid/hardware/Camera$Parameters;)V
    invoke-static {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1400(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;ILandroid/hardware/Camera$Parameters;)V

    .line 434
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setJpegEncodingQuality()V
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1500(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V

    .line 435
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setPhotoShutterSoundToMute()V

    .line 438
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setDcModeParameters(Landroid/hardware/Camera$Parameters;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1600(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)V

    .line 442
    :try_start_db
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$500(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->doSetParametersToDevice(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    invoke-static {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1700(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    :try_end_ec
    .catch Ljava/lang/RuntimeException; {:try_start_db .. :try_end_ec} :catch_111

    .line 455
    :cond_ec
    :try_start_ec
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$500(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_fd

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$500(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_fd
    .catch Ljava/lang/RuntimeException; {:try_start_ec .. :try_end_fd} :catch_139

    .line 468
    :cond_fd
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1800(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Z

    move-result v1

    if-eqz v1, :cond_161

    .line 470
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->releaseCameraImmediatelyNotSynchronized()V
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V

    .line 471
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # setter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z
    invoke-static {v1, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$1802(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;Z)Z

    goto/16 :goto_19

    .line 443
    :catch_111
    move-exception v0

    .line 445
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string v1, "OpenDeviceThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSetParametersToDevice failed.ActivityIsInForeground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 446
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 445
    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 448
    throw v0

    .line 456
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_139
    move-exception v0

    .line 458
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string v1, "OpenDeviceThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera.startPreview failed.ActivityIsInForeground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 459
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 461
    throw v0

    .line 481
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_161
    iput-boolean v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->mIsSuccess:Z

    .line 483
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    const/4 v2, 0x2

    # setter for: Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCurrentDeviceState:I
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->access$102(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;I)I

    .line 490
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->OPEN_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v1, v5}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    goto/16 :goto_19
.end method
