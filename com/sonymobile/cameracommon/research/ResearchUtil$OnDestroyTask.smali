.class Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;
.super Ljava/lang/Object;
.source "ResearchUtil.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnDestroyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContextInner:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;->mContextInner:Landroid/content/Context;

    .line 399
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;->mContextInner:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->onDestroy(Landroid/content/Context;)V

    .line 404
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;->mContextInner:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->onDestroy(Landroid/content/Context;)V

    .line 406
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
