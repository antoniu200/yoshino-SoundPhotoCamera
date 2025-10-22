.class Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;
.super Ljava/lang/Object;
.source "SelfTimerCountDownNumberView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueAnimationUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    # getter for: Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->access$200(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    # getter for: Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->access$200(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 174
    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    # getter for: Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->access$200(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 175
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v1, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageAlpha(I)V

    .line 176
    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->invalidate()V

    .line 178
    .end local v0    # "alpha":I
    :cond_2e
    return-void
.end method
