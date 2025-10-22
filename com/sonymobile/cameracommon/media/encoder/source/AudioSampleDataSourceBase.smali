.class public abstract Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;
.super Ljava/lang/Object;
.source "AudioSampleDataSourceBase.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# static fields
.field protected static final INPUTBUFFER_TIMEOUT_MICROSECONDS:J = 0x186a0L

.field protected static final NOTIFICATION_COUNT_PER_SECOND:I = 0xa


# instance fields
.field private volatile mAlreadyEos:Z

.field private final mAudioBuffer:[B

.field private final mAudioRecord:Landroid/media/AudioRecord;

.field private final mCodec:Landroid/media/MediaCodec;

.field private final mMinBufferSize:I

.field private final mNotificationPeriod:I

.field private mSampleCount:J

.field private final mSampleDataBytes:I

.field private final mSampleRate:I

.field private final mWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;III)V
    .registers 11
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "sampleRate"    # I
    .param p3, "channels"    # I
    .param p4, "format"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-nez p1, :cond_d

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MediaCodec cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_d
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mCodec:Landroid/media/MediaCodec;

    .line 59
    iput p2, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mSampleRate:I

    .line 60
    invoke-direct {p0, p4}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->bytesInFrame(I)I

    move-result v0

    mul-int/2addr v0, p3

    iput v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mSampleDataBytes:I

    .line 62
    const/4 v0, 0x2

    if-ne p3, v0, :cond_44

    const/16 v3, 0xc

    .line 65
    .local v3, "channelConfig":I
    :goto_1d
    iget v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mSampleRate:I

    invoke-static {v0, v3, p4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mMinBufferSize:I

    .line 67
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mSampleRate:I

    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->getBufferSize()I

    move-result v5

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    .line 71
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_47

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AudioRecord failed to initialize. Parameters might be invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    .end local v3    # "channelConfig":I
    :cond_44
    const/16 v3, 0x10

    goto :goto_1d

    .line 76
    .restart local v3    # "channelConfig":I
    :cond_47
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->getAudioBufferSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAudioBuffer:[B

    .line 78
    iget v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mSampleRate:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mNotificationPeriod:I

    .line 80
    new-instance v0, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    const-string v1, "AudioSampleDataReaderThread"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->readSampleData(Z)V

    return-void
.end method

.method private bytesInFrame(I)I
    .registers 4
    .param p1, "format"    # I

    .prologue
    .line 189
    packed-switch p1, :pswitch_data_10

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Specified Audio format is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :pswitch_b
    const/4 v0, 0x2

    .line 193
    :goto_c
    return v0

    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 189
    nop

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method protected static isCancelled()Z
    .registers 1

    .prologue
    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method

.method private readSampleData(Z)V
    .registers 10
    .param p1, "isEos"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAlreadyEos:Z

    if-eqz v1, :cond_7

    .line 237
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 209
    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v1, v4, :cond_29

    .line 210
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAudioBuffer:[B

    iget-object v5, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAudioBuffer:[B

    array-length v5, v5

    invoke-virtual {v1, v4, v6, v5, v7}, Landroid/media/AudioRecord;->read([BIII)I

    move-result v0

    .line 216
    .local v0, "readBytes":I
    :goto_18
    packed-switch v0, :pswitch_data_38

    .line 230
    :goto_1b
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAudioBuffer:[B

    invoke-virtual {p0, v1, v0, p1}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->pushToEncoder([BIZ)J

    move-result-wide v2

    .line 231
    .local v2, "writtenTime":J
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->addSampleCount(J)V

    .line 232
    if-eqz p1, :cond_6

    .line 233
    iput-boolean v7, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAlreadyEos:Z

    goto :goto_6

    .line 213
    .end local v0    # "readBytes":I
    .end local v2    # "writtenTime":J
    :cond_29
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAudioBuffer:[B

    iget-object v5, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAudioBuffer:[B

    array-length v5, v5

    invoke-virtual {v1, v4, v6, v5}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .restart local v0    # "readBytes":I
    goto :goto_18

    .line 227
    :pswitch_35
    const/4 p1, 0x1

    goto :goto_1b

    .line 216
    nop

    :pswitch_data_38
    .packed-switch -0x3
        :pswitch_35
        :pswitch_6
    .end packed-switch
.end method

.method private requestToReadSampleData(Z)V
    .registers 4
    .param p1, "eos"    # Z

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase$1;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase$1;-><init>(Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method


# virtual methods
.method protected addSampleCount(J)V
    .registers 6
    .param p1, "count"    # J

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mSampleCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mSampleCount:J

    .line 164
    return-void
.end method

.method protected getAudioBufferSize()I
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mMinBufferSize:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected getAudioRecord()Landroid/media/AudioRecord;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method protected getBackgroundWorker()Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    return-object v0
.end method

.method protected getBufferSize()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mMinBufferSize:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected getCodec()Landroid/media/MediaCodec;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mCodec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected getMinBufferSize()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mMinBufferSize:I

    return v0
.end method

.method protected getPresentationTime(J)J
    .registers 8
    .param p1, "additionalSampleCount"    # J

    .prologue
    .line 138
    const-wide/32 v0, 0xf4240

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mSampleCount:J

    add-long/2addr v2, p1

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected getSampleDataBytes()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mSampleDataBytes:I

    return v0
.end method

.method protected getSampleRate()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mSampleRate:I

    return v0
.end method

.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .registers 2
    .param p1, "recorder"    # Landroid/media/AudioRecord;

    .prologue
    .line 124
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .registers 3
    .param p1, "recorder"    # Landroid/media/AudioRecord;

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->readSampleData(Z)V

    .line 129
    return-void
.end method

.method protected abstract pushToEncoder([BIZ)J
.end method

.method public release()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 86
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 90
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mSampleCount:J

    .line 92
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    iget v2, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mNotificationPeriod:I

    invoke-virtual {v1, v2}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    move-result v0

    .line 93
    .local v0, "r":I
    if-eqz v0, :cond_13

    .line 94
    const-string v1, "setPositionNotificationPeriod:failed"

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;)V

    .line 96
    :cond_13
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 97
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 101
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->requestToReadSampleData(Z)V

    .line 102
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 107
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->requestToReadSampleData(Z)V

    .line 110
    :try_start_9
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->mWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;->quit()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_f

    .line 119
    :goto_e
    return-void

    .line 114
    :catch_f
    move-exception v0

    goto :goto_e
.end method
