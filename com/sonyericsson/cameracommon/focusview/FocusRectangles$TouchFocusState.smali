.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;
.super Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchFocusState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .registers 2

    .prologue
    .line 535
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;

    .prologue
    .line 535
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void
.end method


# virtual methods
.method public clearExceptTouchFocus()V
    .registers 4

    .prologue
    .line 618
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 620
    .local v0, "rect":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->stopFocusAnimation(Landroid/view/View;)V

    .line 621
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->clearExceptTouchFocus()V

    .line 622
    return-void
.end method

.method public onAutoFocusCanceled()V
    .registers 4

    .prologue
    .line 564
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 565
    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 567
    .local v0, "rectTouch":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    return-void
.end method

.method public onAutoFocusDone(Z)V
    .registers 5
    .param p1, "success"    # Z

    .prologue
    .line 547
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setAFLocking(Z)V

    .line 549
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 550
    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 551
    .local v0, "rectTouch":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    if-eqz p1, :cond_33

    .line 553
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchAfSuccessIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 554
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchAfSuccessIcon()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFocusInAnimationTouch(Landroid/view/View;I)V

    .line 560
    :cond_32
    :goto_32
    return-void

    .line 556
    :cond_33
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 557
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFadeOutAnimationTouch(Landroid/view/View;)V

    goto :goto_32
.end method

.method public onAutoFocusStarted()V
    .registers 4

    .prologue
    .line 538
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 539
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 541
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchAfFocusingIcon()I

    move-result v2

    .line 539
    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    .line 542
    return-void
.end method

.method public onFaceDetected(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;)V
    .registers 4
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x1

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Z)V
    invoke-static {v0, p1, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Z)V

    .line 590
    return-void
.end method

.method public onFaceLost()V
    .registers 1

    .prologue
    .line 595
    return-void
.end method

.method public onObjectRemoved()V
    .registers 1

    .prologue
    .line 614
    return-void
.end method

.method public onTrackedObjectStateUpdated(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    .registers 2
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .prologue
    .line 609
    return-void
.end method

.method public onUiComponentRemoved()V
    .registers 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetRectanglesColor()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    .line 632
    return-void
.end method

.method public setFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .registers 4
    .param p1, "touchPoint"    # Landroid/graphics/Point;
    .param p2, "setType"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 574
    return-void
.end method

.method public startFaceDetection()V
    .registers 5

    .prologue
    .line 580
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearSingleAutoFocus()V

    .line 581
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearObjectTracking()V

    .line 584
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    .line 585
    return-void
.end method

.method public startObjectTracking()V
    .registers 5

    .prologue
    .line 600
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->clearExceptTouchFocus()V

    .line 603
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    .line 604
    return-void
.end method
