.class Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;
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
    name = "OnPauseTask"
.end annotation


# instance fields
.field private final mIsSameActivity:Z

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V
    .registers 3
    .param p2, "isSameActivity"    # Z

    .prologue
    .line 348
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->mIsSameActivity:Z

    .line 350
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 340
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$1202(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)Z

    .line 355
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$700(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 356
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$700(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    move-result-object v0

    # invokes: Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->sendUserOperation()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->access$1300(Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;)V

    .line 358
    :cond_17
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$800(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 359
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$800(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    move-result-object v0

    # invokes: Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->sendPanoramaInfo()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->access$1400(Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;)V

    .line 361
    :cond_28
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->mIsSameActivity:Z

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->onPause(Z)V

    .line 362
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->mIsSameActivity:Z

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->onPause(Z)V

    .line 365
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->clearTemporarySettingValues()V

    .line 366
    return-void
.end method
