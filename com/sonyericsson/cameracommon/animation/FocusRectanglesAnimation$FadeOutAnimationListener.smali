.class Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;
.super Ljava/lang/Object;
.source "FocusRectanglesAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeOutAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)V
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;->this$0:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$1;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 229
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;->this$0:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    # getter for: Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mAnimationMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->access$200(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 230
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 231
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :cond_12
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;->this$0:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    # getter for: Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mAnimationMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->access$200(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 239
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 225
    return-void
.end method
