.class Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;
.super Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;
.source "ViewFinderVisuals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderCaptureAreaStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V
    .registers 3

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;

    .prologue
    .line 1877
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V

    return-void
.end method


# virtual methods
.method public onCaptureAreaLongPressed(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "holdPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1893
    return-void
.end method

.method public onCaptureAreaMoved(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "movingPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1898
    return-void
.end method

.method public onCaptureAreaReleased(Landroid/graphics/Point;)V
    .registers 7
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    const/4 v4, 0x0

    .line 1911
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mIsSetupHeadupDisplayInvoked:Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$1800(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1923
    :goto_9
    return-void

    .line 1916
    :cond_a
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 1917
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_RELEASE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;->CAPTURE_AREA:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1921
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_STOP_TOUCH_ZOOM:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1922
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_CANCEL_TOUCH_ZOOM:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public onCaptureAreaSingleTapUp(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "tapUpPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1888
    return-void
.end method

.method public onCaptureAreaStopped()V
    .registers 6

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isTouchCaptureEnable()Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$1700(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1904
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1907
    :cond_1b
    return-void
.end method

.method public onCaptureAreaTouched(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1883
    return-void
.end method
