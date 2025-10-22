.class public Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;
.super Ljava/lang/Object;
.source "AudioResourceChecker.java"


# static fields
.field private static final MICROPHONE_ACTIVE_KEY:Ljava/lang/String; = "is_microphone_active"

.field private static final MICROPHONE_ACTIVE_VALUE:Ljava/lang/String; = "is_microphone_active=1"

.field public static final TAG:Ljava/lang/String; = "AudioResourceChecker"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAudioResourceAndShowErrorDialogIfNecessary(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .registers 3
    .param p0, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 105
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 106
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method public static isAudioResourceAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z
    .registers 2
    .param p0, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;->isAudioResourceAvailableCheckImmediately(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 44
    invoke-static {}, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;->isAudioResourceAvailableCheckWithAudioRecord()Z

    move-result v0

    .line 49
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static declared-synchronized isAudioResourceAvailableCheckImmediately(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const-class v3, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;

    monitor-enter v3

    :try_start_3
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 142
    .local v0, "am":Landroid/media/AudioManager;
    const-string v2, "is_microphone_active"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "value":Ljava/lang/String;
    const-string v2, "is_microphone_active=1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1e

    move-result v2

    if-eqz v2, :cond_1c

    .line 148
    const/4 v2, 0x0

    .line 153
    :goto_1a
    monitor-exit v3

    return v2

    :cond_1c
    const/4 v2, 0x1

    goto :goto_1a

    .line 141
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "value":Ljava/lang/String;
    :catchall_1e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static declared-synchronized isAudioResourceAvailableCheckWithAudioRecord()Z
    .registers 12

    .prologue
    .line 58
    const-class v8, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;

    monitor-enter v8

    const/4 v6, 0x0

    .line 59
    .local v6, "audioRecord":Landroid/media/AudioRecord;
    const/4 v7, 0x0

    .line 66
    .local v7, "available":Z
    :try_start_5
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x5

    const v2, 0xbb80

    const/16 v3, 0xc

    const/4 v4, 0x2

    const/16 v5, 0x5a00

    const v9, 0xbb80

    const/16 v10, 0xc

    const/4 v11, 0x2

    .line 67
    invoke-static {v9, v10, v11}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_21} :catch_59
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_21} :catch_40
    .catchall {:try_start_5 .. :try_end_21} :catchall_49

    .line 70
    .end local v6    # "audioRecord":Landroid/media/AudioRecord;
    .local v0, "audioRecord":Landroid/media/AudioRecord;
    :try_start_21
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    .line 72
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 75
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    packed-switch v1, :pswitch_data_5e

    .line 81
    const/4 v7, 0x1

    .line 84
    :goto_33
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_36} :catch_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_36} :catch_57
    .catchall {:try_start_21 .. :try_end_36} :catchall_55

    .line 92
    :cond_36
    if-eqz v0, :cond_3c

    .line 93
    :try_start_38
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_52

    .line 94
    const/4 v0, 0x0

    .line 100
    :cond_3c
    :goto_3c
    monitor-exit v8

    return v7

    .line 77
    :pswitch_3e
    const/4 v7, 0x0

    .line 78
    goto :goto_33

    .line 86
    .end local v0    # "audioRecord":Landroid/media/AudioRecord;
    .restart local v6    # "audioRecord":Landroid/media/AudioRecord;
    :catch_40
    move-exception v1

    move-object v0, v6

    .line 92
    .end local v6    # "audioRecord":Landroid/media/AudioRecord;
    .restart local v0    # "audioRecord":Landroid/media/AudioRecord;
    :goto_42
    if-eqz v0, :cond_3c

    .line 93
    :try_start_44
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 94
    const/4 v0, 0x0

    goto :goto_3c

    .line 92
    .end local v0    # "audioRecord":Landroid/media/AudioRecord;
    .restart local v6    # "audioRecord":Landroid/media/AudioRecord;
    :catchall_49
    move-exception v1

    move-object v0, v6

    .end local v6    # "audioRecord":Landroid/media/AudioRecord;
    .restart local v0    # "audioRecord":Landroid/media/AudioRecord;
    :goto_4b
    if-eqz v0, :cond_51

    .line 93
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 94
    const/4 v0, 0x0

    :cond_51
    throw v1
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_52

    .line 58
    :catchall_52
    move-exception v1

    monitor-exit v8

    throw v1

    .line 92
    :catchall_55
    move-exception v1

    goto :goto_4b

    .line 86
    :catch_57
    move-exception v1

    goto :goto_42

    .end local v0    # "audioRecord":Landroid/media/AudioRecord;
    .restart local v6    # "audioRecord":Landroid/media/AudioRecord;
    :catch_59
    move-exception v1

    move-object v0, v6

    .end local v6    # "audioRecord":Landroid/media/AudioRecord;
    .restart local v0    # "audioRecord":Landroid/media/AudioRecord;
    goto :goto_42

    :catch_5c
    move-exception v1

    goto :goto_42

    .line 75
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_3e
    .end packed-switch
.end method
