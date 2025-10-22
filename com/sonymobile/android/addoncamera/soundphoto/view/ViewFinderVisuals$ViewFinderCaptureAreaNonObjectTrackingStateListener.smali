.class Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaNonObjectTrackingStateListener;
.super Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;
.source "ViewFinderVisuals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderCaptureAreaNonObjectTrackingStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V
    .registers 3

    .prologue
    .line 1926
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaNonObjectTrackingStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;

    .prologue
    .line 1926
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaNonObjectTrackingStateListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V

    return-void
.end method


# virtual methods
.method public onCaptureAreaMoved(Landroid/graphics/Point;)V
    .registers 5
    .param p1, "movingPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaNonObjectTrackingStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_START_AF_SEARCH_IN_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1949
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->MOVE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaNonObjectTrackingStateListener;->setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 1950
    return-void
.end method

.method public onCaptureAreaTouched(Landroid/graphics/Point;)V
    .registers 7
    .param p1, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaNonObjectTrackingStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mIsSetupHeadupDisplayInvoked:Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$1800(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1941
    :goto_8
    return-void

    .line 1936
    :cond_9
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaNonObjectTrackingStateListener;->setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 1939
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaNonObjectTrackingStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

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

    goto :goto_8
.end method
