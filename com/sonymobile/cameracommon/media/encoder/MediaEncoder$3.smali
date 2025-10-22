.class Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$3;
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
    .line 223
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$3;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$3;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$600(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_1c

    .line 239
    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TRACE:Z
    invoke-static {}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$000()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "MediaEncoder"

    const-string v2, "Start finalization of recording."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$3;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->stopInputDataSource()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_25

    .line 247
    :goto_1b
    return-void

    .line 235
    :catch_1c
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MediaEncoder"

    const-string v2, "mRequestFinishSignal is interrupted"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 244
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_25
    move-exception v0

    .line 245
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v1, "MediaEncoder"

    const-string v2, "stopInputDataSource is interrupted"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method
