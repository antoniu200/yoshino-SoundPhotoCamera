.class Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$5;
.super Ljava/lang/Object;
.source "ViewFinderVisuals.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    .prologue
    .line 1953
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$5;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .registers 4

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$5;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_CANCEL:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1964
    return-void
.end method

.method public onLongPressed()V
    .registers 1

    .prologue
    .line 1980
    return-void
.end method

.method public onReleased()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1968
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 1969
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$5;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1972
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$5;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_RELEASE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;->FACE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1975
    return-void
.end method

.method public onTouched()V
    .registers 1

    .prologue
    .line 1958
    return-void
.end method
