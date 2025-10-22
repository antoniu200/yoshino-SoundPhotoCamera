.class public Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;
.super Ljava/lang/Object;
.source "PreviewFrameStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBufferingFrameCount:I

.field private mFrameInfo:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;

.field private mFrames:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "bufferingFrameCount"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->mBufferingFrameCount:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->mFrameInfo:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;

    .line 70
    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->mBufferingFrameCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->mFrames:Ljava/util/Queue;

    .line 71
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    .line 110
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->mFrames:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    .line 111
    .local v0, "i":Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    if-eqz v0, :cond_6

    .line 112
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->decrementRefCount()V

    goto :goto_6

    .line 115
    .end local v0    # "i":Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    :cond_18
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->mFrames:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 117
    return-void
.end method

.method public get()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->mFrames:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    .local v0, "currentFrames":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;>;"
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->mFrames:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 105
    return-object v0
.end method

.method public getFrameInfo()Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->mFrameInfo:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;

    return-object v0
.end method

.method public isPreviewFrameExist()Z
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->mFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public push([B)V
    .registers 5
    .param p1, "frame"    # [B

    .prologue
    .line 84
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->mFrameInfo:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;

    if-eqz v1, :cond_d

    array-length v1, p1

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->mFrameInfo:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;->computeFrameBytes()I

    move-result v2

    if-eq v1, v2, :cond_e

    .line 97
    :cond_d
    :goto_d
    return-void

    .line 89
    :cond_e
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->mFrames:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->mBufferingFrameCount:I

    if-ge v1, v2, :cond_31

    array-length v1, p1

    .line 90
    invoke-static {v1}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->allocate(I)Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    move-result-object v0

    .line 93
    .local v0, "buffer":Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    :goto_1d
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->get()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 94
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->get()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 95
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->mFrames:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 90
    .end local v0    # "buffer":Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    :cond_31
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->mFrames:Ljava/util/Queue;

    .line 91
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    move-object v0, v1

    goto :goto_1d
.end method

.method public setFrameInfo(Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;)V
    .registers 2
    .param p1, "info"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->mFrameInfo:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;

    .line 79
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->clear()V

    .line 80
    return-void
.end method
