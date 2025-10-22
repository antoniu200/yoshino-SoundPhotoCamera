.class public Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSource;
.super Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;
.source "AudioSampleDataSource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioSampleDataSource"


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;III)V
    .registers 5
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "sampleRate"    # I
    .param p3, "channels"    # I
    .param p4, "format"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;-><init>(Landroid/media/MediaCodec;III)V

    .line 30
    return-void
.end method


# virtual methods
.method protected pushToEncoder([BIZ)J
    .registers 20
    .param p1, "rawDataArray"    # [B
    .param p2, "rawDataBytes"    # I
    .param p3, "eos"    # Z

    .prologue
    .line 34
    const/4 v9, 0x0

    .line 35
    .local v9, "hasWrittenAll":Z
    const/4 v12, 0x0

    .line 36
    .local v12, "writtenBytes":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSource;->getCodec()Landroid/media/MediaCodec;

    move-result-object v2

    .line 38
    .local v2, "codec":Landroid/media/MediaCodec;
    :cond_6
    :goto_6
    invoke-static {}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSource;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_56

    if-nez v9, :cond_56

    .line 39
    const-wide/32 v14, 0x186a0

    invoke-virtual {v2, v14, v15}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 40
    .local v3, "inputBufferIndex":I
    if-ltz v3, :cond_6

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSource;->getSampleDataBytes()I

    move-result v4

    div-int v4, v12, v4

    int-to-long v14, v4

    .line 47
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSource;->getPresentationTime(J)J

    move-result-wide v6

    .line 50
    .local v6, "currentPresentationTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSource;->getCodec()Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 51
    .local v10, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    sub-int v13, p2, v12

    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 53
    .local v11, "requestBytes":I
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 54
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v12, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 56
    .local v5, "size":I
    add-int/2addr v12, v5

    .line 58
    move/from16 v0, p2

    if-lt v12, v0, :cond_52

    const/4 v9, 0x1

    .line 59
    :goto_48
    if-eqz v9, :cond_54

    if-eqz p3, :cond_54

    const/4 v8, 0x4

    .line 61
    .local v8, "flags":I
    :goto_4d
    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_6

    .line 58
    .end local v8    # "flags":I
    :cond_52
    const/4 v9, 0x0

    goto :goto_48

    .line 59
    :cond_54
    const/4 v8, 0x0

    goto :goto_4d

    .line 68
    .end local v3    # "inputBufferIndex":I
    .end local v5    # "size":I
    .end local v6    # "currentPresentationTime":J
    .end local v10    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "requestBytes":I
    :cond_56
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSource;->getSampleDataBytes()I

    move-result v4

    div-int v4, v12, v4

    int-to-long v14, v4

    return-wide v14
.end method
