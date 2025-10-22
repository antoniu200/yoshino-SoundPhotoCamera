.class Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;
.super Ljava/lang/Object;
.source "SoundPhotoContentsIntegrator.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainTask"
.end annotation


# instance fields
.field private final mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

.field final synthetic this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)V
    .registers 4
    .param p2, "savingTaskManager"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .line 186
    const-string v0, "CRETAE MAIN TASK"

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->trace(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private fail()V
    .registers 4

    .prologue
    .line 266
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    const-string v2, "FAILED"

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->trace(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v0, v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->picture:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 268
    .local v0, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    if-eqz v0, :cond_1d

    .line 269
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v1, v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->access$900(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask$1;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask$1;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    :cond_1d
    return-void
.end method

.method private release()V
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->audio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    if-eqz v0, :cond_d

    .line 281
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->audio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->clearSamples()V

    .line 283
    :cond_d
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->previewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    if-eqz v0, :cond_1a

    .line 284
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->previewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->clear()V

    .line 286
    :cond_1a
    return-void
.end method

.method private waitForEncodingAudio(Ljava/util/concurrent/Future;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;",
            ">;)",
            "Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;>;"
    const/4 v2, 0x0

    .line 291
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_7} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_7} :catch_b

    .line 299
    :goto_7
    return-object v1

    .line 292
    :catch_8
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    move-object v1, v2

    .line 295
    goto :goto_7

    .line 296
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_b
    move-exception v0

    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    move-object v1, v2

    .line 299
    goto :goto_7
.end method


# virtual methods
.method public onCanceled()V
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    const-string v1, "CANCELED"

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->trace(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->fail()V

    .line 262
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->release()V

    .line 263
    return-void
.end method

.method public run()V
    .registers 14

    .prologue
    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v1, v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->mAudioEncodeTaskExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$AudioEncodeTask;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v3, v3, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v4, v4, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->audio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$AudioEncodeTask;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v8

    .line 195
    .local v8, "audioEncodeResponse":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;>;"
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    const-string v2, "GENERATING SINGLE PHOTO..."

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->trace(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v1, v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->picture:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 197
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v1

    .line 196
    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->makeMpf([B)[B
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->access$500([B)[B

    move-result-object v12

    .line 198
    .local v12, "singlePhoto":[B
    if-nez v12, :cond_35

    .line 199
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->fail()V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_100

    .line 253
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->release()V

    .line 256
    :goto_34
    return-void

    .line 202
    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    const-string v2, "GENERATING SINGLE PHOTO FINISHED"

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->trace(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;Ljava/lang/String;)V

    .line 204
    const/4 v10, 0x0

    .line 205
    .local v10, "multiplePhoto":[B
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v1, v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->previewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    if-eqz v1, :cond_86

    .line 206
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    const-string v2, "GENERATING MULTIPLE PHOTO..."

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->trace(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v1, v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v2, v2, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->previewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v3, v3, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->picture:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 209
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v4, v4, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->picture:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 210
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getDateTaken()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v6, v6, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->picture:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v7, v7, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->picture:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v7, v7, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v7, v7, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    .line 207
    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->makeMpf(Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;[BJILandroid/location/Location;)[B
    invoke-static/range {v1 .. v7}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;[BJILandroid/location/Location;)[B

    move-result-object v10

    .line 213
    if-nez v10, :cond_7f

    .line 214
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->fail()V
    :try_end_7b
    .catchall {:try_start_35 .. :try_end_7b} :catchall_100

    .line 253
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->release()V

    goto :goto_34

    .line 217
    :cond_7f
    :try_start_7f
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    const-string v2, "GENERATING MULTIPLE PHOTO FINISHED"

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->trace(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;Ljava/lang/String;)V

    .line 220
    :cond_86
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    const-string v2, "WAIT FOR ENCODING AUDIO..."

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->trace(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, v8}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->waitForEncodingAudio(Ljava/util/concurrent/Future;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;

    move-result-object v9

    .line 222
    .local v9, "encodedAudioData":Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    const-string v2, "WAIT FOR ENCODING AUDIO FINISHED"

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->trace(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;Ljava/lang/String;)V

    .line 223
    if-eqz v9, :cond_9e

    iget-boolean v1, v9, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;->result:Z

    if-nez v1, :cond_a5

    .line 224
    :cond_9e
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->fail()V
    :try_end_a1
    .catchall {:try_start_7f .. :try_end_a1} :catchall_100

    .line 253
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->release()V

    goto :goto_34

    .line 228
    :cond_a5
    :try_start_a5
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    const-string v2, "PUT AUDIO DATA INTO JPEG..."

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->trace(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;Ljava/lang/String;)V

    .line 229
    iget-object v1, v9, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;->audioData:[B

    iget v2, v9, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;->audioDuration:I

    int-to-long v2, v2

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->makeSpf([B[BJ)[B
    invoke-static {v12, v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->access$700([B[BJ)[B

    move-result-object v11

    .line 233
    .local v11, "pictureAudioData":[B
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    const-string v2, "PUT AUDIO DATA INTO JPEG FINISHED"

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->trace(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;Ljava/lang/String;)V

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "animationPictureAudioData":[B
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v1, v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->previewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    if-eqz v1, :cond_dc

    if-eqz v10, :cond_dc

    .line 237
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    const-string v2, "PUT AUDIO DATA INTO MPO..."

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->trace(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;Ljava/lang/String;)V

    .line 238
    iget-object v1, v9, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;->audioData:[B

    iget v2, v9, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;->audioDuration:I

    int-to-long v2, v2

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->makeSpf([B[BJ)[B
    invoke-static {v10, v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->access$700([B[BJ)[B

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    const-string v2, "PUT AUDIO DATA INTO MPO FINISHED"

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->trace(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;Ljava/lang/String;)V

    .line 245
    :cond_dc
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v1, v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->picture:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v1, v11}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setImageData([B)V

    .line 246
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v3, v3, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    .line 247
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->this$1:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    iget-object v5, v5, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->picture:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;[B)V

    .line 246
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->request(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V
    :try_end_fb
    .catchall {:try_start_a5 .. :try_end_fb} :catchall_100

    .line 253
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->release()V

    goto/16 :goto_34

    .end local v0    # "animationPictureAudioData":[B
    .end local v8    # "audioEncodeResponse":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;>;"
    .end local v9    # "encodedAudioData":Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;
    .end local v10    # "multiplePhoto":[B
    .end local v11    # "pictureAudioData":[B
    .end local v12    # "singlePhoto":[B
    :catchall_100
    move-exception v1

    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->release()V

    throw v1
.end method
