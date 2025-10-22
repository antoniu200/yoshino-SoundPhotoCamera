.class Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;
.super Ljava/lang/Object;
.source "MeasurePerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FpsStatistics"
.end annotation


# instance fields
.field private mFrameCount:I

.field private mLastFpsTime:J

.field private mLastFrameCount:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput v0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mFrameCount:I

    .line 518
    iput v0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mLastFrameCount:I

    .line 519
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mLastFpsTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;)I
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;

    .prologue
    .line 516
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mFrameCount:I

    return v0
.end method

.method static synthetic access$408(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;)I
    .registers 3
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;

    .prologue
    .line 516
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mFrameCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mFrameCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;)J
    .registers 3
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;

    .prologue
    .line 516
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mLastFpsTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;J)J
    .registers 4
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;
    .param p1, "x1"    # J

    .prologue
    .line 516
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mLastFpsTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;)I
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;

    .prologue
    .line 516
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mLastFrameCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;I)I
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;
    .param p1, "x1"    # I

    .prologue
    .line 516
    iput p1, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mLastFrameCount:I

    return p1
.end method
