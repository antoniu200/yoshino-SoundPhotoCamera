.class Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$1;
.super Ljava/lang/Object;
.source "SelfTimerFeedback.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTick(J)V
    .registers 12
    .param p1, "elapsedTime"    # J

    .prologue
    .line 61
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;

    # getter for: Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mDuration:I
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->access$000(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;)I

    move-result v3

    int-to-long v4, v3

    sub-long v0, v4, p1

    .line 65
    .local v0, "remainTime":J
    const/4 v2, 0x0

    .local v2, "timerLevel":I
    :goto_a
    # getter for: Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_LEVELS:[I
    invoke-static {}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->access$100()[I

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_1c

    .line 66
    # getter for: Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_LEVELS:[I
    invoke-static {}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->access$100()[I

    move-result-object v3

    aget v3, v3, v2

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-gtz v3, :cond_38

    .line 72
    :cond_1c
    # getter for: Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_LEVELS:[I
    invoke-static {}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->access$100()[I

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_2a

    .line 73
    # getter for: Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_LEVELS:[I
    invoke-static {}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->access$100()[I

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    .line 76
    :cond_2a
    if-nez v2, :cond_41

    .line 77
    # getter for: Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_INTERVALS:[I
    invoke-static {}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->access$200()[I

    move-result-object v3

    aget v3, v3, v2

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-gtz v3, :cond_3b

    .line 87
    :cond_37
    :goto_37
    return-void

    .line 65
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 81
    :cond_3b
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;

    # invokes: Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->blink()V
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->access$300(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;)V

    goto :goto_37

    .line 83
    :cond_41
    # getter for: Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_LEVELS:[I
    invoke-static {}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->access$100()[I

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    int-to-long v4, v3

    sub-long v4, v0, v4

    .line 84
    # getter for: Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_INTERVALS:[I
    invoke-static {}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->access$200()[I

    move-result-object v3

    aget v3, v3, v2

    int-to-long v6, v3

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_37

    .line 85
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;

    # invokes: Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->blink()V
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->access$300(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;)V

    goto :goto_37
.end method
