.class public Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;
.super Ljava/lang/Object;
.source "MeasurePerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$OutResultDelayTask;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    }
.end annotation


# static fields
.field private static final FILE:Ljava/lang/String; = "camera_perform.csv"

.field public static final TAG:Ljava/lang/String; = "MeasurePerformance"

.field public static final TAG_DEVICE:Ljava/lang/String; = "[DEVICE]"

.field public static final TAG_SEQ:Ljava/lang/String; = "[SEQ]"

.field public static final TAG_SHOT:Ljava/lang/String; = "[SHOT]"

.field public static final TAG_STARTUP:Ljava/lang/String; = "[START UP]"

.field public static final TAG_SURFACE:Ljava/lang/String; = "[SURFACE]"

.field public static final TAG_TASK:Ljava/lang/String; = "[TASK]"

.field private static mResourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;",
            ">;"
        }
    .end annotation
.end field

.field private static mTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;",
            ">;"
        }
    .end annotation
.end field

.field private static sFpsStatisticsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;

.field private static sMemoryFlag:Z

.field private static sTimerFlag:Z


# instance fields
.field private originalTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 134
    sput-boolean v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    .line 137
    sput-boolean v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mTimeList:Ljava/util/List;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    .line 160
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sInstance:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;

    .line 522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sFpsStatisticsMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->init()V

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->originalTime:J

    .line 202
    return-void
.end method

