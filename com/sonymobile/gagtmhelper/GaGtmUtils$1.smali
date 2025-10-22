.class Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;
.super Ljava/lang/Object;
.source "GaGtmUtils.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/gagtmhelper/GaGtmUtils;->ensureContainerLoadedLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;


# direct methods
.method constructor <init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .registers 2

    .prologue
    .line 498
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 498
    check-cast p1, Lcom/google/android/gms/tagmanager/ContainerHolder;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V
    .registers 7
    .param p1, "containerHolder"    # Lcom/google/android/gms/tagmanager/ContainerHolder;

    .prologue
    .line 501
    const/4 v1, 0x0

    .line 503
    .local v1, "success":Z
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 504
    const-string v2, "GaGtmHelper"

    const-string v3, "onResult:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_e
    if-eqz p1, :cond_8c

    .line 507
    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 508
    const/4 v1, 0x1

    .line 510
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    # setter for: Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;
    invoke-static {v2, p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$002(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Lcom/google/android/gms/tagmanager/ContainerHolder;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    .line 511
    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    .line 513
    .local v0, "container":Lcom/google/android/gms/tagmanager/Container;
    if-eqz v0, :cond_48

    .line 514
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 515
    const-string v2, "GaGtmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container is default = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/Container;->isDefault()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_48
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-virtual {v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushInitDefaultsToDataLayer()V

    .line 530
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-virtual {v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->setContainerDefaults()V

    .line 533
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1$1;-><init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 557
    .end local v0    # "container":Lcom/google/android/gms/tagmanager/Container;
    :cond_5f
    :goto_5f
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    # getter for: Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;
    invoke-static {v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$400(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object v2

    if-eqz v2, :cond_7d

    .line 558
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 559
    const-string v2, "GaGtmHelper"

    const-string v3, "Calling callback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_74
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    # getter for: Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;
    invoke-static {v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$400(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;->onContainerLoaded(Z)V

    .line 563
    :cond_7d
    return-void

    .line 547
    :cond_7e
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 548
    const-string v2, "GaGtmHelper"

    const-string v3, "Error loading container"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 552
    :cond_8c
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 553
    const-string v2, "GaGtmHelper"

    const-string v3, "containerHolder was null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f
.end method
