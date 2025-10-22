.class Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;
.super Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;
.source "ViewFinderVisuals.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
.implements Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$OnStateChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;
.implements Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaNonObjectTrackingStateListener;,
        Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaStateListener;,
        Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderTouchActionNonObjectTrackingStateListener;,
        Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderTouchActionStateListener;,
        Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderTouchCaptureListener;,
        Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderNonActionListener;,
        Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$OnScreenCaptureButtonStateListener;,
        Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$UiComponentBackgroundTouchEventHandler;,
        Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ReTrySetupHeadUpDisplayTask;,
        Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$PostUiInflatedTask;,
        Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$SurfaceAvailableRetryTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

.field private mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

.field private mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

.field private mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

.field private mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

.field private mCurrentDisplayingUiComponent:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

.field private final mFocusActionListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

.field private mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

.field private mIsOpenInstantViewer:Z

.field private mIsSetupHeadupDisplayInvoked:Z

.field private mKeyTranslatorAutoReview:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private final mOnChangedModeSettingListener:Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
            "<",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnPlayFinishedListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$OnPlayFinishedListener;

.field private mOrientation:I

.field private final mPostUiInflatedTask:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$PostUiInflatedTask;

.field private mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

.field private mSelfTimerCountDownViewNext:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

.field private mSelfTimerIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

.field private final mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

.field private final mSettingPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

.field private mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

.field private mSoundCaptureOngoing:Z

.field private mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

.field private mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private final mUiComponentBackgroundTouchEventHandler:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$UiComponentBackgroundTouchEventHandler;

.field private mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 118
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferences"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 188
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;)V

    .line 137
    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 140
    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    .line 142
    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 150
    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    .line 151
    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    .line 158
    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundCaptureOngoing:Z

    .line 182
    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    .line 183
    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownViewNext:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    .line 184
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mOrientation:I

    .line 575
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$PostUiInflatedTask;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$PostUiInflatedTask;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mPostUiInflatedTask:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$PostUiInflatedTask;

    .line 601
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$UiComponentBackgroundTouchEventHandler;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$UiComponentBackgroundTouchEventHandler;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mUiComponentBackgroundTouchEventHandler:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$UiComponentBackgroundTouchEventHandler;

    .line 724
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mOnChangedModeSettingListener:Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;

    .line 752
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$2;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    .line 1525
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$4;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mOnPlayFinishedListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$OnPlayFinishedListener;

    .line 1953
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$5;

    invoke-direct {v0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$5;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusActionListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    .line 2025
    iput-boolean v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mIsOpenInstantViewer:Z

    .line 2034
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$6;

    .line 2035
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$6;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mKeyTranslatorAutoReview:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 192
    check-cast p1, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .line 195
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    .line 196
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 198
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->disableAccessibilityTalkBack()V

    .line 199
    iput-boolean v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mIsSetupHeadupDisplayInvoked:Z

    .line 200
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Landroid/view/SurfaceHolder;II)V
    .registers 4
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->onSurfaceAvailableInternal(Landroid/view/SurfaceHolder;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupAnimations()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->updatePhotoCaptureButton()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupSelfTimerCountDownView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isAllDialogClosed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Landroid/graphics/Point;)Landroid/graphics/PointF;
    .registers 3
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;
    .param p1, "x1"    # Landroid/graphics/Point;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->convertTouchPointToDevicePreviewPositionRatio(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isTouchCaptureEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mIsSetupHeadupDisplayInvoked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->closeCurrentDisplayingUiComponent()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    return-object v0
.end method

.method private cancelSelfTimerCountDownView()V
    .registers 3

    .prologue
    .line 2476
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    if-eqz v0, :cond_16

    .line 2477
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->cancelSelfTimerCountDownAnimation()V

    .line 2478
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2481
    :cond_16
    return-void
.end method

.method private changeToPauseView()V
    .registers 3

    .prologue
    .line 1031
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1033
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundCaptureOngoing:Z

    .line 1035
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1063
    :cond_e
    :goto_e
    return-void

    .line 1041
    :cond_f
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAllFocus()V

    .line 1043
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->closeReviewWindow()V

    .line 1045
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    if-eqz v0, :cond_23

    .line 1047
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->release()V

    .line 1048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    .line 1051
    :cond_23
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    if-eqz v0, :cond_32

    .line 1052
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->hideShortcutTray()V

    .line 1053
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->closeDialogs(Z)V

    .line 1056
    :cond_32
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 1057
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->remove()V

    .line 1060
    :cond_4d
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1061
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->release()V

    goto :goto_e
.end method

.method private changeToPhotoCaptureView()V
    .registers 2

    .prologue
    .line 1130
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundCaptureOngoing:Z

    .line 1134
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1138
    :cond_e
    return-void
.end method

.method private changeToPhotoCaptureWaitForAfDoneView()V
    .registers 2

    .prologue
    .line 1121
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1123
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1127
    :cond_b
    return-void
.end method

