.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;
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
    name = "SetFaceNumTask"
.end annotation


# instance fields
.field private final mNum:I

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V
    .registers 3
    .param p2, "num"    # I

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1282
    iput p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;->mNum:I

    .line 1283
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1288
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;-><init>()V

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$002(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    .line 1290
    :cond_12
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;->mNum:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->updateFaceNum(I)V

    .line 1291
    return-void
.end method
