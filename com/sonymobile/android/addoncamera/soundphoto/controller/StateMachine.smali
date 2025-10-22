.class public interface abstract Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$OnStateChangedListener;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$ErrorCode;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$Factory;
    }
.end annotation


# virtual methods
.method public abstract addOnStateChangedListener(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$OnStateChangedListener;)V
.end method

.method public abstract canApplicationBeFinished()Z
.end method

.method public abstract canCurrentStateHandleAsynchronizedTask()Z
.end method

.method public abstract canModeSelectorBeOpened()Z
.end method

.method public abstract canSelfTimerBeOpened()Z
.end method

.method public abstract canSettingUiBeOpened()Z
.end method

.method public abstract getCurrentCaptureState()Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;
.end method

.method public abstract isDialogOpened()Z
.end method

.method public abstract onDeviceOpened(Landroid/hardware/Camera$Parameters;Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)V
.end method

.method public abstract removeOnStateChangedListener(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$OnStateChangedListener;)V
.end method

.method public varargs abstract sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
.end method

.method public varargs abstract sendStaticEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V
.end method

.method public abstract setCameraDevice(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V
.end method

.method public abstract setViewFinder(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;)V
.end method
