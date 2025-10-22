.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;
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
    name = "SetCaptureTriggerTask"
.end annotation


# instance fields
.field private final mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V
    .registers 3
    .param p2, "trigger"    # Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1393
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 1394
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1399
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;-><init>()V

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$002(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    .line 1401
    :cond_12
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->updateCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 1402
    return-void
.end method
