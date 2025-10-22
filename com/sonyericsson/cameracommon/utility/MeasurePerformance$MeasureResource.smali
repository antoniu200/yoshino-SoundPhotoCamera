.class Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;
.super Ljava/lang/Object;
.source "MeasurePerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MeasureResource"
.end annotation


# instance fields
.field public mFreeMemory:J

.field public mTag:Ljava/lang/String;

.field public mTotalMemory:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;-><init>()V

    return-void
.end method
