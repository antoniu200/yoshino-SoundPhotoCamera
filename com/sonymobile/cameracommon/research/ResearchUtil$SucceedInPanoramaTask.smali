.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SucceedInPanoramaTask;
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
    name = "SucceedInPanoramaTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V
    .registers 2

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SucceedInPanoramaTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 1008
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SucceedInPanoramaTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SucceedInPanoramaTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$800(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1012
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SucceedInPanoramaTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$800(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->succeedInPanorama()V

    .line 1014
    :cond_11
    return-void
.end method
