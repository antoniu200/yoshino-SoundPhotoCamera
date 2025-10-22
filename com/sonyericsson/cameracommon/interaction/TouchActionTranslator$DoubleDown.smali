.class Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;
.super Ljava/lang/Object;
.source "TouchActionTranslator.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleDown"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)V
    .registers 2

    .prologue
    .line 453
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)V

    return-void
.end method


# virtual methods
.method public handleMotionEvent(Landroid/view/MotionEvent;)V
    .registers 12
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_c8

    .line 500
    :cond_a
    :goto_a
    :pswitch_a
    return-void

    .line 458
    :pswitch_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 461
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v0, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 462
    .local v0, "index0":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 463
    .local v1, "index1":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->access$200(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onDoubleMoved(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 464
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance v5, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v5, v6, v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Landroid/graphics/Point;Landroid/graphics/Point;)V

    # invokes: Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V
    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->access$400(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    goto :goto_a

    .line 468
    .end local v0    # "index0":Landroid/graphics/Point;
    .end local v1    # "index1":Landroid/graphics/Point;
    :pswitch_46
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->access$200(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onDoubleCanceled()V

    .line 469
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance v5, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v5, v6, v9}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V
    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->access$400(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    goto :goto_a

    .line 473
    :pswitch_5c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_a

    .line 474
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance v5, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v5, v6, v9}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V
    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->access$400(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    goto :goto_a

    .line 479
    :pswitch_70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-eq v4, v6, :cond_a

    .line 482
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 484
    .local v2, "release":I
    if-nez v2, :cond_c5

    .line 485
    const/4 v3, 0x1

    .line 489
    .local v3, "remain":I
    :goto_7d
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->access$200(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    .line 490
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    new-instance v6, Landroid/graphics/Point;

    .line 491
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 489
    invoke-interface {v4, v5, v6}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onSingleReleasedInDouble(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 494
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    # invokes: Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->access$900(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object v4

    .line 495
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 494
    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->updateCurrentAndLastPosition(II)V

    .line 497
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance v5, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v5, v6, v9}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V
    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->access$400(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    goto/16 :goto_a

    .line 487
    .end local v3    # "remain":I
    :cond_c5
    const/4 v3, 0x0

    .restart local v3    # "remain":I
    goto :goto_7d

    .line 456
    nop

    :pswitch_data_c8
    .packed-switch 0x2
        :pswitch_b
        :pswitch_46
        :pswitch_a
        :pswitch_5c
        :pswitch_70
    .end packed-switch
.end method

.method public handleSingleTouchMoveEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 4
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 506
    return-void
.end method

.method public handleSingleTouchStopEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 4
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 512
    return-void
.end method

.method public handleTouchRotateEvent(FF)V
    .registers 3
    .param p1, "degreeVsOrigin"    # F
    .param p2, "degreeVsLast"    # F

    .prologue
    .line 523
    return-void
.end method

.method public handleTouchScaleEvent(FFF)V
    .registers 4
    .param p1, "currentLength"    # F
    .param p2, "previousLength"    # F
    .param p3, "originalLength"    # F

    .prologue
    .line 518
    return-void
.end method
