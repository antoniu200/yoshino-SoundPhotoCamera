.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;
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
    name = "SendEventTask"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mCategory:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field private final mLabel:Ljava/lang/String;

.field private final mValue:J


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .param p1, "category"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1075
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mCategory:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 1076
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mAction:Ljava/lang/String;

    .line 1077
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mLabel:Ljava/lang/String;

    .line 1078
    iput-wide p4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mValue:J

    .line 1079
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;JLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 7
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # J
    .param p6, "x4"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 1060
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mCategory:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mAction:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mLabel:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mValue:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1084
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mCategory:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mAction:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mLabel:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mValue:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1086
    return-void
.end method
