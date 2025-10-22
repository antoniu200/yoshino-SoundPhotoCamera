.class public Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;
.super Ljava/io/OutputStream;
.source "ThreadSafeOutputStream.java"


# instance fields
.field mClosed:Z

.field private mDelegateStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "delegate"    # Ljava/io/OutputStream;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    .line 42
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mClosed:Z

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 48
    monitor-exit p0

    return-void

    .line 46
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 53
    monitor-exit p0

    return-void

    .line 52
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mClosed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-eqz v0, :cond_7

    .line 65
    :goto_5
    monitor-exit p0

    return-void

    .line 64
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_5

    .line 63
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    monitor-enter p0

    if-lez p3, :cond_7

    :try_start_3
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mClosed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_f

    if-eqz v0, :cond_9

    .line 59
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 58
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    goto :goto_7

    .line 57
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
