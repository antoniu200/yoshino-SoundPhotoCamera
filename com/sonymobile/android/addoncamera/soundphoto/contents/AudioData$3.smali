.class Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$3;
.super Ljava/lang/Object;
.source "AudioData.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$3;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$3;->samples:Ljava/util/List;

    return-void
.end method

.method private concat(Ljava/util/List;)Ljava/nio/ByteBuffer;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "buffers":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    const/4 v2, 0x0

    .line 243
    .local v2, "totalSize":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 244
    .local v0, "i":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v2, v4

    .line 245
    goto :goto_5

    .line 247
    .end local v0    # "i":Ljava/nio/ByteBuffer;
    :cond_17
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 248
    .local v1, "result":Ljava/nio/ByteBuffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 249
    .restart local v0    # "i":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 250
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1f

    .line 252
    .end local v0    # "i":Ljava/nio/ByteBuffer;
    :cond_32
    return-object v1
.end method


# virtual methods
.method public onSamples(Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;Z)V
    .registers 8
    .param p1, "data"    # Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    .param p2, "eos"    # Z

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->get()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 226
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->get()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 227
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->get()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 228
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$3;->samples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    if-eqz p2, :cond_3e

    .line 230
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$3;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    monitor-enter v2

    .line 231
    :try_start_24
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$3;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mOnAudioCaptureFinishedListener:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$OnAudioCaptureFinishedListener;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$OnAudioCaptureFinishedListener;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 232
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$3;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mOnAudioCaptureFinishedListener:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$OnAudioCaptureFinishedListener;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$OnAudioCaptureFinishedListener;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$3;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$3;->samples:Ljava/util/List;

    .line 234
    invoke-direct {p0, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$3;->concat(Ljava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 232
    invoke-interface {v1, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$OnAudioCaptureFinishedListener;->onAudioCaptureFinished(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;Ljava/nio/ByteBuffer;)V

    .line 236
    :cond_3d
    monitor-exit v2

    .line 238
    :cond_3e
    return-void

    .line 236
    :catchall_3f
    move-exception v1

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_24 .. :try_end_41} :catchall_3f

    throw v1
.end method
