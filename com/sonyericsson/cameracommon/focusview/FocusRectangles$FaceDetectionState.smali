.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;
.super Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceDetectionState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .registers 2

    .prologue
    .line 710
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;

    .prologue
    .line 710
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void
.end method

.method private isFaceRectAvailable()Z
    .registers 4

    .prologue
    .line 744
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/List;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 745
    .local v0, "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    .line 746
    const/4 v1, 0x1

    .line 750
    .end local v0    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public onAutoFocusDone(Z)V
    .registers 6
    .param p1, "success"    # Z

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->isFaceRectAvailable()Z

    move-result v2

    if-nez v2, :cond_a

    .line 724
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->onAutoFocusDone(Z)V

    .line 741
    :cond_9
    return-void

    .line 729
    :cond_a
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setAFLocking(Z)V

    .line 731
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/List;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 733
    .local v0, "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-eqz p1, :cond_2e

    .line 734
    sget v1, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->SUCCESS:I

    .line 738
    .local v1, "resId":I
    :goto_2a
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    goto :goto_1a

    .line 736
    .end local v1    # "resId":I
    :cond_2e
    const/4 v1, 0x0

    .restart local v1    # "resId":I
    goto :goto_2a
.end method

.method public onAutoFocusStarted()V
    .registers 2

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->isFaceRectAvailable()Z

    move-result v0

    if-nez v0, :cond_9

    .line 715
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->onAutoFocusStarted()V

    .line 718
    :cond_9
    return-void
.end method

.method public onFaceDetected(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;)V
    .registers 4
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;

    .prologue
    .line 772
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;->faceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 773
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->onFaceLost()V

    .line 778
    :goto_b
    return-void

    .line 777
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Z)V
    invoke-static {v0, p1, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Z)V

    goto :goto_b
.end method

.method public onFaceLost()V
    .registers 4

    .prologue
    .line 783
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearFaceDetection()V

    .line 785
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    .line 786
    return-void
.end method

.method public onObjectRemoved()V
    .registers 1

    .prologue
    .line 814
    return-void
.end method

.method public onTrackedObjectStateUpdated(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    .registers 6
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .prologue
    .line 802
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 803
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x1

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V

    .line 805
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onObjectTrackedInternal(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V

    .line 808
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    .line 809
    return-void
.end method

.method public setFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .registers 7
    .param p1, "touchPoint"    # Landroid/graphics/Point;
    .param p2, "setType"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .prologue
    .line 755
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    if-eq p2, v0, :cond_5

    .line 763
    :goto_4
    return-void

    .line 759
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 762
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    goto :goto_4
.end method

.method public startFaceDetection()V
    .registers 1

    .prologue
    .line 768
    return-void
.end method

.method public startObjectTracking()V
    .registers 5

    .prologue
    .line 791
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearSingleAutoFocus()V

    .line 792
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearTouchFocus()V

    .line 793
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearFaceDetection()V

    .line 796
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    .line 797
    return-void
.end method
