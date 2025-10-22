.class public Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;
.super Ljava/lang/Object;
.source "LockByteArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray$LockByteChangedListener;
    }
.end annotation


# instance fields
.field private final mByteArray:[B

.field private mIsLocked:Z

.field private final mListener:Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray$LockByteChangedListener;


# direct methods
.method public constructor <init>(ILcom/sonymobile/cameracommon/memorybuffer/LockByteArray$LockByteChangedListener;)V
    .registers 4
    .param p1, "length"    # I
    .param p2, "listener"    # Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray$LockByteChangedListener;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;->mByteArray:[B

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;->mIsLocked:Z

    .line 29
    iput-object p2, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;->mListener:Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray$LockByteChangedListener;

    .line 30
    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;->mByteArray:[B

    return-object v0
.end method

.method public declared-synchronized getByteArrayAndLock()[B
    .registers 2

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;->mIsLocked:Z

    if-nez v0, :cond_c

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;->mIsLocked:Z

    .line 46
    iget-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;->mByteArray:[B
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    .line 48
    :goto_a
    monitor-exit p0

    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 44
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isHoldingTheArray([B)Z
    .registers 3
    .param p1, "byteArrays"    # [B

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;->mByteArray:[B

    if-ne v0, p1, :cond_6

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public declared-synchronized isLocked()Z
    .registers 2

    .prologue
    .line 33
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;->mIsLocked:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unlock()V
    .registers 2

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;->mIsLocked:Z

    if-eqz v0, :cond_d

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;->mIsLocked:Z

    .line 39
    iget-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray;->mListener:Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray$LockByteChangedListener;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/memorybuffer/LockByteArray$LockByteChangedListener;->unlocked()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 41
    :cond_d
    monitor-exit p0

    return-void

    .line 37
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
