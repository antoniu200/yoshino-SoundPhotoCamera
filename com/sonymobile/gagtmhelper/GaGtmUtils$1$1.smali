.class Lcom/sonymobile/gagtmhelper/GaGtmUtils$1$1;
.super Ljava/lang/Object;
.source "GaGtmUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;


# direct methods
.method constructor <init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;)V
    .registers 2

    .prologue
    .line 533
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1$1;->this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 536
    # getter for: Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 538
    :try_start_5
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1$1;->this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    const/4 v2, 0x1

    # setter for: Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoaded:Z
    invoke-static {v0, v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$202(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Z)Z

    .line 540
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1$1;->this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-virtual {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->deserializeQueueFromFileAndPush()V

    .line 542
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1$1;->this$1:Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;->this$0:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    # invokes: Lcom/sonymobile/gagtmhelper/GaGtmUtils;->flushDataLayerQueueLocked()V
    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->access$300(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    .line 543
    monitor-exit v1

    .line 544
    return-void

    .line 543
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw v0
.end method
