.class Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderNonActionListener;
.super Ljava/lang/Object;
.source "ViewFinderVisuals.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderNonActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V
    .registers 2

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderNonActionListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1692
    return-void
.end method


# virtual methods
.method public onCaptureAreaCanceled()V
    .registers 4

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderNonActionListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_SCREEN_CLEAR:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1728
    return-void
.end method

.method public onCaptureAreaIsReadyToScale()V
    .registers 3

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderNonActionListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$1400(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showZoomHelpMessage(Z)V

    .line 1733
    return-void
.end method

.method public onCaptureAreaLongPressed(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1707
    return-void
.end method

.method public onCaptureAreaMoved(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1712
    return-void
.end method

.method public onCaptureAreaReleased(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1722
    return-void
.end method

.method public onCaptureAreaScaled(F)V
    .registers 2
    .param p1, "scaleLength"    # F

    .prologue
    .line 1738
    return-void
.end method

.method public onCaptureAreaSingleTapUp(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1702
    return-void
.end method

.method public onCaptureAreaStopped()V
    .registers 1

    .prologue
    .line 1717
    return-void
.end method

.method public onCaptureAreaTouched(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1697
    return-void
.end method
