.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;
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
    name = "SetTimeTask"
.end annotation


# instance fields
.field private final mIsStart:Z

.field private final mTime:J

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZJ)V
    .registers 6
    .param p2, "isStart"    # Z
    .param p3, "time"    # J

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1513
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->mIsStart:Z

    .line 1514
    iput-wide p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->mTime:J

    .line 1515
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$100(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1520
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$102(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    .line 1522
    :cond_13
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->mIsStart:Z

    if-eqz v0, :cond_23

    .line 1523
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$100(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->mTime:J

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->updateTimeAfDone(J)V

    .line 1527
    :goto_22
    return-void

    .line 1525
    :cond_23
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$100(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->mTime:J

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->updateTimeCapture(J)V

    goto :goto_22
.end method
