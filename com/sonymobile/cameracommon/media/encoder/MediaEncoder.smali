.class public Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
.super Ljava/lang/Object;
.source "MediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MediaEncoder"

.field private static final TIME_OUT_STOPPING_MILLISECONDS:J = 0x7d0L

.field private static TRACE:Z


# instance fields
.field private final mEncodedDataWriteListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

.field private mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

.field private mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mInputEncodedDataThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

.field private final mMainTask:Ljava/lang/Runnable;

.field private mMainTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

.field private final mWaitRequestFinishSignalTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    return-void
.end method

.method public constructor <init>([Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;Landroid/media/MediaMuxer;Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;)V
    .registers 5
    .param p1, "inputStreamInfoList"    # [Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    .param p2, "muxer"    # Landroid/media/MediaMuxer;
    .param p3, "stateListener"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;-><init>(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMainTask:Ljava/lang/Runnable;

    .line 193
    new-instance v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;-><init>(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncodedDataWriteListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    .line 223
    new-instance v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$3;-><init>(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mWaitRequestFinishSignalTask:Ljava/lang/Runnable;

    .line 60
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    .line 61
    iput-object p2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 62
    iput-object p3, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    .line 64
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    array-length v0, v0

    .line 65
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputEncodedDataThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 66
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private shutdownEncodedDataThreadPool()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputEncodedDataThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 276
    return-void
.end method


# virtual methods
.method public release()V
    .registers 4

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->shutdownEncodedDataThreadPool()V

    .line 104
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->releaseInputDataSource()V

    .line 105
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->releaseEncoders()V

    .line 107
    :try_start_9
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->releaseMuxer()V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_c} :catch_d

    .line 111
    :goto_c
    return-void

    .line 108
    :catch_d
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MediaEncoder"

    const-string v2, "IllegalStateException occur at releaseMuxer()."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method releaseEncoders()V
    .registers 6

    .prologue
    .line 299
    sget-boolean v1, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v1, :cond_b

    const-string v1, "MediaEncoder"

    const-string v2, "releaseEncoders() E"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_b
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v3, :cond_1b

    aget-object v0, v2, v1

    .line 301
    .local v0, "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    iget-object v4, v0, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 303
    .end local v0    # "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :cond_1b
    sget-boolean v1, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v1, :cond_26

    const-string v1, "MediaEncoder"

    const-string v2, "releaseEncoders() X"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_26
    return-void
.end method

.method releaseInputDataSource()V
    .registers 6

    .prologue
    .line 319
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_10

    aget-object v0, v2, v1

    .line 320
    .local v0, "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    iget-object v4, v0, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->source:Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;

    invoke-interface {v4}, Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;->release()V

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 322
    .end local v0    # "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :cond_10
    return-void
.end method

.method releaseMuxer()V
    .registers 3

    .prologue
    .line 331
    sget-boolean v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_b

    const-string v0, "MediaEncoder"

    const-string v1, "releaseMuxer() E"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_b
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 333
    sget-boolean v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_1b

    const-string v0, "MediaEncoder"

    const-string v1, "releaseMuxer() X"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_1b
    return-void
.end method

.method sendOnFinishedEvent(Z)V
    .registers 3
    .param p1, "result"    # Z

    .prologue
    .line 362
    monitor-enter p0

    .line 363
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    .line 364
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_f

    .line 365
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    if-eqz v0, :cond_e

    .line 366
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    invoke-interface {v0, p1}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;->onFinished(Z)V

    .line 368
    :cond_e
    return-void

    .line 364
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method sendOnStartedEvent()V
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    if-eqz v0, :cond_9

    .line 357
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;->onStarted()V

    .line 359
    :cond_9
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 69
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->start(Ljava/util/concurrent/ExecutorService;)V

    .line 70
    return-void
.end method

.method public start(Ljava/util/concurrent/ExecutorService;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_e

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 78
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0

    .line 77
    :cond_e
    :try_start_e
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    .line 78
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_b

    .line 79
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMainTask:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMainTaskFuture:Ljava/util/concurrent/Future;

    .line 80
    return-void
.end method

.method startEncodedDataWriteTasks()V
    .registers 11

    .prologue
    .line 263
    sget-boolean v1, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v1, :cond_b

    const-string v1, "MediaEncoder"

    const-string v2, "startEncodedDataWriteTasks() E"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_b
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v3, :cond_2a

    aget-object v0, v2, v1

    .line 265
    .local v0, "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputEncodedDataThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;

    iget-object v6, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v7, v0, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncodedDataWriteListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    .line 269
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->mimeType()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;-><init>(Landroid/media/MediaMuxer;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;Ljava/lang/String;)V

    .line 265
    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 271
    .end local v0    # "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :cond_2a
    sget-boolean v1, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v1, :cond_35

    const-string v1, "MediaEncoder"

    const-string v2, "startEncodedDataWriteTasks() X"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_35
    return-void
.end method

.method startEncoders()V
    .registers 6

    .prologue
    .line 279
    sget-boolean v1, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v1, :cond_b

    const-string v1, "MediaEncoder"

    const-string v2, "startEncoders() E"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_b
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v3, :cond_1b

    aget-object v0, v2, v1

    .line 281
    .local v0, "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    iget-object v4, v0, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 283
    .end local v0    # "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :cond_1b
    sget-boolean v1, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v1, :cond_26

    const-string v1, "MediaEncoder"

    const-string v2, "startEncoders() X"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_26
    return-void
.end method

.method startInputDataSource()V
    .registers 6

    .prologue
    .line 307
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_10

    aget-object v0, v2, v1

    .line 308
    .local v0, "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    iget-object v4, v0, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->source:Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;

    invoke-interface {v4}, Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;->start()V

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 310
    .end local v0    # "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :cond_10
    return-void
.end method

.method startMediaMuxerAfterEncodedFormatIsFixed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 251
    sget-boolean v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_b

    const-string v0, "MediaEncoder"

    const-string v1, "startMediaMuxer() E"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_b
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 254
    sget-boolean v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_1b

    const-string v0, "MediaEncoder"

    const-string v1, "muxer.start E"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_1b
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 256
    sget-boolean v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_2b

    const-string v0, "MediaEncoder"

    const-string v1, "muxer.start X"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_2b
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 259
    sget-boolean v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_3b

    const-string v0, "MediaEncoder"

    const-string v1, "startMediaMuxer() X"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_3b
    return-void
.end method

.method public stop()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 83
    monitor-enter p0

    .line 84
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    if-nez v1, :cond_8

    .line 85
    monitor-exit p0

    .line 100
    :goto_7
    return-void

    .line 87
    :cond_8
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 88
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_1e

    .line 92
    :try_start_e
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMainTaskFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1b

    .line 93
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMainTaskFuture:Ljava/util/concurrent/Future;

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_21
    .catchall {:try_start_e .. :try_end_1b} :catchall_3d

    .line 98
    :cond_1b
    iput-object v5, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMainTaskFuture:Ljava/util/concurrent/Future;

    goto :goto_7

    .line 88
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1

    .line 95
    :catch_21
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    :try_start_22
    const-string v1, "MediaEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop() caught exception e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_3d

    .line 98
    iput-object v5, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMainTaskFuture:Ljava/util/concurrent/Future;

    goto :goto_7

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3d
    move-exception v1

    iput-object v5, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMainTaskFuture:Ljava/util/concurrent/Future;

    throw v1
.end method

.method stopEncoders()V
    .registers 9

    .prologue
    .line 287
    sget-boolean v2, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v2, :cond_b

    const-string v2, "MediaEncoder"

    const-string v3, "stopEncoders() E"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_b
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v4, :cond_35

    aget-object v1, v3, v2

    .line 290
    .local v1, "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :try_start_13
    iget-object v5, v1, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_18} :catch_1b

    .line 288
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 291
    :catch_1b
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v5, "MediaEncoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " occurred. Maybe MediaCodec is released."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 295
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :cond_35
    sget-boolean v2, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v2, :cond_40

    const-string v2, "MediaEncoder"

    const-string v3, "stopEncoders() X"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_40
    return-void
.end method

.method stopInputDataSource()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_10

    aget-object v0, v2, v1

    .line 314
    .local v0, "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    iget-object v4, v0, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->source:Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;

    invoke-interface {v4}, Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;->stop()V

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 316
    .end local v0    # "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :cond_10
    return-void
.end method

.method stopMuxer()V
    .registers 3

    .prologue
    .line 325
    sget-boolean v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_b

    const-string v0, "MediaEncoder"

    const-string v1, "stopMuxer() E"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_b
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 327
    sget-boolean v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v0, :cond_1b

    const-string v0, "MediaEncoder"

    const-string v1, "stopMuxer() X"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_1b
    return-void
.end method

.method waitToCompleteEncoding()V
    .registers 5

    .prologue
    .line 337
    sget-boolean v2, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v2, :cond_b

    const-string v2, "MediaEncoder"

    const-string v3, "waitToCompleteEncoding() E"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_b
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mWaitRequestFinishSignalTask:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 342
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_15
    sget-boolean v2, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v2, :cond_20

    const-string v2, "MediaEncoder"

    const-string v3, "EncoderFinishSignal.await"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_20
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 344
    sget-boolean v2, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v2, :cond_30

    const-string v2, "MediaEncoder"

    const-string v3, "EncoderFinishSignal.await FINISHED"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_30} :catch_40

    .line 350
    :cond_30
    :goto_30
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 352
    sget-boolean v2, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z

    if-eqz v2, :cond_3f

    const-string v2, "MediaEncoder"

    const-string v3, "waitToCompleteEncoding() X"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_3f
    return-void

    .line 346
    :catch_40
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "MediaEncoder"

    const-string v3, "mEncoderFinishSignal is interrupted"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method
