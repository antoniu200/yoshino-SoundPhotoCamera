.class Lcom/sonymobile/cameracommon/research/ResearchUtil$startCatchExceptionTask;
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
    name = "startCatchExceptionTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1746
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$startCatchExceptionTask;->mContext:Landroid/content/Context;

    .line 1747
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 1742
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$startCatchExceptionTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$startCatchExceptionTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->enableExceptionParsing(Landroid/content/Context;)V

    .line 1752
    return-void
.end method
