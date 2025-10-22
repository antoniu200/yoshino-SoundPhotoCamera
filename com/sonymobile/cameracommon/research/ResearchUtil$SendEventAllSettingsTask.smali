.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;
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
    name = "SendEventAllSettingsTask"
.end annotation


# instance fields
.field private final mCategory:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field private final mEnv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .param p1, "category"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1666
    .local p2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1667
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;->mCategory:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 1668
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;->mEnv:Ljava/util/Map;

    .line 1669
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;->mSettings:Ljava/util/Map;

    .line 1670
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Ljava/util/Map;
    .param p4, "x3"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 1653
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;->mCategory:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;->mEnv:Ljava/util/Map;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;->mSettings:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendEventAllSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V

    .line 1676
    return-void
.end method
