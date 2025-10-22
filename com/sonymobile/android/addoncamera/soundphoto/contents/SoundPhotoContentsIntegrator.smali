.class public Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;
.super Ljava/lang/Object;
.source "SoundPhotoContentsIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;,
        Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;,
        Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$AudioEncodeTask;,
        Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;
    }
.end annotation


# static fields
.field private static final EXPANDED_SPACE_LENGTH_FOR_SPF:I = 0x1400

.field private static final PROCESSING_TASK_NUMBER_LIMIT:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final YUV2JPEG_TASK_NUMBER_LIMIT:I = 0x3

.field private static sDebugIdGen:I

.field private static final sIsDebugFormat:Z


# instance fields
.field private final mAudioEncodeTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mMainTaskRunner:Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->TAG:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->sDebugIdGen:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;

    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->mMainTaskRunner:Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;

    .line 69
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->mAudioEncodeTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 82
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$104()I
    .registers 1

    .prologue
    .line 52
    sget v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->sDebugIdGen:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->sDebugIdGen:I

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->mMainTaskRunner:Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->mAudioEncodeTaskExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$500([B)[B
    .registers 2
    .param p0, "x0"    # [B

    .prologue
    .line 52
    invoke-static {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->makeMpf([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;[BJILandroid/location/Location;)[B
    .registers 8
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;
    .param p1, "x1"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;
    .param p2, "x2"    # [B
    .param p3, "x3"    # J
    .param p5, "x4"    # I
    .param p6, "x5"    # Landroid/location/Location;

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->makeMpf(Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;[BJILandroid/location/Location;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700([B[BJ)[B
    .registers 6
    .param p0, "x0"    # [B
    .param p1, "x1"    # [B
    .param p2, "x2"    # J

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->makeSpf([B[BJ)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createWorkBuffers(II)Ljava/util/concurrent/BlockingQueue;
    .registers 15
    .param p1, "length"    # I
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 558
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 559
    .local v4, "used":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v8

    const-wide/16 v10, 0x7

    mul-long/2addr v8, v10

    const-wide/16 v10, 0xa

    div-long/2addr v8, v10

    sub-long v2, v8, v4

    .line 560
    .local v2, "remain":J
    const/4 v7, 0x1

    int-to-long v8, p1

    div-long v8, v2, v8

    long-to-int v8, v8

    invoke-static {p2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 562
    .local v6, "workBufferCount":I
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 563
    .local v1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<[B>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_35
    if-ge v0, v6, :cond_3f

    .line 564
    new-array v7, p1, [B

    invoke-interface {v1, v7}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 567
    :cond_3f
    return-object v1
.end method

.method private dumpMemoryUsage(Ljava/lang/String;)V
    .registers 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 611
    return-void
.end method

.method private makeMpf(Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;[BJILandroid/location/Location;)[B
    .registers 26
    .param p1, "previewFrames"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;
    .param p2, "pictureData"    # [B
    .param p3, "timeStamp"    # J
    .param p5, "orientation"    # I
    .param p6, "location"    # Landroid/location/Location;

    .prologue
    .line 465
    const/4 v12, 0x0

    .line 467
    .local v12, "workBuffers":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<[B>;"
    :try_start_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->width:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->height:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xc

    div-int/lit8 v4, v4, 0x8

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->createWorkBuffers(II)Ljava/util/concurrent/BlockingQueue;
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_14} :catch_80

    move-result-object v12

    .line 476
    :try_start_15
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->images:Ljava/util/List;

    .line 477
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    .line 476
    invoke-static {v4, v5}, Lcom/sonymobile/cameracommon/mpolib/MpoWriter;->startCombineJpegToMpo(IZ)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_23} :catch_84

    .line 488
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getExifByteOrder([B)Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    move-result-object v10

    .line 489
    .local v10, "exifByteOrder":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;
    new-instance v3, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->width:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->height:I

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v3 .. v10}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;-><init>(JILandroid/location/Location;IILcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;)V

    .line 499
    .local v3, "exifInfo":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;
    :try_start_3a
    new-instance v9, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget v8, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->width:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->height:I

    invoke-direct {v9, v4, v5, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 500
    .local v9, "imageRect":Landroid/graphics/Rect;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v14, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<[B>;>;"
    invoke-interface {v12}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    .line 501
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v18

    .line 505
    .local v18, "mpoMakeTaskExecutor":Ljava/util/concurrent/ExecutorService;
    const/4 v6, 0x0

    .line 506
    .local v6, "iCnt":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->images:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    .line 507
    .local v7, "frame":Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    new-instance v5, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;

    add-int/lit8 v15, v6, 0x1

    .end local v6    # "iCnt":I
    .local v15, "iCnt":I
    move-object/from16 v8, p1

    move-object v11, v3

    invoke-direct/range {v5 .. v12}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;-><init>(ILcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;Landroid/graphics/Rect;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;Ljava/util/concurrent/BlockingQueue;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v15

    .line 515
    .end local v15    # "iCnt":I
    .restart local v6    # "iCnt":I
    goto :goto_5f

    .line 470
    .end local v3    # "exifInfo":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;
    .end local v6    # "iCnt":I
    .end local v7    # "frame":Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    .end local v9    # "imageRect":Landroid/graphics/Rect;
    .end local v10    # "exifByteOrder":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;
    .end local v14    # "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<[B>;>;"
    .end local v18    # "mpoMakeTaskExecutor":Ljava/util/concurrent/ExecutorService;
    :catch_80
    move-exception v2

    .line 472
    .local v2, "e":Ljava/lang/InterruptedException;
    const/16 v17, 0x0

    .line 549
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_83
    return-object v17

    .line 479
    :catch_84
    move-exception v2

    .line 481
    .local v2, "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    goto :goto_83

    .line 517
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "exifInfo":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;
    .restart local v6    # "iCnt":I
    .restart local v9    # "imageRect":Landroid/graphics/Rect;
    .restart local v10    # "exifByteOrder":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;
    .restart local v14    # "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<[B>;>;"
    .restart local v18    # "mpoMakeTaskExecutor":Ljava/util/concurrent/ExecutorService;
    :cond_88
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8c
    :goto_8c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ab

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/concurrent/Future;
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_98} :catch_bb
    .catchall {:try_start_3a .. :try_end_98} :catchall_c2

    .line 519
    .local v13, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<[B>;"
    :try_start_98
    invoke-interface {v13}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [B

    .line 520
    .local v16, "jpegData":[B
    if-eqz v16, :cond_8c

    .line 521
    move-object/from16 v0, v16

    array-length v5, v0

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/sonymobile/cameracommon/mpolib/MpoWriter;->addCombineJpegData([BI)V
    :try_end_a8
    .catch Ljava/lang/InterruptedException; {:try_start_98 .. :try_end_a8} :catch_a9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_98 .. :try_end_a8} :catch_c7
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a8} :catch_bb
    .catchall {:try_start_98 .. :try_end_a8} :catchall_c2

    goto :goto_8c

    .line 524
    .end local v16    # "jpegData":[B
    :catch_a9
    move-exception v5

    goto :goto_8c

    .line 535
    .end local v13    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<[B>;"
    :cond_ab
    :try_start_ab
    move-object/from16 v0, p2

    array-length v4, v0

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/sonymobile/cameracommon/mpolib/MpoWriter;->addCombineJpegData([BI)V

    .line 538
    invoke-static {}, Lcom/sonymobile/cameracommon/mpolib/MpoWriter;->getOutputData()[B
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b6} :catch_bb
    .catchall {:try_start_ab .. :try_end_b6} :catchall_c2

    move-result-object v17

    .line 546
    .local v17, "mpoData":[B
    invoke-static {}, Lcom/sonymobile/cameracommon/mpolib/MpoWriter;->endCombineJpegToMpo()V

    goto :goto_83

    .line 543
    .end local v6    # "iCnt":I
    .end local v9    # "imageRect":Landroid/graphics/Rect;
    .end local v14    # "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<[B>;>;"
    .end local v17    # "mpoData":[B
    .end local v18    # "mpoMakeTaskExecutor":Ljava/util/concurrent/ExecutorService;
    :catch_bb
    move-exception v4

    .line 546
    invoke-static {}, Lcom/sonymobile/cameracommon/mpolib/MpoWriter;->endCombineJpegToMpo()V

    .line 549
    const/16 v17, 0x0

    goto :goto_83

    .line 546
    :catchall_c2
    move-exception v4

    invoke-static {}, Lcom/sonymobile/cameracommon/mpolib/MpoWriter;->endCombineJpegToMpo()V

    throw v4

    .line 527
    .restart local v6    # "iCnt":I
    .restart local v9    # "imageRect":Landroid/graphics/Rect;
    .restart local v13    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<[B>;"
    .restart local v14    # "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<[B>;>;"
    .restart local v18    # "mpoMakeTaskExecutor":Ljava/util/concurrent/ExecutorService;
    :catch_c7
    move-exception v5

    goto :goto_8c
.end method

.method private static makeMpf([B)[B
    .registers 5
    .param p0, "pictureData"    # [B

    .prologue
    const/4 v1, 0x0

    .line 579
    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_3
    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/mpolib/MpoWriter;->startCombineJpegToMpo(IZ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_12

    .line 587
    :try_start_6
    array-length v2, p0

    invoke-static {p0, v2}, Lcom/sonymobile/cameracommon/mpolib/MpoWriter;->addCombineJpegData([BI)V

    .line 590
    invoke-static {}, Lcom/sonymobile/cameracommon/mpolib/MpoWriter;->getOutputData()[B
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_14
    .catchall {:try_start_6 .. :try_end_d} :catchall_19

    move-result-object v1

    .line 598
    .local v1, "mpoData":[B
    invoke-static {}, Lcom/sonymobile/cameracommon/mpolib/MpoWriter;->endCombineJpegToMpo()V

    .line 601
    .end local v1    # "mpoData":[B
    :goto_11
    return-object v1

    .line 580
    :catch_12
    move-exception v0

    .line 582
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_11

    .line 595
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_14
    move-exception v2

    .line 598
    invoke-static {}, Lcom/sonymobile/cameracommon/mpolib/MpoWriter;->endCombineJpegToMpo()V

    goto :goto_11

    :catchall_19
    move-exception v2

    invoke-static {}, Lcom/sonymobile/cameracommon/mpolib/MpoWriter;->endCombineJpegToMpo()V

    throw v2
.end method

.method private static makeSpf([B[BJ)[B
    .registers 12
    .param p0, "imageData"    # [B
    .param p1, "audioData"    # [B
    .param p2, "audioDuration"    # J

    .prologue
    const/4 v3, 0x0

    .line 318
    array-length v5, p0

    array-length v6, p1

    add-int/2addr v5, v6

    add-int/lit16 v5, v5, 0x1400

    invoke-static {v5}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->allocate(I)Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    move-result-object v0

    .line 320
    .local v0, "imageDataBuffer":Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->get()Ljava/nio/ByteBuffer;

    move-result-object v5

    if-nez v5, :cond_11

    .line 352
    :goto_10
    return-object v3

    .line 325
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->get()Ljava/nio/ByteBuffer;

    move-result-object v5

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 326
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->get()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 327
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->get()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 329
    long-to-int v5, p2

    add-int/lit16 v2, v5, -0x7d0

    .line 331
    .local v2, "preDuration":I
    new-instance v1, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;-><init>()V

    .line 332
    .local v1, "metaData":Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;
    long-to-int v5, p2

    invoke-virtual {v1, v5}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->setDuration(I)V

    .line 333
    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->setPreDuration(I)V

    .line 334
    sget-object v5, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;->NONE:Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    invoke-virtual {v1, v5}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->setShutterSoundStatus(Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;)V

    .line 337
    new-instance v4, Lcom/sonymobile/cameracommon/spflib/SpfEditor;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->get()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;-><init>(Ljava/nio/ByteBuffer;)V

    .line 338
    .local v4, "spf":Lcom/sonymobile/cameracommon/spflib/SpfEditor;
    sget-object v5, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;->AAC:Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    invoke-virtual {v4, v5, v1, p1}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->addSoundData(Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;[B)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 339
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->get()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    new-array v3, v5, [B

    .line 340
    .local v3, "result":[B
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->get()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 341
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->get()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 342
    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->release()V
    :try_end_6c
    .catchall {:try_start_11 .. :try_end_6c} :catchall_77

    .line 352
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->decrementRefCount()V

    goto :goto_10

    .line 346
    .end local v3    # "result":[B
    :cond_70
    :try_start_70
    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->release()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_77

    .line 352
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->decrementRefCount()V

    goto :goto_10

    .end local v1    # "metaData":Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;
    .end local v2    # "preDuration":I
    .end local v4    # "spf":Lcom/sonymobile/cameracommon/spflib/SpfEditor;
    :catchall_77
    move-exception v5

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->decrementRefCount()V

    throw v5
.end method


# virtual methods
.method public canCreateNewContent()Z
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->mMainTaskRunner:Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->getTaskCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public cancelAll()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->mMainTaskRunner:Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->cancelAll()V

    .line 88
    return-void
.end method

.method public createContent(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;
    .registers 10
    .param p1, "audio"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;
    .param p2, "previewFramesData"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;
    .param p3, "pictureData"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 59
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$1;)V

    return-object v0
.end method
