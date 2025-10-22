.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;
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
    name = "SetUserOperationTask"
.end annotation


# instance fields
.field private final mParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;",
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

.field private final mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V
    .registers 5
    .param p2, "userOperation"    # Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 969
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;>;"
    .local p4, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 970
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .line 971
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->mParams:Ljava/util/List;

    .line 972
    iput-object p4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->mSettings:Ljava/util/Map;

    .line 973
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Ljava/util/Map;
    .param p5, "x4"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 956
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 977
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$700(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 978
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$700(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->mParams:Ljava/util/List;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->mSettings:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V

    .line 980
    :cond_17
    return-void
.end method
