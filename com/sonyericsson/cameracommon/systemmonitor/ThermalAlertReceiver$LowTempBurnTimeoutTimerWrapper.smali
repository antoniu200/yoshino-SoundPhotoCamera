.class Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;
.super Ljava/lang/Object;
.source "ThermalAlertReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LowTempBurnTimeoutTimerWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;
    }
.end annotation


# static fields
.field static final INVALID_TIMER_TIME:J = -0x1L


# instance fields
.field private mTimer:Ljava/util/Timer;

.field private mTimerToBeExpiredTimeMillis:J

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)V
    .registers 4

    .prologue
    .line 551
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    .line 546
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimerToBeExpiredTimeMillis:J

    .line 553
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$1;

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)V

    return-void
.end method

.method private getRemainedTimeMillis()J
    .registers 9

    .prologue
    const-wide/16 v2, -0x1

    .line 556
    iget-wide v4, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimerToBeExpiredTimeMillis:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_a

    move-wide v0, v2

    .line 569
    :cond_9
    :goto_9
    return-wide v0

    .line 561
    :cond_a
    iget-wide v4, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimerToBeExpiredTimeMillis:J

    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 564
    .local v0, "remainedTimeMillis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_9

    move-wide v0, v2

    .line 566
    goto :goto_9
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .registers 3

    .prologue
    .line 608
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_16

    .line 609
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 610
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    .line 613
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimerToBeExpiredTimeMillis:J
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 617
    :cond_16
    monitor-exit p0

    return-void

    .line 608
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized requestTimeMillis(J)V
    .registers 8
    .param p1, "durationTimeMillis"    # J

    .prologue
    .line 581
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->getRemainedTimeMillis()J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_2f

    move-result-wide v0

    .line 582
    .local v0, "remainedTimeMillis":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    .line 584
    cmp-long v2, v0, p1

    if-gez v2, :cond_11

    .line 600
    :goto_f
    monitor-exit p0

    return-void

    .line 592
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 595
    new-instance v2, Ljava/util/Timer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Z)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    .line 597
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    new-instance v3, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$1;)V

    invoke-virtual {v2, v3, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimerToBeExpiredTimeMillis:J
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2f

    goto :goto_f

    .line 581
    .end local v0    # "remainedTimeMillis":J
    :catchall_2f
    move-exception v2

    monitor-exit p0

    throw v2
.end method
