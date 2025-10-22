.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$FadeOutAnimationListener;
.super Ljava/lang/Object;
.source "FocusRectangle.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeOutAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$FadeOutAnimationListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$FadeOutAnimationListener;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$FadeOutAnimationListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->mMapFadeOutAnimation:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 73
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle$FadeOutAnimationListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->mMapFadeOutAnimation:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;->access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangle;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Landroid/view/animation/Animation;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    goto :goto_1a

    .line 79
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Landroid/view/animation/Animation;>;"
    :cond_3d
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 84
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 68
    return-void
.end method
