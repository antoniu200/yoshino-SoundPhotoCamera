.class public Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterApplyer;
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$PreviewFrameCallback;,
        Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnZoomChangedCallback;,
        Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnFaceDetectionCallback;,
        Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnPictureTakenCallback;,
        Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnShutterCallback;,
        Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnAutoFocusCallback;,
        Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;
    }
.end annotation


# static fields
.field private static final DUMP_PARAMETERS:Z = false

.field public static final INTERVAL_OPEN_CAMERA_MILLIS:I = 0x1f4

.field public static final RETRY_OPEN_CAMERA:I = 0x5

.field public static final SLEEP_TIMES_OPEN_CAMERA:I = 0x5

.field public static final STATUS_OPENED:I = 0x2

.field public static final STATUS_OPENING:I = 0x1

.field public static final STATUS_RELEASED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraDeviceHandler"

.field private static final TIMEOUT_OPEN_CAMERA_DEVICE:I = 0x7d0

.field private static final WORK_BUFFER_RING_SIZE:I = 0x4

.field private static sInstance:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;


# instance fields
.field private mActivityIsInForeground:Z

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraDeviceId:I

.field private mCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private mContext:Landroid/content/Context;

.field private mCurrentDeviceState:I

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCameraDisabled:Z

.field private mIsFaceDetectionAlreadyStarted:Z

.field private mIsImmediateReleaseRequested:Z

.field private mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

.field private mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

.field private final mOnAutoFocusCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnAutoFocusCallback;

.field private final mOnFaceDetectionCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnFaceDetectionCallback;

.field private final mOnPictureTakenCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnPictureTakenCallback;

.field private final mOnShutterCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnShutterCallback;

.field private mOnZoomChangedCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnZoomChangedCallback;

.field private mOpenDeviceThread:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;

.field private mPictureRect:Landroid/graphics/Rect;

.field private final mPreviewFrameCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$PreviewFrameCallback;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mSmoothZoomController:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

.field private mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

.field private final mStateMachineLock:Ljava/lang/Object;

