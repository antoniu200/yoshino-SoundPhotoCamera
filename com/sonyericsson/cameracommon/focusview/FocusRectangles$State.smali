.class interface abstract Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;
.super Ljava/lang/Object;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "State"
.end annotation


# virtual methods
.method public abstract clearExceptTouchFocus()V
.end method

.method public abstract onAutoFocusCanceled()V
.end method

.method public abstract onAutoFocusDone(Z)V
.end method

.method public abstract onAutoFocusStarted()V
.end method

.method public abstract onFaceDetected(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;)V
.end method

.method public abstract onFaceLost()V
.end method

.method public abstract onObjectRemoved()V
.end method

.method public abstract onTrackedObjectStateUpdated(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
.end method

.method public abstract onUiComponentOverlaid()V
.end method

.method public abstract onUiComponentRemoved()V
.end method

.method public abstract setFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
.end method

.method public abstract startFaceDetection()V
.end method

.method public abstract startObjectTracking()V
.end method
