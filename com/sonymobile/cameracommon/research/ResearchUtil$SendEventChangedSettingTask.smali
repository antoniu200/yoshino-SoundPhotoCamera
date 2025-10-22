.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;
.super Ljava/lang/Object;
.source "ResearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendEventChangedSettingTask"
.end annotation


# instance fields
.field private final mAfter:Ljava/lang/String;

.field private final mBefore:Ljava/lang/String;

.field private final mSetting:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "before"    # Ljava/lang/String;
    .param p3, "after"    # Ljava/lang/String;

    .prologue
    .line 1703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1704
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;->mSetting:Ljava/lang/String;

    .line 1705
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;->mBefore:Ljava/lang/String;

    .line 1706
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;->mAfter:Ljava/lang/String;

    .line 1707
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 1691
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;->mSetting:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;->mBefore:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;->mAfter:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    return-void
.end method
