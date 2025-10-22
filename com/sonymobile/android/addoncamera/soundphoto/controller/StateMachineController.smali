.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
.super Ljava/lang/Object;
.source "StateMachineController.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
.implements Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;
.implements Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$OnBufferPositionUpdateListener;
.implements Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$OnAudioCaptureFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$ErrorDialogListener;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateCameraSwitching;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateFinalize;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateWarning;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePause;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoSelfTimerCountdown;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCapture;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoCaptureWaitForAfDone;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDoneInTouch;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfDone;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingInTouch;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearchInTouchDraggingFocusPosition;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearchInTouch;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoAfSearch;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoStandbyDialog;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZooming;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoZoomingBase;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StatePhotoBase;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateResume;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateInitialize;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateNone;,
        Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;
    }
.end annotation


# static fields
.field private static final PREPARE_PINCH_ZOOM_TIMEOUT_COUNT:I = 0x64

.field private static final RESUME_TIMEOUT:I = 0x1388

.field public static final STORAGE_REMAIN_ENOUGH:J = 0x25800L

.field public static final STORAGE_REMAIN_MIN:J = 0xf000L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

.field private final mAudioSampleDataStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

.field private mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

.field private final mContentsIntegrator:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

.field private mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

.field private mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

.field private mCurrentZoomLength:F

.field private mHandler:Landroid/os/Handler;

.field private mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

.field private mNextCapturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

.field private final mNotifyResumeTimeoutTask:Ljava/lang/Runnable;

.field private mOnStateChangedListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$OnStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewFrameStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;

.field private mSavingRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

.field private mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 98
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;)V
    .registers 9
    .param p1, "activity"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    .param p2, "preferences"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mHandler:Landroid/os/Handler;

    .line 126
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 129
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSavingRequestList:Ljava/util/List;

    .line 145
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateNone;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateNone;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    .line 151
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->MAIN:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mNextCapturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .line 182
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mOnStateChangedListenerSet:Ljava/util/Set;

    .line 666
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$1;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;

    .line 158
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .line 160
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    const v1, 0xbb80

    const/16 v4, 0xa

    const/16 v5, 0x8

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;-><init>(IIIII)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mAudioSampleDataStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    .line 166
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mPreviewFrameStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;

    .line 168
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mContentsIntegrator:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    .line 169
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->showRecordingErrorDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->showCameraNotAvailableError()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)I
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->getSensorOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->isSelfTimerEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->startAutoFocus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->isSmoothZoomEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->doZoomIn()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSavingRequestList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->doZoomOut()V

    return-void
.end method

.method static synthetic access$2102(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;F)F
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
    .param p1, "x1"    # F

    .prologue
    .line 95
    iput p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentZoomLength:F

    return p1
.end method

