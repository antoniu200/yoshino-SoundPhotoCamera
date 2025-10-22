.class Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 129
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 133
    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z
    invoke-static {}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$000()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "MediaEncoder"

    const-string v3, "### START RECODING ###"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_d
    const/4 v1, 0x1

    .line 136
    .local v1, "result":Z
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$200(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    move-result-object v4

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    # setter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$102(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 137
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    # setter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$302(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 138
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$200(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    move-result-object v4

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    # setter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$402(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 140
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->startEncoders()V

    .line 143
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->startInputDataSource()V

    .line 146
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->startEncodedDataWriteTasks()V

    .line 161
    :try_start_4a
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->startMediaMuxerAfterEncodedFormatIsFixed()V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4f} :catch_7b

    .line 169
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->sendOnStartedEvent()V

    .line 171
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->waitToCompleteEncoding()V

    .line 173
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->stopEncoders()V

    .line 175
    :try_start_5e
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->stopMuxer()V
    :try_end_63
    .catch Ljava/lang/IllegalStateException; {:try_start_5e .. :try_end_63} :catch_89

    .line 186
    :goto_63
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->release()V

    .line 187
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2, v1}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->sendOnFinishedEvent(Z)V

    .line 189
    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z
    invoke-static {}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$000()Z

    move-result v2

    if-eqz v2, :cond_7a

    const-string v2, "MediaEncoder"

    const-string v3, "### END RECORDING ###"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_7a
    :goto_7a
    return-void

    .line 163
    :catch_7b
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "MediaEncoder"

    const-string v3, "startMediaMuxerAfterEncodedFormatIsFixed() is interrupted"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->stopEncoders()V

    goto :goto_7a

    .line 176
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_89
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "MediaEncoder"

    const-string v3, "IllegalStateException occur at stopMuxer()."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x0

    goto :goto_63
.end method
