.class public Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;
.super Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotoSavingTask"
.end annotation


# instance fields
.field final mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .param p2, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    .line 228
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 229
    return-void
.end method


# virtual methods
.method protected getExpectedFileSize()I
    .registers 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->getResult()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 239
    :goto_7
    return v0

    .line 236
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->isImageReaderUsing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 237
    const/high16 v0, 0xf00000

    goto :goto_7

    .line 239
    :cond_13
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_7
.end method

.method protected register(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;)V
    .registers 7
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    .prologue
    .line 324
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;->result:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    if-ne v0, v1, :cond_17

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;->result:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;->uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 338
    :goto_16
    return-void

    .line 334
    :cond_17
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;->result:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_16
.end method

.method protected store(Landroid/net/Uri;)Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;
    .registers 16
    .param p1, "output"    # Landroid/net/Uri;

    .prologue
    .line 247
    const-string v10, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_126

    .line 250
    iget-object v10, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setFilePath(Ljava/lang/String;)V

    .line 257
    :cond_15
    :goto_15
    const/4 v9, 0x0

    .line 258
    .local v9, "uri":Landroid/net/Uri;
    sget-object v8, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 260
    .local v8, "result":Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    const-string v10, "SavingTaskManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[datetaken:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v12}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getDateTaken()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "start saving"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v10, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {p0, v10, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->writeToStorage(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_120

    .line 262
    const-string v10, "SavingTaskManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[datetaken:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v12}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getDateTaken()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "store is success"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v10, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v10}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v10

    if-nez v10, :cond_13d

    .line 268
    const/4 v7, 0x1

    .line 274
    .local v7, "needToinsert":Z
    :goto_7d
    if-eqz v7, :cond_178

    .line 276
    :try_start_7f
    iget-object v10, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v10}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "filePath":Ljava/lang/String;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->isPredictiveCaptureImage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d4

    .line 282
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyyMMddHHmmssSSS"

    invoke-direct {v5, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_92
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7f .. :try_end_92} :catch_170

    .line 284
    .local v5, "format":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 286
    .local v0, "date":Ljava/util/Date;
    :try_start_93
    iget-object v10, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v10}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_9c
    .catch Ljava/text/ParseException; {:try_start_93 .. :try_end_9c} :catch_145
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_93 .. :try_end_9c} :catch_170

    move-result-object v0

    .line 291
    :goto_9d
    if-eqz v0, :cond_d4

    .line 292
    :try_start_9f
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/io/File;->setLastModified(J)Z

    move-result v6

    .line 294
    .local v6, "isSuccess":Z
    if-nez v6, :cond_d4

    .line 295
    const-string v10, "SavingTaskManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "store: setLastModified failed. filePath:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " time:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 296
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 295
    invoke-static {v10, v11}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v0    # "date":Ljava/util/Date;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "format":Ljava/text/SimpleDateFormat;
    .end local v6    # "isSuccess":Z
    :cond_d4
    iget-object v10, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
    invoke-static {v10}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$200(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->insertPictureContentManager(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 301
    if-nez v9, :cond_ec

    const-string v10, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_174

    :cond_ec
    sget-object v8, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 304
    :goto_ee
    const-string v10, "SavingTaskManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[datetaken:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v12}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getDateTaken()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "insert is success:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 305
    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 304
    invoke-static {v10, v11}, Lcom/sonyericsson/cameracommon/utility/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_120
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9f .. :try_end_120} :catch_170

    .line 317
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v7    # "needToinsert":Z
    :cond_120
    :goto_120
    new-instance v10, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    invoke-direct {v10, p0, v8, v9}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;)V

    return-object v10

    .line 251
    .end local v8    # "result":Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_126
    const-string v10, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 254
    iget-object v10, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setFilePath(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 271
    .restart local v8    # "result":Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    .restart local v9    # "uri":Landroid/net/Uri;
    :cond_13d
    iget-object v10, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v10, v10, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v7, v10, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    .restart local v7    # "needToinsert":Z
    goto/16 :goto_7d

    .line 287
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v4    # "filePath":Ljava/lang/String;
    .restart local v5    # "format":Ljava/text/SimpleDateFormat;
    :catch_145
    move-exception v1

    .line 288
    .local v1, "e":Ljava/text/ParseException;
    :try_start_146
    const-string v10, "SavingTaskManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "store: parse failed. filePath:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " time:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 289
    invoke-virtual {v12}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 288
    invoke-static {v10, v11}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_146 .. :try_end_16e} :catch_170

    goto/16 :goto_9d

    .line 307
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "e":Ljava/text/ParseException;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v5    # "format":Ljava/text/SimpleDateFormat;
    :catch_170
    move-exception v2

    .line 308
    .local v2, "ex":Landroid/database/sqlite/SQLiteFullException;
    sget-object v8, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 309
    goto :goto_120

    .line 301
    .end local v2    # "ex":Landroid/database/sqlite/SQLiteFullException;
    .restart local v4    # "filePath":Ljava/lang/String;
    :cond_174
    :try_start_174
    sget-object v8, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_176
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_174 .. :try_end_176} :catch_170

    goto/16 :goto_ee

    .line 311
    .end local v4    # "filePath":Ljava/lang/String;
    :cond_178
    iget-object v10, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v10}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v9

    .line 312
    sget-object v8, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_120
.end method
