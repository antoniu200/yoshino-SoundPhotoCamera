.class Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$CameraErrorCallbackImpl;
.super Ljava/lang/Object;
.source "SoundPhotoCameraActivity.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraErrorCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)V
    .registers 2

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$CameraErrorCallbackImpl;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;

    .prologue
    .line 1060
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$CameraErrorCallbackImpl;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1063
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera error occurred. Error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    .line 1071
    :goto_1d
    return-void

    .line 1067
    :cond_1e
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$CameraErrorCallbackImpl;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const v1, 0x7f080125

    const v2, 0x7f080122

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showErrorUncancelable(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_1d
.end method
