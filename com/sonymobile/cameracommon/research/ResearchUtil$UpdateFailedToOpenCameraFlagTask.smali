.class Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask;
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
    name = "UpdateFailedToOpenCameraFlagTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V
    .registers 2

    .prologue
    .line 608
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsFailedToOpenCamera:Z
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$2102(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)Z

    .line 612
    return-void
.end method
