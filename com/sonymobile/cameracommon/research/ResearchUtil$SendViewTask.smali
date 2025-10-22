.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;
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
    name = "SendViewTask"
.end annotation


# instance fields
.field private final mGaLaunchedBy:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

.field private final mScreen:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;Lcom/sonymobile/cameracommon/research/parameters/Screen;)V
    .registers 4
    .param p2, "gaLaunchedBy"    # Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;
    .param p3, "screen"    # Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mGaLaunchedBy:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 525
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mScreen:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 526
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;Lcom/sonymobile/cameracommon/research/parameters/Screen;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;
    .param p3, "x2"    # Lcom/sonymobile/cameracommon/research/parameters/Screen;
    .param p4, "x3"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 513
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$1200(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mGaLaunchedBy:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->SAME_ACTIVITY:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    if-ne v0, v1, :cond_3d

    .line 531
    :cond_e
    const-string v0, "gagtm-launchedBy"

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mGaLaunchedBy:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 532
    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->toString()Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->setCustomDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mGaLaunchedBy:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setLaunchedBy(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$500(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mGaLaunchedBy:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    # invokes: Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->setLaunchTriggerEvent(Landroid/content/Context;Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;)V
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->access$1600(Landroid/content/Context;Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;)V

    .line 537
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mScreen:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->sendView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    .line 538
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mScreen:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    .line 541
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$1202(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)Z

    .line 543
    :cond_3d
    return-void
.end method