.field private mWorkBufferRing:Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-direct {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;-><init>()V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->sInstance:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;

    .line 87
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    .line 88
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    .line 89
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 92
    iput v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCurrentDeviceState:I

    .line 98
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    .line 99
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    .line 102
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachineLock:Ljava/lang/Object;

    .line 136
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mSmoothZoomController:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    .line 139
    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsFaceDetectionAlreadyStarted:Z

    .line 142
    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    .line 145
    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsCameraDisabled:Z

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    .line 1539
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$PreviewFrameCallback;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$PreviewFrameCallback;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$1;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mPreviewFrameCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$PreviewFrameCallback;

    .line 162
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnAutoFocusCallback;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnAutoFocusCallback;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOnAutoFocusCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnAutoFocusCallback;

    .line 163
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnShutterCallback;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnShutterCallback;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOnShutterCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnShutterCallback;

    .line 164
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnPictureTakenCallback;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnPictureTakenCallback;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOnPictureTakenCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnPictureTakenCallback;

    .line 165
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnFaceDetectionCallback;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnFaceDetectionCallback;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOnFaceDetectionCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnFaceDetectionCallback;

    .line 166
    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;ILandroid/hardware/Camera$Parameters;)V
    .registers 3
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setPreviewSizeToParameters(ILandroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;I)I
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCurrentDeviceState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setPreviewFpsRangeToParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;ILandroid/hardware/Camera$Parameters;)V
    .registers 3
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setSceneToParameters(ILandroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;ILandroid/hardware/Camera$Parameters;)V
    .registers 3
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setFocusModeToParameters(ILandroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;ILandroid/hardware/Camera$Parameters;)V
    .registers 3
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setWhiteBalanceToParameters(ILandroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setJpegEncodingQuality()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setDcModeParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .registers 3
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    .param p1, "x1"    # Landroid/hardware/Camera;
    .param p2, "x2"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->doSetParametersToDevice(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->openCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->requestNextFrame()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->releaseCameraImmediatelyNotSynchronized()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Landroid/hardware/Camera;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->notifyDeviceOpened()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)I
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 66
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCameraDeviceId:I

    return v0
.end method

.method static synthetic access$900(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;ILandroid/hardware/Camera$Parameters;)V
    .registers 3
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setPictureSizeToParameters(ILandroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private doSetParametersToDevice(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .registers 5
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 925
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 928
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "key-sony-ext-playshuttersound"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 929
    return-void
.end method

.method private declared-synchronized getCameraInstance()Landroid/hardware/Camera;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 264
    monitor-enter p0

    :try_start_2
    iget-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_11

    if-eqz v2, :cond_8

    .line 277
    :cond_6
    :goto_6
    monitor-exit p0

    return-object v1

    .line 269
    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->isOpenDeviceTaskFinishedSuccessfully()Z

    move-result v0

    .line 271
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_6

    .line 277
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_6

    .line 264
    .end local v0    # "isSuccess":Z
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    .registers 2

    .prologue
    .line 169
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->sInstance:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isOpenDeviceTaskFinishedSuccessfully()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 756
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;

    if-nez v2, :cond_6

    .line 781
    :cond_5
    :goto_5
    return v1

    .line 763
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->join(J)V

    .line 765
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;

    if-eqz v2, :cond_5

    .line 768
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 769
    const-string v2, "CameraDeviceHandler"

    const-string v3, "mOpenDeviceThread.join() timeout."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_20} :catch_21
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_20} :catch_2a

    goto :goto_5

    .line 773
    :catch_21
    move-exception v0

    .line 774
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    const-string v2, "CameraDeviceHandler"

    const-string v3, "isOpenDeviceTaskFinishedSuccessfully():[task is canceled]"

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 776
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_2a
    move-exception v0

    .line 777
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "CameraDeviceHandler"

    const-string v3, "isOpenDeviceTaskFinishedSuccessfully():[task is Interrupted]"

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 781
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_33
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->isSuccess()Z

    move-result v1

    goto :goto_5
.end method

.method private static logPerformance(Ljava/lang/String;)V
    .registers 5
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PERFORMANCE] [TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CameraDeviceHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 76
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

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method private notifyDeviceOpened()V
    .registers 5

    .prologue
    .line 313
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachineLock:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_3
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    if-eqz v0, :cond_14

    .line 315
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCameraDeviceId:I

    .line 316
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->translateIdToCapturingMode(I)Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    move-result-object v3

    .line 315
    invoke-interface {v0, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->onDeviceOpened(Landroid/hardware/Camera$Parameters;Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)V

    .line 318
    :cond_14
    monitor-exit v1

    .line 319
    return-void

    .line 318
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private openCamera()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x5

    const/4 v4, 0x0

    .line 510
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mContext:Landroid/content/Context;

    if-nez v5, :cond_8

    .line 568
    :goto_7
    return v4

    .line 514
    :cond_8
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_9
    if-ge v0, v8, :cond_4d

    .line 515
    iget-boolean v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    if-eqz v5, :cond_12

    .line 516
    iput v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCurrentDeviceState:I

    goto :goto_7

    .line 520
    :cond_12
    :try_start_12
    iget v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    .line 522
    iget-boolean v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    if-eqz v5, :cond_54

    .line 523
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v5, :cond_2a

    .line 524
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V

    .line 525
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    .line 527
    :cond_2a
    const/4 v5, 0x0

    iput v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCurrentDeviceState:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2d} :catch_2e

    goto :goto_7

    .line 535
    :catch_2e
    move-exception v1

    .line 536
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CameraDeviceHandler"

    const-string v6, "Open camera failed."

    invoke-static {v5, v6, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v5, :cond_41

    .line 538
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V

    .line 539
    iput-object v9, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    .line 545
    :cond_41
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_42
    if-ge v3, v8, :cond_66

    .line 547
    :try_start_44
    iget-boolean v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    if-eqz v5, :cond_5e

    .line 550
    const/4 v5, 0x0

    iput v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCurrentDeviceState:I
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_4b} :catch_4c

    goto :goto_7

    .line 555
    :catch_4c
    move-exception v2

    .line 563
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "j":I
    :cond_4d
    :goto_4d
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-nez v5, :cond_69

    .line 564
    iput v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCurrentDeviceState:I

    goto :goto_7

    .line 531
    :cond_54
    :try_start_54
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v5, :cond_4d

    .line 532
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5d} :catch_2e

    goto :goto_4d

    .line 553
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "j":I
    :cond_5e
    const-wide/16 v6, 0x64

    :try_start_60
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_63
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_63} :catch_4c

    .line 545
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 514
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 568
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "j":I
    :cond_69
    const/4 v4, 0x1

    goto :goto_7
.end method

