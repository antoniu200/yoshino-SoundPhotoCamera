.class Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncodedDataWritten(JJ)V
    .registers 6
    .param p1, "presentationTimeUs"    # J
    .param p3, "wittenSizeBytes"    # J

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$500(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;->onProgress(JJ)V

    .line 199
    return-void
.end method

.method public onEncoderFinished()V
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$400(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 215
    return-void
.end method

.method public onEncoderFormatChanged(Landroid/media/MediaFormat;)V
    .registers 5
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$100(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 206
    :try_start_9
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$300(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_12} :catch_13

    .line 210
    :goto_12
    return-void

    .line 207
    :catch_13
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MediaEncoder"

    const-string v2, "mMuxerStartedSignal is interrupted."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public onStorageFull()V
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$500(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;->onStorageFull()V

    .line 220
    return-void
.end method
