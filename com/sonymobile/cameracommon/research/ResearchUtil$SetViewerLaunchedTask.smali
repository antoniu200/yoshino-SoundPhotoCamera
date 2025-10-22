.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;
.super Ljava/lang/Object;
.source "ResearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetViewerLaunchedTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V
    .registers 2

    .prologue
    .line 717
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 717
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$700(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 721
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$700(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->setViewerLaunched()V

    .line 723
    :cond_11
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$800(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 724
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$800(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->setViewerLaunched()V

    .line 726
    :cond_22
    return-void
.end method
