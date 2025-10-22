.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;
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
    name = "SetZoomRatioTask"
.end annotation


# instance fields
.field private final mZoomRatio:F

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;F)V
    .registers 3
    .param p2, "zoomRatio"    # F

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1220
    iput p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->mZoomRatio:F

    .line 1221
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1226
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;-><init>()V

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$002(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    .line 1228
    :cond_12
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->mZoomRatio:F

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->updateZoomRatio(F)V

    .line 1229
    return-void
.end method
