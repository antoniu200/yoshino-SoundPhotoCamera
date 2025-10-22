.class public Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;
.super Ljava/lang/Object;
.source "AudioData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$OnAudioCaptureFinishedListener;
    }
.end annotation


# static fields
.field private static final BITRATE:I = 0x3e800

.field private static final BYTES_COPY_BUFFER_LENGTH:I = 0x800

.field private static final MIMETYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final bitPerSample:I

.field public final channels:I

.field private final mCaptureFinishedNotifyer:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;

.field private volatile mEncodedDuration:J

.field private mOnAudioCaptureFinishedListener:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$OnAudioCaptureFinishedListener;

.field private final mPresentationTimeCalculator:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;

.field private final mSamples:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;III)V
    .registers 7
    .param p2, "sampleRate"    # I
    .param p3, "channels"    # I
    .param p4, "bitPerSample"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "data":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$2;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mPresentationTimeCalculator:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;

    .line 220
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$3;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mCaptureFinishedNotifyer:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;

    .line 68
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mSamples:Ljava/util/concurrent/BlockingQueue;

    .line 69
    iput p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->sampleRate:I

    .line 70
    iput p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->channels:I

    .line 71
    iput p4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->bitPerSample:I

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mEncodedDuration:J

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mOnAudioCaptureFinishedListener:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$OnAudioCaptureFinishedListener;

    .line 74
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;J)J
    .registers 4
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;
    .param p1, "x1"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mEncodedDuration:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$OnAudioCaptureFinishedListener;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mOnAudioCaptureFinishedListener:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$OnAudioCaptureFinishedListener;

    return-object v0
.end method

