.class public Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;
.super Ljava/lang/Object;
.source "ByteBufferRing.java"


# instance fields
.field private mBufferList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentBufferIndex:I


# direct methods
.method public constructor <init>(IIZ)V
    .registers 7
    .param p1, "numberOfBuffer"    # I
    .param p2, "lengthOfOneBuffer"    # I
    .param p3, "isDirect"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mBufferList:Ljava/util/List;

    .line 20
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mCurrentBufferIndex:I

    .line 25
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, p1, :cond_23

    .line 28
    if-eqz p3, :cond_1e

    .line 29
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 34
    .local v0, "buf":Ljava/nio/ByteBuffer;
    :goto_16
    iget-object v2, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mBufferList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 31
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :cond_1e
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    goto :goto_16

    .line 36
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :cond_23
    return-void
.end method

.method private getNextIndex()I
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mBufferList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mCurrentBufferIndex:I

    if-gt v0, v1, :cond_e

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mCurrentBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method


# virtual methods
.method public declared-synchronized findByByteArray([B)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "byteArray"    # [B

    .prologue
    .line 61
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mBufferList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 62
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1d

    move-result-object v2

    if-ne v2, p1, :cond_7

    .line 66
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :goto_19
    monitor-exit p0

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19

    .line 61
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCurrent()Ljava/nio/ByteBuffer;
    .registers 3

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mBufferList:Ljava/util/List;

    iget v1, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mCurrentBufferIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNext()Ljava/nio/ByteBuffer;
    .registers 3

    .prologue
    .line 52
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mBufferList:Ljava/util/List;

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->getNextIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized increment()V
    .registers 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->getNextIndex()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mCurrentBufferIndex:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 58
    monitor-exit p0

    return-void

    .line 57
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 4

    .prologue
    .line 40
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mBufferList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 41
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 40
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1

    .line 43
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->mBufferList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_17

    .line 44
    monitor-exit p0

    return-void
.end method
