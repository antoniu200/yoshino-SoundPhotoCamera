.class Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ReleaseCameraActionSoundTask;
.super Ljava/lang/Object;
.source "SoundPhotoCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReleaseCameraActionSoundTask"
.end annotation


# instance fields
.field private final mMyCameraActionSound:Lcom/sonyericsson/cameracommon/sound/CameraActionSound;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/sound/CameraActionSound;)V
    .registers 2
    .param p1, "cameraActionSound"    # Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

    .prologue
    .line 986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ReleaseCameraActionSoundTask;->mMyCameraActionSound:Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

    .line 988
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/sound/CameraActionSound;Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/sound/CameraActionSound;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;

    .prologue
    .line 982
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ReleaseCameraActionSoundTask;-><init>(Lcom/sonyericsson/cameracommon/sound/CameraActionSound;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ReleaseCameraActionSoundTask;->mMyCameraActionSound:Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->release()V

    .line 995
    return-void
.end method
