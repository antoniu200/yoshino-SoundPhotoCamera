.class public Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;
.super Ljava/lang/Object;
.source "VideoWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;,
        Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;
    }
.end annotation


# static fields
.field private static final AUDIO_FORMAT:I = 0x2

.field private static final AUDIO_MIMETYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final ENABLE_MONITOR_FPS:Z = false

.field private static final I_FRAME_INTERVAL:I = 0x1

.field public static final TAG:Ljava/lang/String; = "VideoWriter"

.field private static final VIDEO_MIMETYPE:Ljava/lang/String; = "video/avc"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

.field private mEncoder:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

.field private final mFpsMonitor:Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;

.field private final mHandler:Landroid/os/Handler;

.field private mIsRunning:Z

.field private final mListener:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;

.field private mOutputPath:Ljava/lang/String;

.field private mReferenceClock:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mContext:Landroid/content/Context;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mIsRunning:Z

    .line 88
    iput-object p2, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mListener:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;

    .line 90
    new-instance v0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mFpsMonitor:Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mReferenceClock:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mListener:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mOutputPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEncoder:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    return-object v0
.end method

.method private createAudioFormat(Ljava/lang/String;Landroid/media/CamcorderProfile;)Landroid/media/MediaFormat;
    .registers 6
    .param p1, "mimetype"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/CamcorderProfile;

    .prologue
    .line 262
    iget v1, p2, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iget v2, p2, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-static {p1, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 266
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "bitrate"

    iget v2, p2, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 268
    const-string v1, "aac-profile"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 271
    return-object v0
.end method

.method private createAudioInputStreamInfo(Landroid/media/CamcorderProfile;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    .registers 8
    .param p1, "profile"    # Landroid/media/CamcorderProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 287
    const-string v3, "audio/mp4a-latm"

    invoke-direct {p0, v3, p1}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->createAudioFormat(Ljava/lang/String;Landroid/media/CamcorderProfile;)Landroid/media/MediaFormat;

    move-result-object v1

    .line 288
    .local v1, "format":Landroid/media/MediaFormat;
    const-string v3, "audio/mp4a-latm"

    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 289
    .local v0, "codec":Landroid/media/MediaCodec;
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 291
    new-instance v2, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSource;

    const-string v3, "sample-rate"

    .line 293
    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const-string v4, "channel-count"

    .line 294
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSource;-><init>(Landroid/media/MediaCodec;III)V

    .line 297
    .local v2, "source":Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSource;
    invoke-static {v1, v0, v2}, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    move-result-object v3

    return-object v3
.end method

.method private createVideoFormat(Ljava/lang/String;Landroid/media/CamcorderProfile;)Landroid/media/MediaFormat;
    .registers 8
    .param p1, "mimetype"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/CamcorderProfile;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 223
    iget v1, p2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v2, p2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {p1, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 227
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 229
    const-string v1, "bitrate"

    iget v2, p2, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 230
    const-string v1, "frame-rate"

    iget v2, p2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 232
    const-string v1, "i-frame-interval"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 234
    iget v1, p2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0xf00

    if-lt v1, v2, :cond_4d

    iget v1, p2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v2, 0x870

    if-lt v1, v2, :cond_4d

    .line 235
    iget v1, p2, Landroid/media/CamcorderProfile;->videoCodec:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_42

    .line 236
    const-string v1, "profile"

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 238
    const-string v1, "level"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 258
    :goto_41
    return-object v0

    .line 241
    :cond_42
    const-string v1, "profile"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 243
    const-string v1, "level"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_41

    .line 246
    :cond_4d
    iget v1, p2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x280

    if-lt v1, v2, :cond_64

    iget v1, p2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v2, 0x1e0

    if-lt v1, v2, :cond_64

    .line 247
    const-string v1, "profile"

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 249
    const-string v1, "level"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_41

    .line 252
    :cond_64
    const-string v1, "profile"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 254
    const-string v1, "level"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_41
.end method

.method private createVideoInputStreamInfo(Landroid/media/CamcorderProfile;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    .registers 7
    .param p1, "profile"    # Landroid/media/CamcorderProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 276
    const-string v3, "video/avc"

    invoke-direct {p0, v3, p1}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->createVideoFormat(Ljava/lang/String;Landroid/media/CamcorderProfile;)Landroid/media/MediaFormat;

    move-result-object v1

    .line 277
    .local v1, "format":Landroid/media/MediaFormat;
    const-string v3, "video/avc"

    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 278
    .local v0, "codec":Landroid/media/MediaCodec;
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 279
    new-instance v2, Lcom/sonymobile/cameracommon/media/encoder/source/VideoFrameSource;

    invoke-direct {v2, v0}, Lcom/sonymobile/cameracommon/media/encoder/source/VideoFrameSource;-><init>(Landroid/media/MediaCodec;)V

    .line 280
    .local v2, "source":Lcom/sonymobile/cameracommon/media/encoder/source/VideoFrameSource;
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/source/VideoFrameSource;->createInputSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->onSurfaceTextureChanged(Landroid/view/Surface;)V

    .line 282
    invoke-static {v1, v0, v2}, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    move-result-object v3

    return-object v3
.end method

.method private startEncode(Ljava/lang/String;ILandroid/location/Location;ZLandroid/media/CamcorderProfile;Ljavax/microedition/khronos/egl/EGLContext;Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;)V
    .registers 20
    .param p1, "outputPath"    # Ljava/lang/String;
    .param p2, "orientationHint"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "isMicrophoneEnabled"    # Z
    .param p5, "profile"    # Landroid/media/CamcorderProfile;
    .param p6, "sharedEglContext"    # Ljavax/microedition/khronos/egl/EGLContext;
    .param p7, "encodeStateListener"    # Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 145
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8

    .line 148
    :cond_c
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mOutputPath:Ljava/lang/String;

    .line 151
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mOutputPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v8

    sget-object v9, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    if-ne v8, v9, :cond_b2

    .line 153
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getSdCardGrantedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    .line 154
    .local v6, "parentUri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mOutputPath:Ljava/lang/String;

    .line 155
    invoke-static {v6, v9}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathAfterDcim(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 154
    invoke-static {v8, v6, v9}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 157
    .local v3, "fileUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 159
    .local v7, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_2d
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "rw"

    invoke-virtual {v8, v3, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_38} :catch_4a

    move-result-object v7

    .line 164
    if-nez v7, :cond_58

    .line 165
    const-string v8, "VideoWriter"

    const-string v9, "openFileDescriptor fd is null."

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "openFileDescriptor fd is null."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 160
    :catch_4a
    move-exception v2

    .line 161
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v8, "VideoWriter"

    const-string v9, "openFileDescriptor failed."

    invoke-static {v8, v9, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 169
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_58
    new-instance v5, Landroid/media/MediaMuxer;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    .line 173
    .end local v3    # "fileUri":Landroid/net/Uri;
    .end local v6    # "parentUri":Landroid/net/Uri;
    .end local v7    # "pfd":Landroid/os/ParcelFileDescriptor;
    .local v5, "muxer":Landroid/media/MediaMuxer;
    :goto_62
    invoke-virtual {v5, p2}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 174
    if-eqz p3, :cond_74

    .line 175
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    double-to-float v9, v10

    invoke-virtual {v5, v8, v9}, Landroid/media/MediaMuxer;->setLocation(FF)V

    .line 180
    :cond_74
    new-instance v8, Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-direct {v8}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;-><init>()V

    iput-object v8, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    .line 181
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    new-instance v9, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;

    invoke-direct {v9}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;-><init>()V

    sget-object v10, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->OPEN_GL_ES_20:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v10, v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->initialize(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 187
    if-eqz p4, :cond_b9

    .line 188
    const/4 v8, 0x2

    new-array v4, v8, [Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    const/4 v8, 0x0

    .line 189
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->createVideoInputStreamInfo(Landroid/media/CamcorderProfile;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    .line 190
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->createAudioInputStreamInfo(Landroid/media/CamcorderProfile;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    move-result-object v9

    aput-object v9, v4, v8

    .line 197
    .local v4, "inputs":[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :goto_a0
    new-instance v8, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    move-object/from16 v0, p7

    invoke-direct {v8, v4, v5, v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;-><init>([Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;Landroid/media/MediaMuxer;Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;)V

    iput-object v8, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEncoder:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    .line 199
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mIsRunning:Z

    .line 200
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEncoder:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v8}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->start()V

    .line 202
    return-void

    .line 171
    .end local v4    # "inputs":[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    .end local v5    # "muxer":Landroid/media/MediaMuxer;
    :cond_b2
    new-instance v5, Landroid/media/MediaMuxer;

    const/4 v8, 0x0

    invoke-direct {v5, p1, v8}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .restart local v5    # "muxer":Landroid/media/MediaMuxer;
    goto :goto_62

    .line 193
    :cond_b9
    const/4 v8, 0x1

    new-array v4, v8, [Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    const/4 v8, 0x0

    .line 194
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->createVideoInputStreamInfo(Landroid/media/CamcorderProfile;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    move-result-object v9

    aput-object v9, v4, v8

    .restart local v4    # "inputs":[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    goto :goto_a0
.end method


# virtual methods
.method public elapsedTimeMillis()J
    .registers 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mReferenceClock:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->elapsedTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEglController()Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    return-object v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mIsRunning:Z

    return v0
.end method

.method public start(Ljava/lang/String;ILandroid/location/Location;ZLandroid/media/CamcorderProfile;Ljavax/microedition/khronos/egl/EGLContext;)V
    .registers 15
    .param p1, "outputPath"    # Ljava/lang/String;
    .param p2, "orientationHint"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "isMicrophoneEnabled"    # Z
    .param p5, "profile"    # Landroid/media/CamcorderProfile;
    .param p6, "sharedEglContext"    # Ljavax/microedition/khronos/egl/EGLContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v7, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;

    invoke-direct {v7, p0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;-><init>(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->startEncode(Ljava/lang/String;ILandroid/location/Location;ZLandroid/media/CamcorderProfile;Ljavax/microedition/khronos/egl/EGLContext;Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;)V

    .line 111
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mReferenceClock:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->start()V

    .line 112
    return-void
.end method

.method public start(Ljava/lang/String;ILandroid/location/Location;ZLandroid/media/CamcorderProfile;Ljavax/microedition/khronos/egl/EGLContext;JJ)V
    .registers 20
    .param p1, "outputPath"    # Ljava/lang/String;
    .param p2, "orientationHint"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "isMicrophoneEnabled"    # Z
    .param p5, "profile"    # Landroid/media/CamcorderProfile;
    .param p6, "sharedEglContext"    # Ljavax/microedition/khronos/egl/EGLContext;
    .param p7, "maxDurationMills"    # J
    .param p9, "maxFileSizeBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;

    move-object v1, p0

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;-><init>(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;JJ)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->startEncode(Ljava/lang/String;ILandroid/location/Location;ZLandroid/media/CamcorderProfile;Ljavax/microedition/khronos/egl/EGLContext;Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;)V

    .line 131
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mReferenceClock:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->start()V

    .line 132
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 207
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEncoder:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->stop()V

    .line 209
    :cond_b
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mReferenceClock:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->stop()V

    .line 212
    return-void
.end method
