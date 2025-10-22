.class Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavingVideoTask"
.end annotation


# instance fields
.field final mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .param p2, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .line 660
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 664
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 665
    .local v2, "result":Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    const/4 v3, 0x0

    .line 666
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v1

    .line 688
    .local v1, "mExtraUri":Landroid/net/Uri;
    if-eqz v1, :cond_76

    .line 689
    :try_start_b
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    if-eqz v4, :cond_71

    .line 690
    const-string v4, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 691
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->setFilePath(Ljava/lang/String;)V

    .line 695
    :cond_28
    :goto_28
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$200(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->insertVideoAndSendIntent(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)Landroid/net/Uri;

    move-result-object v3

    .line 699
    :goto_34
    if-nez v3, :cond_42

    const-string v4, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    :cond_42
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_44
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b .. :try_end_44} :catch_6d

    .line 712
    :goto_44
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    new-instance v5, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    invoke-direct {v5, v2, v3, v6}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 714
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    const/4 v5, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;
    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$502(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 715
    return-void

    .line 692
    :cond_57
    :try_start_57
    const-string v4, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 693
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->setFilePath(Ljava/lang/String;)V
    :try_end_6c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_57 .. :try_end_6c} :catch_6d

    goto :goto_28

    .line 705
    :catch_6d
    move-exception v0

    .line 706
    .local v0, "ex":Landroid/database/sqlite/SQLiteFullException;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_44

    .line 697
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteFullException;
    :cond_71
    move-object v3, v1

    goto :goto_34

    .line 699
    :cond_73
    :try_start_73
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_44

    .line 702
    :cond_76
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$200(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->insertVideoAndSendIntent(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)Landroid/net/Uri;

    move-result-object v3

    .line 703
    if-eqz v3, :cond_87

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    :goto_86
    goto :goto_44

    :cond_87
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_89
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_73 .. :try_end_89} :catch_6d

    goto :goto_86
.end method
