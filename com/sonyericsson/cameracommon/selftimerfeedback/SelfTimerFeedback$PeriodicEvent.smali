.class Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;
.super Ljava/lang/Object;
.source "SelfTimerFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeriodicEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

.field private mCounter:J

.field private final mHandler:Landroid/os/Handler;

.field private final mInterval:J

.field private mStartTime:J

.field private final mTickEvent:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;J)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;
    .param p3, "interval"    # J

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;-><init>(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mTickEvent:Ljava/lang/Runnable;

    .line 111
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mHandler:Landroid/os/Handler;

    .line 112
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCallback:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

    .line 113
    iput-wide p3, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mInterval:J

    .line 114
    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)J
    .registers 3
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCounter:J

    return-wide v0
.end method

.method static synthetic access$504(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)J
    .registers 5
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCounter:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)J
    .registers 3
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mInterval:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCallback:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->scheduleNextTick()V

    return-void
.end method

.method private scheduleNextTick()V
    .registers 9

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mTickEvent:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mStartTime:J

    iget-wide v4, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCounter:J

    iget-wide v6, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mInterval:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 128
    return-void
.end method


# virtual methods
.method public start(J)V
    .registers 6
    .param p1, "delay"    # J

    .prologue
    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mStartTime:J

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCounter:J

    .line 119
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->scheduleNextTick()V

    .line 120
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mTickEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method
