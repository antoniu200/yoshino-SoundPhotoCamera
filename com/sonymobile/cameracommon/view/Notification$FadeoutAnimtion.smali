.class Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FadeoutAnimtion"
.end annotation


# instance fields
.field private mFadeoutAnimation:Landroid/view/animation/Animation;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/view/Notification;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/view/Notification;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/cameracommon/view/Notification;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 281
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    # getter for: Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/Notification;->access$000(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 282
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    # getter for: Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/Notification;->access$100(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 283
    return-void
.end method

.method public create()V
    .registers 5

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    .line 258
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/Notification;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$anim;->notification_fade_out:I

    .line 257
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;->mFadeoutAnimation:Landroid/view/animation/Animation;

    .line 259
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;->mFadeoutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sonymobile/cameracommon/view/Notification$AnimationListenerImpl;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/cameracommon/view/Notification$AnimationListenerImpl;-><init>(Lcom/sonymobile/cameracommon/view/Notification;Lcom/sonymobile/cameracommon/view/Notification$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 260
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;->mFadeoutAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a

    .line 265
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;->mFadeoutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 267
    :cond_a
    iput-object v1, p0, Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;->mFadeoutAnimation:Landroid/view/animation/Animation;

    .line 268
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    # getter for: Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/Notification;->access$300(Lcom/sonymobile/cameracommon/view/Notification;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 273
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;->cancel()V

    .line 275
    :cond_b
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    # getter for: Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/Notification;->access$000(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;->mFadeoutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 276
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    # getter for: Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/Notification;->access$100(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;->mFadeoutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 277
    return-void
.end method
