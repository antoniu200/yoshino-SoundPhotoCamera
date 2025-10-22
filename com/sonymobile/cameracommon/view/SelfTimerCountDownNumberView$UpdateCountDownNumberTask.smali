.class Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;
.super Ljava/lang/Object;
.source "SelfTimerCountDownNumberView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCountDownNumberTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V
    .registers 2

    .prologue
    .line 242
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    # operator-- for: Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->access$410(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)I

    .line 246
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    # invokes: Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImage()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->access$500(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V

    .line 247
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    # getter for: Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->access$400(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_18

    .line 248
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    # invokes: Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->postNextUpdateEvent()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->access$600(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V

    .line 250
    :cond_18
    return-void
.end method
