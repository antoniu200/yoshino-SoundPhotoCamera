.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewWithActivityTask;
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
    name = "SendViewWithActivityTask"
.end annotation


# instance fields
.field private final mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

.field private final mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

.field private final mScreen:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;Lcom/sonymobile/cameracommon/research/parameters/Screen;)V
    .registers 5
    .param p2, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p3, "launchedBy"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;
    .param p4, "screen"    # Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewWithActivityTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewWithActivityTask;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 485
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewWithActivityTask;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 486
    iput-object p4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewWithActivityTask;->mScreen:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 487
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;Lcom/sonymobile/cameracommon/research/parameters/Screen;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p3, "x2"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;
    .param p4, "x3"    # Lcom/sonymobile/cameracommon/research/parameters/Screen;
    .param p5, "x4"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 468
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewWithActivityTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 491
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewWithActivityTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$1200(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 492
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewWithActivityTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewWithActivityTask;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewWithActivityTask;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    # invokes: Lcom/sonymobile/cameracommon/research/ResearchUtil;->setLaunchedBy(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$1800(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;)V

    .line 493
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewWithActivityTask;->mScreen:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->sendView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    .line 494
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewWithActivityTask;->mScreen:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    .line 497
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewWithActivityTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$1202(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)Z

    .line 499
    :cond_21
    return-void
.end method
