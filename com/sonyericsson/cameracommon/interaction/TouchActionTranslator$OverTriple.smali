.class Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;
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
    name = "OverTriple"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)V
    .registers 2

    .prologue
    .line 610
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;

    .prologue
    .line 610
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)V

    return-void
.end method


# virtual methods
.method public handleMotionEvent(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    .line 625
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 615
    :pswitch_9
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->access$200(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onOverTripleCanceled()V

    .line 616
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance v1, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->access$400(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    goto :goto_8

    .line 620
    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 621
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance v1, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;)V

    # invokes: Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->access$400(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    goto :goto_8

    .line 613
    nop

    :pswitch_data_34
    .packed-switch 0x3
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_1f
    .end packed-switch
.end method

.method public handleSingleTouchMoveEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 4
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 631
    return-void
.end method

.method public handleSingleTouchStopEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 4
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 637
    return-void
.end method

.method public handleTouchRotateEvent(FF)V
    .registers 3
    .param p1, "degreeVsOrigin"    # F
    .param p2, "degreeVsLast"    # F

    .prologue
    .line 648
    return-void
.end method

.method public handleTouchScaleEvent(FFF)V
    .registers 4
    .param p1, "currentLength"    # F
    .param p2, "previousLength"    # F
    .param p3, "originalLength"    # F

    .prologue
    .line 643
    return-void
.end method
