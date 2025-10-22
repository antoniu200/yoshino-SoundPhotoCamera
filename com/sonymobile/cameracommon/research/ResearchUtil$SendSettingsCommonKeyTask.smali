.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;
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
    name = "SendSettingsCommonKeyTask"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;)V
    .registers 3
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;->mKey:Ljava/lang/String;

    .line 701
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 691
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_COMMON:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;->mKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    return-void
.end method
