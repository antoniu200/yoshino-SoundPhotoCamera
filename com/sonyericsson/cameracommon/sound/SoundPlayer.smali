.class public Lcom/sonyericsson/cameracommon/sound/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SoundPlayer"


# instance fields
.field private final mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 34
    return-void
.end method

.method private playSound(Landroid/content/Context;I)Z
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 93
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    monitor-enter v11

    .line 94
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 95
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_19

    .line 96
    const-string v0, "SoundPlayer"

    const-string v1, "playSound: open RawResourceFd fail"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    monitor-exit v11
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_60

    move v0, v9

    .line 124
    :goto_18
    return v0

    .line 101
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 103
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 104
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 105
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 102
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 107
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 108
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_4c} :catch_63
    .catchall {:try_start_19 .. :try_end_4c} :catchall_7f

    .line 117
    :try_start_4c
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_57
    .catchall {:try_start_4c .. :try_end_4f} :catchall_60

    .line 123
    :goto_4f
    :try_start_4f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 124
    monitor-exit v11

    move v0, v10

    goto :goto_18

    .line 118
    :catch_57
    move-exception v7

    .line 119
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "SoundPlayer"

    const-string v1, "playSound: close RawResourceFd fail"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 125
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_60
    move-exception v0

    monitor-exit v11
    :try_end_62
    .catchall {:try_start_4f .. :try_end_62} :catchall_60

    throw v0

    .line 111
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_63
    move-exception v8

    .line 112
    .local v8, "ex":Ljava/io/IOException;
    :try_start_64
    const-string v0, "SoundPlayer"

    const-string v1, "playSound: IOException"

    invoke-static {v0, v1, v8}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_70
    .catchall {:try_start_64 .. :try_end_70} :catchall_7f

    .line 117
    :try_start_70
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_76
    .catchall {:try_start_70 .. :try_end_73} :catchall_60

    .line 120
    :goto_73
    :try_start_73
    monitor-exit v11

    move v0, v9

    goto :goto_18

    .line 118
    :catch_76
    move-exception v7

    .line 119
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v0, "SoundPlayer"

    const-string v1, "playSound: close RawResourceFd fail"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_73 .. :try_end_7e} :catchall_60

    goto :goto_73

    .line 116
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "ex":Ljava/io/IOException;
    :catchall_7f
    move-exception v0

    .line 117
    :try_start_80
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84
    .catchall {:try_start_80 .. :try_end_83} :catchall_60

    .line 120
    :goto_83
    :try_start_83
    throw v0

    .line 118
    :catch_84
    move-exception v7

    .line 119
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v1, "SoundPlayer"

    const-string v2, "playSound: close RawResourceFd fail"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_83 .. :try_end_8c} :catchall_60

    goto :goto_83
.end method

.method private playSound(Ljava/lang/String;)Z
    .registers 9
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 64
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    monitor-enter v3

    .line 65
    if-nez p1, :cond_9

    .line 66
    :try_start_7
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_47

    .line 84
    :goto_8
    return v1

    .line 70
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    .line 71
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 72
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v6, 0x1

    .line 73
    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 74
    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    .line 75
    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    .line 72
    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 76
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_30} :catch_38
    .catchall {:try_start_9 .. :try_end_30} :catchall_47

    .line 83
    :try_start_30
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 84
    monitor-exit v3

    move v1, v2

    goto :goto_8

    .line 77
    :catch_38
    move-exception v0

    .line 78
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "SoundPlayer"

    const-string v4, "playSound: IOException"

    invoke-static {v2, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 80
    monitor-exit v3

    goto :goto_8

    .line 85
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_47
    move-exception v1

    monitor-exit v3
    :try_end_49
    .catchall {:try_start_30 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public static final preload()V
    .registers 0

    .prologue
    .line 23
    return-void
.end method


# virtual methods
.method public asMediaPlayer()Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public playAfSuccessSound()Z
    .registers 3

    .prologue
    .line 59
    const-string v0, "/system/media/audio/camera/common/af_success.m4a"

    .line 60
    .local v0, "filePath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->playSound(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public playShutterSound(Landroid/content/Context;I)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->playSound(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public playShutterSound(Ljava/lang/String;)Z
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->playSound(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    monitor-enter v1

    .line 45
    :try_start_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 47
    monitor-exit v1

    .line 48
    return-void

    .line 47
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 90
    return-void
.end method