.method public static debugShowPreviewFPS(Ljava/lang/String;)V
    .registers 12
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 532
    sget-boolean v6, Lcom/sonyericsson/cameracommon/utility/Log;->IS_KPI:Z

    if-eqz v6, :cond_6c

    .line 534
    sget-object v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sFpsStatisticsMap:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 535
    sget-object v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sFpsStatisticsMap:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;

    .line 540
    .local v3, "fpsStatistics":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;
    :goto_14
    # operator++ for: Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mFrameCount:I
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->access$408(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;)I

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 542
    .local v4, "now":J
    # getter for: Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mLastFpsTime:J
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->access$500(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 543
    .local v0, "diff":J
    const-wide/16 v6, 0xbb8

    cmp-long v6, v0, v6

    if-lez v6, :cond_67

    .line 544
    # getter for: Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mFrameCount:I
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->access$400(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;)I

    move-result v6

    # getter for: Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mLastFrameCount:I
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->access$600(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    long-to-float v7, v0

    div-float v2, v6, v7

    .line 546
    .local v2, "fps":F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FPS_MeasurePerformance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%.4f "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/sonyericsson/cameracommon/utility/Log;->logKpi(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    # setter for: Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mLastFpsTime:J
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->access$502(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;J)J

    .line 548
    # getter for: Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mFrameCount:I
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->access$400(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;)I

    move-result v6

    # setter for: Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->mLastFrameCount:I
    invoke-static {v3, v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;->access$602(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;I)I

    .line 550
    .end local v2    # "fps":F
    :cond_67
    sget-object v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sFpsStatisticsMap:Ljava/util/Map;

    invoke-interface {v6, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .end local v0    # "diff":J
    .end local v3    # "fpsStatistics":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;
    .end local v4    # "now":J
    :cond_6c
    return-void

    .line 537
    :cond_6d
    new-instance v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;-><init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V

    .restart local v3    # "fpsStatistics":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$FpsStatistics;
    goto :goto_14
.end method

.method private static init()V
    .registers 1

    .prologue
    .line 206
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    return-void
.end method

.method private static final isLastMeasuredTime(Ljava/util/List;I)Z
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 257
    .local v2, "target":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 258
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 259
    .local v0, "data":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    iget-object v3, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    iget-object v4, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    if-ne v3, v4, :cond_22

    .line 260
    iget-object v3, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    iget-object v4, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    if-ne v3, v4, :cond_22

    .line 261
    const/4 v3, 0x0

    .line 265
    .end local v0    # "data":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    :goto_21
    return v3

    .line 257
    .restart local v0    # "data":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 265
    .end local v0    # "data":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    :cond_25
    const/4 v3, 0x1

    goto :goto_21
.end method

.method public static final measureResource(I)V
    .registers 8
    .param p0, "aId"    # I

    .prologue
    .line 318
    sget-boolean v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    if-nez v6, :cond_5

    .line 331
    :goto_4
    return-void

    .line 322
    :cond_5
    new-instance v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;-><init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V

    .line 323
    .local v2, "resource":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 324
    .local v3, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    .line 325
    .local v4, "totalMem":J
    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    .line 328
    .local v0, "freeMem":J
    iput-wide v4, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTotalMemory:J

    .line 329
    iput-wide v0, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mFreeMemory:J

    .line 330
    sget-object v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public static final measureResource(Ljava/lang/String;)V
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 335
    sget-boolean v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    if-nez v6, :cond_5

    .line 348
    :goto_4
    return-void

    .line 339
    :cond_5
    new-instance v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;-><init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V

    .line 340
    .local v2, "resource":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 341
    .local v3, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    .line 342
    .local v4, "totalMem":J
    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    .line 344
    .local v0, "freeMem":J
    iput-object p0, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTag:Ljava/lang/String;

    .line 345
    iput-wide v4, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTotalMemory:J

    .line 346
    iput-wide v0, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mFreeMemory:J

    .line 347
    sget-object v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private static final measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;Ljava/lang/String;)V
    .registers 7
    .param p0, "id"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .param p1, "aKind"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    .line 231
    sget-boolean v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    if-nez v3, :cond_5

    .line 243
    :goto_4
    return-void

    .line 235
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 236
    .local v0, "sysTime":J
    new-instance v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;-><init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V

    .line 238
    .local v2, "time":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    iput-object p0, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 239
    iput-object p2, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->additionalInfo:Ljava/lang/String;

    .line 240
    iput-wide v0, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    .line 241
    iput-object p1, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    .line 242
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mTimeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public static final measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V
    .registers 4
    .param p0, "id"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .param p1, "isStart"    # Z

    .prologue
    .line 294
    if-eqz p1, :cond_a

    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    :goto_4
    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;Ljava/lang/String;)V

    .line 298
    return-void

    .line 294
    :cond_a
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    goto :goto_4
.end method

.method public static final measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;ZLjava/lang/String;)V
    .registers 4
    .param p0, "id"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .param p1, "isStart"    # Z
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    .line 279
    if-eqz p1, :cond_8

    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    :goto_4
    invoke-static {p0, v0, p2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;Ljava/lang/String;)V

    .line 283
    return-void

    .line 279
    :cond_8
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    goto :goto_4
.end method

.method public static final measureTimeOverwrite(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V
    .registers 4
    .param p0, "id"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .param p1, "isStart"    # Z

    .prologue
    .line 311
    if-eqz p1, :cond_a

    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START_OVERWRITE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    :goto_4
    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;Ljava/lang/String;)V

    .line 315
    return-void

    .line 311
    :cond_a
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    goto :goto_4
.end method

.method public static final outResult()V
    .registers 5

    .prologue
    .line 355
    sget-boolean v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    if-nez v3, :cond_9

    sget-boolean v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    if-nez v3, :cond_9

    .line 374
    .local v0, "resultResourceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;>;"
    .local v1, "resultTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;>;"
    .local v2, "string":Ljava/lang/String;
    :goto_8
    return-void

    .line 359
    .end local v0    # "resultResourceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;>;"
    .end local v1    # "resultTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;>;"
    .end local v2    # "string":Ljava/lang/String;
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mTimeList:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 360
    .restart local v1    # "resultTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;>;"
    new-instance v0, Ljava/util/ArrayList;

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 362
    .restart local v0    # "resultResourceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;>;"
    const-string v2, ""

    .line 363
    .restart local v2    # "string":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->init()V

    .line 365
    sget-boolean v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    if-eqz v3, :cond_35

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->setResultTime(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 368
    :cond_35
    sget-boolean v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    if-eqz v3, :cond_4e

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->setResultResource(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    :cond_4e
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->writeFile(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static final outResultDelay(I)V
    .registers 1
    .param p0, "delayMillis"    # I

    .prologue
    .line 386
    return-void
.end method

.method public static final setMemoryFlag(Z)V
    .registers 1
    .param p0, "flag"    # Z

    .prologue
    .line 226
    sput-boolean p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    .line 227
    return-void
.end method

.method private static setResultResource(Ljava/util/List;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "resultResourceList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .local v3, "string":Ljava/lang/StringBuilder;
    const-string v5, "---Measure Resource Start---\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v5, "ID,Total,Used,free\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const/4 v2, 0x0

    .local v2, "sIndex":I
    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_67

    .line 481
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    iget-object v4, v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTag:Ljava/lang/String;

    .line 482
    .local v4, "tag":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    iget-wide v6, v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTotalMemory:J

    .line 483
    .local v6, "totalMem":J
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    iget-wide v0, v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mFreeMemory:J

    .line 484
    .local v0, "freeMem":J
    sub-long v8, v6, v0

    .line 485
    .local v8, "usedMem":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 488
    .end local v0    # "freeMem":J
    .end local v4    # "tag":Ljava/lang/String;
    .end local v6    # "totalMem":J
    .end local v8    # "usedMem":J
    :cond_67
    const-string v5, "---Measure Resource End---\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static setResultTime(Ljava/util/List;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "resultTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;>;"
    const/4 v14, 0x0

    .line 396
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v6

    array-length v6, v6

    new-array v4, v6, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 397
    .local v4, "start":[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v6

    array-length v6, v6

    new-array v1, v6, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;

    .line 398
    .local v1, "amounts":[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v6

    array-length v6, v6

    if-ge v3, v6, :cond_21

    .line 399
    new-instance v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;

    invoke-direct {v6, v14}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;-><init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V

    aput-object v6, v1, v3

    .line 398
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 401
    :cond_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .local v5, "string":Ljava/lang/StringBuilder;
    const-string v6, "---Measure Time Start---\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v6, "[PERFORMANCE]ID,Time[ms],Comment\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const/4 v3, 0x0

    :goto_31
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_ff

    .line 405
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 406
    .local v2, "data":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    sget-object v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    if-ne v6, v7, :cond_58

    .line 407
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aget-object v6, v4, v6

    if-nez v6, :cond_55

    .line 409
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aput-object v2, v4, v6

    .line 404
    :cond_55
    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 411
    :cond_58
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    sget-object v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START_OVERWRITE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    if-ne v6, v7, :cond_67

    .line 413
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aput-object v2, v4, v6

    goto :goto_55

    .line 416
    :cond_67
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aget-object v6, v4, v6

    if-eqz v6, :cond_55

    .line 417
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aget-object v6, v1, v6

    iget-object v7, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    iput-object v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 418
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aget-object v6, v1, v6

    iget-wide v8, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->total:J

    iget-wide v10, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    iget-object v7, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 419
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v7

    aget-object v7, v4, v7

    iget-wide v12, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    sub-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->total:J

    .line 420
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aget-object v6, v1, v6

    iget v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->count:I

    .line 421
    invoke-static {p0, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->isLastMeasuredTime(Ljava/util/List;I)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 423
    const-string v6, "[PERFORMANCE]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    iget-wide v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    iget-object v8, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 429
    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v8

    aget-object v8, v4, v8

    iget-wide v8, v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    sub-long/2addr v6, v8

    .line 428
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 427
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aget-object v6, v4, v6

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aput-object v14, v4, v6

    goto/16 :goto_55

    .line 439
    .end local v2    # "data":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    :cond_ff
    const-string v6, "[PERFORMANCE]---Measure Time End---\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string v6, "---Measure Time Dump Start---\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const-string v6, "ID,Type(1:Start/2:End),SytemTime,RelativeTime,Comment\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const/4 v3, 0x0

    :goto_10f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_161

    .line 443
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 444
    .restart local v2    # "data":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 447
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-wide v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-wide v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    sget-object v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sInstance:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;

    iget-wide v8, v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->originalTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-object v6, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    add-int/lit8 v3, v3, 0x1

    goto :goto_10f

    .line 456
    .end local v2    # "data":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;
    :cond_161
    const/4 v3, 0x0

    :goto_162
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v6

    array-length v6, v6

    if-ge v3, v6, :cond_1b4

    .line 457
    aget-object v0, v1, v3

    .line 458
    .local v0, "amount":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;
    iget-object v6, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    if-eqz v6, :cond_1b1

    .line 459
    const-string v6, "AmountTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    iget-object v6, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v6, " total: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget-wide v6, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->total:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v6, ", count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget v6, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->count:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v6, ", avalage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    iget-wide v6, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->total:J

    iget v8, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->count:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :cond_1b1
    add-int/lit8 v3, v3, 0x1

    goto :goto_162

    .line 470
    .end local v0    # "amount":Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;
    :cond_1b4
    const-string v6, "---Measure Time Dump End---\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static final setTimerFlag(Z)V
    .registers 1
    .param p0, "flag"    # Z

    .prologue
    .line 217
    sput-boolean p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    .line 218
    return-void
.end method

.method private static writeFile(Ljava/lang/String;)V
    .registers 7
    .param p0, "aResult"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 494
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_perform.csv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 497
    :try_start_28
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_5e

    .line 504
    :cond_2b
    :try_start_2b
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "camera_perform.csv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_52} :catch_6c
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_52} :catch_8a

    .line 504
    .local v2, "writer":Ljava/io/OutputStreamWriter;
    const/4 v4, 0x0

    .line 507
    :try_start_53
    invoke-virtual {v2, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_56} :catch_a4
    .catchall {:try_start_53 .. :try_end_56} :catchall_a6

    .line 508
    if-eqz v2, :cond_5d

    if-eqz v4, :cond_86

    :try_start_5a
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5d} :catch_67
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_5d} :catch_6c
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_8a

    .line 513
    .end local v2    # "writer":Ljava/io/OutputStreamWriter;
    :cond_5d
    :goto_5d
    return-void

    .line 498
    :catch_5e
    move-exception v0

    .line 499
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "MeasurePerformance"

    const-string v4, "Create output file failed"

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 508
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "writer":Ljava/io/OutputStreamWriter;
    :catch_67
    move-exception v3

    :try_start_68
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_68 .. :try_end_6b} :catch_6c
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_8a

    goto :goto_5d

    .end local v2    # "writer":Ljava/io/OutputStreamWriter;
    :catch_6c
    move-exception v0

    .line 509
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "MeasurePerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MeasurePerformance::writeFile]:Error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 508
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "writer":Ljava/io/OutputStreamWriter;
    :cond_86
    :try_start_86
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_89
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_89} :catch_6c
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_5d

    .line 510
    .end local v2    # "writer":Ljava/io/OutputStreamWriter;
    :catch_8a
    move-exception v0

    .line 511
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "MeasurePerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MeasurePerformance::writeFile]:Error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 504
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "writer":Ljava/io/OutputStreamWriter;
    :catch_a4
    move-exception v4

    :try_start_a5
    throw v4
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a6

    .line 508
    :catchall_a6
    move-exception v3

    if-eqz v2, :cond_ae

    if-eqz v4, :cond_b4

    :try_start_ab
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_ae} :catch_af
    .catch Ljava/io/FileNotFoundException; {:try_start_ab .. :try_end_ae} :catch_6c
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_8a

    :cond_ae
    :goto_ae
    :try_start_ae
    throw v3

    :catch_af
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_ae

    :cond_b4
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_b7
    .catch Ljava/io/FileNotFoundException; {:try_start_ae .. :try_end_b7} :catch_6c
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b7} :catch_8a

    goto :goto_ae
.end method
