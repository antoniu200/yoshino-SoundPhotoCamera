.class Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;
.super Ljava/lang/Object;
.source "EncodedDataWriteTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;
    }
.end annotation


# static fields
.field private static final OUTPUTBUFFER_TIMEOUT_NANOSECONDS:J = 0x5f5e100L

.field public static final TAG:Ljava/lang/String; = "EncodedDataWriteTask"

.field private static TRACE:Z


# instance fields
.field private final mCodec:Landroid/media/MediaCodec;

.field private mFirstFramePresentationTimeUs:J

.field private mIsFirstFrameArrived:Z

.field private final mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

.field private final mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerIndex:I

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaMuxer;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;Ljava/lang/String;)V
    .registers 7
    .param p1, "muxer"    # Landroid/media/MediaMuxer;
    .param p2, "encoder"    # Landroid/media/MediaCodec;
    .param p3, "listener"    # Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p4, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    .line 50
    iput-object p2, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    .line 51
    iput-object p3, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mIsFirstFrameArrived:Z

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mFirstFramePresentationTimeUs:J

    .line 54
    return-void
.end method

.method private awaitEncoderFormat()Z
    .registers 7

    .prologue
    .line 208
    sget-boolean v2, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v2, :cond_1e

    const-string v2, "EncodedDataWriteTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " awaitEncoderFormat E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_1e
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 211
    .local v0, "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :cond_23
    :goto_23
    invoke-static {}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->canceled()Z

    move-result v2

    if-nez v2, :cond_78

    .line 212
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    const-wide/32 v4, 0x5f5e100

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 215
    .local v1, "info":I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_55

    .line 216
    sget-boolean v2, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v2, :cond_53

    const-string v2, "EncodedDataWriteTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " INFO_OUTPUT_FORMAT_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_53
    const/4 v2, 0x1

    .line 226
    .end local v1    # "info":I
    :goto_54
    return v2

    .line 220
    .restart local v1    # "info":I
    :cond_55
    sget-boolean v2, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v2, :cond_23

    const-string v2, "EncodedDataWriteTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " INFO_OUTPUT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 225
    .end local v1    # "info":I
    :cond_78
    sget-boolean v2, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v2, :cond_96

    const-string v2, "EncodedDataWriteTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " awaitEncoderFormat X"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_96
    const/4 v2, 0x0

    goto :goto_54
.end method

