.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;
.super Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoBase;
.source "StateMachineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoCapture"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StatePhotoCapture"


# instance fields
.field private mAudio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

.field private final mContinuous:Z

.field private mIsMemoryErrorOccured:Z

.field private mIsNextCaptureRequired:Z

.field private mPreviewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 1490
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    .line 1491
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V
    .registers 6
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
    .param p2, "continuous"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1493
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoBase;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 1494
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mCaptureState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 1495
    iput-boolean p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mContinuous:Z

    .line 1496
    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mIsMemoryErrorOccured:Z

    .line 1497
    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mIsNextCaptureRequired:Z

    .line 1500
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_HIGHLIGHT_CAPTURED_SOUND_LEVEL:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1502
    return-void
.end method


# virtual methods
.method public varargs handleCaptureButtonRelease([Ljava/lang/Object;)V
    .registers 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->isAutoReviewEnabled()Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2900(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->canCapture()Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$3000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mIsNextCaptureRequired:Z

    .line 1554
    :cond_13
    return-void
.end method

.method public varargs handleKeyCaptureDown([Ljava/lang/Object;)V
    .registers 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->isAutoReviewEnabled()Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2900(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->canCapture()Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$3000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mIsNextCaptureRequired:Z

    .line 1547
    :cond_13
    return-void
.end method

.method public varargs handleOnShutterDone([Ljava/lang/Object;)V
    .registers 10
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 1506
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1509
    aget-object v2, p1, v6

    check-cast v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 1511
    .local v2, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mAudioSampleDataStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->get()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    .line 1512
    .local v0, "audioSamples":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;>;"
    new-instance v3, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    const v4, 0xbb80

    const/4 v5, 0x2

    sget v6, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoConstants;->SOUND_BIT_PER_SECONDS:I

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;-><init>(Ljava/util/concurrent/BlockingQueue;III)V

    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mAudio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    .line 1518
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mAudio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->setOnSoundCaptureCompleteListener(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;)V
    invoke-static {v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;)V

    .line 1520
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mPreviewFrameStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->isPreviewFrameExist()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 1521
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mPreviewFrameStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->getFrameInfo()Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;

    move-result-object v1

    .line 1522
    .local v1, "frameInfo":Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;
    new-instance v3, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    iget-object v4, v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;->rect:Landroid/graphics/Rect;

    .line 1523
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;->rect:Landroid/graphics/Rect;

    .line 1524
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;->format:I

    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .line 1526
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mPreviewFrameStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;
    invoke-static {v7}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;->get()Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;-><init>(IIILjava/util/List;)V

    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mPreviewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    .line 1529
    .end local v1    # "frameInfo":Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;
    :cond_65
    iget-boolean v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mContinuous:Z

    if-nez v3, :cond_86

    .line 1530
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->onCaptureDone()V

    .line 1532
    monitor-enter p0

    .line 1533
    :try_start_73
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->getRequestId(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setRequestId(I)V

    .line 1534
    monitor-exit p0

    .line 1540
    :goto_82
    return-void

    .line 1534
    :catchall_83
    move-exception v3

    monitor-exit p0
    :try_end_85
    .catchall {:try_start_73 .. :try_end_85} :catchall_83

    throw v3

    .line 1536
    :cond_86
    monitor-enter p0

    .line 1537
    :try_start_87
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->getRequestId(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setRequestId(I)V

    .line 1538
    monitor-exit p0

    goto :goto_82

    :catchall_97
    move-exception v3

    monitor-exit p0
    :try_end_99
    .catchall {:try_start_87 .. :try_end_99} :catchall_97

    throw v3
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .registers 12
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1560
    aget-object v1, p1, v8

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 1562
    .local v1, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    iget-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mIsNextCaptureRequired:Z

    if-eqz v2, :cond_ec

    .line 1563
    iget-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mIsMemoryErrorOccured:Z

    if-eqz v2, :cond_50

    .line 1564
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->onCaptureDone()V

    .line 1566
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->cancelAutoFocus(Z)V
    invoke-static {v2, v9}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    .line 1569
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v3, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v3, v4, v8}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    new-array v4, v8, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1570
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v3, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateWarning;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateWarning;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    new-array v4, v8, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1572
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mAudio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    if-eqz v2, :cond_44

    .line 1573
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mAudio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->clearSamples()V

    .line 1574
    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mAudio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    .line 1576
    :cond_44
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mPreviewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    if-eqz v2, :cond_4f

    .line 1577
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mPreviewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->clear()V

    .line 1578
    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mPreviewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    .line 1633
    :cond_4f
    :goto_4f
    return-void

    .line 1583
    :cond_50
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mContentsIntegrator:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$3100(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mAudio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mPreviewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    invoke-virtual {v2, v3, v4, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->createContent(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    move-result-object v0

    .line 1587
    .local v0, "content":Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;
    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mAudio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    .line 1588
    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mPreviewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    .line 1589
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->store(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)V

    .line 1590
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSavingRequestList:Ljava/util/List;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1592
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startPreview()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1595
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->doCapture()V
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2700(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    .line 1596
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v3, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v3, v4, v9}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    new-array v4, v8, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1619
    :goto_97
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->isAutoReviewEnabled()Z
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2900(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z

    move-result v2

    if-nez v2, :cond_dd

    .line 1621
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SET_EARLY_THUMBNAIL:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .line 1622
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v5}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v5

    .line 1623
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v7}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v7

    iget-object v7, v7, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v7, v7, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    .line 1622
    invoke-static {v5, v6, v7}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->createThumbnailViewFromJpeg(Landroid/app/Activity;[BI)Landroid/widget/RelativeLayout;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1621
    invoke-interface {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1625
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    new-array v4, v9, [Ljava/lang/Object;

    .line 1627
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getRequestId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1625
    invoke-interface {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1631
    :cond_dd
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_CAPTURE_DONE_TO_SOUND_LEVEL_INDICATOR:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto/16 :goto_4f

    .line 1600
    .end local v0    # "content":Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;
    :cond_ec
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->cancelAutoFocus(Z)V
    invoke-static {v2, v9}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    .line 1602
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mContentsIntegrator:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$3100(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mAudio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mPreviewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    invoke-virtual {v2, v3, v4, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->createContent(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    move-result-object v0

    .line 1606
    .restart local v0    # "content":Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;
    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mAudio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    .line 1607
    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mPreviewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    .line 1609
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v3, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v3, v4, v9}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    new-array v4, v8, [Ljava/lang/Object;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1611
    iget-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mContinuous:Z

    if-nez v2, :cond_12c

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->isAutoReviewEnabled()Z
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$2900(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 1612
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_AUTO_REVIEW:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-interface {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1615
    :cond_12c
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->store(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)V

    .line 1616
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSavingRequestList:Ljava/util/List;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_97
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .registers 6
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1647
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 1648
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mAudio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    if-eqz v0, :cond_18

    .line 1649
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mAudio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->clearSamples()V

    .line 1650
    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mAudio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    .line 1652
    :cond_18
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mPreviewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    if-eqz v0, :cond_23

    .line 1653
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mPreviewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->clear()V

    .line 1654
    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mPreviewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    .line 1656
    :cond_23
    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .registers 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;->mIsMemoryErrorOccured:Z

    .line 1638
    return-void
.end method

.method public varargs handleTouchContentProgressBar([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1643
    return-void
.end method
