.class public Lcom/sonymobile/cameracommon/memorybuffer/LockByteArrayRing;
.super Ljava/lang/Object;
.source "LockByteArrayRing.java"


# instance fields
.field private final mByteArrays:[Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;

.field private mCurrentIndex:I


# direct methods
.method public constructor <init>(IILcom/sonymobile/cameracommon/memorybuffer/LockByteArray$LockByteChangedListener;)V
    .registers 7
    .param p1, "numberOfBuffer"    # I
    .param p2, "lengthOfOneBuffer"    # I
    .param p3, "listener"    # Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray$LockByteChangedListener;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArrayRing;->mCurrentIndex:I

    .line 23
    new-array v1, p1, [Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;

    iput-object v1, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArrayRing;->mByteArrays:[Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, p1, :cond_19

    .line 27
    iget-object v1, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArrayRing;->mByteArrays:[Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;

    new-instance v2, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;

    invoke-direct {v2, p2, p3}, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;-><init>(ILcom/sonymobile/cameracommon/memorybuffer/LockByteArray$LockByteChangedListener;)V

    aput-object v2, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 29
    :cond_19
    return-void
.end method

.method private getNextIndex()I
    .registers 3

    .prologue
    .line 46
    iget v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArrayRing;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArrayRing;->mByteArrays:[Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public declared-synchronized findByByteArray([B)Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;
    .registers 7
    .param p1, "byteArray"    # [B

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArrayRing;->mByteArrays:[Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 51
    .local v0, "lba":Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;
    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;->isHoldingTheArray([B)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    move-result v4

    if-eqz v4, :cond_11

    .line 55
    .end local v0    # "lba":Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;
    :goto_f
    monitor-exit p0

    return-object v0

    .line 50
    .restart local v0    # "lba":Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 55
    .end local v0    # "lba":Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;
    :cond_14
    const/4 v0, 0x0

    goto :goto_f

    .line 50
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCurrent()Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;
    .registers 3

    .prologue
    .line 32
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArrayRing;->mByteArrays:[Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;

    iget v1, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArrayRing;->mCurrentIndex:I

    aget-object v0, v0, v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNext()Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;
    .registers 3

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArrayRing;->mByteArrays:[Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArrayRing;->getNextIndex()I

    move-result v1

    aget-object v0, v0, v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized increment()V
    .registers 2

    .prologue
    .line 42
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArrayRing;->getNextIndex()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArrayRing;->mCurrentIndex:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
