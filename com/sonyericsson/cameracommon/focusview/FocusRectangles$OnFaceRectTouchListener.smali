.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;
.super Ljava/lang/Object;
.source "FocusRectangles.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnFaceRectTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isTouchAreaOnTouchCapture(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1180
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCaptureArea:Landroid/view/View;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1181
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCaptureArea:Landroid/view/View;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isEventContainedInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1184
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public onRectTouchCancel(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsLockedBySelfTimer:Z
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1176
    :goto_8
    return-void

    .line 1175
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;->onCanceled()V

    goto :goto_8
.end method

.method public onRectTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1123
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsAFLocking:Z
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsLockedBySelfTimer:Z
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1148
    :cond_10
    :goto_10
    return-void

    .line 1126
    :cond_11
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->rect:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    .line 1127
    .local v0, "rectangle":Lcom/sonyericsson/cameracommon/focusview/Rectangle;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    .line 1128
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/List;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 1129
    .local v1, "taggedRectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1131
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLastFaceDetectionResult:Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;

    move-result-object v3

    const/4 v4, 0x0

    # invokes: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->faceResultToRectangles(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Z)V
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Z)V

    .line 1134
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAllFocusExceptFace()V

    .line 1135
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->startFaceDetection()V

    .line 1139
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->isTouchAreaOnTouchCapture(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1142
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;->onTouched()V

    goto :goto_10
.end method

.method public onRectTouchLongPress(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsLockedBySelfTimer:Z
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1195
    :goto_8
    return-void

    .line 1193
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;->onLongPressed()V

    goto :goto_8
.end method

.method public onRectTouchUp(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1152
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsAFLocking:Z
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsLockedBySelfTimer:Z
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1168
    :cond_10
    :goto_10
    return-void

    .line 1155
    :cond_11
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->rect:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    .line 1156
    .local v0, "rectangle":Lcom/sonyericsson/cameracommon/focusview/Rectangle;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    .line 1157
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/List;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 1158
    .local v1, "taggedRectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1161
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->isTouchAreaOnTouchCapture(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1162
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    # getter for: Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$2500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;->onReleased()V

    goto :goto_10
.end method