.method private createAudioInputStreamInfo(Ljava/lang/String;III)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    .registers 11
    .param p1, "mime"    # Ljava/lang/String;
    .param p2, "sampleRate"    # I
    .param p3, "channelCount"    # I
    .param p4, "bitRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 178
    invoke-static {p1, p2, p3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 179
    .local v1, "format":Landroid/media/MediaFormat;
    const-string v3, "bitrate"

    invoke-virtual {v1, v3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 181
    const-string v3, "aac-profile"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 184
    const-string v3, "audio/mp4a-latm"

    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 185
    .local v0, "codec":Landroid/media/MediaCodec;
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v5, v5, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 188
    monitor-enter p0

    .line 189
    :try_start_1b
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mOnAudioCaptureFinishedListener:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$OnAudioCaptureFinishedListener;

    if-nez v3, :cond_2e

    .line 190
    new-instance v2, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mSamples:Ljava/util/concurrent/BlockingQueue;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mPresentationTimeCalculator:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;

    invoke-direct {v2, v3, v0, v4}, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;-><init>(Ljava/util/concurrent/BlockingQueue;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;)V

    .line 201
    .local v2, "source":Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;
    :goto_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_3a

    .line 202
    invoke-static {v1, v0, v2}, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    move-result-object v3

    return-object v3

    .line 195
    .end local v2    # "source":Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;
    :cond_2e
    :try_start_2e
    new-instance v2, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mSamples:Ljava/util/concurrent/BlockingQueue;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mPresentationTimeCalculator:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mCaptureFinishedNotifyer:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;-><init>(Ljava/util/concurrent/BlockingQueue;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;)V

    .restart local v2    # "source":Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;
    goto :goto_28

    .line 201
    .end local v2    # "source":Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;
    :catchall_3a
    move-exception v3

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_3a

    throw v3
.end method

.method private fileToBytes(Ljava/lang/String;)[B
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 259
    const/4 v2, 0x0

    .line 261
    .local v2, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_44
    .catchall {:try_start_1 .. :try_end_6} :catchall_2c

    .line 262
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_6
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 263
    .local v5, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x800

    new-array v0, v6, [B

    .line 265
    .local v0, "buff":[B
    :goto_f
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 266
    .local v4, "length":I
    if-gez v4, :cond_1f

    .line 274
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_18} :catch_24
    .catchall {:try_start_6 .. :try_end_18} :catchall_41

    move-result-object v6

    .line 280
    if-eqz v3, :cond_1e

    .line 281
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_33

    .line 284
    :cond_1e
    return-object v6

    .line 269
    :cond_1f
    const/4 v6, 0x0

    :try_start_20
    invoke-virtual {v5, v0, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24
    .catchall {:try_start_20 .. :try_end_23} :catchall_41

    goto :goto_f

    .line 276
    .end local v0    # "buff":[B
    .end local v4    # "length":I
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_24
    move-exception v1

    move-object v2, v3

    .line 277
    .end local v3    # "in":Ljava/io/InputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/InputStream;
    :goto_26
    :try_start_26
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_2c

    .line 279
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_2c
    move-exception v6

    .line 280
    :goto_2d
    if-eqz v2, :cond_32

    .line 281
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3a

    .line 284
    :cond_32
    throw v6

    .line 283
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v0    # "buff":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "length":I
    .restart local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_33
    move-exception v1

    .line 284
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 283
    .end local v0    # "buff":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "length":I
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_3a
    move-exception v1

    .line 284
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 279
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_41
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_2d

    .line 276
    :catch_44
    move-exception v1

    goto :goto_26
.end method


# virtual methods
.method public clearSamples()V
    .registers 3

    .prologue
    .line 165
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mSamples:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 166
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mSamples:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    .line 167
    .local v0, "holder":Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->decrementRefCount()V

    goto :goto_0

    .line 171
    .end local v0    # "holder":Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    :cond_16
    return-void
.end method

.method public duration()J
    .registers 3

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mEncodedDuration:J

    return-wide v0
.end method

.method public makeMp4()[B
    .registers 11

    .prologue
    .line 98
    const/4 v5, 0x0

    .line 100
    .local v5, "tempFile":Ljava/io/File;
    :try_start_1
    const-string v6, "audio"

    const-string v7, ".mp4"

    invoke-static {v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 102
    new-instance v3, Landroid/media/MediaMuxer;

    .line 103
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 105
    .local v3, "muxer":Landroid/media/MediaMuxer;
    const-string v6, "audio/mp4a-latm"

    iget v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->sampleRate:I

    iget v8, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->channels:I

    const v9, 0x3e800

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->createAudioInputStreamInfo(Ljava/lang/String;III)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    move-result-object v2

    .line 111
    .local v2, "inputDataInfo":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 112
    .local v1, "finishSignal":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$1;

    invoke-direct {v4, p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$1;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;Ljava/util/concurrent/CountDownLatch;)V

    .line 135
    .local v4, "stateListener":Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;
    new-instance v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-direct {v0, v6, v3, v4}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;-><init>([Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;Landroid/media/MediaMuxer;Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;)V

    .line 139
    .local v0, "encoder":Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->start()V

    .line 141
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 144
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->fileToBytes(Ljava/lang/String;)[B
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_43} :catch_4d
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_43} :catch_58
    .catchall {:try_start_1 .. :try_end_43} :catchall_62

    move-result-object v6

    .line 151
    if-eqz v5, :cond_4c

    .line 152
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_4c

    .line 161
    .end local v0    # "encoder":Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
    .end local v1    # "finishSignal":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "inputDataInfo":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    .end local v3    # "muxer":Landroid/media/MediaMuxer;
    .end local v4    # "stateListener":Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;
    :cond_4c
    :goto_4c
    return-object v6

    .line 146
    :catch_4d
    move-exception v6

    .line 151
    if-eqz v5, :cond_56

    .line 152
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_56

    .line 161
    :cond_56
    :goto_56
    const/4 v6, 0x0

    goto :goto_4c

    .line 148
    :catch_58
    move-exception v6

    .line 151
    if-eqz v5, :cond_56

    .line 152
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_56

    goto :goto_56

    .line 151
    :catchall_62
    move-exception v6

    if-eqz v5, :cond_6b

    .line 152
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_6b

    :cond_6b
    throw v6
.end method

.method public setOnAudioCaptureFinishedListener(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$OnAudioCaptureFinishedListener;)V
    .registers 3
    .param p1, "onAudioCaptureFinishedListener"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$OnAudioCaptureFinishedListener;

    .prologue
    .line 90
    monitor-enter p0

    .line 91
    :try_start_1
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mOnAudioCaptureFinishedListener:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$OnAudioCaptureFinishedListener;

    .line 92
    monitor-exit p0

    .line 93
    return-void

    .line 92
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method
