.class Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$OnScreenCaptureButtonStateListener;
.super Ljava/lang/Object;
.source "ViewFinderVisuals.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnScreenCaptureButtonStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V
    .registers 2

    .prologue
    .line 1635
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$OnScreenCaptureButtonStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;

    .prologue
    .line 1635
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$OnScreenCaptureButtonStateListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$OnScreenCaptureButtonStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1663
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$OnScreenCaptureButtonStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_CANCEL:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1665
    :cond_16
    return-void
.end method

.method public onDispatchDraw(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 1671
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH_TO_DISPATCH_DRAW:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 1673
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 1674
    return-void
.end method

.method public onDown(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1639
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$OnScreenCaptureButtonStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->closeDialogs(Z)V

    .line 1642
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$OnScreenCaptureButtonStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1644
    return-void
.end method

.method public onMove(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1657
    return-void
.end method

.method public onUp(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1649
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->CAPTURE_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 1650
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$OnScreenCaptureButtonStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_RELEASE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;->PHOTO_BUTTON:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1652
    return-void
.end method
