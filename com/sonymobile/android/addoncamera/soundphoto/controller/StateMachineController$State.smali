.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;
.super Ljava/lang/Object;
.source "StateMachineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State$ReTrySetupHeadUpDisplayTask;
    }
.end annotation


# instance fields
.field protected mCaptureState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->mCaptureState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 219
    return-void
.end method


# virtual methods
.method public canSelfTimerBeOpened()Z
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public entry()V
    .registers 1

    .prologue
    .line 223
    return-void
.end method

.method public exit()V
    .registers 1

    .prologue
    .line 227
    return-void
.end method

.method public getCaptureState()Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->mCaptureState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    return-object v0
.end method

.method public varargs handleCancelTouchZoom([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 406
    return-void
.end method

.method public varargs handleCaptureButtonCancel([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 418
    return-void
.end method

.method public varargs handleCaptureButtonLongPress([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 422
    return-void
.end method

.method public varargs handleCaptureButtonRelease([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 414
    return-void
.end method

.method public varargs handleCaptureButtonTouch([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 410
    return-void
.end method

.method public varargs handleDialogClosed([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 442
    return-void
.end method

.method public varargs handleDialogOpened([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 438
    return-void
.end method

.method public varargs handleFinalize([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 270
    return-void
.end method

.method public varargs handleInitialize([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 254
    return-void
.end method

.method public varargs handleKeyBack([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 386
    return-void
.end method

.method public varargs handleKeyCaptureDown([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 362
    return-void
.end method

.method public varargs handleKeyCaptureUp([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 366
    return-void
.end method

.method public varargs handleKeyFocusDown([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 354
    return-void
.end method

.method public varargs handleKeyFocusUp([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 358
    return-void
.end method

.method public varargs handleKeyMenu([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 382
    return-void
.end method

.method public varargs handleKeyZoomInDown([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 370
    return-void
.end method

.method public varargs handleKeyZoomOutDown([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 374
    return-void
.end method

.method public varargs handleKeyZoomUp([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 378
    return-void
.end method

.method public varargs handleOnAutoFocusDone([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 282
    return-void
.end method

.method public varargs handleOnEvfPreparationFailed([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 278
    return-void
.end method

.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 274
    return-void
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 482
    return-void
.end method

.method public varargs handleOnOrientationChanged([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 486
    return-void
.end method

.method public varargs handleOnPhotoStackInitialized([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 478
    return-void
.end method

.method public varargs handleOnPrepareTouchZoomTimeouted([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 394
    return-void
.end method

.method public varargs handleOnPreviewFrame([Ljava/lang/Object;)V
    .registers 8
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 496
    const/4 v4, 0x0

    aget-object v4, p1, v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    .line 497
    .local v0, "data":[B
    const/4 v4, 0x1

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 498
    .local v1, "format":I
    const/4 v4, 0x2

    aget-object v3, p1, v4

    check-cast v3, Landroid/graphics/Rect;

    .line 500
    .local v3, "rect":Landroid/graphics/Rect;
    if-nez v3, :cond_19

    .line 513
    :goto_18
    return-void

    .line 505
    :cond_19
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mPreviewFrameStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->getFrameInfo()Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;

    move-result-object v2

    .line 506
    .local v2, "originalInfo":Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;
    if-eqz v2, :cond_41

    iget-object v4, v2, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;->rect:Landroid/graphics/Rect;

    .line 507
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_41

    iget-object v4, v2, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;->rect:Landroid/graphics/Rect;

    .line 508
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v4, v5, :cond_41

    iget v4, v2, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;->format:I

    if-eq v4, v1, :cond_4f

    .line 510
    :cond_41
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mPreviewFrameStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;

    move-result-object v4

    new-instance v5, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;

    invoke-direct {v5, v3, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v4, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->setFrameInfo(Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;)V

    .line 512
    :cond_4f
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mPreviewFrameStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->push([B)V

    goto :goto_18
.end method

.method public varargs handleOnPreviewFrameUpdated([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 492
    return-void
.end method

.method public varargs handleOnRecordProgressUpdated([Ljava/lang/Object;)V
    .registers 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 346
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_RECORD_PROGRESS_UPDATED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-interface {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 350
    :cond_13
    return-void
.end method

.method public handleOnRequestResetAudioSampleData([Ljava/lang/Object;)V
    .registers 6
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 520
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mAudioSampleDataStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    move-result-object v1

    if-nez v1, :cond_9

    .line 534
    :cond_8
    :goto_8
    return-void

    .line 523
    :cond_9
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mAudioSampleDataStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->nowBuffering()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 527
    :try_start_15
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mAudioSampleDataStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->stopBuffering()V

    .line 528
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CLEAR_INDICATOR_PROGRESS:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 530
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mAudioSampleDataStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->startBuffering()Z
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_35} :catch_36

    goto :goto_8

    .line 531
    :catch_36
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/InterruptedException;
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mAudioSampleDataStore.stopBuffering() is interupted."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public varargs handleOnShutterDone([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 286
    return-void
.end method

.method public varargs handleOnSoundCaptureCompleted([Ljava/lang/Object;)V
    .registers 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 335
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_SOUND_CAPTURE_COMPLETED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-interface {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 339
    :cond_13
    return-void
.end method

.method public varargs declared-synchronized handleOnStoreCompleted([Ljava/lang/Object;)V
    .registers 8
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 312
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_5d

    move-result-object v1

    if-nez v1, :cond_b

    .line 330
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 316
    :cond_b
    const/4 v1, 0x0

    :try_start_c
    aget-object v0, p1, v1

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 318
    .local v0, "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSavingRequestList:Ljava/util/List;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 321
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->doStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    invoke-static {v1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 323
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .line 324
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getRequestId()I

    move-result v1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getRequestId()I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 325
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V
    :try_end_5c
    .catchall {:try_start_c .. :try_end_5c} :catchall_5d

    goto :goto_9

    .line 312
    .end local v0    # "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    :catchall_5d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public varargs handleOnStoreRequested([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 307
    return-void
.end method

.method public varargs handleOnSwitchCamera([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 517
    return-void
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 290
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 266
    return-void
.end method

.method public varargs handlePrepareTouchZoom([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 390
    return-void
.end method

.method public varargs handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V
    .registers 6
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State$ReTrySetupHeadUpDisplayTask;

    invoke-direct {v1, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State$ReTrySetupHeadUpDisplayTask;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 460
    return-void
.end method

.method public varargs handleResume([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 258
    return-void
.end method

.method public varargs handleResumeTimeout([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 262
    return-void
.end method

.method public varargs handleScreenClear([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 426
    return-void
.end method

.method public varargs handleSetFocusPosition([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 472
    return-void
.end method

.method public varargs handleStartAfSearchInTouch([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 430
    return-void
.end method

.method public varargs handleStartAfSearchInTouchStop([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 434
    return-void
.end method

.method public varargs handleStartTouchZoom([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 398
    return-void
.end method

.method public varargs handleStopTouchZoom([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 402
    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 446
    return-void
.end method

.method public varargs handleStorageMounted([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 450
    return-void
.end method

.method public varargs handleStorageShouldChange([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 454
    return-void
.end method

.method public varargs handleTouchContentProgressBar([Ljava/lang/Object;)V
    .registers 7
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 294
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_INSTANT_VIEWER:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .line 296
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .line 297
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .line 298
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .line 299
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .line 300
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .line 301
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->isFront()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 294
    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 303
    :cond_76
    return-void
.end method

.method public isSettingUiBeOpened()Z
    .registers 2

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->mCaptureState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    if-nez v0, :cond_b

    .line 232
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->mCaptureState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
