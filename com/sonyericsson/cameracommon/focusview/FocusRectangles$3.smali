.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$3;
.super Ljava/lang/Object;
.source "FocusRectangles.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playObjectTrackingAnimation(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 1677
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$3;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1686
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1680
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1681
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1691
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1696
    return-void
.end method
