.class public Lcom/sonyericsson/cameracommon/sound/CameraActionSound;
.super Ljava/lang/Object;
.source "CameraActionSound.java"


# static fields
.field public static final FOCUS_COMPLETE:I = 0x1

.field private static RELEASE_MEDIA_ACTION_SOUND_DELAY_MILLIS:I = 0x0

.field public static final SHUTTER_CLICK:I = 0x0

.field public static final START_VIDEO_RECORDING:I = 0x2

.field public static final STOP_VIDEO_RECORDING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CameraActionSound"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsReleased:Z

.field private mMediaActionSound:Landroid/media/MediaActionSound;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/16 v0, 0xfa0

    sput v0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->RELEASE_MEDIA_ACTION_SOUND_DELAY_MILLIS:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->mIsReleased:Z

    .line 57
    return-void
.end method

.method private releaseDelay(Landroid/media/MediaActionSound;)V
    .registers 6
    .param p1, "sound"    # Landroid/media/MediaActionSound;

    .prologue
    .line 141
    const-string v0, "CameraActionSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseDelay() isReleased:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->mIsReleased:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/cameracommon/sound/CameraActionSound$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/cameracommon/sound/CameraActionSound$1;-><init>(Lcom/sonyericsson/cameracommon/sound/CameraActionSound;Landroid/media/MediaActionSound;)V

    sget v2, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->RELEASE_MEDIA_ACTION_SOUND_DELAY_MILLIS:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    return-void
.end method


# virtual methods
.method public load(I)V
    .registers 5
    .param p1, "soundName"    # I

    .prologue
    .line 72
    monitor-enter p0

    .line 73
    :try_start_1
    const-string v0, "CameraActionSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load() isReleased:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->mIsReleased:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->mIsReleased:Z

    if-eqz v0, :cond_21

    .line 75
    monitor-exit p0

    .line 79
    :goto_20
    return-void

    .line 77
    :cond_21
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->load(I)V

    .line 78
    monitor-exit p0

    goto :goto_20

    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public play(I)V
    .registers 6
    .param p1, "soundName"    # I

    .prologue
    .line 112
    monitor-enter p0

    .line 113
    :try_start_1
    const-string v1, "CameraActionSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play() isReleased:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->mIsReleased:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->mIsReleased:Z

    if-eqz v1, :cond_36

    .line 115
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    .line 116
    .local v0, "sound":Landroid/media/MediaActionSound;
    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->play(I)V

    .line 117
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->releaseDelay(Landroid/media/MediaActionSound;)V

    .line 121
    .end local v0    # "sound":Landroid/media/MediaActionSound;
    :goto_34
    monitor-exit p0

    .line 122
    return-void

    .line 119
    :cond_36
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v1, p1}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_34

    .line 121
    :catchall_3c
    move-exception v1

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public release()V
    .registers 4

    .prologue
    .line 130
    monitor-enter p0

    .line 131
    :try_start_1
    const-string v0, "CameraActionSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release() isReleased:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->mIsReleased:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->mIsReleased:Z

    if-nez v0, :cond_2a

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->mIsReleased:Z

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->releaseDelay(Landroid/media/MediaActionSound;)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 137
    :cond_2a
    monitor-exit p0

    .line 138
    return-void

    .line 137
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0
.end method
