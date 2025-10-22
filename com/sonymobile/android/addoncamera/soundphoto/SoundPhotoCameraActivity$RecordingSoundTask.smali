.class Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$RecordingSoundTask;
.super Ljava/lang/Object;
.source "SoundPhotoCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingSoundTask"
.end annotation


# instance fields
.field private final mIsStart:Z

.field private final mMyCameraActionSound:Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonyericsson/cameracommon/sound/CameraActionSound;Z)V
    .registers 4
    .param p2, "cameraActionSound"    # Lcom/sonyericsson/cameracommon/sound/CameraActionSound;
    .param p3, "isStart"    # Z

    .prologue
    .line 959
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$RecordingSoundTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 960
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$RecordingSoundTask;->mMyCameraActionSound:Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

    .line 961
    iput-boolean p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$RecordingSoundTask;->mIsStart:Z

    .line 962
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonyericsson/cameracommon/sound/CameraActionSound;ZLcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/sound/CameraActionSound;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;

    .prologue
    .line 953
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$RecordingSoundTask;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonyericsson/cameracommon/sound/CameraActionSound;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 967
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$RecordingSoundTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->isShutterSoundEnabled(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 968
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$RecordingSoundTask;->mMyCameraActionSound:Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

    iget-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$RecordingSoundTask;->mIsStart:Z

    if-eqz v1, :cond_28

    const/4 v1, 0x2

    :goto_f
    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->play(I)V

    .line 971
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$RecordingSoundTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mPostEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Landroid/os/Handler;

    move-result-object v0

    .line 972
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_27

    .line 973
    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$OnRecordingSoundCompletedTask;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$RecordingSoundTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$OnRecordingSoundCompletedTask;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 979
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_27
    return-void

    .line 968
    :cond_28
    const/4 v1, 0x3

    goto :goto_f
.end method
