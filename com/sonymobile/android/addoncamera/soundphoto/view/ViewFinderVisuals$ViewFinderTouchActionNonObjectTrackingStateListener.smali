.class Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderTouchActionNonObjectTrackingStateListener;
.super Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;
.source "ViewFinderVisuals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderTouchActionNonObjectTrackingStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V
    .registers 3

    .prologue
    .line 1851
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderTouchActionNonObjectTrackingStateListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;

    .prologue
    .line 1851
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderTouchActionNonObjectTrackingStateListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V

    return-void
.end method


# virtual methods
.method public onCaptureAreaLongPressed(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "holdPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1868
    return-void
.end method

.method public onCaptureAreaMoved(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "movingPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1873
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->MOVE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderTouchActionNonObjectTrackingStateListener;->setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 1874
    return-void
.end method

.method public onCaptureAreaSingleTapUp(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "tapUpPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1863
    return-void
.end method

.method public onCaptureAreaTouched(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1857
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderTouchActionNonObjectTrackingStateListener;->setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 1858
    return-void
.end method
