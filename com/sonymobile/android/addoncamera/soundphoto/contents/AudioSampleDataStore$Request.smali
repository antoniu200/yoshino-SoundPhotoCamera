.class Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;
.super Ljava/lang/Object;
.source "AudioSampleDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Request"
.end annotation


# instance fields
.field public final head:I

.field private mForceEos:Z

.field private mPosition:I

.field public final samples:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final tail:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "headSamplePosition"    # I
    .param p2, "tailSamplePosition"    # I

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->head:I

    .line 408
    iput p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->tail:I

    .line 409
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->samples:Ljava/util/concurrent/BlockingQueue;

    .line 410
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->head:I

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->mPosition:I

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->mForceEos:Z

    .line 416
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;)I
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;

    .prologue
    .line 398
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->mPosition:I

    return v0
.end method


# virtual methods
.method public eos()Z
    .registers 3

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->mForceEos:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->mPosition:I

    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->tail:I

    if-lt v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public put(Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;I)V
    .registers 4
    .param p1, "buffer"    # Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    .param p2, "lastPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->eos()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 436
    :cond_6
    :goto_6
    return-void

    .line 426
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->samples:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 427
    iput p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->mPosition:I

    .line 428
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->eos()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 429
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->putEos()V

    goto :goto_6
.end method

.method public putEos()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->samples:Ljava/util/concurrent/BlockingQueue;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->allocate(I)Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$Request;->mForceEos:Z

    .line 441
    return-void
.end method
