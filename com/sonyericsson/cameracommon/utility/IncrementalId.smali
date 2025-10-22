.class public final Lcom/sonyericsson/cameracommon/utility/IncrementalId;
.super Ljava/lang/Object;
.source "IncrementalId.java"


# static fields
.field public static final INCREMENTAL_INVALID:I = -0x1

.field private static final INCREMENTAL_MAX:I = 0x7ffffffe

.field private static final INCREMENTAL_MIN:I


# instance fields
.field private mId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->mId:I

    .line 46
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    .prologue
    .line 76
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->mId:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 77
    monitor-exit p0

    return-void

    .line 76
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized generateNext()I
    .registers 3

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->mId:I

    const v1, 0x7ffffffe

    if-lt v0, v1, :cond_b

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->mId:I

    .line 66
    :cond_b
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->mId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->mId:I

    .line 69
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->mId:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return v0

    .line 63
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNext()I
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->generateNext()I

    move-result v0

    return v0
.end method
