.class Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;
.super Ljava/lang/Object;
.source "MeasurePerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MeasureAmountTime"
.end annotation


# instance fields
.field public count:I

.field public id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public total:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;-><init>()V

    return-void
.end method
