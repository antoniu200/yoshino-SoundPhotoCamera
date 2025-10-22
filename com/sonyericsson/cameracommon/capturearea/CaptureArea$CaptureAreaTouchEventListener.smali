.class Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;
.super Ljava/lang/Object;
.source "CaptureArea.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptureAreaTouchEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 98
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    .line 155
    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # invokes: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->updateView()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$400(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)V

    .line 157
    :cond_e
    return v3

    .line 101
    :pswitch_f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # setter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mIsTouched:Z
    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$002(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;Z)Z

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .line 105
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->startTouchStopDetection(II)V

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # getter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$100(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # getter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$100(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # invokes: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->getTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    invoke-static {v1, p2}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$200(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;->onCaptureAreaTouched(Landroid/graphics/Point;)V

    goto :goto_9

    .line 115
    :pswitch_3d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # getter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mIsTouched:Z
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$000(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->updateCurrentPosition(II)V

    goto :goto_9

    .line 127
    :pswitch_57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # setter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mIsTouched:Z
    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$002(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;Z)Z

    .line 132
    :pswitch_5c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # invokes: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->hitTest(Landroid/view/View;Landroid/view/MotionEvent;)Z
    invoke-static {v0, v1, p2}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$300(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # getter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$100(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # getter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$100(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # invokes: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->getTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    invoke-static {v1, p2}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$200(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;->onCaptureAreaReleased(Landroid/graphics/Point;)V

    .line 144
    :cond_7d
    :goto_7d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->stopTouchStopDetection()V

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # setter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mIsTouched:Z
    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$002(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;Z)Z

    goto :goto_9

    .line 138
    :cond_8a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # getter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$100(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    # getter for: Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->access$100(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    goto :goto_7d

    .line 98
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_57
        :pswitch_3d
        :pswitch_5c
    .end packed-switch
.end method
