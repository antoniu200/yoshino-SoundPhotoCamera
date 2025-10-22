.class Lcom/sonymobile/cameracommon/research/ResearchUtil$BackWorkerThreadFactory;
.super Ljava/lang/Object;
.source "ResearchUtil.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackWorkerThreadFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$BackWorkerThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 244
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 245
    .local v0, "thread":Ljava/lang/Thread;
    const-string v1, "R-Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 246
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 247
    return-object v0
.end method
