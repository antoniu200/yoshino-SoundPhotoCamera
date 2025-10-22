.class Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;
.super Ljava/lang/Object;
.source "SelfTimerCountDownNumberView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V
    .registers 2

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 200
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageAlpha(I)V

    .line 190
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageAlpha(I)V

    .line 185
    return-void
.end method
