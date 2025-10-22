.class Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$AnimationEventHandler;
.super Ljava/lang/Object;
.source "SelfTimerCountDownCircleView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationEventHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$1;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$AnimationEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 155
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 150
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 145
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 140
    return-void
.end method
