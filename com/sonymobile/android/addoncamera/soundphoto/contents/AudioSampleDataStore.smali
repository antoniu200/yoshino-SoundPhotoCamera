.class public Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;
.super Ljava/lang/Object;
.source "AudioSampleDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$OnBufferPositionUpdateListener;,
        Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;,
        Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_PERIOD_SAMPLE_COUNT:I = 0x5a0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;

.field private final mAudioRecordBufferSize:I

.field private mBackgroundWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

.field private final mBufferingDuration:I

.field private final mCaptureDuration:I

.field private final mChannelCount:I

.field private volatile mCurrentSamplePosition:I

.field private final mFormat:I

.field private final mFrameBytes:I

.field private final mNotificationPeriod:I

.field private volatile mNowBuffering:Z

.field private mOnBufferPositionUpdateListener:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$OnBufferPositionUpdateListener;

.field final mOnRecordPositionUpdateListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private final mPostCaptureDuration:I

.field private final mPreCaptureDuration:I

.field private final mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mSampleBuffer:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;

.field private final mSampleRate:I

.field private final mTimeElapseFromLastSample:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 10
    .param p1, "sampleRate"    # I
    .param p2, "channelCount"    # I
    .param p3, "format"    # I
    .param p4, "captureDuration"    # I
    .param p5, "preCaptureDuration"    # I

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$2;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;)V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mOnRecordPositionUpdateListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 110
    iput p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mSampleRate:I

    .line 111
    iput p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mChannelCount:I

    .line 112
    iput p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mFormat:I

    .line 113
    iput p4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mCaptureDuration:I

    .line 114
    iput p5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mPreCaptureDuration:I

    .line 115
    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mCaptureDuration:I

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mPreCaptureDuration:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mPostCaptureDuration:I

    .line 116
    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mCaptureDuration:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mBufferingDuration:I

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mRequests:Ljava/util/List;

    .line 119
    new-instance v1, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mTimeElapseFromLastSample:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    .line 121
    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mFormat:I

    invoke-direct {p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->sampleBytes(I)I

    move-result v1

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mChannelCount:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mFrameBytes:I

    .line 122
    const/16 v1, 0x5a0

    iput v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mNotificationPeriod:I

    .line 123
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mNowBuffering:Z

    .line 124
    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mBackgroundWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    .line 125
    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mAudioRecord:Landroid/media/AudioRecord;

    .line 128
    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mNotificationPeriod:I

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mFrameBytes:I

    mul-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x4

    .line 129
    .local v0, "audioRecordBufferSizeRequested":I
    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mSampleRate:I

    .line 131
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->channelConfig()I

    move-result v2

    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mFormat:I

    invoke-static {v1, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    .line 129
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mAudioRecordBufferSize:I

    .line 134
    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mSampleRate:I

    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mFrameBytes:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mBufferingDuration:I

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mSampleBuffer:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->drainSamples(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mNowBuffering:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;)I
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    .prologue
    .line 38
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mNotificationPeriod:I

    return v0
.end method

.method private channelConfig()I
    .registers 3

    .prologue
    const/16 v0, 0x10

    .line 368
    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mChannelCount:I

    packed-switch v1, :pswitch_data_c

    .line 374
    :goto_7
    :pswitch_7
    return v0

    .line 372
    :pswitch_8
    const/16 v0, 0xc

    goto :goto_7

    .line 368
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private drainSamples(I)V
    .registers 11
    .param p1, "count"    # I

    .prologue
    .line 294
    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mSampleBuffer:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;

    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mAudioRecord:Landroid/media/AudioRecord;

    iget v8, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mFrameBytes:I

    mul-int/2addr v8, p1

    invoke-virtual {v6, v7, v8}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->drain(Landroid/media/AudioRecord;I)V

    .line 295
    iget v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mCurrentSamplePosition:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mCurrentSamplePosition:I

    .line 296
    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mTimeElapseFromLastSample:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v6}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->start()V

    .line 298
    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mOnBufferPositionUpdateListener:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$OnBufferPositionUpdateListener;

    if-eqz v6, :cond_2e

    .line 299
    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mOnBufferPositionUpdateListener:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$OnBufferPositionUpdateListener;

    iget v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mCurrentSamplePosition:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mSampleRate:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mSampleBuffer:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;

    .line 301
    invoke-virtual {v8}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->getCurrentVolume()I

    move-result v8

    .line 299
    invoke-interface {v6, v7, v8}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$OnBufferPositionUpdateListener;->onBufferPositionUpdated(II)V

    .line 310
    :cond_2e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v5, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;>;"
    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mRequests:Ljava/util/List;

    monitor-enter v7

    .line 312
    :try_start_36
    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mRequests:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 313
    monitor-exit v7
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_8a

    .line 315
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_40
    :goto_40
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_96

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;

    .line 316
    .local v4, "r":Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;
    iget v7, v4, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->tail:I

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->mPosition:I
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;)I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mFrameBytes:I

    mul-int v2, v7, v8

    .line 317
    .local v2, "length":I
    iget v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mCurrentSamplePosition:I

    iget v8, v4, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->tail:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mFrameBytes:I

    mul-int v3, v7, v8

    .line 328
    .local v3, "offset":I
    if-gez v3, :cond_64

    .line 329
    add-int/2addr v2, v3

    .line 330
    const/4 v3, 0x0

    .line 333
    :cond_64
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->mPosition:I
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;)I

    move-result v7

    iget v8, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mFrameBytes:I

    div-int v8, v2, v8

    add-int v1, v7, v8

    .line 341
    .local v1, "lastSamplePosition":I
    :try_start_6e
    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mSampleBuffer:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;

    invoke-virtual {v7, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->get(II)Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    move-result-object v7

    invoke-virtual {v4, v7, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->put(Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;I)V
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_77} :catch_8d

    .line 346
    :goto_77
    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->eos()Z

    move-result v7

    if-eqz v7, :cond_40

    .line 347
    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mRequests:Ljava/util/List;

    monitor-enter v7

    .line 348
    :try_start_80
    iget-object v8, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mRequests:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 349
    monitor-exit v7

    goto :goto_40

    :catchall_87
    move-exception v6

    monitor-exit v7
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_87

    throw v6

    .line 313
    .end local v1    # "lastSamplePosition":I
    .end local v2    # "length":I
    .end local v3    # "offset":I
    .end local v4    # "r":Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;
    :catchall_8a
    move-exception v6

    :try_start_8b
    monitor-exit v7
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v6

    .line 342
    .restart local v1    # "lastSamplePosition":I
    .restart local v2    # "length":I
    .restart local v3    # "offset":I
    .restart local v4    # "r":Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;
    :catch_8d
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v7, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->TAG:Ljava/lang/String;

    const-string v8, "drainSamples() is interrupted."

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 354
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "lastSamplePosition":I
    .end local v2    # "length":I
    .end local v3    # "offset":I
    .end local v4    # "r":Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;
    :cond_96
    return-void
.end method

.method private requestToDrainSamples(I)V
    .registers 4
    .param p1, "size"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mBackgroundWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$1;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$1;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    return-void
.end method

.method private sampleBytes(I)I
    .registers 4
    .param p1, "audioFormat"    # I

    .prologue
    .line 357
    packed-switch p1, :pswitch_data_10

    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Specified Audio format is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :pswitch_b
    const/4 v0, 0x2

    .line 361
    :goto_c
    return v0

    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 357
    nop

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public get()Ljava/util/concurrent/BlockingQueue;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mTimeElapseFromLastSample:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->elapsedTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    div-int/lit16 v0, v4, 0x3e8

    .line 265
    .local v0, "elapseSeconds":I
    iget v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mCurrentSamplePosition:I

    iget v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mPostCaptureDuration:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mSampleRate:I

    mul-int/2addr v5, v6

    add-int v3, v4, v5

    .line 266
    .local v3, "tail":I
    iget v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mCaptureDuration:I

    iget v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mSampleRate:I

    mul-int/2addr v4, v5

    sub-int v1, v3, v4

    .line 268
    .local v1, "head":I
    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;

    const/4 v4, 0x0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v2, v4, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;-><init>(II)V

    .line 269
    .local v2, "request":Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mRequests:Ljava/util/List;

    monitor-enter v5

    .line 270
    :try_start_27
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mRequests:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_30

    .line 275
    iget-object v4, v2, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->samples:Ljava/util/concurrent/BlockingQueue;

    return-object v4

    .line 271
    :catchall_30
    move-exception v4

    :try_start_31
    monitor-exit v5
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v4
.end method

.method public nowBuffering()Z
    .registers 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mNowBuffering:Z

    return v0
.end method

.method public release()V
    .registers 4

    .prologue
    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->stopBuffering()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 155
    :goto_3
    return-void

    .line 151
    :catch_4
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->TAG:Ljava/lang/String;

    const-string v2, "stopBuffering() is interrupted."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setBufferPositionUpdateListener(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$OnBufferPositionUpdateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$OnBufferPositionUpdateListener;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mOnBufferPositionUpdateListener:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$OnBufferPositionUpdateListener;

    .line 576
    return-void
.end method

.method public startBuffering()Z
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 163
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mNowBuffering:Z

    if-eqz v0, :cond_8

    move v0, v8

    .line 207
    :goto_7
    return v0

    .line 166
    :cond_8
    iput-boolean v8, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mNowBuffering:Z

    .line 167
    new-instance v0, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    const-string v1, "AudioSampleDataStore-Thread"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mBackgroundWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    .line 169
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mSampleBuffer:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->clear()V

    .line 170
    iput v9, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mCurrentSamplePosition:I

    .line 171
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mTimeElapseFromLastSample:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->start()V

    .line 173
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x5

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mSampleRate:I

    .line 176
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->channelConfig()I

    move-result v3

    iget v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mFormat:I

    iget v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mAudioRecordBufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mAudioRecord:Landroid/media/AudioRecord;

    .line 179
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mAudioRecord:Landroid/media/AudioRecord;

    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mNotificationPeriod:I

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    move-result v7

    .line 180
    .local v7, "r":I
    if-eqz v7, :cond_42

    .line 181
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->TAG:Ljava/lang/String;

    const-string v1, "setPositionNotificationPeriod:failed"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_42
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mOnRecordPositionUpdateListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mBackgroundWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    .line 185
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 188
    :try_start_4f
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_54
    .catch Ljava/lang/IllegalStateException; {:try_start_4f .. :try_end_54} :catch_62

    .line 194
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    packed-switch v0, :pswitch_data_6e

    .line 204
    invoke-direct {p0, v9}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->requestToDrainSamples(I)V

    move v0, v8

    .line 207
    goto :goto_7

    .line 189
    :catch_62
    move-exception v6

    .line 190
    .local v6, "e":Ljava/lang/IllegalStateException;
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->TAG:Ljava/lang/String;

    const-string v1, "startRecording:failed"

    invoke-static {v0, v1, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v9

    .line 191
    goto :goto_7

    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :pswitch_6c
    move v0, v9

    .line 196
    goto :goto_7

    .line 194
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_6c
    .end packed-switch
.end method

.method public stopBuffering()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 216
    iget-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mNowBuffering:Z

    if-nez v2, :cond_6

    .line 248
    :cond_5
    return-void

    .line 219
    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mNowBuffering:Z

    .line 222
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_17

    .line 223
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 228
    :cond_17
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mBackgroundWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;->quit()V

    .line 229
    iput-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mBackgroundWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    .line 233
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 234
    iput-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mAudioRecord:Landroid/media/AudioRecord;

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;>;"
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mRequests:Ljava/util/List;

    monitor-enter v3

    .line 239
    :try_start_2d
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mRequests:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 240
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 241
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_4c

    .line 243
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;

    .line 244
    .local v0, "r":Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;
    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->putEos()V

    goto :goto_3c

    .line 241
    .end local v0    # "r":Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;
    :catchall_4c
    move-exception v2

    :try_start_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v2
.end method