.method private prepareZoom(Landroid/hardware/Camera;)V
    .registers 5
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 684
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnZoomChangedCallback;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnZoomChangedCallback;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOnZoomChangedCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnZoomChangedCallback;

    .line 687
    new-instance v0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOnZoomChangedCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnZoomChangedCallback;

    invoke-direct {v0, p1, v1, v2}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;-><init>(Landroid/hardware/Camera;Landroid/os/Handler;Landroid/hardware/Camera$OnZoomChangeListener;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mSmoothZoomController:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    .line 688
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mSmoothZoomController:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->setZoomChangeInterval(I)V

    .line 690
    return-void
.end method

.method private declared-synchronized releaseCameraImmediately()V
    .registers 2

    .prologue
    .line 322
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->releaseCameraImmediatelyNotSynchronized()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 323
    monitor-exit p0

    return-void

    .line 322
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private releaseCameraImmediatelyNotSynchronized()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 329
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->stopFaceDetectionNotSynchronized()V

    .line 330
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->stopPreviewFrameCapturingNotSynchronized()V

    .line 333
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mSmoothZoomController:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    if-eqz v2, :cond_12

    .line 334
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mSmoothZoomController:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->release()V

    .line 335
    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mSmoothZoomController:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    .line 343
    :cond_12
    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    .line 344
    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    .line 346
    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;

    .line 347
    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mContext:Landroid/content/Context;

    .line 350
    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 351
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_36

    .line 353
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v5}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 354
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v5}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 356
    :try_start_2a
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2f} :catch_3a

    .line 368
    :cond_2f
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    .line 369
    .local v0, "camera":Landroid/hardware/Camera;
    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    .line 371
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 374
    .end local v0    # "camera":Landroid/hardware/Camera;
    :cond_36
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCurrentDeviceState:I

    .line 375
    return-void

    .line 357
    :catch_3a
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraDeviceHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera.stopPreview failed.ActivityIsInForeground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    iget-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    if-eqz v2, :cond_2f

    .line 362
    throw v1
.end method

.method private requestNextFrame()V
    .registers 3

    .prologue
    .line 1499
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 1500
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_7

    .line 1511
    :cond_6
    :goto_6
    return-void

    .line 1504
    :cond_7
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mWorkBufferRing:Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;

    if-eqz v1, :cond_6

    .line 1509
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mWorkBufferRing:Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->getCurrent()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 1510
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mWorkBufferRing:Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->increment()V

    goto :goto_6
.end method

.method private setDcModeParameters(Landroid/hardware/Camera$Parameters;)V
    .registers 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 497
    sget-object v0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->MAKE_IMAGE_FROM_PREVIEW:Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->writeTo(Landroid/hardware/Camera$Parameters;)V

    .line 499
    return-void
.end method

