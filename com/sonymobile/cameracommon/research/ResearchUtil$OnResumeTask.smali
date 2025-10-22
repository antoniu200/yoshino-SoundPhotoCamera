.class Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;
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
    name = "OnResumeTask"
.end annotation


# instance fields
.field private final mIsPanorama:Z

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V
    .registers 3
    .param p2, "isPanorama"    # Z

    .prologue
    .line 309
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->mIsPanorama:Z

    .line 311
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 301
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 315
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->mIsPanorama:Z

    if-eqz v0, :cond_1b

    .line 316
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    invoke-static {v0, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$702(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    .line 317
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    invoke-direct {v1, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$802(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    .line 322
    :goto_14
    invoke-static {}, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->onResume()V

    .line 323
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->onResume()V

    .line 325
    return-void

    .line 319
    :cond_1b
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$702(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    .line 320
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
    invoke-static {v0, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$802(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    goto :goto_14
.end method
