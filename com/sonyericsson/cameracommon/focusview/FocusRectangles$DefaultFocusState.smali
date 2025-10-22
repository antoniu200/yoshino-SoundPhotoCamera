.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;
.super Ljava/lang/Object;
.source "FocusRectangles.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultFocusState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearExceptTouchFocus()V
    .registers 2

    .prologue
    .line 911
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearSingleAutoFocus()V

    .line 912
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearObjectTracking()V

    .line 913
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearFaceDetection()V

    .line 914
    return-void
.end method

.method public onAutoFocusCanceled()V
    .registers 1

    .prologue
    .line 850
    return-void
.end method

.method public onAutoFocusDone(Z)V
    .registers 5
    .param p1, "success"    # Z

    .prologue
    .line 832
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 833
    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 834
    .local v0, "rectSingle":Landroid/widget/ImageView;
    if-eqz p1, :cond_29

    .line 835
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 836
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 838
    :cond_1a
    sget v1, Lcom/sonyericsson/cameracommon/focusview/CommonResources$SingleIndicator;->SUCCESS:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 839
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFocusInAnimationSingle(Landroid/view/View;)V

    .line 845
    :cond_28
    :goto_28
    return-void

    .line 841
    :cond_29
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_28

    .line 842
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_28
.end method

.method public onAutoFocusStarted()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 820
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 821
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 822
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 823
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 825
    :cond_1f
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/focusview/CommonResources$SingleIndicator;->FOCUSING:I

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    .line 828
    return-void
.end method

.method public onFaceDetected(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;)V
    .registers 6
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;

    .prologue
    .line 873
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;->faceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 875
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    # setter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1902(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    .line 883
    :goto_14
    return-void

    .line 879
    :cond_15
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Z)V
    invoke-static {v0, p1, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Z)V

    .line 882
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    goto :goto_14
.end method

.method public onFaceLost()V
    .registers 1

    .prologue
    .line 888
    return-void
.end method

.method public onObjectRemoved()V
    .registers 1

    .prologue
    .line 907
    return-void
.end method

.method public onTrackedObjectStateUpdated(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    .registers 2
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .prologue
    .line 902
    return-void
.end method

.method public onUiComponentOverlaid()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 918
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 919
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V

    .line 920
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideTrackedObjectRecgantle()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    .line 921
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 922
    return-void
.end method

.method public onUiComponentRemoved()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 930
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetRectanglesColor()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    .line 935
    return-void
.end method

.method public setFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .registers 7
    .param p1, "touchPoint"    # Landroid/graphics/Point;
    .param p2, "setType"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .prologue
    .line 854
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 857
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    .line 858
    return-void
.end method

.method public startFaceDetection()V
    .registers 5

    .prologue
    .line 864
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearSingleAutoFocus()V

    .line 865
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearObjectTracking()V

    .line 868
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    .line 869
    return-void
.end method

.method public startObjectTracking()V
    .registers 5

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->clearExceptTouchFocus()V

    .line 896
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    .line 897
    return-void
.end method