.method private setExposureAndWhiteBalanceLock(Z)V
    .registers 5
    .param p1, "lock"    # Z

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1072
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_7

    .line 1091
    :cond_6
    :goto_6
    return-void

    .line 1078
    :cond_7
    const/4 v0, 0x0

    .line 1079
    .local v0, "isNeedSetParameters":Z
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getAutoExposureLock()Z

    move-result v2

    if-eq v2, p1, :cond_18

    .line 1080
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1081
    const/4 v0, 0x1

    .line 1083
    :cond_18
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1084
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getAutoWhiteBalanceLock()Z

    move-result v2

    if-eq v2, p1, :cond_28

    .line 1085
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1086
    const/4 v0, 0x1

    .line 1088
    :cond_28
    if-eqz v0, :cond_6

    .line 1089
    invoke-virtual {p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    goto :goto_6
.end method

.method private setFocusModeToParameters(ILandroid/hardware/Camera$Parameters;)V
    .registers 4
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 594
    invoke-static {p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->getDefaultFocusMode(ILandroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "focus":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 598
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 600
    :cond_9
    return-void
.end method

.method private setJpegEncodingQuality()V
    .registers 3

    .prologue
    .line 642
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x2

    .line 643
    invoke-static {v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v1

    .line 642
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 645
    return-void
.end method

.method private setPictureSizeToParameters(ILandroid/hardware/Camera$Parameters;)V
    .registers 5
    .param p1, "cameraType"    # I
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 572
    invoke-static {p2}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->getDefaultResolution(Landroid/hardware/Camera$Parameters;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    .line 573
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 574
    return-void
.end method

.method private setPreviewFpsRangeToParameters(Landroid/hardware/Camera$Parameters;)V
    .registers 7
    .param p1, "target"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 629
    .line 630
    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->getOptimalPreviewFpsRangeAccordintTo(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    .line 632
    .local v0, "preferred":[I
    aget v1, v0, v3

    if-eqz v1, :cond_e

    aget v1, v0, v4

    if-nez v1, :cond_f

    .line 639
    :cond_e
    :goto_e
    return-void

    .line 637
    :cond_f
    aget v1, v0, v3

    aget v2, v0, v4

    .line 638
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v2, v0, v3

    aget v3, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 637
    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_e
.end method

.method private setPreviewSizeToParameters(ILandroid/hardware/Camera$Parameters;)V
    .registers 5
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    invoke-static {p2, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->getOptimalStillPreviewSize(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    .line 580
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1b

    .line 581
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 583
    :cond_1b
    return-void
.end method

.method private setSceneToParameters(ILandroid/hardware/Camera$Parameters;)V
    .registers 4
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 586
    invoke-static {p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->getDefaultSceneMode(ILandroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "scene":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 589
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 591
    :cond_9
    return-void
.end method

.method private setWhiteBalanceToParameters(ILandroid/hardware/Camera$Parameters;)V
    .registers 4
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 603
    invoke-static {p2}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->getDefaultWhiteBalance(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "whiteBalance":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 605
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 607
    :cond_9
    return-void
.end method

.method private showDeviceErrorMessage(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .registers 3
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsCameraDisabled:Z

    if-eqz v0, :cond_c

    .line 254
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showCameraDisabledMessage()V

    .line 258
    :goto_b
    return-void

    .line 256
    :cond_c
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceErrorMessage()V

    goto :goto_b
.end method

.method private stopFaceDetectionNotSynchronized()V
    .registers 5

    .prologue
    .line 727
    iget-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsFaceDetectionAlreadyStarted:Z

    if-nez v1, :cond_5

    .line 753
    :cond_4
    :goto_4
    return-void

    .line 731
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_4

    .line 735
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraId()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    .line 736
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->isFaceDetectionSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 737
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_4

    .line 740
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 742
    :try_start_21
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopFaceDetection()V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_26} :catch_2a

    .line 747
    :goto_26
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsFaceDetectionAlreadyStarted:Z

    goto :goto_4

    .line 743
    :catch_2a
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CameraDeviceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".stopFaceDetection():[stopFaceDetection failed]ActivityIsInForeground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method

.method private stopPreviewFrameCapturingNotSynchronized()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1476
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_6

    .line 1496
    :cond_5
    :goto_5
    return-void

    .line 1481
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1482
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_12} :catch_1e

    .line 1492
    :cond_12
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mWorkBufferRing:Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;

    if-eqz v1, :cond_5

    .line 1493
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mWorkBufferRing:Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;->release()V

    .line 1494
    iput-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mWorkBufferRing:Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;

    goto :goto_5

    .line 1483
    :catch_1e
    move-exception v0

    .line 1485
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CameraDeviceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera.setPreviewCallback failed.ActivityIsInForeground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1487
    iget-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    if-eqz v1, :cond_12

    .line 1488
    throw v0
.end method


# virtual methods
.method public applySavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;Landroid/hardware/Camera$Parameters;)V
    .registers 15
    .param p1, "savingRequest"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const-wide/16 v8, 0x0

    .line 1094
    if-eqz p2, :cond_83

    .line 1096
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1099
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 1102
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    if-eqz v1, :cond_80

    .line 1103
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 1104
    .local v2, "lat":D
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 1105
    .local v4, "lon":D
    cmpl-double v1, v2, v8

    if-nez v1, :cond_2c

    cmpl-double v1, v4, v8

    if-eqz v1, :cond_84

    :cond_2c
    const/4 v0, 0x1

    .line 1108
    .local v0, "hasLatLon":Z
    :goto_2d
    if-eqz v0, :cond_80

    .line 1111
    invoke-virtual {p2, v2, v3}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 1112
    invoke-virtual {p2, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 1115
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 1117
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 1126
    :goto_4a
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8a

    .line 1127
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    .line 1128
    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1127
    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 1134
    :goto_63
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-eqz v1, :cond_80

    .line 1137
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 1139
    .local v6, "utcTimeSeconds":J
    invoke-virtual {p2, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 1145
    .end local v0    # "hasLatLon":Z
    .end local v2    # "lat":D
    .end local v4    # "lon":D
    .end local v6    # "utcTimeSeconds":J
    :cond_80
    invoke-virtual {p0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    .line 1147
    :cond_83
    return-void

    .line 1105
    .restart local v2    # "lat":D
    .restart local v4    # "lon":D
    :cond_84
    const/4 v0, 0x0

    goto :goto_2d

    .line 1122
    .restart local v0    # "hasLatLon":Z
    :cond_86
    invoke-virtual {p2, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_4a

    .line 1130
    :cond_8a
    const-string v1, ""

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    goto :goto_63
.end method

.method public autoFocus()V
    .registers 6

    .prologue
    .line 1010
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 1012
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_7

    .line 1030
    :cond_6
    :goto_6
    return-void

    .line 1016
    :cond_7
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setExposureAndWhiteBalanceLock(Z)V

    .line 1021
    :try_start_b
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOnAutoFocusCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnAutoFocusCallback;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_6

    .line 1022
    :catch_11
    move-exception v1

    .line 1024
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraDeviceHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "camera.autoFocus failed.ActivityIsInForeground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1026
    iget-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    if-eqz v2, :cond_6

    .line 1027
    throw v1
.end method

.method public cancelAutoFocus()V
    .registers 6

    .prologue
    .line 1047
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 1049
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_7

    .line 1068
    :cond_6
    :goto_6
    return-void

    .line 1053
    :cond_7
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setExposureAndWhiteBalanceLock(Z)V

    .line 1058
    :try_start_b
    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_6

    .line 1059
    :catch_f
    move-exception v1

    .line 1061
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraDeviceHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera.cancelAutoFocus failed.ActivityIsInForeground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1063
    iget-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    if-eqz v2, :cond_6

    .line 1064
    throw v1
.end method

.method public commit()V
    .registers 4

    .prologue
    .line 1573
    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCurrentDeviceState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    .line 1582
    :cond_5
    :goto_5
    return-void

    .line 1577
    :cond_6
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1578
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_5

    .line 1581
    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    goto :goto_5
.end method

.method public getCameraDeviceStatus()I
    .registers 2

    .prologue
    .line 249
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCurrentDeviceState:I

    return v0
.end method

.method public getCameraId()I
    .registers 2

    .prologue
    .line 801
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCameraDeviceId:I

    return v0
.end method

.method public getLatestCachedParameters()Landroid/hardware/Camera$Parameters;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 819
    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCurrentDeviceState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    .line 822
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    .line 852
    :cond_8
    :goto_8
    return-object v2

    .line 825
    :cond_9
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    if-nez v3, :cond_45

    .line 827
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 829
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_8

    .line 837
    :try_start_13
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_19} :catch_25

    .line 846
    :cond_19
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    if-nez v3, :cond_45

    .line 847
    const-string v3, "CameraDeviceHandler"

    const-string v4, "getLatestCachedParameters: mLatestCachedParameters is null"

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 838
    :catch_25
    move-exception v1

    .line 840
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "CameraDeviceHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera.getParameters failed.ActivityIsInForeground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 842
    iget-boolean v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    if-eqz v3, :cond_19

    .line 843
    throw v1

    .line 852
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_45
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_8
.end method

.method public getMaxZoom()I
    .registers 4

    .prologue
    .line 1301
    const/4 v0, 0x0

    .line 1303
    .local v0, "max":I
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 1304
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_9

    move v1, v0

    .line 1312
    .end local v0    # "max":I
    .local v1, "max":I
    :goto_8
    return v1

    .line 1310
    .end local v1    # "max":I
    .restart local v0    # "max":I
    :cond_9
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    move v1, v0

    .line 1312
    .end local v0    # "max":I
    .restart local v1    # "max":I
    goto :goto_8
.end method

.method public getPictureRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public initialize()V
    .registers 2

    .prologue
    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    .line 507
    return-void
.end method

.method public isCameraDeviceIsOpenedRightNow()Z
    .registers 3

    .prologue
    .line 790
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCurrentDeviceState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 791
    const/4 v0, 0x1

    .line 794
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isCameraDisabled()Z
    .registers 2

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsCameraDisabled:Z

    return v0
.end method

.method public isImmediateReleaseRequested()Z
    .registers 2

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    return v0
.end method

.method public isOpenDeviceThreadAlive()Z
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 243
    const/4 v0, 0x1

    .line 245
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1590
    const-string v0, "CameraDeviceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera error occurred. Error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    monitor-enter p0

    .line 1592
    :try_start_19
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_25

    .line 1593
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 1594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    .line 1598
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_30

    .line 1599
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    if-eqz v0, :cond_2f

    .line 1600
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    .line 1602
    :cond_2f
    return-void

    .line 1598
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public prepareAdditionalFeatures(ILandroid/app/Activity;)V
    .registers 6
    .param p1, "cameraType"    # I
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 650
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_7

    .line 679
    :goto_6
    return-void

    .line 658
    :cond_7
    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->prepareZoom(Landroid/hardware/Camera;)V

    .line 663
    packed-switch p1, :pswitch_data_1e

    .line 674
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "prepareAdditionalSettings():[UnExpected State]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 665
    :pswitch_15
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startFaceDetection()V

    goto :goto_6

    .line 669
    :pswitch_19
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startFaceDetection()V

    goto :goto_6

    .line 663
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_19
    .end packed-switch
.end method

.method public declared-synchronized releaseCameraInstance()V
    .registers 2

    .prologue
    .line 283
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCurrentDeviceState:I

    packed-switch v0, :pswitch_data_18

    .line 302
    :pswitch_6
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->isOpenDeviceTaskFinishedSuccessfully()Z

    .line 305
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->releaseCameraImmediately()V

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_15

    .line 310
    :goto_f
    :pswitch_f
    monitor-exit p0

    return-void

    .line 291
    :pswitch_11
    const/4 v0, 0x1

    :try_start_12
    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_15

    goto :goto_f

    .line 283
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_f
        :pswitch_11
        :pswitch_6
    .end packed-switch
.end method

.method public requestCacheParameters()V
    .registers 6

    .prologue
    .line 857
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 859
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_7

    .line 879
    :cond_6
    :goto_6
    return-void

    .line 867
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_d} :catch_19

    .line 876
    :cond_d
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_6

    .line 877
    const-string v2, "CameraDeviceHandler"

    const-string v3, "requestCacheParameters: mLatestCachedParameters is null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 868
    :catch_19
    move-exception v1

    .line 870
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraDeviceHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera.getParameters failed.ActivityIsInForeground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    iget-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    if-eqz v2, :cond_d

    .line 873
    throw v1
.end method

.method public requestStartCameraOpen(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I

    .prologue
    .line 174
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCurrentDeviceState:I

    packed-switch v0, :pswitch_data_a

    .line 184
    :goto_5
    return-void

    .line 177
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->startCameraOpen(Landroid/content/Context;I)V

    goto :goto_5

    .line 174
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public resetFocusMode()V
    .registers 8

    .prologue
    .line 1377
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 1379
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_7

    .line 1418
    :cond_6
    :goto_6
    return-void

    .line 1385
    :cond_7
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 1387
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v2, :cond_6

    .line 1393
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_6

    .line 1399
    iget v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCameraDeviceId:I

    .line 1400
    invoke-static {v4, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->getDefaultFocusMode(ILandroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v4

    .line 1399
    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1403
    const/4 v3, 0x0

    .line 1406
    .local v3, "weight":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1407
    .local v1, "focusAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v4, Landroid/hardware/Camera$Area;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1408
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1411
    invoke-virtual {p0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_6
.end method

.method public set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;)V
    .registers 2
    .param p1, "value"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    .prologue
    .line 1548
    return-void
.end method

.method public set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;)V
    .registers 4
    .param p1, "flash"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    .prologue
    .line 1557
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1558
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_7

    .line 1568
    :goto_6
    return-void

    .line 1561
    :cond_7
    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->cameraParameterValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;)V
    .registers 2
    .param p1, "value"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    .prologue
    .line 1553
    return-void
.end method

.method public setActivityForeground(Z)V
    .registers 2
    .param p1, "isInForeground"    # Z

    .prologue
    .line 1605
    iput-boolean p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    .line 1606
    return-void
.end method

.method public setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .registers 2
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .prologue
    .line 1585
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 1586
    return-void
.end method

.method public setFocusPosition(Landroid/graphics/PointF;)V
    .registers 18
    .param p1, "positionRatio"    # Landroid/graphics/PointF;

    .prologue
    .line 1317
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v1

    .line 1319
    .local v1, "camera":Landroid/hardware/Camera;
    if-nez v1, :cond_7

    .line 1373
    :cond_6
    :goto_6
    return-void

    .line 1325
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 1326
    .local v5, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v5, :cond_6

    .line 1333
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v11

    const/4 v12, 0x1

    if-lt v11, v12, :cond_6

    .line 1339
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/PointF;->x:F

    const/high16 v12, 0x44fa0000    # 2000.0f

    mul-float/2addr v11, v12

    const/high16 v12, 0x447a0000    # 1000.0f

    sub-float/2addr v11, v12

    float-to-int v9, v11

    .line 1340
    .local v9, "x":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/PointF;->y:F

    const/high16 v12, 0x44fa0000    # 2000.0f

    mul-float/2addr v11, v12

    const/high16 v12, 0x447a0000    # 1000.0f

    sub-float/2addr v11, v12

    float-to-int v10, v11

    .line 1344
    .local v10, "y":I
    const/16 v8, 0x64

    .line 1345
    .local v8, "width":I
    const/16 v4, 0x64

    .line 1347
    .local v4, "height":I
    const/16 v7, 0x3e8

    .line 1350
    .local v7, "weight":I
    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v11, Landroid/graphics/Rect;

    add-int/lit8 v12, v9, -0x32

    add-int/lit8 v13, v10, -0x32

    add-int/lit8 v14, v9, 0x32

    add-int/lit8 v15, v10, 0x32

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v12, 0x3e8

    invoke-direct {v2, v11, v12}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 1355
    .local v2, "focusArea":Landroid/hardware/Camera$Area;
    new-instance v6, Landroid/graphics/Rect;

    const/16 v11, -0x3e8

    const/16 v12, -0x3e8

    const/16 v13, 0x3e8

    const/16 v14, 0x3e8

    invoke-direct {v6, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1356
    .local v6, "rangeArea":Landroid/graphics/Rect;
    iget-object v11, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1361
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1362
    .local v3, "focusAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1363
    invoke-virtual {v5, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1366
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_6
.end method

.method public setPhotoShutterSoundToMute()V
    .registers 4

    .prologue
    .line 611
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "key-sony-ext-playshuttersound"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public setStateMachine(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;)V
    .registers 4
    .param p1, "stateMachine"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    .prologue
    .line 813
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachineLock:Ljava/lang/Object;

    monitor-enter v1

    .line 814
    :try_start_3
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    .line 815
    monitor-exit v1

    .line 816
    return-void

    .line 815
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final setTorch(Z)V
    .registers 5
    .param p1, "on"    # Z

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 617
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_e

    .line 618
    const-string v1, "CameraDeviceHandler"

    const-string v2, "setTorch: params is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :goto_d
    return-void

    .line 621
    :cond_e
    if-eqz p1, :cond_19

    const-string v1, "torch"

    :goto_12
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    goto :goto_d

    .line 621
    :cond_19
    const-string v1, "off"

    goto :goto_12
.end method

.method public declared-synchronized startCameraOpen(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I

    .prologue
    .line 193
    monitor-enter p0

    :try_start_1
    const-string v1, "device_policy"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 195
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 196
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsCameraDisabled:Z

    .line 197
    const-string v1, "CameraDeviceHandler"

    const-string v2, "[CameraNotAvailable] startCameraOpen: dpm.getCameraDisabled(null)"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->errorLogForNonUserVariant(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    check-cast p1, Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->showDeviceErrorMessage(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_64

    .line 239
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    .line 204
    .restart local p1    # "context":Landroid/content/Context;
    :cond_21
    const/4 v1, 0x0

    :try_start_22
    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsCameraDisabled:Z

    .line 206
    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCurrentDeviceState:I

    packed-switch v1, :pswitch_data_6c

    .line 221
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mContext:Landroid/content/Context;

    .line 222
    iput p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCameraDeviceId:I

    .line 228
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 229
    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCameraDeviceId:I

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 230
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->setCameraInfo(Landroid/hardware/Camera$CameraInfo;)V

    .line 233
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;

    if-nez v1, :cond_1f

    .line 234
    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$1;)V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;

    .line 235
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;

    const-class v2, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->setName(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->setPriority(I)V

    .line 237
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OpenDeviceThread;->start()V
    :try_end_63
    .catchall {:try_start_22 .. :try_end_63} :catchall_64

    goto :goto_1f

    .line 193
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_64
    move-exception v1

    monitor-exit p0

    throw v1

    .line 212
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local p1    # "context":Landroid/content/Context;
    :pswitch_67
    const/4 v1, 0x0

    :try_start_68
    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z
    :try_end_6a
    .catchall {:try_start_68 .. :try_end_6a} :catchall_64

    goto :goto_1f

    .line 206
    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_67
        :pswitch_67
    .end packed-switch
.end method

.method public declared-synchronized startFaceDetection()V
    .registers 5

    .prologue
    .line 693
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsFaceDetectionAlreadyStarted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2d

    if-eqz v1, :cond_7

    .line 720
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 697
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_5

    .line 702
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraId()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    .line 703
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;->isFaceDetectionSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 704
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_5

    .line 707
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOnFaceDetectionCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnFaceDetectionCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_2d

    .line 709
    :try_start_24
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startFaceDetection()V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_29} :catch_30
    .catchall {:try_start_24 .. :try_end_29} :catchall_2d

    .line 718
    :cond_29
    const/4 v1, 0x1

    :try_start_2a
    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsFaceDetectionAlreadyStarted:Z
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_2d

    goto :goto_5

    .line 693
    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 710
    :catch_30
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_31
    const-string v1, "CameraDeviceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera.startFaceDetection failed.ActivityIsInForeground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    iget-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    if-eqz v1, :cond_29

    .line 715
    throw v0
    :try_end_50
    .catchall {:try_start_31 .. :try_end_50} :catchall_2d
.end method

.method public startLiveViewFinder(Landroid/view/SurfaceHolder;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 935
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_7

    .line 955
    :goto_6
    return-void

    .line 939
    :cond_7
    if-nez p1, :cond_11

    .line 940
    const-string v1, "CameraDeviceHandler"

    const-string v2, "Camera.setPreviewDisplay() failed. Because surfaceHolder is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 948
    :cond_11
    :try_start_11
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_6

    .line 950
    :catch_15
    move-exception v1

    goto :goto_6
.end method

.method public startPreview()Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 964
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 965
    .local v0, "curCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_b

    .line 968
    :try_start_8
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_b} :catch_d

    :cond_b
    move v2, v3

    .line 982
    :cond_c
    :goto_c
    return v2

    .line 969
    :catch_d
    move-exception v1

    .line 972
    .local v1, "exception":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    if-eqz v4, :cond_c

    .line 973
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v5, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_DEVICE_ERROR:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$ErrorCode;->ERROR_ON_START_PREVIEW:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$ErrorCode;

    aput-object v7, v6, v2

    aput-object v1, v6, v3

    invoke-interface {v4, v5, v6}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendStaticEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    goto :goto_c
.end method

.method public startPreviewFrameCapturing()V
    .registers 9

    .prologue
    .line 1431
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 1432
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_7

    .line 1465
    :cond_6
    return-void

    .line 1435
    :cond_7
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mWorkBufferRing:Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;

    if-nez v4, :cond_6

    .line 1440
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1446
    .local v3, "rect":Landroid/graphics/Rect;
    new-instance v4, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;

    const/4 v5, 0x4

    .line 1448
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0xc

    div-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;-><init>(IIZ)V

    iput-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mWorkBufferRing:Lcom/sonymobile/cameracommon/memorybuffer/ByteBufferRing;

    .line 1453
    :try_start_25
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mPreviewFrameCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$PreviewFrameCallback;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_2a} :catch_34

    .line 1462
    :cond_2a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    const/4 v4, 0x2

    if-ge v2, v4, :cond_6

    .line 1463
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->requestNextFrame()V

    .line 1462
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 1454
    .end local v2    # "i":I
    :catch_34
    move-exception v1

    .line 1456
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "CameraDeviceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Camera.setPreviewCallbackWithBuffer failed.ActivityIsInForeground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1458
    iget-boolean v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    if-eqz v4, :cond_2a

    .line 1459
    throw v1
.end method

.method public startSmoothZoom(I)V
    .registers 3
    .param p1, "zoomStep"    # I

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOnZoomChangedCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnZoomChangedCallback;

    if-nez v0, :cond_5

    .line 1281
    :cond_4
    :goto_4
    return-void

    .line 1275
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mSmoothZoomController:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    if-eqz v0, :cond_4

    .line 1280
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mSmoothZoomController:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->startSmoothZoom(I)V

    goto :goto_4
.end method

.method public declared-synchronized stopFaceDetection()V
    .registers 2

    .prologue
    .line 723
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->stopFaceDetectionNotSynchronized()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 724
    monitor-exit p0

    return-void

    .line 723
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopLiveViewFinder()V
    .registers 5

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->stopFaceDetection()V

    .line 989
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_8

    .line 1006
    :cond_7
    :goto_7
    return-void

    .line 994
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_7

    .line 995
    :catch_e
    move-exception v0

    .line 997
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CameraDeviceHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera.stopPreview failed.ActivityIsInForeground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 999
    iget-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    if-eqz v1, :cond_7

    .line 1000
    throw v0
.end method

.method public declared-synchronized stopPreviewFrameCapturing()V
    .registers 2

    .prologue
    .line 1468
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->stopPreviewFrameCapturingNotSynchronized()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 1469
    monitor-exit p0

    return-void

    .line 1468
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopSmoothZoom()V
    .registers 2

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOnZoomChangedCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnZoomChangedCallback;

    if-nez v0, :cond_5

    .line 1297
    :cond_4
    :goto_4
    return-void

    .line 1288
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mSmoothZoomController:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    if-eqz v0, :cond_4

    .line 1292
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mSmoothZoomController:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->stopSmoothZoom()V

    .line 1296
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->requestCacheParameters()V

    goto :goto_4
.end method

.method public takePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .registers 8
    .param p1, "savingRequest"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    const/4 v5, 0x0

    .line 1151
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 1153
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_8

    .line 1180
    :goto_7
    return-void

    .line 1157
    :cond_8
    invoke-direct {p0, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setExposureAndWhiteBalanceLock(Z)V

    .line 1160
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 1165
    :try_start_d
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOnShutterCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnShutterCallback;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mOnPictureTakenCallback:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler$OnPictureTakenCallback;

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_15} :catch_18

    .line 1174
    :cond_15
    iput-boolean v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mIsFaceDetectionAlreadyStarted:Z

    goto :goto_7

    .line 1166
    :catch_18
    move-exception v1

    .line 1168
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraDeviceHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera.takePicture failed.ActivityIsInForeground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1170
    iget-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    if-eqz v2, :cond_15

    .line 1171
    throw v1
.end method

.method public trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z
    .registers 9
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 883
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 885
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_9

    .line 917
    :goto_8
    return v2

    .line 892
    :cond_9
    :try_start_9
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->doSetParametersToDevice(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    .line 895
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_34

    .line 917
    const/4 v2, 0x1

    goto :goto_8

    .line 896
    :catch_16
    move-exception v1

    .line 898
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "CameraDeviceHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trySetParametersToDevice failed.ActivityIsInForeground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mActivityIsInForeground:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    iput-object v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_8

    .line 905
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_34
    move-exception v1

    .line 912
    .local v1, "e":Ljava/lang/Exception;
    iput-object v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_8
.end method

.method public waitForCameraInitialization()Z
    .registers 2

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
