.class Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
.super Ljava/lang/Object;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AfDoneKeepingTimeHolder"
.end annotation


# instance fields
.field private mContinuousCapture:Z

.field private mTimeAfDone:J

.field private mTimeCapture:J


# direct methods
.method private constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 1423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mContinuousCapture:Z

    .line 1425
    iput-wide v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    .line 1426
    iput-wide v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 1423
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 1456
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    .line 1457
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    .line 1458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mContinuousCapture:Z

    .line 1459
    return-void
.end method

.method public getParameter()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 9

    .prologue
    .line 1441
    const/4 v0, 0x0

    .line 1442
    .local v0, "type":Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mContinuousCapture:Z

    if-eqz v1, :cond_10

    .line 1443
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->CONTINUOUS_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    .line 1452
    :goto_7
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getAfDoneKeepingTimeParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    return-object v1

    .line 1444
    :cond_10
    iget-wide v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1b

    .line 1446
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->NOT_TARGET:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    goto :goto_7

    .line 1448
    :cond_1b
    sget-boolean v1, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v1, :cond_3c

    const-string v1, "ResearchUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AfDoneKeepingTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    iget-wide v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    :cond_3c
    iget-wide v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    iget-wide v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->getType(J)Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    move-result-object v0

    goto :goto_7
.end method

.method public updateContinuousCapture(Z)V
    .registers 2
    .param p1, "continuousCapture"    # Z

    .prologue
    .line 1429
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mContinuousCapture:Z

    .line 1430
    return-void
.end method

.method public updateTimeAfDone(J)V
    .registers 4
    .param p1, "time"    # J

    .prologue
    .line 1433
    iput-wide p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeAfDone:J

    .line 1434
    return-void
.end method

.method public updateTimeCapture(J)V
    .registers 4
    .param p1, "time"    # J

    .prologue
    .line 1437
    iput-wide p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->mTimeCapture:J

    .line 1438
    return-void
.end method
