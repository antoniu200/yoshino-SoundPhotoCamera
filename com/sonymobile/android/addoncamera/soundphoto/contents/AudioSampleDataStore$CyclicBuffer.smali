.class Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;
.super Ljava/lang/Object;
.source "AudioSampleDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CyclicBuffer"
.end annotation


# instance fields
.field private final mBytes:[B

.field private mCurrentPosition:I

.field private mCurrentVolume:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mBytes:[B

    .line 455
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mCurrentPosition:I

    .line 456
    return-void
.end method

.method private computeSrcPosition(II)I
    .registers 5
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 561
    add-int v0, p1, p2

    .line 562
    .local v0, "srcPosition":I
    :goto_2
    if-gez v0, :cond_9

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mBytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_2

    .line 563
    :cond_9
    return v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 467
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mBytes:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 468
    iput v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mCurrentPosition:I

    .line 469
    iput v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mCurrentVolume:I

    .line 470
    return-void
.end method

.method public drain(Landroid/media/AudioRecord;I)V
    .registers 21
    .param p1, "audioRecord"    # Landroid/media/AudioRecord;
    .param p2, "requestBytes"    # I

    .prologue
    .line 474
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mCurrentVolume:I

    .line 476
    const/4 v2, 0x0

    .line 477
    .local v2, "drainBytes":I
    :goto_6
    move/from16 v0, p2

    if-ge v2, v0, :cond_87

    .line 478
    :try_start_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mBytes:[B

    array-length v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mCurrentPosition:I

    sub-int v5, v12, v13

    .line 479
    .local v5, "limitBytes":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mBytes:[B

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mCurrentPosition:I

    sub-int v14, p2, v2

    .line 482
    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 479
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Landroid/media/AudioRecord;->read([BII)I

    move-result v7

    .line 484
    .local v7, "readBytes":I
    packed-switch v7, :pswitch_data_88

    .line 498
    :pswitch_2c
    const-wide/16 v10, 0x0

    .line 499
    .local v10, "sum":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2f
    if-ge v4, v7, :cond_58

    .line 500
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mBytes:[B

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mCurrentPosition:I

    add-int/2addr v13, v4

    aget-byte v3, v12, v13

    .line 501
    .local v3, "first":B
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mBytes:[B

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mCurrentPosition:I

    add-int/2addr v13, v4

    add-int/lit8 v13, v13, 0x1

    aget-byte v8, v12, v13

    .line 502
    .local v8, "second":B
    and-int/lit16 v12, v8, 0xff

    shl-int/lit8 v12, v12, 0x8

    and-int/lit16 v13, v3, 0xff

    or-int/2addr v12, v13

    int-to-short v9, v12

    .line 503
    .local v9, "value":S
    int-to-long v12, v9

    int-to-long v14, v9

    mul-long/2addr v12, v14

    add-long/2addr v10, v12

    .line 499
    add-int/lit8 v4, v4, 0x2

    goto :goto_2f

    .line 505
    .end local v3    # "first":B
    .end local v8    # "second":B
    .end local v9    # "value":S
    :cond_58
    long-to-double v12, v10

    int-to-double v14, v7

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mCurrentVolume:I

    .line 508
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mCurrentPosition:I

    .line 509
    .local v6, "prevPosition":I
    add-int/2addr v2, v7

    .line 510
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mCurrentPosition:I

    add-int/2addr v12, v7

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mCurrentPosition:I

    .line 511
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mCurrentPosition:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mBytes:[B

    array-length v13, v13

    rem-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mCurrentPosition:I
    :try_end_84
    .catchall {:try_start_a .. :try_end_84} :catchall_85

    goto :goto_6

    .line 527
    .end local v4    # "i":I
    .end local v5    # "limitBytes":I
    .end local v6    # "prevPosition":I
    .end local v7    # "readBytes":I
    .end local v10    # "sum":J
    :catchall_85
    move-exception v12

    throw v12

    .line 529
    :cond_87
    :pswitch_87
    return-void

    .line 484
    :pswitch_data_88
    .packed-switch -0x3
        :pswitch_87
        :pswitch_87
        :pswitch_2c
        :pswitch_87
    .end packed-switch
.end method

.method public get(II)Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    .registers 11
    .param p1, "size"    # I
    .param p2, "offset"    # I

    .prologue
    .line 537
    invoke-static {p1}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->allocate(I)Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    move-result-object v2

    .line 538
    .local v2, "dstHolder":Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->get()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 539
    .local v1, "dst":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mBytes:[B

    .line 540
    .local v3, "src":[B
    iget v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mCurrentPosition:I

    add-int v7, p1, p2

    sub-int v4, v6, v7

    .line 542
    .local v4, "srcHead":I
    :goto_10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-ge v6, p1, :cond_30

    .line 543
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-direct {p0, v6, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->computeSrcPosition(II)I

    move-result v5

    .line 544
    .local v5, "srcPosition":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int v0, p1, v6

    .line 545
    .local v0, "copyLength":I
    add-int v6, v5, v0

    array-length v7, v3

    if-le v6, v7, :cond_2c

    .line 546
    array-length v6, v3

    sub-int v0, v6, v5

    .line 553
    :cond_2c
    invoke-virtual {v1, v3, v5, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_10

    .line 557
    .end local v0    # "copyLength":I
    .end local v5    # "srcPosition":I
    :cond_30
    return-object v2
.end method

.method public getCurrentVolume()I
    .registers 2

    .prologue
    .line 463
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mCurrentVolume:I

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$CyclicBuffer;->mBytes:[B

    array-length v0, v0

    return v0
.end method
