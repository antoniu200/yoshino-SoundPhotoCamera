.class public Lcom/sonymobile/cameracommon/mpolib/MpoReader;
.super Ljava/lang/Object;
.source "MpoReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/mpolib/MpoReader$MpoFormatException;
    }
.end annotation


# instance fields
.field private final mCppObjId:J

.field private mIsClosed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "mpo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method private constructor <init>(J)V
    .registers 4
    .param p1, "cppObjId"    # J

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Lcom/sonymobile/cameracommon/mpolib/MpoReader;->mCppObjId:J

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/mpolib/MpoReader;->mIsClosed:Z

    .line 65
    return-void
.end method

.method private native native_getExtractJpegNum()I
.end method

.method private native native_getJpegDataLength(I)I
.end method

.method private native native_getRepresentativeImageIndex()I
.end method

.method private static native native_openMpoFile(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/cameracommon/mpolib/MpoReader$MpoFormatException;
        }
    .end annotation
.end method

.method public static openMpoFile(Ljava/lang/String;)Lcom/sonymobile/cameracommon/mpolib/MpoReader;
    .registers 5
    .param p0, "mpoFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/cameracommon/mpolib/MpoReader$MpoFormatException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/sonymobile/cameracommon/mpolib/MpoReader;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/mpolib/MpoReader;->native_openMpoFile(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/cameracommon/mpolib/MpoReader;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized closeMpoFile()V
    .registers 3

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/mpolib/MpoReader;->mIsClosed:Z

    if-eqz v0, :cond_10

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ".MPO file is already closed.\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 129
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/mpolib/MpoReader;->native_closeMpoFile()V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/mpolib/MpoReader;->mIsClosed:Z
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_d

    .line 135
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getExtractJpegNum()I
    .registers 3

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/mpolib/MpoReader;->mIsClosed:Z

    if-eqz v0, :cond_10

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ".MPO file is already closed.\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 71
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 75
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/mpolib/MpoReader;->native_getExtractJpegNum()I
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getJpegData(I[B)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "jpegData"    # [B

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/mpolib/MpoReader;->mIsClosed:Z

    if-eqz v0, :cond_10

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ".MPO file is already closed.\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 116
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 120
    :cond_10
    :try_start_10
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/mpolib/MpoReader;->native_getJpegData(I[B)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    .line 121
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getJpegDataLength(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/mpolib/MpoReader;->mIsClosed:Z

    if-eqz v0, :cond_10

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ".MPO file is already closed.\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 100
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 104
    :cond_10
    :try_start_10
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/mpolib/MpoReader;->native_getJpegDataLength(I)I
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getRepresentativeImageIndex()I
    .registers 3

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/mpolib/MpoReader;->mIsClosed:Z

    if-eqz v0, :cond_10

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ".MPO file is already closed.\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 85
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 89
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/mpolib/MpoReader;->native_getRepresentativeImageIndex()I
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public native native_closeMpoFile()V
.end method

.method public native native_getJpegData(I[B)V
.end method