.method static synthetic access$2200(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->switchStorage()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->switchCamera()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->doStopZoom()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->cancelAutoFocus(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;IF)V
    .registers 3
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->doZoom(IF)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->doCapture()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
    .param p1, "x1"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->setOnSoundCaptureCompleteListener(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->isAutoReviewEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->doStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->canCapture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mContentsIntegrator:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->onCameraSwitchingCompleted(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mPreviewFrameStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mAudioSampleDataStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
    .param p1, "x1"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method private calculateRemainStorage(ZZ)V
    .registers 10
    .param p1, "updateUi"    # Z
    .param p2, "notify"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2572
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 2573
    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_12

    .line 2606
    :cond_11
    :goto_11
    return-void

    .line 2579
    :cond_12
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, p2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateRemain(JZ)J

    move-result-wide v0

    .line 2582
    .local v0, "capacity":J
    if-eqz p1, :cond_30

    .line 2583
    const-wide/32 v2, 0x25800

    cmp-long v2, v0, v2

    if-lez v2, :cond_42

    .line 2584
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_HIDE_REMAIN_INDICATOR:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 2592
    :cond_30
    :goto_30
    const-wide/32 v2, 0xf000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_11

    .line 2594
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$4;

    invoke-direct {v3, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$4;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    .line 2587
    :cond_42
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_REMAIN_INDICATOR:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_30
.end method

.method private canCapture()Z
    .registers 2

    .prologue
    .line 2754
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->canPushStoreTask()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mContentsIntegrator:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    .line 2755
    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->canCreateNewContent()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private cancelAutoFocus(Z)V
    .registers 3
    .param p1, "isResetFocusModeNecessary"    # Z

    .prologue
    .line 2309
    if-eqz p1, :cond_7

    .line 2311
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->resetFocusMode()V

    .line 2314
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->cancelAutoFocus()V

    .line 2315
    return-void
.end method

.method private varargs declared-synchronized changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "nextState"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2274
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->exit()V

    .line 2277
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    .line 2280
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mOnStateChangedListenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$OnStateChangedListener;

    .line 2281
    .local v0, "listener":Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$OnStateChangedListener;
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->getCaptureState()Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$OnStateChangedListener;->onStateChanged(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;[Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    goto :goto_e

    .line 2274
    .end local v0    # "listener":Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$OnStateChangedListener;
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2285
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->entry()V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24

    .line 2286
    monitor-exit p0

    return-void
.end method

.method private createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .registers 21
    .param p1, "savedFileType"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    .prologue
    .line 2411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2412
    .local v4, "takenTimeMillis":J
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->getOrientation()I

    move-result v6

    .line 2415
    .local v6, "orientation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    .line 2418
    .local v7, "location":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v17

    .line 2420
    .local v17, "pictureRect":Landroid/graphics/Rect;
    const-string v10, "image/jpeg"

    .line 2421
    .local v10, "mimeType":Ljava/lang/String;
    const-string v11, ".JPG"

    .line 2422
    .local v11, "fileExtension":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2425
    .local v13, "filePath":Ljava/lang/String;
    const/16 v18, 0x0

    .line 2426
    .local v18, "savingRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    if-eqz v17, :cond_5a

    .line 2428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v3

    iget-object v3, v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->capturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    sget-object v8, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->FRONT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    if-ne v3, v8, :cond_5b

    .line 2429
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->FRONT:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    .line 2433
    .local v2, "facing":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;
    :goto_35
    new-instance v18, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .end local v18    # "savingRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    new-instance v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    .line 2434
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v9

    const-string v14, ""

    const/4 v15, 0x1

    .line 2436
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->isSuperResolutionZoom()Z

    move-result v16

    move-object/from16 v12, p1

    invoke-direct/range {v3 .. v16}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;-><init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v8, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v8, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v8}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V

    .line 2437
    .restart local v18    # "savingRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-virtual/range {v18 .. v19}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->addCallback(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;)V

    .line 2439
    .end local v2    # "facing":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;
    :cond_5a
    return-object v18

    .line 2431
    :cond_5b
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->BACK:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    .restart local v2    # "facing":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;
    goto :goto_35
.end method

.method private doCapture()V
    .registers 4

    .prologue
    .line 2319
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 2321
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    if-eqz v0, :cond_36

    .line 2323
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 2324
    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 2323
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->applySavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;Landroid/hardware/Camera$Parameters;)V

    .line 2327
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->takePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 2329
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setOrientation(I)V

    .line 2330
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)V

    .line 2332
    :cond_36
    return-void
.end method

.method private doStopZoom()V
    .registers 2

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->stopSmoothZoom()V

    .line 2501
    return-void
.end method

.method private doStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 9
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 2454
    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getRequestId()I

    move-result v1

    .line 2457
    .local v1, "requestId":I
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->isSuccess()Z

    move-result v2

    .line 2458
    .local v2, "resultCode":Z
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    .line 2460
    .local v0, "originalUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateRemain(JZ)J

    .line 2461
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    new-instance v4, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;ZILandroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2486
    return-void
.end method

.method private doZoom(IF)V
    .registers 7
    .param p1, "startZoomValue"    # I
    .param p2, "scaleLength"    # F

    .prologue
    const/4 v3, 0x0

    .line 2504
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    .line 2505
    .local v0, "currentZoom":I
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getMaxZoom()I

    move-result v1

    .line 2507
    .local v1, "zoomMax":I
    cmpl-float v2, p2, v3

    if-lez v2, :cond_1a

    .line 2508
    if-ne v0, v1, :cond_1a

    if-ge p1, v1, :cond_1a

    .line 2520
    :goto_19
    return-void

    .line 2512
    :cond_1a
    int-to-float v2, v0

    invoke-static {v2, p2}, Lcom/sonyericsson/cameracommon/controller/ZoomController;->getZoomValue(FF)F

    move-result v2

    iput v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentZoomLength:F

    .line 2514
    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentZoomLength:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_35

    .line 2515
    iput v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentZoomLength:F

    .line 2519
    :cond_29
    :goto_29
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentZoomLength:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startSmoothZoom(I)V

    goto :goto_19

    .line 2516
    :cond_35
    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentZoomLength:F

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_29

    .line 2517
    int-to-float v2, v1

    iput v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentZoomLength:F

    goto :goto_29
.end method

.method private doZoomIn()V
    .registers 3

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getMaxZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startSmoothZoom(I)V

    .line 2491
    return-void
.end method

.method private doZoomOut()V
    .registers 3

    .prologue
    .line 2495
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startSmoothZoom(I)V

    .line 2496
    return-void
.end method

.method private getOrientation()I
    .registers 7

    .prologue
    .line 2382
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getSensorOrientationDegree()I

    move-result v0

    .line 2383
    .local v0, "degree":I
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getNormalizedRotation(I)I

    move-result v3

    .line 2385
    .local v3, "sensorOrientation":I
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 2386
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    .line 2387
    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v4

    iget-object v4, v4, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->capturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    iget v4, v4, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->cameraId:I

    .line 2386
    invoke-static {v4, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 2400
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    .line 2402
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/lit16 v4, v4, 0x168

    sub-int/2addr v4, v3

    rem-int/lit16 v2, v4, 0x168

    .line 2406
    .local v2, "orientation":I
    :goto_28
    return v2

    .line 2404
    .end local v2    # "orientation":I
    :cond_29
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v3

    rem-int/lit16 v2, v4, 0x168

    .restart local v2    # "orientation":I
    goto :goto_28
.end method

.method private getSensorOrientation()I
    .registers 4

    .prologue
    .line 2701
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getLastDetectedOrientation()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    move-result-object v1

    .line 2702
    .local v1, "sesorOrientation":Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;
    const/4 v0, 0x1

    .line 2703
    .local v0, "orientation":I
    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-ne v1, v2, :cond_d

    .line 2704
    const/4 v0, 0x1

    .line 2711
    :goto_c
    return v0

    .line 2706
    :cond_d
    const/4 v0, 0x2

    goto :goto_c
.end method

.method private isAutoReviewEnabled()Z
    .registers 3

    .prologue
    .line 2744
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->autoReview:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->get()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isSelfTimerEnable()Z
    .registers 3

    .prologue
    .line 2749
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->selfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->get()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isSmoothZoomEnabled()Z
    .registers 3

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->capturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->FRONT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    if-ne v0, v1, :cond_e

    .line 2878
    const/4 v0, 0x0

    .line 2880
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private isSuperResolutionZoom()Z
    .registers 2

    .prologue
    .line 2740
    const/4 v0, 0x0

    return v0
.end method

.method private static logPerformance(Ljava/lang/String;)V
    .registers 5
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PERFORMANCE] [TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method private moveToCameraNotAvailable()V
    .registers 3

    .prologue
    .line 2839
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->showCameraNotAvailableError()V

    .line 2840
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateWarning;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateWarning;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 2841
    return-void
.end method

.method private onCameraSwitchingCompleted(Landroid/view/SurfaceHolder;)V
    .registers 8
    .param p1, "surface"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v5, 0x0

    .line 2769
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->isImmediateReleaseRequested()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2770
    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->TAG:Ljava/lang/String;

    const-string v3, "[CameraNotAvailable] request to release camera device."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->errorLogForNonUserVariant(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->moveToCameraNotAvailable()V

    .line 2836
    :goto_13
    return-void

    .line 2776
    :cond_14
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->waitForCameraInitialization()Z

    move-result v2

    if-nez v2, :cond_49

    .line 2783
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mNextCapturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    iget v4, v4, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->cameraId:I

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->requestStartCameraOpen(Landroid/content/Context;I)V

    .line 2786
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->waitForCameraInitialization()Z

    move-result v2

    if-nez v2, :cond_49

    .line 2791
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v2

    const v3, 0x7f080121

    const v4, 0x7f080122

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showErrorUncancelable(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 2795
    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateWarning;

    invoke-direct {v2, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateWarning;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    goto :goto_13

    .line 2800
    :cond_49
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v2, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startLiveViewFinder(Landroid/view/SurfaceHolder;)V

    .line 2803
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2804
    .local v0, "previewRect":Landroid/graphics/Rect;
    if-nez v0, :cond_61

    .line 2807
    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->TAG:Ljava/lang/String;

    const-string v3, "[CameraNotAvailable] Camera device is released."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->errorLogForNonUserVariant(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->moveToCameraNotAvailable()V

    goto :goto_13

    .line 2812
    :cond_61
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .line 2814
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .line 2815
    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getScreenAspect()Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    move-result-object v4

    .line 2812
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 2817
    .local v1, "surfaceRect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v2

    invoke-virtual {v2, v5, v1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->init(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2818
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v2

    .line 2819
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 2818
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setSurfaceSize(II)V

    .line 2820
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v2

    .line 2821
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 2820
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setPreviewSize(II)V

    .line 2824
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->requestPostLazyInitializationTaskExecute()V

    .line 2827
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mAudioSampleDataStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->startBuffering()Z

    .line 2828
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startPreviewFrameCapturing()V

    .line 2830
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mAudioSampleDataStore:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    invoke-virtual {v2, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->setBufferPositionUpdateListener(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$OnBufferPositionUpdateListener;)V

    .line 2833
    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateStandby;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Z)V

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    goto/16 :goto_13
.end method

.method private onDeviceError(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$ErrorCode;Ljava/lang/Exception;)V
    .registers 6
    .param p1, "error"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$ErrorCode;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 2537
    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$ErrorCode:[I

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$ErrorCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2e

    .line 2565
    :goto_b
    return-void

    .line 2541
    :pswitch_c
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2543
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2545
    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->TAG:Ljava/lang/String;

    const-string v2, "onDeviceError(): [Screen backlight is ON."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->showCameraNotAvailableError()V

    goto :goto_b

    .line 2557
    :cond_27
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->finishUrgently()V

    goto :goto_b

    .line 2537
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method private onZoomChange(IZLandroid/hardware/Camera;)V
    .registers 9
    .param p1, "zoomValue"    # I
    .param p2, "stopped"    # Z
    .param p3, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2532
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2530
    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 2533
    return-void
.end method

.method private setOnSoundCaptureCompleteListener(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;)V
    .registers 2
    .param p1, "audioData"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    .prologue
    .line 2670
    if-eqz p1, :cond_5

    .line 2671
    invoke-virtual {p1, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->setOnAudioCaptureFinishedListener(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$OnAudioCaptureFinishedListener;)V

    .line 2673
    :cond_5
    return-void
.end method

.method private showCameraNotAvailableError()V
    .registers 2

    .prologue
    .line 2715
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->isCameraDisabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2716
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showCameraDisabledMessage()V

    .line 2720
    :goto_11
    return-void

    .line 2718
    :cond_12
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceErrorMessage()V

    goto :goto_11
.end method

.method private showRecordingErrorDialog()V
    .registers 3

    .prologue
    .line 2363
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateWarning;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateWarning;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 2365
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$2;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2379
    return-void
.end method

.method private startAutoFocus()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2294
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    if-eqz v1, :cond_14

    .line 2295
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->updateRemain()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2305
    :cond_d
    :goto_d
    return v0

    .line 2299
    :cond_e
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->canCapture()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2304
    :cond_14
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->autoFocus()V

    .line 2305
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private switchCamera()V
    .registers 6

    .prologue
    .line 2847
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v2

    iget-object v0, v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->capturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .line 2849
    .local v0, "currentMode":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$CapturingMode:[I

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_50

    .line 2857
    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->MAIN:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .line 2860
    .local v1, "nextMode":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    :goto_15
    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateCameraSwitching;

    invoke-direct {v2, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$StateCameraSwitching;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->changeTo(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;[Ljava/lang/Object;)V

    .line 2861
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mNextCapturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .line 2862
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->releaseCameraInstance()V

    .line 2863
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v2, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->changeCapturingMode(Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)V

    .line 2865
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->isOpenDeviceThreadAlive()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 2868
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mNextCapturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    iget v4, v4, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->cameraId:I

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->requestStartCameraOpen(Landroid/content/Context;I)V

    .line 2870
    :cond_3f
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-interface {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->checkSurfaceSize()V

    .line 2871
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v2, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->changeCapturingMode(Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)V

    .line 2873
    return-void

    .line 2851
    .end local v1    # "nextMode":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    :pswitch_4a
    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->MAIN:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .line 2852
    .restart local v1    # "nextMode":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    goto :goto_15

    .line 2854
    .end local v1    # "nextMode":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    :pswitch_4d
    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->FRONT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .line 2855
    .restart local v1    # "nextMode":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    goto :goto_15

    .line 2849
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_4d
    .end packed-switch
.end method

.method private switchStorage()V
    .registers 4

    .prologue
    .line 2723
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    if-eqz v1, :cond_33

    .line 2724
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    .line 2727
    .local v0, "current":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->SDCARD:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    if-ne v0, v1, :cond_34

    .line 2728
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->EMMC:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 2729
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setCurrentStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V

    .line 2734
    :goto_2a
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->requestCheckAll()V

    .line 2736
    .end local v0    # "current":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_33
    return-void

    .line 2731
    .restart local v0    # "current":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_34
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->SDCARD:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 2732
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setCurrentStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V

    goto :goto_2a
.end method


# virtual methods
.method public addOnStateChangedListener(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$OnStateChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$OnStateChangedListener;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mOnStateChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public declared-synchronized canApplicationBeFinished()Z
    .registers 2

    .prologue
    .line 179
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->getCaptureState()Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->canApplicationBeFinished()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canCurrentStateHandleAsynchronizedTask()Z
    .registers 2

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->getCaptureState()Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->canHandleAsynchronizedTask()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canModeSelectorBeOpened()Z
    .registers 2

    .prologue
    .line 2341
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->isSettingUiBeOpened()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSavingRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_16

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canSelfTimerBeOpened()Z
    .registers 2

    .prologue
    .line 2346
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->canSelfTimerBeOpened()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canSettingUiBeOpened()Z
    .registers 2

    .prologue
    .line 2336
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->isSettingUiBeOpened()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentCaptureState()Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;
    .registers 2

    .prologue
    .line 2885
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->getCaptureState()Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDialogOpened()Z
    .registers 3

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->getCaptureState()Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_STANDBY_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAudioCaptureFinished(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "sender"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;
    .param p2, "audioData"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2683
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->setOnAudioCaptureFinishedListener(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$OnAudioCaptureFinishedListener;)V

    .line 2685
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$6;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2692
    return-void
.end method

.method public onAvailableSizeUpdated(J)V
    .registers 3
    .param p1, "available"    # J

    .prologue
    .line 2641
    return-void
.end method

.method public onBufferPositionUpdated(II)V
    .registers 5
    .param p1, "milliSec"    # I
    .param p2, "volume"    # I

    .prologue
    .line 2651
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$5;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2660
    return-void
.end method

.method public declared-synchronized onDestinationToSaveChanged()V
    .registers 3

    .prologue
    .line 2631
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2632
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_MOUNTED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_20

    .line 2636
    :goto_15
    monitor-exit p0

    return-void

    .line 2634
    :cond_17
    :try_start_17
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_15

    .line 2631
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDeviceOpened(Landroid/hardware/Camera$Parameters;Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)V
    .registers 6
    .param p1, "cameraParams"    # Landroid/hardware/Camera$Parameters;
    .param p2, "mode"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .prologue
    .line 2760
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v0, p2, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->initialize(Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;Landroid/hardware/Camera$Parameters;)V

    .line 2761
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->changeCapturingMode(Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)V

    .line 2763
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->apply(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterApplyer;Z)V

    .line 2764
    return-void
.end method

.method public onShutterDone(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .registers 6
    .param p1, "savingRequest"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    const/4 v3, 0x0

    .line 2443
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 2445
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_SHUTTER_DONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2446
    return-void
.end method

.method public declared-synchronized onStorageStateChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V
    .registers 5
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .prologue
    .line 2612
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    if-eqz v0, :cond_33

    .line 2613
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .line 2615
    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isToggledStorageReady()Z

    move-result v2

    .line 2613
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->setSelectability(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Z)V

    .line 2617
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_35

    .line 2619
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2621
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->disableAutoOffTimer()V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_3e

    .line 2626
    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    .line 2623
    :cond_35
    :try_start_35
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_MOUNTED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3e

    goto :goto_33

    .line 2612
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 5
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 2450
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2451
    return-void
.end method

.method public removeOnStateChangedListener(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$OnStateChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$OnStateChangedListener;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mOnStateChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public varargs declared-synchronized sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "transitter"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2017
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_14

    packed-switch v0, :pswitch_data_13c

    .line 2203
    :goto_c
    monitor-exit p0

    return-void

    .line 2019
    :pswitch_e
    :try_start_e
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleInitialize([Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_14

    goto :goto_c

    .line 2017
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2023
    :pswitch_17
    :try_start_17
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleResume([Ljava/lang/Object;)V

    goto :goto_c

    .line 2027
    :pswitch_1d
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleResumeTimeout([Ljava/lang/Object;)V

    goto :goto_c

    .line 2031
    :pswitch_23
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handlePause([Ljava/lang/Object;)V

    goto :goto_c

    .line 2035
    :pswitch_29
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleFinalize([Ljava/lang/Object;)V

    goto :goto_c

    .line 2039
    :pswitch_2f
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleOnEvfPrepared([Ljava/lang/Object;)V

    goto :goto_c

    .line 2043
    :pswitch_35
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleOnEvfPreparationFailed([Ljava/lang/Object;)V

    goto :goto_c

    .line 2047
    :pswitch_3b
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleOnAutoFocusDone([Ljava/lang/Object;)V

    goto :goto_c

    .line 2051
    :pswitch_41
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleOnShutterDone([Ljava/lang/Object;)V

    goto :goto_c

    .line 2055
    :pswitch_47
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleOnTakePictureDone([Ljava/lang/Object;)V

    goto :goto_c

    .line 2059
    :pswitch_4d
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleTouchContentProgressBar([Ljava/lang/Object;)V

    goto :goto_c

    .line 2063
    :pswitch_56
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleOnStoreRequested([Ljava/lang/Object;)V

    goto :goto_c

    .line 2067
    :pswitch_5c
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleOnStoreCompleted([Ljava/lang/Object;)V

    goto :goto_c

    .line 2071
    :pswitch_62
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleOnSoundCaptureCompleted([Ljava/lang/Object;)V

    goto :goto_c

    .line 2075
    :pswitch_68
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleOnRequestResetAudioSampleData([Ljava/lang/Object;)V

    goto :goto_c

    .line 2079
    :pswitch_6e
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleKeyFocusDown([Ljava/lang/Object;)V

    goto :goto_c

    .line 2083
    :pswitch_74
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleKeyFocusUp([Ljava/lang/Object;)V

    goto :goto_c

    .line 2087
    :pswitch_7a
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleKeyCaptureDown([Ljava/lang/Object;)V

    goto :goto_c

    .line 2091
    :pswitch_80
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleKeyCaptureUp([Ljava/lang/Object;)V

    goto :goto_c

    .line 2095
    :pswitch_86
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleKeyZoomInDown([Ljava/lang/Object;)V

    goto :goto_c

    .line 2099
    :pswitch_8c
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleKeyZoomOutDown([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2103
    :pswitch_93
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleKeyZoomUp([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2107
    :pswitch_9a
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleKeyMenu([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2111
    :pswitch_a1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleKeyBack([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2115
    :pswitch_a8
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handlePrepareTouchZoom([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2119
    :pswitch_af
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleOnPrepareTouchZoomTimeouted([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2123
    :pswitch_b6
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleStartTouchZoom([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2127
    :pswitch_bd
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleStopTouchZoom([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2131
    :pswitch_c4
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleCancelTouchZoom([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2135
    :pswitch_cb
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleCaptureButtonTouch([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2139
    :pswitch_d2
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleCaptureButtonRelease([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2143
    :pswitch_d9
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleCaptureButtonCancel([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2147
    :pswitch_e0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleScreenClear([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2151
    :pswitch_e7
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleStartAfSearchInTouch([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2155
    :pswitch_ee
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleStartAfSearchInTouchStop([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2159
    :pswitch_f5
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleDialogOpened([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2163
    :pswitch_fc
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleDialogClosed([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2167
    :pswitch_103
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleStorageError([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2171
    :pswitch_10a
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleStorageMounted([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2175
    :pswitch_111
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleStorageShouldChange([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2179
    :pswitch_118
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleSetFocusPosition([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2183
    :pswitch_11f
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2188
    :pswitch_126
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleOnPreviewFrameUpdated([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2192
    :pswitch_12d
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleOnPreviewFrame([Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2196
    :pswitch_134
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleOnSwitchCamera([Ljava/lang/Object;)V
    :try_end_139
    .catchall {:try_start_17 .. :try_end_139} :catchall_14

    goto/16 :goto_c

    .line 2017
    nop

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_17
        :pswitch_1d
        :pswitch_23
        :pswitch_29
        :pswitch_2f
        :pswitch_35
        :pswitch_3b
        :pswitch_41
        :pswitch_47
        :pswitch_4d
        :pswitch_56
        :pswitch_5c
        :pswitch_62
        :pswitch_68
        :pswitch_6e
        :pswitch_74
        :pswitch_7a
        :pswitch_80
        :pswitch_86
        :pswitch_8c
        :pswitch_93
        :pswitch_9a
        :pswitch_a1
        :pswitch_a8
        :pswitch_af
        :pswitch_b6
        :pswitch_bd
        :pswitch_c4
        :pswitch_cb
        :pswitch_d2
        :pswitch_d9
        :pswitch_e0
        :pswitch_e7
        :pswitch_ee
        :pswitch_f5
        :pswitch_fc
        :pswitch_103
        :pswitch_10a
        :pswitch_111
        :pswitch_118
        :pswitch_11f
        :pswitch_126
        :pswitch_12d
        :pswitch_134
    .end packed-switch
.end method

.method public varargs declared-synchronized sendStaticEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V
    .registers 11
    .param p1, "staticEvent"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2212
    monitor-enter p0

    :try_start_1
    sget-object v5, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$StaticEvent:[I

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v6

    aget v5, v5, v6
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_16

    packed-switch v5, :pswitch_data_72

    .line 2263
    :goto_c
    monitor-exit p0

    return-void

    .line 2216
    :pswitch_e
    const/4 v5, 0x0

    :try_start_f
    aget-object v5, p2, v5

    check-cast v5, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_16

    goto :goto_c

    .line 2212
    :catchall_16
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2221
    :pswitch_19
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_1b
    invoke-direct {p0, v5, v6}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->calculateRemainStorage(ZZ)V

    goto :goto_c

    .line 2225
    :pswitch_1f
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v5, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleOnFaceDetected([Ljava/lang/Object;)V

    goto :goto_c

    .line 2229
    :pswitch_25
    const/4 v5, 0x0

    aget-object v5, p2, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2230
    .local v4, "zoomValue":I
    const/4 v5, 0x1

    aget-object v5, p2, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2231
    .local v3, "stopped":Z
    const/4 v5, 0x2

    aget-object v0, p2, v5

    check-cast v0, Landroid/hardware/Camera;

    .line 2232
    .local v0, "camera":Landroid/hardware/Camera;
    invoke-direct {p0, v4, v3, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->onZoomChange(IZLandroid/hardware/Camera;)V

    goto :goto_c

    .line 2236
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v3    # "stopped":Z
    .end local v4    # "zoomValue":I
    :pswitch_40
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v5, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleOnOrientationChanged([Ljava/lang/Object;)V

    goto :goto_c

    .line 2240
    :pswitch_46
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCurrentState:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;

    invoke-virtual {v5, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$State;->handleOnRecordProgressUpdated([Ljava/lang/Object;)V

    goto :goto_c

    .line 2245
    :pswitch_4c
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v5}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->apply(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterApplyer;Z)V

    goto :goto_c

    .line 2249
    :pswitch_59
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    sget-object v6, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_c

    .line 2254
    :pswitch_64
    const/4 v5, 0x0

    aget-object v1, p2, v5

    check-cast v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$ErrorCode;

    .line 2255
    .local v1, "error":Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$ErrorCode;
    const/4 v5, 0x1

    aget-object v2, p2, v5

    check-cast v2, Ljava/lang/Exception;

    .line 2256
    .local v2, "exception":Ljava/lang/Exception;
    invoke-direct {p0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->onDeviceError(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$ErrorCode;Ljava/lang/Exception;)V
    :try_end_71
    .catchall {:try_start_1b .. :try_end_71} :catchall_16

    goto :goto_c

    .line 2212
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_e
        :pswitch_19
        :pswitch_1f
        :pswitch_25
        :pswitch_40
        :pswitch_46
        :pswitch_4c
        :pswitch_59
        :pswitch_64
    .end packed-switch
.end method

.method public setCameraDevice(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V
    .registers 2
    .param p1, "cameraDeviceHandler"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 203
    return-void
.end method

.method public setViewFinder(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;)V
    .registers 2
    .param p1, "viewFinder"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    .line 198
    return-void
.end method