.method private changeToPhotoDialogView(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;)V
    .registers 4
    .param p1, "kind"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    .prologue
    .line 1151
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1182
    :cond_6
    :goto_6
    return-void

    .line 1157
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onUiComponentOverlaid()V

    .line 1159
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$UiComponentKind:[I

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5a

    goto :goto_6

    .line 1162
    :pswitch_18
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    if-eqz v0, :cond_23

    .line 1163
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->setVisibility(I)V

    .line 1166
    :cond_23
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isCapturingModeSelectorOpened()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1167
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1168
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    if-eqz v0, :cond_6

    .line 1169
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->hideShortcutTray()V

    .line 1170
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->closeDialogs(Z)V

    goto :goto_6

    .line 1172
    :cond_3e
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1173
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SETTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    goto :goto_6

    .line 1178
    :pswitch_4c
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1179
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideLeftIconContainer()V

    goto :goto_6

    .line 1159
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_18
        :pswitch_4c
    .end packed-switch
.end method

.method private changeToPhotoFocusDoneView(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 1106
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1108
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1118
    :goto_b
    return-void

    .line 1114
    :cond_c
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeToPhotoFocusView()V

    .line 1117
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onAutoFocusDone(Z)V

    goto :goto_b
.end method

.method private changeToPhotoFocusSearchView()V
    .registers 2

    .prologue
    .line 1091
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1093
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1103
    :goto_b
    return-void

    .line 1099
    :cond_c
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeToPhotoFocusView()V

    .line 1102
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onAutoFocusStarted()V

    goto :goto_b
.end method

.method private changeToPhotoFocusView()V
    .registers 2

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1088
    :goto_6
    return-void

    .line 1087
    :cond_7
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideLeftIconContainer()V

    goto :goto_6
.end method

.method private changeToPhotoIdleView(Z)V
    .registers 4
    .param p1, "isResetFocusPositionNeeded"    # Z

    .prologue
    const/4 v1, 0x0

    .line 990
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 992
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1028
    :cond_c
    :goto_c
    return-void

    .line 997
    :cond_d
    if-eqz p1, :cond_5f

    .line 999
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearExceptTouchFocus()V

    .line 1005
    :goto_14
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearFaceDetection()V

    .line 1006
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setAFLocking(Z)V

    .line 1007
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->updatePhotoCaptureButton()V

    .line 1008
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->showLeftIconContainer()V

    .line 1010
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    if-eqz v0, :cond_31

    .line 1011
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->showShortcutTray()V

    .line 1014
    :cond_31
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isOpenAutoReview()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1015
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->hide()V

    .line 1018
    :cond_3c
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    if-eqz v0, :cond_45

    .line 1019
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->setVisibility(I)V

    .line 1023
    :cond_45
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mIsSetupHeadupDisplayInvoked:Z

    if-nez v0, :cond_c

    .line 1024
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1025
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hide()V

    goto :goto_c

    .line 1002
    :cond_5f
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onUiComponentRemoved()V

    goto :goto_14
.end method

.method private changeToPhotoSelftimerView()V
    .registers 3

    .prologue
    .line 1141
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1142
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 1143
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->hideShortcutTray()V

    .line 1144
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->closeDialogs(Z)V

    .line 1145
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->showSelfTimerCountDownView()V

    .line 1146
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->startSelfTimerCountDownAnimation()V

    .line 1147
    return-void
.end method

.method private changeToPhotoZoomingView()V
    .registers 3

    .prologue
    .line 1066
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1068
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1078
    :cond_b
    :goto_b
    return-void

    .line 1074
    :cond_c
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    if-eqz v0, :cond_b

    .line 1075
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->hideShortcutTray()V

    .line 1076
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->closeDialogs(Z)V

    goto :goto_b
.end method

.method private checkSurfaceIsPreparedOrNot(Landroid/view/SurfaceHolder;II)V
    .registers 13
    .param p1, "surface"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v8, 0x0

    .line 310
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    if-nez v4, :cond_6

    .line 347
    :goto_5
    return-void

    .line 315
    :cond_6
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 316
    .local v2, "previewRect":Landroid/graphics/Rect;
    if-nez v2, :cond_30

    .line 318
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 319
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_26

    .line 320
    new-instance v4, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$SurfaceAvailableRetryTask;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$SurfaceAvailableRetryTask;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Landroid/view/SurfaceHolder;II)V

    const-wide/16 v6, 0x64

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 325
    :cond_26
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v5, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_EVF_PREPARATION_FAILED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_5

    .line 332
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_30
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 335
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHeight()I

    move-result v5

    invoke-direct {v3, v8, v8, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 336
    .local v3, "textureRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->computePreviewRect(Landroid/app/Activity;II)Landroid/graphics/Rect;

    move-result-object v0

    .line 339
    .local v0, "finderRect":Landroid/graphics/Rect;
    invoke-static {v0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isNearSameSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 341
    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->notifyOnEvfPrepared(Landroid/graphics/Rect;)V

    goto :goto_5

    .line 345
    :cond_5b
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->resizeEvfScope(II)V

    goto :goto_5
.end method

.method private closeCurrentDisplayingUiComponent()V
    .registers 2

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCurrentDisplayingUiComponent:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    if-nez v0, :cond_5

    .line 1191
    :goto_4
    return-void

    .line 1189
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->closeCapturingModeSelector()V

    .line 1190
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->closeEntireHierarchyOfSettingDialogs()V

    goto :goto_4
.end method

.method private closeCurrentDisplayingUiComponentByBackKey()V
    .registers 2

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCurrentDisplayingUiComponent:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    if-nez v0, :cond_5

    .line 1200
    :goto_4
    return-void

    .line 1198
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->closeCapturingModeSelector()V

    .line 1199
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->closeCurrentSettingDialog()V

    goto :goto_4
.end method

.method private closeCurrentSettingDialog()V
    .registers 2

    .prologue
    .line 2264
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->closeCurrentDialog()V

    .line 2265
    return-void
.end method

.method private closeEntireHierarchyOfSettingDialogs()V
    .registers 3

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->closeDialogs(Z)V

    .line 2258
    return-void
.end method

.method private closeReviewWindow()V
    .registers 2

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_9

    .line 2101
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->hide()V

    .line 2103
    :cond_9
    return-void
.end method

.method private convertTouchPointToDevicePreviewPositionRatio(Landroid/graphics/Point;)Landroid/graphics/PointF;
    .registers 10
    .param p1, "touchPointOnScreen"    # Landroid/graphics/Point;

    .prologue
    .line 1986
    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    .line 1987
    .local v1, "finderW":I
    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    .line 1990
    .local v0, "finderH":I
    iget v6, p1, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getLeft()I

    move-result v7

    sub-int v2, v6, v7

    .line 1991
    .local v2, "finderX":I
    iget v6, p1, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getTop()I

    move-result v7

    sub-int v3, v6, v7

    .line 1994
    .local v3, "finderY":I
    int-to-float v6, v2

    int-to-float v7, v1

    div-float v4, v6, v7

    .line 1995
    .local v4, "ratioX":F
    int-to-float v6, v3

    int-to-float v7, v0

    div-float v5, v6, v7

    .line 1997
    .local v5, "ratioY":F
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v6
.end method

.method private createSelfTimerCountDownView(Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;)V
    .registers 5
    .param p1, "selfTimer"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    .prologue
    .line 2460
    .line 2461
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    .line 2462
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030057

    const/4 v2, 0x0

    .line 2463
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownViewNext:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    .line 2464
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownViewNext:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 2465
    return-void
.end method

.method private getDownHeadUpDisplay()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 838
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_10

    .line 839
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 840
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    .line 844
    :cond_10
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    if-eqz v0, :cond_1b

    .line 845
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->release()V

    .line 846
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 849
    :cond_1b
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;

    if-eqz v0, :cond_2b

    .line 850
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->setCaptureAreaStateListener(Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;)V

    .line 851
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->release()V

    .line 852
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;

    .line 856
    :cond_2b
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    if-eqz v0, :cond_36

    .line 857
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;->release()V

    .line 858
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    .line 862
    :cond_36
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    .line 863
    return-void
.end method

.method private isAllDialogClosed()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2271
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    if-eqz v4, :cond_28

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_28

    move v1, v2

    .line 2272
    .local v1, "isSettingDialogOpened":Z
    :goto_f
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_2a

    move v0, v2

    .line 2273
    .local v0, "isAutoReviewOpened":Z
    :goto_1c
    if-nez v1, :cond_26

    if-nez v0, :cond_26

    .line 2275
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isCapturingModeSelectorOpened()Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_26
    move v2, v3

    .line 2278
    :cond_27
    return v2

    .end local v0    # "isAutoReviewOpened":Z
    .end local v1    # "isSettingDialogOpened":Z
    :cond_28
    move v1, v3

    .line 2271
    goto :goto_f

    .restart local v1    # "isSettingDialogOpened":Z
    :cond_2a
    move v0, v3

    .line 2272
    goto :goto_1c
.end method

.method public static final isNearSameSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7
    .param p0, "rectA"    # Landroid/graphics/Rect;
    .param p1, "rectB"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 350
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 351
    .local v0, "aspectA":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 353
    .local v1, "aspectB":F
    mul-float v2, v0, v4

    float-to-int v2, v2

    mul-float v3, v1, v4

    float-to-int v3, v3

    if-ne v2, v3, :cond_24

    .line 354
    const/4 v2, 0x1

    .line 357
    :goto_23
    return v2

    :cond_24
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private isTouchCaptureEnable()Z
    .registers 3

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static logPerformance(Ljava/lang/String;)V
    .registers 5
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PERFORMANCE] [TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 124
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

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method private notifyOnEvfPrepared(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "previewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_EVF_PREPARED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 402
    return-void
.end method

.method private onCameraModeChangedTo(I)V
    .registers 3
    .param p1, "cameraType"    # I

    .prologue
    .line 1203
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1216
    :goto_6
    return-void

    .line 1210
    :cond_7
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupCapturingModeSelectorButton()V

    .line 1211
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->showShortcutTray()V

    .line 1212
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupZoombar(Z)V

    .line 1215
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setOrientation(I)V

    goto :goto_6
.end method

.method private onFaceDetected(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;)V
    .registers 4
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;

    .prologue
    .line 1546
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1568
    :goto_6
    return-void

    .line 1552
    :cond_7
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraId()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    .line 1562
    const/4 v0, 0x0

    .line 1565
    .local v0, "isMirrored":Z
    :goto_11
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setMirrored(Z)V

    .line 1567
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onFaceDetected(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;)V

    goto :goto_6

    .line 1554
    .end local v0    # "isMirrored":Z
    :pswitch_1c
    const/4 v0, 0x1

    .line 1555
    .restart local v0    # "isMirrored":Z
    goto :goto_11

    .line 1558
    .end local v0    # "isMirrored":Z
    :pswitch_1e
    const/4 v0, 0x0

    .line 1559
    .restart local v0    # "isMirrored":Z
    goto :goto_11

    .line 1552
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method private onLazyInitializationTaskRun()V
    .registers 1

    .prologue
    .line 1542
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupCapturingModeSelector()V

    .line 1543
    return-void
.end method

.method private onSurfaceAvailableInternal(Landroid/view/SurfaceHolder;II)V
    .registers 4
    .param p1, "surface"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 304
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->checkSurfaceIsPreparedOrNot(Landroid/view/SurfaceHolder;II)V

    .line 307
    return-void
.end method

.method private varargs onViewFinderStateChanged(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "currentState"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 872
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a6

    .line 987
    :cond_d
    :goto_d
    :pswitch_d
    return-void

    .line 882
    :pswitch_e
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->resumeView()V

    .line 883
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_d

    .line 889
    :pswitch_17
    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCurrentDisplayingUiComponent:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    .line 890
    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeToPhotoIdleView(Z)V

    .line 893
    if-eqz p2, :cond_21

    array-length v0, p2

    if-nez v0, :cond_25

    .line 894
    :cond_21
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->requestToDimSystemUi()V

    goto :goto_d

    .line 896
    :cond_25
    aget-object v0, p2, v2

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->ZOOM_BAR:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    if-eq v0, v1, :cond_d

    .line 897
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->requestToDimSystemUi()V

    goto :goto_d

    .line 905
    :pswitch_31
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeToPhotoZoomingView()V

    goto :goto_d

    .line 912
    :pswitch_35
    aget-object v0, p2, v2

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCurrentDisplayingUiComponent:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    .line 914
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCurrentDisplayingUiComponent:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeToPhotoDialogView(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;)V

    .line 915
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->requestToRecoverSystemUi()V

    goto :goto_d

    .line 923
    :pswitch_44
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->requestToRemoveSystemUi()V

    .line 924
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeToPhotoFocusSearchView()V

    goto :goto_d

    .line 928
    :pswitch_4b
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeToPhotoFocusSearchView()V

    goto :goto_d

    .line 935
    :pswitch_4f
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeToPhotoFocusDoneView(Ljava/lang/Boolean;)V

    goto :goto_d

    .line 939
    :pswitch_57
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeToPhotoCaptureWaitForAfDoneView()V

    goto :goto_d

    .line 943
    :pswitch_5b
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeToPhotoCaptureView()V

    goto :goto_d

    .line 947
    :pswitch_5f
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeToPhotoSelftimerView()V

    goto :goto_d

    .line 951
    :pswitch_63
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    if-eqz v0, :cond_6c

    .line 952
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearExceptTouchFocus()V

    .line 956
    :cond_6c
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->showContentsViewController()V

    goto :goto_d

    .line 960
    :pswitch_74
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 961
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->pauseView()V

    .line 962
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeToPauseView()V

    goto :goto_d

    .line 966
    :pswitch_82
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    if-eqz v0, :cond_8b

    .line 967
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAllFocus()V

    .line 970
    :cond_8b
    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeToPhotoIdleView(Z)V

    .line 971
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->requestToDimSystemUi()V

    goto/16 :goto_d

    .line 975
    :pswitch_93
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->release()V

    .line 978
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getDownHeadUpDisplay()V

    goto/16 :goto_d

    .line 982
    :pswitch_9b
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;

    if-eqz v0, :cond_d

    .line 983
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;

    invoke-virtual {v0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->setCaptureAreaStateListener(Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;)V

    goto/16 :goto_d

    .line 872
    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_17
        :pswitch_31
        :pswitch_31
        :pswitch_35
        :pswitch_44
        :pswitch_44
        :pswitch_4b
        :pswitch_4f
        :pswitch_4f
        :pswitch_57
        :pswitch_5b
        :pswitch_5f
        :pswitch_63
        :pswitch_74
        :pswitch_82
        :pswitch_93
        :pswitch_9b
    .end packed-switch
.end method

.method private openReviewWindow(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;)V
    .registers 14
    .param p1, "content"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    .prologue
    const/4 v6, 0x0

    .line 2057
    iget-object v0, p1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->picture:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v11, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    .line 2058
    .local v11, "status":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;
    iget-object v0, p1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->picture:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->isFront()Z

    move-result v8

    .line 2061
    .local v8, "isFront":Z
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_37

    .line 2062
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v1

    iget-object v2, p1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->picture:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v2

    const-string v3, ""

    iget-object v4, v11, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    new-instance v5, Landroid/graphics/Rect;

    iget v7, v11, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    iget v9, v11, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    invoke-direct {v5, v6, v6, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v7, v11, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    move-object v9, p0

    move-object v10, p0

    invoke-virtual/range {v0 .. v10}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->open(Lcom/sonyericsson/cameracommon/activity/BaseActivity;[BLjava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;IIZLcom/sonyericsson/cameracommon/review/ReviewWindowListener;Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 2066
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->closeReviewWindow()V

    .line 2071
    :cond_37
    :goto_37
    return-void

    .line 2068
    :cond_38
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0, v6}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setVisibleViewIcon(Z)V

    goto :goto_37
.end method

.method private pauseView()V
    .registers 3

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->pause()V

    .line 812
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    if-eqz v0, :cond_e

    .line 813
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->clearShortcutTray(Landroid/content/Context;)V

    .line 815
    :cond_e
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    if-eqz v0, :cond_17

    .line 816
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;->onPause()V

    .line 820
    :cond_17
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->clearPreInflatedViews()V

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mIsSetupHeadupDisplayInvoked:Z

    .line 822
    return-void
.end method

.method private preparationForInstantViewer()V
    .registers 3

    .prologue
    .line 2368
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;)V

    .line 2370
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_15

    .line 2371
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setUri(Landroid/net/Uri;)V

    .line 2373
    :cond_15
    return-void
.end method

.method private removeEarlyThumbnailView()V
    .registers 2

    .prologue
    .line 2250
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeEarlyThumbnailView()V

    .line 2251
    return-void
.end method

.method private removeSelfTimerCountDownView()V
    .registers 3

    .prologue
    .line 2468
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    if-eqz v0, :cond_14

    .line 2469
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    .line 2473
    :cond_14
    return-void
.end method

.method private resizeEvfScope(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_18

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_18

    .line 411
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "resizeEvfScope():[Already resized]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 414
    :cond_18
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    .line 415
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 418
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 419
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 420
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 422
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    return-void
.end method

.method private resumeView()V
    .registers 2

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 800
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->remove()V

    .line 802
    :cond_1b
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 803
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->resume()V

    .line 804
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->clearShortcutSelected()V

    .line 805
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;->onResume()V

    .line 807
    :cond_2e
    return-void
.end method

.method private setEarlyThumbnailView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2238
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setEarlyThumbnailView(Landroid/view/View;)V

    .line 2239
    return-void
.end method

.method private setupAnimations()V
    .registers 4

    .prologue
    .line 792
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 793
    .local v0, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0e0099

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 794
    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 796
    return-void
.end method

.method private setupAudioPlayer()V
    .registers 4

    .prologue
    .line 2173
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isInflated()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2174
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->AUDIO_PLAYER:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    .line 2180
    :goto_15
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    if-nez v0, :cond_36

    .line 2181
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->TAG:Ljava/lang/String;

    const-string v1, "setupAudioPlayer: Failed to inflate AudioPlayer."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    :goto_20
    return-void

    .line 2176
    :cond_21
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030021

    const/4 v2, 0x0

    .line 2177
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    goto :goto_15

    .line 2185
    :cond_36
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_41

    .line 2186
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->addView(Landroid/view/View;)V

    .line 2190
    :cond_41
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mKeyTranslatorAutoReview:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->setKeyEventTranslator(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;)V

    goto :goto_20
.end method

.method private setupAutoReview()V
    .registers 4

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-nez v0, :cond_20

    .line 2029
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    const v1, 0x7f0e0082

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    .line 2030
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mKeyTranslatorAutoReview:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;)V

    .line 2032
    :cond_20
    return-void
.end method

.method private setupCaptureArea()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 664
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;

    if-nez v0, :cond_12

    .line 665
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    const v1, 0x7f0e00d4

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;

    .line 668
    :cond_12
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isTouchCaptureEnable()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 669
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->capturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->FRONT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    if-ne v0, v1, :cond_2f

    .line 670
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderTouchCaptureListener;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderTouchCaptureListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->setCaptureAreaStateListener(Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;)V

    .line 687
    :goto_2e
    return-void

    .line 674
    :cond_2f
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaNonObjectTrackingStateListener;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderCaptureAreaNonObjectTrackingStateListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->setCaptureAreaStateListener(Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;)V

    goto :goto_2e

    .line 678
    :cond_3a
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->capturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->FRONT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    if-ne v0, v1, :cond_51

    .line 679
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderNonActionListener;

    invoke-direct {v1, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderNonActionListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->setCaptureAreaStateListener(Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;)V

    goto :goto_2e

    .line 683
    :cond_51
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderTouchActionNonObjectTrackingStateListener;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ViewFinderTouchActionNonObjectTrackingStateListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->setCaptureAreaStateListener(Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;)V

    goto :goto_2e
.end method

.method private setupCapturingModeSelectorButton()V
    .registers 5

    .prologue
    .line 2005
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->isHeadUpDisplayReady()Z

    move-result v1

    if-nez v1, :cond_b

    .line 2015
    :goto_a
    return-void

    .line 2010
    :cond_b
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    const-string v1, "capturing_mode_soundphoto"

    const v2, 0x7f02016c

    const v3, 0x7f080063

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;-><init>(Ljava/lang/String;II)V

    .line 2014
    .local v0, "attribute":Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setCurrentCapturingMode(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;)V

    goto :goto_a
.end method

.method private setupContentsView()V
    .registers 6

    .prologue
    .line 701
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v4

    .line 702
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v4

    aput-object v4, v2, v3

    .line 701
    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendStaticEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 703
    return-void
.end method

.method private setupFocusRectangles()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 610
    const/4 v3, 0x0

    .line 611
    .local v3, "devicePreviewWidth":I
    const/4 v4, 0x0

    .line 612
    .local v4, "devicePreviewHeight":I
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 613
    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_88

    .line 614
    :cond_f
    const/4 v3, 0x0

    .line 615
    const/4 v4, 0x0

    .line 624
    :goto_11
    new-instance v5, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;

    invoke-direct {v5}, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;-><init>()V

    .line 625
    .local v5, "focusRectanglesViewList":Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isInflated()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 626
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    const v1, 0x7f0e00d5

    .line 627
    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v5, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->rectanglesContainer:Landroid/widget/RelativeLayout;

    .line 628
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FACE:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 629
    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v0

    new-array v1, v9, [Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    iput-object v0, v5, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->faceViewList:[Landroid/view/View;

    .line 630
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_OBJECT_TRACKING:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 631
    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v0

    .line 632
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    iput-object v0, v5, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->trackedObjectView:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 633
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_SINGLE:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 634
    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v0

    .line 635
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v5, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->singleAfView:Landroid/widget/RelativeLayout;

    .line 636
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 637
    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v0

    .line 638
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v5, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->touchAfView:Landroid/widget/RelativeLayout;

    .line 641
    :cond_63
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    if-nez v0, :cond_77

    .line 642
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusActionListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mViewFinderCaptureArea:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;IILcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;Landroid/view/View;Landroid/view/View$OnTouchListener;Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 653
    :cond_77
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isTouchCaptureEnable()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 654
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->enableFaceTouchCapture()V

    .line 659
    :goto_82
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0, v9}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setVisibility(I)V

    .line 660
    return-void

    .line 617
    .end local v5    # "focusRectanglesViewList":Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;
    :cond_88
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 618
    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 619
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 620
    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto/16 :goto_11

    .line 656
    .restart local v5    # "focusRectanglesViewList":Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;
    :cond_9e
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->disableFaceTouchCapture()V

    goto :goto_82
.end method

.method private setupHeadUpDisplay()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 441
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->isDeviceInSecurityLock()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mIsSetupHeadupDisplayInvoked:Z

    if-eqz v3, :cond_f

    .line 542
    :goto_e
    return-void

    .line 446
    :cond_f
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RESUME_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v3, v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 447
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v3, v7}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 453
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->joinInflateTask()V

    .line 455
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v3

    if-nez v3, :cond_3d

    .line 457
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_3d

    .line 459
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    new-instance v4, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ReTrySetupHeadUpDisplayTask;

    invoke-direct {v4, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$ReTrySetupHeadUpDisplayTask;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v7}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    goto :goto_e

    .line 469
    :cond_3d
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v1

    .line 471
    .local v1, "isHeadUpDisplayReady":Z
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isInflated()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 472
    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->HEAD_UP_DISPLAY:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v3

    .line 473
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 472
    invoke-virtual {p0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setPreInflatedHeadUpDisplay(Landroid/view/View;)V

    .line 475
    :cond_56
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->requestSetupHeadUpDisplay()V

    .line 480
    if-nez v1, :cond_6a

    .line 486
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupViewFinderLayout()Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 487
    .local v2, "overlay":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreviewOverlayContainer()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 490
    .end local v2    # "overlay":Landroid/widget/RelativeLayout;
    :cond_6a
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupSoundIndicator()V

    .line 491
    invoke-direct {p0, v7}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupZoombar(Z)V

    .line 492
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupSettingUi()V

    .line 493
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupContentsView()V

    .line 497
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupCaptureArea()V

    .line 498
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupFocusRectangles()V

    .line 500
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupOnScreenCameraButton()V

    .line 501
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupCapturingModeSelectorButton()V

    .line 502
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupAutoReview()V

    .line 503
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupAudioPlayer()V

    .line 504
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupSelfTimerIndicator()V

    .line 505
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupSelfTimerCountDownView()V

    .line 506
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCurrentOrientation()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setOrientation(I)V

    .line 508
    iput-boolean v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mIsSetupHeadupDisplayInvoked:Z

    .line 509
    invoke-direct {p0, v7}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeToPhotoIdleView(Z)V

    .line 517
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 518
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_b1

    .line 519
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mPostUiInflatedTask:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$PostUiInflatedTask;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 528
    :cond_b1
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendStaticEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 532
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->clearPreInflatedViews()V

    .line 538
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v3, v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 539
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH_TO_DISPATCH_DRAW:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v3, v7}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 541
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v3, v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    goto/16 :goto_e
.end method

.method private setupOnScreenCameraButton()V
    .registers 4

    .prologue
    .line 691
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$OnScreenCaptureButtonStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$OnScreenCaptureButtonStateListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;)V

    .line 692
    .local v0, "photo":Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 693
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->SELFTIMER_LONG:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 694
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->SELFTIMER_SHORT:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 695
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->updatePhotoCaptureButton()V

    .line 696
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 697
    return-void
.end method

.method private setupSelfTimerCountDownView()V
    .registers 5

    .prologue
    .line 2442
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v1

    iget-object v1, v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->selfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->get()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    .line 2443
    .local v0, "selftimer":Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;
    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$parameters$SelfTimer:[I

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_40

    .line 2454
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":setupSelfTimerCountDownView [Irregular value] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2448
    :pswitch_38
    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->createSelfTimerCountDownView(Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;)V

    .line 2457
    :goto_3b
    return-void

    .line 2451
    :pswitch_3c
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->removeSelfTimerCountDownView()V

    goto :goto_3b

    .line 2443
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_38
        :pswitch_38
        :pswitch_3c
    .end packed-switch
.end method

.method private setupSelfTimerIndicator()V
    .registers 4

    .prologue
    .line 781
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    if-nez v1, :cond_32

    .line 782
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 783
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureMethodIndicatorContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 784
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 785
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    .line 786
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 787
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    .line 789
    .end local v0    # "image":Landroid/widget/ImageView;
    :cond_32
    return-void
.end method

.method private setupSettingUi()V
    .registers 8

    .prologue
    .line 706
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    if-nez v0, :cond_37

    .line 707
    new-instance v2, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    const v1, 0x7f0e0112

    .line 709
    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    const v5, 0x7f0e010d

    .line 710
    invoke-virtual {v1, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 712
    .local v2, "dialogStack":Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .line 715
    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mOnChangedModeSettingListener:Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .line 721
    .end local v2    # "dialogStack":Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    :cond_37
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->setup()V

    .line 722
    return-void
.end method

.method private setupSoundIndicator()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2152
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    if-eqz v0, :cond_6

    .line 2167
    :goto_5
    return-void

    .line 2157
    :cond_6
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isInflated()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2158
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->SOUND_INDICATOR:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 2159
    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    .line 2166
    :goto_1a
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCenterContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_5

    .line 2161
    :cond_28
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030063

    const/4 v2, 0x0

    .line 2162
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    goto :goto_1a
.end method

.method private setupViewFinderLayout()Landroid/widget/RelativeLayout;
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 545
    const/4 v1, 0x0

    .line 546
    .local v1, "overlay":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isInflated()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 547
    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->PREVIEW_OVERLAY:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {p0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 548
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "overlay":Landroid/widget/RelativeLayout;
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 550
    .restart local v1    # "overlay":Landroid/widget/RelativeLayout;
    :cond_16
    if-nez v1, :cond_27

    .line 551
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03004e

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1    # "overlay":Landroid/widget/RelativeLayout;
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 556
    .restart local v1    # "overlay":Landroid/widget/RelativeLayout;
    :cond_27
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    .line 557
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v2

    invoke-direct {v0, v2, v5}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 558
    .local v0, "captureFeedbackContextView":Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 559
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 560
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 561
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setVisibility(I)V

    .line 562
    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    .line 564
    return-object v1
.end method

.method private setupZoombar(Z)V
    .registers 4
    .param p1, "doZoom"    # Z

    .prologue
    .line 2519
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v0

    .line 2521
    .local v0, "zoomBar":Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getMaxZoom()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setMaxZoom(Ljava/lang/Integer;)V

    .line 2522
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setZoomRatios(Ljava/util/List;)V

    .line 2524
    if-eqz p1, :cond_31

    .line 2525
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->onZoomChanged(I)V

    .line 2527
    :cond_31
    return-void
.end method

.method private showSelfTimerCountDownView()V
    .registers 5

    .prologue
    .line 2484
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2485
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreview()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 2486
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreview()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2487
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2488
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->removeSelfTimerCountDownView()V

    .line 2489
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownViewNext:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    .line 2490
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    if-nez v2, :cond_2e

    .line 2503
    :cond_2d
    :goto_2d
    return-void

    .line 2491
    :cond_2e
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v2, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2492
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setSensorOrientation(I)V

    .line 2493
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setVisibility(I)V

    .line 2494
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2495
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 2497
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->isTenInch(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2498
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    .line 2499
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2500
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2501
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v2, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2d
.end method

.method private startEarlyThumbnailInsertAnimation(I)V
    .registers 3
    .param p1, "requestId"    # I

    .prologue
    .line 2242
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startInsertAnimation(I)V

    .line 2243
    return-void
.end method

.method private startEarlyThumbnailInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 2247
    return-void
.end method

.method private updatePhotoCaptureButton()V
    .registers 4

    .prologue
    .line 743
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    invoke-interface {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->getCurrentCaptureState()Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_SELFTIMER_COUNTDOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    if-ne v1, v2, :cond_b

    .line 750
    :goto_a
    return-void

    .line 747
    :cond_b
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    .line 748
    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v1

    iget-object v1, v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->selfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->get()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->getButtonType()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    move-result-object v0

    .line 749
    .local v0, "mainButton":Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    goto :goto_a
.end method

.method private updateUiComponent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;)V
    .registers 4
    .param p1, "kind"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    .prologue
    .line 2288
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeToPhotoDialogView(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;)V

    .line 2289
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    if-ne p1, v0, :cond_d

    .line 2290
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->updateMenuItems(Z)V

    .line 2292
    :cond_d
    return-void
.end method


# virtual methods
.method public checkSurfaceSize()V
    .registers 4

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    .line 2352
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    .line 2353
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    .line 2350
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->onSurfaceAvailableInternal(Landroid/view/SurfaceHolder;II)V

    .line 2354
    return-void
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 2001
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCurrentOrientation()I

    move-result v0

    return v0
.end method

.method public getRequestId(Z)I
    .registers 4
    .param p1, "isLoadingIconRequired"    # Z

    .prologue
    .line 2223
    const/4 v0, -0x1

    .line 2224
    .local v0, "requestId":I
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 2225
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->preparationForInstantViewer()V

    .line 2226
    if-eqz p1, :cond_1d

    .line 2227
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createContentFrame()I

    move-result v0

    .line 2234
    :cond_1c
    :goto_1c
    return v0

    .line 2229
    :cond_1d
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createClearContentFrame()I

    move-result v0

    goto :goto_1c
.end method

.method public isOpenAutoReview()Z
    .registers 2

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2359
    const/4 v0, 0x1

    .line 2361
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSetupHeadupDisplayInvoked()Z
    .registers 2

    .prologue
    .line 2407
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mIsSetupHeadupDisplayInvoked:Z

    return v0
.end method

.method public onClickThumbnailProgress()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2379
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-nez v1, :cond_6

    .line 2401
    :goto_5
    return-void

    .line 2384
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 2387
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_18

    .line 2390
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_TOUCH_CONTENT_PROGRESS_BAR:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_5

    .line 2396
    :cond_18
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_TOUCH_CONTENT_PROGRESS_BAR:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 2398
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    .line 2399
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->getUri()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2396
    invoke-interface {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public onCloseCapturingModeSelector()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1594
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1596
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1599
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    invoke-virtual {v0, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->setVisibility(I)V

    .line 1602
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isAllDialogClosed()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1603
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1606
    :cond_2b
    return-void
.end method

.method public onCloseStorageDialog()V
    .registers 6

    .prologue
    .line 2325
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isAllDialogClosed()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2326
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2329
    :cond_15
    return-void
.end method

.method public onDeleted(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "result"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2199
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeInvalidLocalCache()V

    .line 2200
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getThumbnailClickListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->reloadContentsViewController(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    .line 2219
    return-void
.end method

.method public onDisabled()V
    .registers 5

    .prologue
    .line 2430
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2439
    :goto_6
    return-void

    .line 2435
    :cond_7
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->onDisabled()V

    .line 2437
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_UPDATE_DIALOGS:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public onLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    .registers 8
    .param p1, "orient"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->onLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V

    .line 241
    const/4 v0, 0x1

    .line 242
    .local v0, "orientation":I
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-ne p1, v1, :cond_24

    .line 243
    const/4 v0, 0x1

    .line 248
    :goto_9
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 249
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 248
    invoke-interface {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendStaticEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 251
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    if-eqz v1, :cond_23

    .line 252
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v1, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setSensorOrientation(I)V

    .line 254
    :cond_23
    return-void

    .line 245
    :cond_24
    const/4 v0, 0x2

    goto :goto_9
.end method

.method public onModeFinish()V
    .registers 3

    .prologue
    .line 1621
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->closeCapturingModeSelector()V

    .line 1622
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1623
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 1624
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    if-eqz v0, :cond_21

    .line 1625
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->hideShortcutTray()V

    .line 1626
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->closeDialogs(Z)V

    .line 1632
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->terminateApplication()V

    .line 1633
    return-void

    .line 1630
    :cond_29
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    goto :goto_21
.end method

.method public onModeSelect(Ljava/lang/String;)V
    .registers 2
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 1613
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->closeCapturingModeSelector()V

    .line 1614
    return-void
.end method

.method protected onOpenCapturingModeSelector()V
    .registers 6

    .prologue
    .line 1579
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->closeEntireHierarchyOfSettingDialogs()V

    .line 1581
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mUiComponentBackgroundTouchEventHandler:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$UiComponentBackgroundTouchEventHandler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1583
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1585
    return-void
.end method

.method public onOpenStorageDialog()V
    .registers 6

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCurrentDisplayingUiComponent:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    if-nez v0, :cond_5

    .line 2321
    :cond_4
    :goto_4
    return-void

    .line 2312
    :cond_5
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->closeEntireHierarchyOfSettingDialogs()V

    .line 2313
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->closeCapturingModeSelector()V

    .line 2317
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2318
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public onReviewWindowClose()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2131
    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mIsOpenInstantViewer:Z

    .line 2134
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    if-eqz v0, :cond_c

    .line 2135
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->destroy()V

    .line 2138
    :cond_c
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_16

    .line 2139
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setInterceptKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2141
    :cond_16
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    if-eqz v0, :cond_1f

    .line 2142
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->setIsOpenAutoReview(Z)V

    .line 2145
    :cond_1f
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2146
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->requestToDimSystemUi()V

    .line 2147
    return-void
.end method

.method public onReviewWindowOpen()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 2107
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2108
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->closeCurrentDialog()V

    .line 2110
    :cond_12
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2114
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    if-eqz v0, :cond_29

    .line 2115
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    invoke-virtual {v0, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->setIsOpenAutoReview(Z)V

    .line 2118
    :cond_29
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mIsOpenInstantViewer:Z

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundCaptureOngoing:Z

    if-nez v0, :cond_41

    .line 2119
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->setupViews()V

    .line 2124
    :goto_36
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setInterceptKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2126
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->requestToRecoverSystemUi()V

    .line 2127
    return-void

    .line 2121
    :cond_41
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    invoke-virtual {v0, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->enableAudioPlayer(Z)V

    goto :goto_36
.end method

.method public varargs onStateChanged(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;[Ljava/lang/Object;)V
    .registers 3
    .param p1, "currentState"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->onViewFinderStateChanged(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;[Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public onToggledCameraSwitch()V
    .registers 4

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_SWITCH_CAMERA:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2345
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAllFocus()V

    .line 2346
    return-void
.end method

.method public openCapturingModeSelector(Ljava/lang/String;)V
    .registers 3
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->canModeSelectorBeOpened()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1573
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->openCapturingModeSelector(Ljava/lang/String;)V

    .line 1575
    :cond_b
    return-void
.end method

.method public openInstantViewer([BLjava/lang/String;IIIZ)V
    .registers 21
    .param p1, "pictureData"    # [B
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "height"    # I
    .param p4, "width"    # I
    .param p5, "orientation"    # I
    .param p6, "isFront"    # Z

    .prologue
    .line 2077
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mIsOpenInstantViewer:Z

    .line 2078
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v2, :cond_36

    .line 2079
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->getUri()Landroid/net/Uri;

    move-result-object v13

    .line 2080
    .local v13, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v3

    const-string v5, ""

    new-instance v7, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v0, p4

    move/from16 v1, p3

    invoke-direct {v7, v4, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x0

    move-object v4, p1

    move-object/from16 v6, p2

    move/from16 v9, p5

    move/from16 v10, p6

    move-object v11, p0

    move-object v12, p0

    invoke-virtual/range {v2 .. v12}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->open(Lcom/sonyericsson/cameracommon/activity/BaseActivity;[BLjava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;IIZLcom/sonyericsson/cameracommon/review/ReviewWindowListener;Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 2083
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mIsOpenInstantViewer:Z

    .line 2084
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->closeReviewWindow()V

    .line 2097
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_36
    :goto_36
    return-void

    .line 2086
    .restart local v13    # "uri":Landroid/net/Uri;
    :cond_37
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setVisibleViewIcon(Z)V

    .line 2089
    if-eqz v13, :cond_36

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_36

    .line 2090
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v13, v3}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setUri(Landroid/net/Uri;Z)V

    .line 2093
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->showRightIcons(Ljava/lang/Boolean;)V

    goto :goto_36
.end method

.method public reconstructLocalCache()V
    .registers 2

    .prologue
    .line 2412
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2413
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reconstructLocalCache()V

    .line 2415
    :cond_1b
    return-void
.end method

.method public release()V
    .registers 1

    .prologue
    .line 826
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->release()V

    .line 830
    return-void
.end method

.method public saveLocalCache()V
    .registers 2

    .prologue
    .line 2419
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2420
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->saveLocalCache()V

    .line 2422
    :cond_1b
    return-void
.end method

.method public varargs sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V
    .registers 28
    .param p1, "updateEvent"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1221
    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_34a

    .line 1523
    :cond_b
    :goto_b
    :pswitch_b
    return-void

    .line 1224
    :pswitch_c
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupHeadUpDisplay()V

    goto :goto_b

    .line 1228
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 1229
    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 1233
    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 1234
    invoke-virtual {v5}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    .line 1232
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v13

    .line 1236
    .local v13, "finderRect":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v23

    .line 1237
    .local v23, "width":I
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 1238
    .local v15, "height":I
    new-instance v20, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    .line 1241
    invoke-virtual {v5}, Landroid/view/SurfaceView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    .line 1242
    invoke-virtual {v6}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1245
    .local v20, "textureRect":Landroid/graphics/Rect;
    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isNearSameSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1247
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->resizeEvfScope(II)V

    goto :goto_b

    .line 1260
    .end local v13    # "finderRect":Landroid/graphics/Rect;
    .end local v15    # "height":I
    .end local v20    # "textureRect":Landroid/graphics/Rect;
    .end local v23    # "width":I
    :pswitch_7e
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1261
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    goto/16 :goto_b

    .line 1266
    :pswitch_96
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1267
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    goto/16 :goto_b

    .line 1275
    :pswitch_ae
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v4

    const/4 v3, 0x1

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1277
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1276
    invoke-virtual {v4, v3}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setConstraint(Z)V

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v4

    const/4 v3, 0x0

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Integer;

    .line 1279
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v3, 0x2

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1280
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1278
    invoke-virtual {v4, v5, v3}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(IZ)V

    goto/16 :goto_b

    .line 1285
    :pswitch_eb
    const/4 v3, 0x0

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1286
    .local v10, "cameraType":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->onCameraModeChangedTo(I)V

    goto/16 :goto_b

    .line 1291
    .end local v10    # "cameraType":I
    :pswitch_fb
    const/4 v3, 0x0

    aget-object v12, p2, v3

    check-cast v12, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;

    .line 1292
    .local v12, "faceResult":Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->onFaceDetected(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;)V

    goto/16 :goto_b

    .line 1297
    .end local v12    # "faceResult":Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;
    :pswitch_107
    const/4 v3, 0x0

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1302
    .local v11, "currentZoom":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v24

    .line 1303
    .local v24, "zoomBar":Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
    if-eqz v24, :cond_b

    .line 1304
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupZoombar(Z)V

    .line 1305
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->onZoomChanged(I)V

    goto/16 :goto_b

    .line 1312
    .end local v11    # "currentZoom":I
    .end local v24    # "zoomBar":Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
    :pswitch_127
    const/4 v3, 0x0

    aget-object v21, p2, v3

    check-cast v21, Landroid/graphics/Point;

    .line 1313
    .local v21, "touchOnScreen":Landroid/graphics/Point;
    const/4 v3, 0x1

    aget-object v14, p2, v3

    check-cast v14, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .line 1316
    .local v14, "focusSetType":Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v14}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 1318
    sget-object v3, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    if-ne v14, v3, :cond_b

    .line 1320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onAutoFocusStarted()V

    goto/16 :goto_b

    .line 1326
    .end local v14    # "focusSetType":Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;
    .end local v21    # "touchOnScreen":Landroid/graphics/Point;
    :pswitch_147
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAllFocus()V

    goto/16 :goto_b

    .line 1332
    :pswitch_156
    const/4 v3, 0x0

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setOrientation(I)V

    goto/16 :goto_b

    .line 1336
    :pswitch_166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onAutoFocusCanceled()V

    goto/16 :goto_b

    .line 1340
    :pswitch_175
    if-eqz p2, :cond_b

    move-object/from16 v0, p2

    array-length v3, v0

    if-eqz v3, :cond_b

    .line 1341
    const/4 v3, 0x0

    aget-object v16, p2, v3

    check-cast v16, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    .line 1342
    .local v16, "kind":Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->updateUiComponent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;)V

    goto/16 :goto_b

    .line 1347
    .end local v16    # "kind":Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;
    :pswitch_18a
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->closeCurrentDisplayingUiComponent()V

    goto/16 :goto_b

    .line 1351
    :pswitch_18f
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->closeCurrentDisplayingUiComponentByBackKey()V

    goto/16 :goto_b

    .line 1356
    :pswitch_194
    const/4 v3, 0x0

    aget-object v3, p2, v3

    check-cast v3, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->openReviewWindow(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;)V

    goto/16 :goto_b

    .line 1366
    :pswitch_1a0
    const/4 v3, 0x0

    aget-object v3, p2, v3

    check-cast v3, [B

    move-object v4, v3

    check-cast v4, [B

    const/4 v3, 0x1

    aget-object v5, p2, v3

    check-cast v5, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Integer;

    .line 1369
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v3, 0x3

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Integer;

    .line 1370
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v3, 0x4

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Integer;

    .line 1371
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v3, 0x5

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1372
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move-object/from16 v3, p0

    .line 1366
    invoke-virtual/range {v3 .. v9}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->openInstantViewer([BLjava/lang/String;IIIZ)V

    goto/16 :goto_b

    .line 1376
    :pswitch_1d8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    if-eqz v3, :cond_b

    .line 1377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->onCaptureStarted()V

    goto/16 :goto_b

    .line 1382
    :pswitch_1e7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    if-eqz v3, :cond_b

    .line 1383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->onTakePictureDone()V

    goto/16 :goto_b

    .line 1388
    :pswitch_1f6
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->startCaptureFeedbackAnimation()V

    goto/16 :goto_b

    .line 1404
    :pswitch_1fb
    const/4 v3, 0x0

    aget-object v3, p2, v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setEarlyThumbnailView(Landroid/view/View;)V

    goto/16 :goto_b

    .line 1409
    :pswitch_207
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->removeEarlyThumbnailView()V

    goto/16 :goto_b

    .line 1415
    :pswitch_20c
    const/4 v3, 0x0

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 1417
    .local v19, "requestId":I
    move-object/from16 v0, p2

    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_22b

    .line 1418
    const/4 v3, 0x1

    aget-object v17, p2, v3

    check-cast v17, Landroid/view/animation/Animation$AnimationListener;

    .line 1419
    .local v17, "listener":Landroid/view/animation/Animation$AnimationListener;
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->startEarlyThumbnailInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_b

    .line 1421
    .end local v17    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :cond_22b
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->startEarlyThumbnailInsertAnimation(I)V

    goto/16 :goto_b

    .line 1426
    .end local v19    # "requestId":I
    :pswitch_234
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->onLazyInitializationTaskRun()V

    goto/16 :goto_b

    .line 1430
    :pswitch_239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    if-eqz v3, :cond_b

    .line 1432
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    const/4 v3, 0x0

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Integer;

    .line 1433
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v3, 0x1

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1432
    invoke-virtual {v4, v5, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->updateProgress(II)V

    goto/16 :goto_b

    .line 1438
    :pswitch_25a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    if-eqz v3, :cond_b

    .line 1439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->clearProgress()V

    goto/16 :goto_b

    .line 1444
    :pswitch_269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v3

    iget-object v3, v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->autoReview:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->get()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->EDIT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    if-eq v3, v4, :cond_b

    .line 1448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    if-eqz v3, :cond_b

    .line 1450
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    const/4 v3, 0x0

    aget-object v3, p2, v3

    check-cast v3, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    const/4 v4, 0x1

    aget-object v4, p2, v4

    check-cast v4, Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mOnPlayFinishedListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$OnPlayFinishedListener;

    invoke-virtual {v5, v3, v4, v6}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->setAudioData(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;Ljava/nio/ByteBuffer;Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$OnPlayFinishedListener;)V

    .line 1455
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundCaptureOngoing:Z

    .line 1457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->isAudioPlayerEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->setupViews()V

    goto/16 :goto_b

    .line 1468
    :pswitch_2ae
    const/4 v3, 0x0

    aget-object v22, p2, v3

    check-cast v22, Landroid/net/Uri;

    .line 1469
    .local v22, "uri":Landroid/net/Uri;
    const/4 v3, 0x1

    aget-object v18, p2, v3

    check-cast v18, Ljava/lang/String;

    .line 1470
    .local v18, "mime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_b

    .line 1471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setUri(Landroid/net/Uri;Z)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v3

    iget-object v3, v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->autoReview:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->get()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->EDIT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    if-ne v3, v4, :cond_2fb

    .line 1475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-static {v3, v0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->launchEditor(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)Z

    goto/16 :goto_b

    .line 1477
    :cond_2fb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->showRightIcons(Ljava/lang/Boolean;)V

    goto/16 :goto_b

    .line 1487
    .end local v18    # "mime":Ljava/lang/String;
    .end local v22    # "uri":Landroid/net/Uri;
    :pswitch_319
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->onNotifyThermalStatus(Z)V

    goto/16 :goto_b

    .line 1491
    :pswitch_321
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->onNotifyThermalStatus(Z)V

    goto/16 :goto_b

    .line 1495
    :pswitch_329
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->cancelSelfTimerCountDownView()V

    .line 1496
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->removeSelfTimerCountDownView()V

    goto/16 :goto_b

    .line 1500
    :pswitch_331
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->requestToRestoreSystemUi()V

    goto/16 :goto_b

    .line 1504
    :pswitch_336
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$3;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V

    .line 1505
    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDestinationChangedToInternalMessageOk(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    .line 1221
    :pswitch_data_34a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_10
        :pswitch_b
        :pswitch_b
        :pswitch_7e
        :pswitch_96
        :pswitch_ae
        :pswitch_eb
        :pswitch_fb
        :pswitch_107
        :pswitch_127
        :pswitch_147
        :pswitch_156
        :pswitch_166
        :pswitch_175
        :pswitch_18a
        :pswitch_18f
        :pswitch_194
        :pswitch_1a0
        :pswitch_1d8
        :pswitch_1e7
        :pswitch_1f6
        :pswitch_1fb
        :pswitch_207
        :pswitch_20c
        :pswitch_234
        :pswitch_239
        :pswitch_25a
        :pswitch_269
        :pswitch_2ae
        :pswitch_319
        :pswitch_321
        :pswitch_329
        :pswitch_331
        :pswitch_336
    .end packed-switch
.end method

.method public setCameraDevice(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V
    .registers 2
    .param p1, "cameraDevice"    # Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 230
    return-void
.end method

.method public setContentView()V
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setup(Landroid/view/View;)V

    .line 208
    return-void
.end method

.method protected setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 258
    iput p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mOrientation:I

    .line 259
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setOrientation(I)V

    .line 262
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 263
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    if-eqz v0, :cond_14

    .line 264
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->setSensorOrientation(I)V

    .line 268
    :cond_14
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    if-eqz v0, :cond_1d

    .line 269
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSoundIndicator:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->setSensorOrientation(I)V

    .line 272
    :cond_1d
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    if-eqz v0, :cond_2f

    .line 273
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setOrientation(I)V

    .line 275
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    if-eqz v0, :cond_2f

    .line 276
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mAudioPlayer:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->setSensorOrientation(I)V

    .line 280
    :cond_2f
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    if-eqz v0, :cond_38

    .line 281
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 284
    :cond_38
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    if-eqz v0, :cond_41

    .line 285
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setSensorOrientation(I)V

    .line 288
    :cond_41
    return-void
.end method

.method public setStateMachine(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;)V
    .registers 3
    .param p1, "stateMachine"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    .prologue
    .line 214
    if-eqz p1, :cond_8

    .line 216
    invoke-interface {p1, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->addOnStateChangedListener(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$OnStateChangedListener;)V

    .line 224
    :cond_5
    :goto_5
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    .line 225
    return-void

    .line 219
    :cond_8
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    if-eqz v0, :cond_5

    .line 220
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    invoke-interface {v0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->removeOnStateChangedListener(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$OnStateChangedListener;)V

    goto :goto_5
.end method

.method public setTouchCapture(Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;)V
    .registers 2
    .param p1, "touchCapture"    # Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    .prologue
    .line 2338
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupCaptureArea()V

    .line 2339
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupFocusRectangles()V

    .line 2340
    return-void
.end method

.method public startCaptureFeedbackAnimation()V
    .registers 3

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    if-eqz v0, :cond_d

    .line 2514
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCaptureFeedback:Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;

    invoke-static {}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory;->createDefaultAnimation()Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;->start(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;)V

    .line 2516
    :cond_d
    return-void
.end method

.method public startInflateTask()V
    .registers 3

    .prologue
    .line 2301
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2302
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2303
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems;->getInflateItems()Ljava/util/List;

    move-result-object v1

    .line 2302
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->startInflateTask(Landroid/view/LayoutInflater;Ljava/util/List;)V

    .line 2305
    :cond_13
    return-void
.end method

.method public startSelfTimerCountDownAnimation()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 2506
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSelfTimerCountDownView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 2507
    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getCameraId()I

    move-result v2

    if-ne v2, v0, :cond_f

    .line 2506
    :goto_b
    invoke-virtual {v1, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->startSelfTimerCountDownAnimation(Z)V

    .line 2508
    return-void

    .line 2507
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .param p1, "surface"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 390
    invoke-direct {p0, p1, p3, p4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->checkSurfaceIsPreparedOrNot(Landroid/view/SurfaceHolder;II)V

    .line 396
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->onSurfaceAvailableInternal(Landroid/view/SurfaceHolder;II)V

    .line 300
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    if-nez v0, :cond_c

    .line 430
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->TAG:Ljava/lang/String;

    const-string v1, "CameraDevice has aleady been released."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_b
    return-void

    .line 433
    :cond_c
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mCameraDevice:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->stopLiveViewFinder()V

    goto :goto_b
.end method
