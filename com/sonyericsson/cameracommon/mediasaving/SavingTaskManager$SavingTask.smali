.class public abstract Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "SavingTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;
    }
.end annotation


# instance fields
.field private final mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

.field private mResult:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    .registers 4
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .param p2, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    .line 112
    return-void
.end method


# virtual methods
.method protected assignOutput()Landroid/net/Uri;
    .registers 6

    .prologue
    .line 122
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 123
    const-string v3, "file"

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 124
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 130
    .end local v0    # "file":Ljava/io/File;
    :cond_33
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v3

    .line 144
    :goto_39
    return-object v3

    .line 134
    :cond_3a
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_50

    .line 135
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$000(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getPhotoPath()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "path":Ljava/lang/String;
    :goto_4c
    if-nez v2, :cond_5d

    .line 140
    const/4 v3, 0x0

    goto :goto_39

    .line 137
    .end local v2    # "path":Ljava/lang/String;
    :cond_50
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$000(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getPredictiveCapturePhotoPath(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "path":Ljava/lang/String;
    goto :goto_4c

    .line 143
    :cond_5d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "outputFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_39
.end method

.method protected abstract getExpectedFileSize()I
.end method

.method protected getResult()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    return-object v0
.end method

.method protected final notifyResult(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;)V
    .registers 6
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-direct {v1, p1, p2, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 172
    return-void
.end method

.method protected abstract register(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;)V
.end method

.method public final run()V
    .registers 5

    .prologue
    .line 176
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {v1, p0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    .line 178
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->assignOutput()Landroid/net/Uri;

    move-result-object v0

    .line 179
    .local v0, "output":Landroid/net/Uri;
    if-eqz v0, :cond_22

    .line 180
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->store(Landroid/net/Uri;)Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    .line 191
    :goto_17
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->register(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;)V

    .line 193
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # invokes: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->popPhotoSavingTask(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V
    invoke-static {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$100(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V

    .line 194
    return-void

    .line 182
    :cond_22
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$1;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_17
.end method

.method protected abstract store(Landroid/net/Uri;)Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;
.end method

.method protected writeToStorage(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;Landroid/net/Uri;)Z
    .registers 8
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 161
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->isImageReaderUsing()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 162
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageReaderData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Ljava/nio/ByteBuffer;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->storeData(Ljava/lang/Exception;)Z

    move-result v0

    .line 163
    .local v0, "result":Z
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->close()V

    .line 166
    .end local v0    # "result":Z
    :goto_19
    return v0

    :cond_1a
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, p2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;[BLandroid/net/Uri;)V

    invoke-virtual {v1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->storeData(Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_19
.end method

.method protected writeToStorage([BLandroid/net/Uri;)Z
    .registers 5
    .param p1, "data"    # [B
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 149
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;[BLandroid/net/Uri;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->storeData(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method
