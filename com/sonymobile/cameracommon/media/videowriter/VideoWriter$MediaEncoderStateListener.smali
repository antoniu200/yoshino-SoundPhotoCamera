.class Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;
.super Ljava/lang/Object;
.source "VideoWriter.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaEncoderStateListener"
.end annotation


# instance fields
.field private final mMaxDurationUs:J

.field private final mMaxFileSizeBytes:J

.field private mTotalSizeBytes:J

.field private mTotalTimeUs:J

.field final synthetic this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x1

    .line 310
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-wide v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalTimeUs:J

    .line 312
    iput-wide v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalSizeBytes:J

    .line 313
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mMaxDurationUs:J

    .line 314
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mMaxFileSizeBytes:J

    .line 315
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;JJ)V
    .registers 8
    .param p2, "maxDurationMills"    # J
    .param p4, "maxFileSizeBytes"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 317
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalTimeUs:J

    .line 319
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalSizeBytes:J

    .line 320
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mMaxDurationUs:J

    .line 321
    iput-wide p4, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mMaxFileSizeBytes:J

    .line 322
    return-void
.end method


# virtual methods
.method public onFinished(Z)V
    .registers 8
    .param p1, "result"    # Z

    .prologue
    .line 337
    if-nez p1, :cond_50

    .line 338
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mOutputPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$200(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    .local v2, "outputFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 340
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mOutputPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$200(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    .line 341
    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$300(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Landroid/content/Context;

    move-result-object v4

    .line 340
    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    if-ne v3, v4, :cond_79

    .line 342
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$300(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mOutputPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$200(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->searchDocumentSdCard(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 343
    .local v1, "fileUri":Landroid/net/Uri;
    if-eqz v1, :cond_50

    .line 345
    :try_start_39
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    .line 346
    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$300(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 345
    invoke-static {v3, v1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 347
    const-string v3, "VideoWriter"

    const-string v4, "Unable to delete file."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_50} :catch_5f

    .line 361
    .end local v1    # "fileUri":Landroid/net/Uri;
    .end local v2    # "outputFile":Ljava/io/File;
    :cond_50
    :goto_50
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$100(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener$2;

    invoke-direct {v4, p0, p1}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener$2;-><init>(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    return-void

    .line 349
    .restart local v1    # "fileUri":Landroid/net/Uri;
    .restart local v2    # "outputFile":Ljava/io/File;
    :catch_5f
    move-exception v0

    .line 350
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "VideoWriter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 354
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "fileUri":Landroid/net/Uri;
    :cond_79
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_50

    .line 355
    const-string v3, "VideoWriter"

    const-string v4, "Unable to delete file."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method

.method public declared-synchronized onProgress(JJ)V
    .registers 12
    .param p1, "presentationTimeUs"    # J
    .param p3, "wittenSizeBytes"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 373
    monitor-enter p0

    :try_start_3
    iput-wide p1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalTimeUs:J

    .line 374
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalSizeBytes:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalSizeBytes:J

    .line 377
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalSizeBytes:J

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mMaxFileSizeBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_23

    iget-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mMaxFileSizeBytes:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_23

    .line 379
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEncoder:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$500(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->stop()V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_3b

    .line 384
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 380
    :cond_23
    :try_start_23
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalTimeUs:J

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mMaxDurationUs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_21

    iget-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mMaxDurationUs:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_21

    .line 382
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEncoder:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$500(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->stop()V
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_3b

    goto :goto_21

    .line 373
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStarted()V
    .registers 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$100(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener$1;-><init>(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    return-void
.end method

.method public onStorageFull()V
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEncoder:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$500(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->stop()V

    .line 390
    return-void
.end method
