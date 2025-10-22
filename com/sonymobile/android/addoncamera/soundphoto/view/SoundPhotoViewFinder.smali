.class public interface abstract Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
.super Ljava/lang/Object;
.source "SoundPhotoViewFinder.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;,
        Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;,
        Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$Factory;
    }
.end annotation


# virtual methods
.method public abstract checkSurfaceSize()V
.end method

.method public abstract closeCapturingModeSelector()V
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getRequestId(Z)I
.end method

.method public abstract isCapturingModeSelectorOpened()Z
.end method

.method public abstract isOpenAutoReview()Z
.end method

.method public abstract isSetupHeadupDisplayInvoked()Z
.end method

.method public abstract onToggledCameraSwitch()V
.end method

.method public abstract reconstructLocalCache()V
.end method

.method public abstract saveLocalCache()V
.end method

.method public varargs abstract sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V
.end method

.method public abstract setCameraDevice(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V
.end method

.method public abstract setContentView()V
.end method

.method public abstract setStateMachine(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;)V
.end method

.method public abstract setTouchCapture(Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;)V
.end method

.method public abstract startInflateTask()V
.end method