.method private static canceled()Z
    .registers 1

    .prologue
    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x0

    .line 58
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->awaitEncoderFormat()Z

    move-result v8

    if-nez v8, :cond_9

    .line 205
    :cond_8
    :goto_8
    return-void

    .line 63
    :cond_9
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 64
    .local v5, "outputBuffers":[Ljava/nio/ByteBuffer;
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 66
    .local v2, "info":Landroid/media/MediaCodec$BufferInfo;
    const-wide/16 v6, -0x1

    .line 69
    .local v6, "presentationTimeUs":J
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 70
    .local v1, "format":Landroid/media/MediaFormat;
    iget-object v9, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    monitor-enter v9

    .line 71
    :try_start_1f
    sget-boolean v8, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v8, :cond_47

    const-string v8, "EncodedDataWriteTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ADD TRACK ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "): E"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_47
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v8, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v8

    iput v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxerIndex:I

    .line 73
    sget-boolean v8, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v8, :cond_77

    const-string v8, "EncodedDataWriteTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ADD TRACK ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "): X"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_77
    monitor-exit v9
    :try_end_78
    .catchall {:try_start_1f .. :try_end_78} :catchall_e1

    .line 76
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    if-eqz v8, :cond_81

    .line 77
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    invoke-interface {v8, v1}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;->onEncoderFormatChanged(Landroid/media/MediaFormat;)V

    .line 80
    :cond_81
    :goto_81
    invoke-static {}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->canceled()Z

    move-result v8

    if-nez v8, :cond_d6

    .line 81
    const/4 v4, 0x0

    .line 84
    .local v4, "outputBufferIndex":I
    :try_start_88
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    const-wide/32 v10, 0x5f5e100

    invoke-virtual {v8, v2, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    :try_end_90
    .catch Ljava/lang/IllegalStateException; {:try_start_88 .. :try_end_90} :catch_e4

    move-result v4

    .line 95
    const/4 v8, -0x1

    if-ne v4, v8, :cond_fe

    .line 96
    sget-boolean v8, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v8, :cond_b2

    const-string v8, "EncodedDataWriteTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " INFO_TRY_AGAIN_LATER"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_b2
    invoke-static {}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->canceled()Z

    move-result v8

    if-eqz v8, :cond_81

    .line 98
    sget-boolean v8, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v8, :cond_d6

    const-string v8, "EncodedDataWriteTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " CANCELED"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local v4    # "outputBufferIndex":I
    :cond_d6
    :goto_d6
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    if-eqz v8, :cond_8

    .line 203
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    invoke-interface {v8}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;->onEncoderFinished()V

    goto/16 :goto_8

    .line 74
    :catchall_e1
    move-exception v8

    :try_start_e2
    monitor-exit v9
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    throw v8

    .line 87
    .restart local v4    # "outputBufferIndex":I
    :catch_e4
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v8, "EncodedDataWriteTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " occurred. Maybe camera server is dead."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d6

    .line 105
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_fe
    if-ltz v4, :cond_322

    .line 106
    invoke-static {}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->canceled()Z

    move-result v8

    if-eqz v8, :cond_10c

    .line 108
    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 111
    :cond_10c
    sget-boolean v8, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v8, :cond_142

    const-string v8, "EncodedDataWriteTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " PULL SAMPLE DATA"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " presentationTime:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " flag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_142
    aget-object v3, v5, v4

    .line 116
    .local v3, "outbuffer":Ljava/nio/ByteBuffer;
    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_175

    .line 179
    :cond_14a
    :goto_14a
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8, v4, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 181
    invoke-static {}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->canceled()Z

    move-result v8

    if-eqz v8, :cond_2fc

    .line 182
    sget-boolean v8, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v8, :cond_d6

    const-string v8, "EncodedDataWriteTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " CANCELED"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d6

    .line 122
    :cond_175
    iget-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mFirstFramePresentationTimeUs:J

    sub-long/2addr v8, v10

    cmp-long v8, v6, v8

    if-gez v8, :cond_25b

    .line 125
    iget-boolean v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mIsFirstFrameArrived:Z

    if-nez v8, :cond_1ad

    .line 126
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mIsFirstFrameArrived:Z

    .line 127
    iget-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mFirstFramePresentationTimeUs:J

    .line 128
    sget-boolean v8, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v8, :cond_1ad

    const-string v8, "EncodedDataWriteTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " First frame is arrived:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mFirstFramePresentationTimeUs:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1ad
    iget-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mFirstFramePresentationTimeUs:J

    sub-long/2addr v8, v10

    iput-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 135
    sget-boolean v8, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v8, :cond_210

    const-string v8, "EncodedDataWriteTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " WRITE SAMPLE DATA"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " presentationTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " flag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " offset: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " outbuffer: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 140
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 135
    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_210
    :try_start_210
    iget-object v9, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    monitor-enter v9
    :try_end_213
    .catch Ljava/lang/IllegalStateException; {:try_start_210 .. :try_end_213} :catch_22e

    .line 144
    :try_start_213
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    iget v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxerIndex:I

    invoke-virtual {v8, v10, v3, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 145
    monitor-exit v9
    :try_end_21b
    .catchall {:try_start_213 .. :try_end_21b} :catchall_22b

    .line 151
    :goto_21b
    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 152
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    if-eqz v8, :cond_14a

    .line 153
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    iget v9, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v10, v9

    invoke-interface {v8, v6, v7, v10, v11}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;->onEncodedDataWritten(JJ)V

    goto/16 :goto_14a

    .line 145
    :catchall_22b
    move-exception v8

    :try_start_22c
    monitor-exit v9
    :try_end_22d
    .catchall {:try_start_22c .. :try_end_22d} :catchall_22b

    :try_start_22d
    throw v8
    :try_end_22e
    .catch Ljava/lang/IllegalStateException; {:try_start_22d .. :try_end_22e} :catch_22e

    .line 146
    :catch_22e
    move-exception v0

    .line 148
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    sget-boolean v8, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v8, :cond_255

    const-string v8, "EncodedDataWriteTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " IllegalStateException"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_255
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    invoke-interface {v8}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;->onStorageFull()V

    goto :goto_21b

    .line 156
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_25b
    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-ne v8, v13, :cond_14a

    .line 157
    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    iput-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 158
    iput v12, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 160
    sget-boolean v8, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v8, :cond_2c2

    const-string v8, "EncodedDataWriteTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " WRITE SAMPLE DATA"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " presentationTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " flag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " offset: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " outbuffer: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 165
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 160
    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_2c2
    :try_start_2c2
    iget-object v9, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    monitor-enter v9
    :try_end_2c5
    .catch Ljava/lang/IllegalStateException; {:try_start_2c2 .. :try_end_2c5} :catch_2d4

    .line 169
    :try_start_2c5
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    iget v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxerIndex:I

    invoke-virtual {v8, v10, v3, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 170
    monitor-exit v9
    :try_end_2cd
    .catchall {:try_start_2c5 .. :try_end_2cd} :catchall_2d1

    .line 176
    :cond_2cd
    :goto_2cd
    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto/16 :goto_14a

    .line 170
    :catchall_2d1
    move-exception v8

    :try_start_2d2
    monitor-exit v9
    :try_end_2d3
    .catchall {:try_start_2d2 .. :try_end_2d3} :catchall_2d1

    :try_start_2d3
    throw v8
    :try_end_2d4
    .catch Ljava/lang/IllegalStateException; {:try_start_2d3 .. :try_end_2d4} :catch_2d4

    .line 171
    :catch_2d4
    move-exception v0

    .line 173
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    sget-boolean v8, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v8, :cond_2cd

    const-string v8, "EncodedDataWriteTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " IllegalStateException at BUFFER_FLAG_END_OF_STREAM"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 174
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 173
    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2cd

    .line 186
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2fc
    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-ne v8, v13, :cond_81

    .line 188
    sget-boolean v8, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v8, :cond_d6

    const-string v8, "EncodedDataWriteTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " BUFFER_FLAG_END_OF_STREAM"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d6

    .line 193
    .end local v3    # "outbuffer":Ljava/nio/ByteBuffer;
    :cond_322
    const/4 v8, -0x3

    if-ne v4, v8, :cond_34b

    .line 194
    sget-boolean v8, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v8, :cond_343

    const-string v8, "EncodedDataWriteTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_343
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    goto/16 :goto_81

    .line 197
    :cond_34b
    const/4 v8, -0x2

    if-ne v4, v8, :cond_81

    .line 198
    sget-boolean v8, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TRACE:Z

    if-eqz v8, :cond_81

    const-string v8, "EncodedDataWriteTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " INFO_OUTPUT_FORMAT_CHANGED"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_81
.end method
