.class public Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.super Ljava/lang/Object;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;
    }
.end annotation


# static fields
.field private static final ANIMATION_SCALE_X:Ljava/lang/String; = "scaleX"

.field private static final ANIMATION_SCALE_Y:Ljava/lang/String; = "scaleY"

.field private static final FACE_RECT_REFRESH_TIMEOUT:I = 0xc8

.field private static final FOCUS_RECT_SET_DOWN_ANIMATION_START_DELAY_TIME:I = 0x64

.field private static final INTERPOLATOR_CONTROL_X1:F = 0.23f

.field private static final INTERPOLATOR_CONTROL_X2:F = 0.32f

.field private static final INTERPOLATOR_CONTROL_Y1:F = 1.0f

.field private static final INTERPOLATOR_CONTROL_Y2:F = 1.0f

.field public static final TAG:Ljava/lang/String; = "FocusRectangles"

.field private static final TRACKED_OBJECT_RECT_REFRESH_TIMEOUT:I = 0x3e8


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

.field private mCaptureArea:Landroid/view/View;

.field private mCurrentOrientation:I

.field private mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

.field private mDevicePreviewHeight:I

.field private mDevicePreviewWidth:I

.field private mFaceRectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAnimationTask:Ljava/lang/Runnable;

.field private mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsAFLocking:Z

.field private mIsFaceTouchCaptureEnabled:Z

.field private mIsFocusAnimationEnabled:Z

.field private mIsLockedBySelfTimer:Z

.field private mIsManualFocus:Z

.field private mIsRecording:Z

.field private mIsRectPositionMirrored:Z

.field private mIsZooming:Z

.field private mLastFaceDetectionResult:Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;

.field private mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

.field private mObjectTrackingRectSupported:Z

.field private final mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mRectangles:Landroid/widget/RelativeLayout;

.field private final mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

.field private mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

.field private mSingleAfRect:Landroid/widget/RelativeLayout;

.field private mSmileScore:I

.field private mTouchAfRect:Landroid/widget/RelativeLayout;

.field private mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

.field private mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;IILcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;Landroid/view/View;Landroid/view/View$OnTouchListener;Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "focusEventListener"    # Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;
    .param p3, "previewWidth"    # I
    .param p4, "previewHeight"    # I
    .param p5, "focusRectanglesViewList"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;
    .param p6, "captureArea"    # Landroid/view/View;
    .param p7, "onTouchListener"    # Landroid/view/View$OnTouchListener;
    .param p8, "screenAspect"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    .line 93
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    .line 99
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    .line 106
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    .line 115
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    .line 118
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    .line 127
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsLockedBySelfTimer:Z

    .line 130
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentOrientation:I

    .line 136
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRectPositionMirrored:Z

    .line 138
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    .line 140
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    .line 144
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    .line 149
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    .line 1707
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->NOT_DISPLAY:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 187
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 190
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    .line 193
    iput p3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    .line 194
    iput p4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    .line 196
    new-instance v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    .line 198
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCaptureArea:Landroid/view/View;

    .line 200
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 202
    iput-object p8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    .line 205
    invoke-direct {p0, p5}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->initialize(Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;)V

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->initObjectTrackingAnimation(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playObjectTrackingAnimation(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onObjectTrackedInternal(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V

    return-void
.end method

.method static synthetic access$1902(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideTrackedObjectRecgantle()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsAFLocking:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsLockedBySelfTimer:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLastFaceDetectionResult:Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;
    .param p2, "x2"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->faceResultToRectangles(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCaptureArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .registers 3
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Landroid/graphics/Point;
    .param p2, "x2"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;
    .param p2, "x2"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetRectanglesColor()V

    return-void
.end method

.method private addTaggedRectangle(Landroid/view/LayoutInflater;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "preInflatedRect"    # Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 314
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_d

    move-object v2, v3

    .line 350
    :goto_c
    return-object v2

    .line 319
    :cond_d
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 320
    .local v0, "defaultFaceRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 325
    .local v1, "faceParam":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .line 326
    .local v2, "rect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-eqz p2, :cond_45

    .line 327
    move-object v2, p2

    .line 334
    :goto_1b
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare(I)V

    .line 340
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 339
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectSize(II)V

    .line 342
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 341
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    .line 345
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V

    .line 348
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 329
    :cond_45
    sget v4, Lcom/sonyericsson/cameracommon/R$layout;->face_rectangle:I

    invoke-virtual {p1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2    # "rect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .restart local v2    # "rect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    goto :goto_1b
.end method

.method private changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    .registers 2
    .param p1, "newState"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    .line 1556
    return-void
.end method

.method private displayObjectTrackingFocusFrame(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1611
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setScaleX(F)V

    .line 1612
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setScaleY(F)V

    .line 1613
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 1614
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 1613
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    .line 1615
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1616
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1615
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectImageSize(II)V

    .line 1617
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 1618
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1619
    .local v0, "mRectangleLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1620
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1621
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    .line 1622
    return-void
.end method

.method private faceResultToRectangles(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Z)V
    .registers 8
    .param p1, "detectionResult"    # Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;
    .param p2, "setRectTranslucent"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1488
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    iget v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1492
    .local v0, "previewRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLastFaceDetectionResult:Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;

    .line 1493
    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->getFaceInformationList(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Landroid/graphics/Rect;)Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    move-result-object v1

    .line 1497
    .local v1, "resultList":Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
    if-nez v1, :cond_13

    .line 1510
    :cond_12
    :goto_12
    return-void

    .line 1501
    :cond_13
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->updateFaceList(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)V

    .line 1503
    if-nez p2, :cond_12

    .line 1505
    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentOrientation:I

    invoke-direct {p0, v1, v2, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;IZ)V

    goto :goto_12
.end method

.method private getObjectTrackingAnimator(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;
    .registers 15
    .param p1, "view"    # Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .param p2, "duration"    # I
    .param p3, "start"    # Landroid/graphics/Rect;
    .param p4, "end"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1722
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e6b851f    # 0.23f

    const v5, 0x3ea3d70a    # 0.32f

    invoke-direct {v1, v4, v7, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1725
    .local v1, "cubicBezierInterpolator":Landroid/view/animation/Interpolator;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setScaleX(F)V

    .line 1726
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setScaleY(F)V

    .line 1727
    const-string v4, "scaleX"

    new-array v5, v9, [F

    aput v7, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1728
    .local v2, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    new-array v5, v9, [F

    aput v7, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1729
    .local v3, "scaleY":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v8

    aput-object v3, v4, v9

    invoke-static {p1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1730
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    int-to-long v4, p2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1731
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1732
    return-object v0
.end method

.method private hideFaceRectangles(Z)V
    .registers 5
    .param p1, "translucentOnly"    # Z

    .prologue
    .line 1199
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 1200
    .local v0, "taggedRectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-eqz p1, :cond_18

    .line 1201
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1204
    :cond_18
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    goto :goto_6

    .line 1206
    .end local v0    # "taggedRectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_1c
    return-void
.end method

.method private hideTrackedObjectRecgantle()V
    .registers 3

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 1210
    return-void
.end method

.method private initObjectTrackingAnimation(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    .registers 13
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .prologue
    .line 1625
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v9

    iget-object v10, p1, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromDeviceToSurface(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1629
    .local v7, "tapRect":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchIcon()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1630
    sget-object v9, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TOUCH_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    iput-object v9, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 1633
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_object_width:I

    .line 1634
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1635
    .local v5, "objIconWidth":I
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_object_height:I

    .line 1636
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1639
    .local v4, "objIconHeight":I
    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 1640
    .local v3, "left":I
    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 1641
    .local v8, "top":I
    iget v6, v7, Landroid/graphics/Rect;->right:I

    .line 1642
    .local v6, "right":I
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1644
    .local v0, "bottom":I
    sub-int v9, v6, v3

    div-int/lit8 v1, v9, 0x2

    .line 1645
    .local v1, "centerX":I
    sub-int v9, v0, v8

    div-int/lit8 v2, v9, 0x2

    .line 1647
    .local v2, "centerY":I
    add-int v9, v3, v1

    div-int/lit8 v10, v5, 0x2

    sub-int/2addr v9, v10

    iput v9, v7, Landroid/graphics/Rect;->left:I

    .line 1648
    add-int v9, v8, v2

    div-int/lit8 v10, v4, 0x2

    sub-int/2addr v9, v10

    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 1649
    add-int v9, v3, v1

    div-int/lit8 v10, v5, 0x2

    add-int/2addr v9, v10

    iput v9, v7, Landroid/graphics/Rect;->right:I

    .line 1650
    add-int v9, v8, v2

    div-int/lit8 v10, v4, 0x2

    add-int/2addr v9, v10

    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    .line 1653
    invoke-direct {p0, v7}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->displayObjectTrackingFocusFrame(Landroid/graphics/Rect;)V

    .line 1654
    return-void
.end method

.method private initialize(Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;)V
    .registers 15
    .param p1, "focusRectanglesViewList"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;

    .prologue
    .line 226
    iget-object v11, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->rectanglesContainer:Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    .line 228
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 231
    .local v3, "inflater":Landroid/view/LayoutInflater;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/List;

    .line 233
    new-instance v11, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    iget-object v12, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/List;

    invoke-direct {v11, v12}, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;-><init>(Ljava/util/List;)V

    iput-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    .line 234
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget-object v12, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, "faceViewList":[Landroid/view/View;
    iget-object v11, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->faceViewList:[Landroid/view/View;

    if-eqz v11, :cond_2a

    .line 239
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->faceViewList:[Landroid/view/View;

    .end local v1    # "faceViewList":[Landroid/view/View;
    check-cast v1, [Landroid/view/View;

    .line 241
    .restart local v1    # "faceViewList":[Landroid/view/View;
    :cond_2a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    const/4 v11, 0x5

    if-ge v2, v11, :cond_3b

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "faceRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-eqz v1, :cond_35

    .line 244
    aget-object v0, v1, v2

    .end local v0    # "faceRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 246
    .restart local v0    # "faceRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_35
    invoke-direct {p0, v3, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->addTaggedRectangle(Landroid/view/LayoutInflater;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 250
    .end local v0    # "faceRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_3b
    iget-object v11, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->trackedObjectView:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    iput-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 251
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-nez v11, :cond_4e

    .line 252
    sget v11, Lcom/sonyericsson/cameracommon/R$layout;->face_rectangle:I

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    iput-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 257
    :cond_4e
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 258
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v6, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 261
    .local v6, "objParam":Landroid/view/ViewGroup$LayoutParams;
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget-object v12, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v11, v12, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare(I)V

    .line 263
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_object_width:I

    .line 264
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 265
    .local v5, "objIconWidth":I
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_object_height:I

    .line 266
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 267
    .local v4, "objIconHeight":I
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v11, v5, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectImageSize(II)V

    .line 268
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    sget v12, Lcom/sonyericsson/cameracommon/R$id;->rect_image:I

    invoke-virtual {v11, v12}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 269
    .local v7, "objectRect":Landroid/widget/ImageView;
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 272
    iget-object v11, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->singleAfView:Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    .line 273
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    if-nez v11, :cond_a7

    .line 274
    sget v11, Lcom/sonyericsson/cameracommon/R$layout;->fast_capturing_auto_focus_rectangles:I

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    .line 278
    :cond_a7
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 279
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v9, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 282
    .local v9, "singleParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget-object v12, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v12, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object v11, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->touchAfView:Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    .line 286
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    if-nez v11, :cond_ce

    .line 287
    sget v11, Lcom/sonyericsson/cameracommon/R$layout;->fast_capturing_auto_focus_rectangles:I

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    .line 292
    :cond_ce
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 293
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 296
    .local v10, "touchParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget-object v12, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v12, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    sget v12, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 299
    .local v8, "rect":Landroid/widget/ImageView;
    iget-object v11, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 302
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateRectanglesCoordinates()V

    .line 303
    return-void
.end method

.method private onObjectTrackedInternal(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    .registers 14
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .prologue
    const/4 v11, -0x2

    .line 1429
    iget-boolean v7, p1, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;->mIsLost:Z

    if-eqz v7, :cond_f

    .line 1431
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1482
    :goto_e
    return-void

    .line 1437
    :cond_f
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1441
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v7, v8, v9}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1444
    .local v3, "finderRect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 1445
    .local v5, "xRatio":F
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 1450
    .local v6, "yRatio":F
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v7

    sget-object v8, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v7, v8, :cond_9d

    .line 1452
    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    iget-object v8, p1, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v0, v7

    .line 1454
    .local v0, "centerX":I
    iget-object v7, p1, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v1, v7

    .line 1460
    .local v1, "centerY":I
    :goto_5a
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getObjectAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    move-result-object v2

    .line 1461
    .local v2, "config":Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
    new-instance v4, Landroid/graphics/Rect;

    iget v7, v2, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v0, v7

    iget v8, v2, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromHeight:I

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v1, v8

    iget v9, v2, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v0

    iget v10, v2, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromHeight:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1472
    .local v4, "objRect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    .line 1473
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v7, v11, v11}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectImageSize(II)V

    .line 1477
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor()V

    .line 1480
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 1481
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    goto/16 :goto_e

    .line 1456
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    .end local v2    # "config":Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
    .end local v4    # "objRect":Landroid/graphics/Rect;
    :cond_9d
    iget-object v7, p1, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v0, v7

    .line 1457
    .restart local v0    # "centerX":I
    iget-object v7, p1, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v1, v7

    .restart local v1    # "centerY":I
    goto :goto_5a
.end method

.method private playObjectTrackingAnimation(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    .registers 10
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 1657
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getRectImageWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 1658
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getRectImageHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1659
    .local v3, "startRect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v4

    iget-object v5, p1, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromDeviceToSurface(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1663
    .local v2, "endRect":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor()V

    .line 1665
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->displayObjectTrackingFocusFrame(Landroid/graphics/Rect;)V

    .line 1667
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    sget-object v5, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TOUCH_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    if-ne v4, v5, :cond_5c

    .line 1668
    sget-object v4, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TRACKING_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 1670
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/16 v5, 0x12c

    invoke-direct {p0, v4, v5, v3, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getObjectTrackingAnimator(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1672
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1673
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v6

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1674
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e6b851f    # 0.23f

    const v6, 0x3ea3d70a    # 0.32f

    invoke-direct {v4, v5, v7, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1677
    new-instance v4, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$3;

    invoke-direct {v4, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$3;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1698
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1700
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_5c
    return-void
.end method

.method private playOnTouchDownAnimationForTouchFocusRect()V
    .registers 7

    .prologue
    .line 1364
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2e

    .line 1365
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1368
    .local v0, "rect":Landroid/widget/ImageView;
    sget v1, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->NORMAL:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1370
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    .line 1372
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1377
    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    .line 1395
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1398
    .end local v0    # "rect":Landroid/widget/ImageView;
    :cond_2e
    return-void
.end method

.method private playOnTouchUpAnimationForTouchFocusRect()V
    .registers 3

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    .line 1402
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 1403
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1406
    :cond_13
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$2;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    .line 1421
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    .line 1426
    :cond_24
    return-void
.end method

.method private playTouchFocusStartAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .registers 4
    .param p1, "focusType"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .prologue
    .line 1343
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    if-nez v0, :cond_f

    .line 1344
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$FocusSetType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 1361
    :cond_f
    :goto_f
    return-void

    .line 1347
    :pswitch_10
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playOnTouchDownAnimationForTouchFocusRect()V

    goto :goto_f

    .line 1351
    :pswitch_14
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playOnTouchUpAnimationForTouchFocusRect()V

    goto :goto_f

    .line 1344
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_10
        :pswitch_14
    .end packed-switch
.end method

.method private removeObjectFocusRectAnimation()V
    .registers 3

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1252
    :goto_8
    return-void

    .line 1248
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->cancelAfFocusAnimationObject(Landroid/view/View;)V

    .line 1250
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->clearAnimation()V

    .line 1251
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_8
.end method

.method private removeSingleFocusRectAnimation()V
    .registers 4

    .prologue
    .line 1229
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1231
    .local v0, "rect":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_11

    .line 1240
    :goto_10
    return-void

    .line 1236
    :cond_11
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->cancelAfFocusAnimationSingle(Landroid/view/View;)V

    .line 1238
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1239
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_10
.end method

.method private removeTouchFocusRectAnimation()V
    .registers 4

    .prologue
    .line 1213
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1215
    .local v0, "rect":Landroid/widget/ImageView;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    .line 1217
    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_14

    .line 1226
    :goto_13
    return-void

    .line 1222
    :cond_14
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->cancelAfFocusAnimationTouch(Landroid/view/View;)V

    .line 1224
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1225
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_13
.end method

.method private resetFaceRectangleColor()V
    .registers 4

    .prologue
    .line 1262
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 1263
    .local v0, "taggedRectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1265
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    goto :goto_6

    .line 1267
    .end local v0    # "taggedRectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_1b
    return-void
.end method

.method private resetObjectTrackingRectangleColor()V
    .registers 3

    .prologue
    .line 1270
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsAFLocking:Z

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getSuccessIcon()I

    move-result v0

    .line 1271
    .local v0, "resId":I
    :goto_8
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1272
    return-void

    .line 1270
    .end local v0    # "resId":I
    :cond_e
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getNormalIcon()I

    move-result v0

    goto :goto_8
.end method

.method private resetRectanglesColor()V
    .registers 1

    .prologue
    .line 1255
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetFaceRectangleColor()V

    .line 1256
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor()V

    .line 1257
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetTouchFocusRectangleColor()V

    .line 1258
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetSingleFocusRectangleColor()V

    .line 1259
    return-void
.end method

.method private resetSingleFocusRectangleColor()V
    .registers 4

    .prologue
    .line 1281
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1282
    .local v0, "singleRect":Landroid/widget/ImageView;
    sget v1, Lcom/sonyericsson/cameracommon/focusview/CommonResources$SingleIndicator;->NORMAL:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1283
    return-void
.end method

.method private resetTouchFocusRectangleColor()V
    .registers 4

    .prologue
    .line 1275
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->center_auto_focus_rect:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1276
    .local v0, "touchRect":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1277
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    sget v2, Lcom/sonyericsson/cameracommon/focusview/CommonResources$TouchIndicator;->NORMAL:I

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    .line 1278
    return-void
.end method

.method private setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .registers 13
    .param p1, "touchPoint"    # Landroid/graphics/Point;
    .param p2, "focusType"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .prologue
    const/4 v9, 0x0

    .line 1285
    if-nez p1, :cond_9

    .line 1287
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9, v9}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 1340
    :goto_8
    return-void

    .line 1292
    :cond_9
    sget-object v6, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    if-ne p2, v6, :cond_11

    .line 1293
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V

    .line 1297
    :cond_11
    iget v3, p1, Landroid/graphics/Point;->x:I

    .line 1298
    .local v3, "screenPosX":I
    iget v4, p1, Landroid/graphics/Point;->y:I

    .line 1301
    .local v4, "screenPosY":I
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v6, v7, v8}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1306
    .local v2, "finderRect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getTouchAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    move-result-object v5

    .line 1309
    .local v5, "touchConfig":Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_60

    .line 1311
    iget v6, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v0, v6, 0x2

    .line 1321
    .local v0, "finderPosX":I
    :goto_37
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_79

    .line 1323
    iget v6, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 v1, v6, 0x2

    .line 1334
    .local v1, "finderPosY":I
    :goto_44
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    .line 1335
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v7, v0

    .line 1336
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v8, v1

    .line 1334
    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 1337
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1339
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playTouchFocusStartAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    goto :goto_8

    .line 1312
    .end local v0    # "finderPosX":I
    .end local v1    # "finderPosY":I
    :cond_60
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-ge v6, v3, :cond_74

    .line 1314
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v0, v6, v7

    .restart local v0    # "finderPosX":I
    goto :goto_37

    .line 1317
    .end local v0    # "finderPosX":I
    :cond_74
    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v3, v6

    .restart local v0    # "finderPosX":I
    goto :goto_37

    .line 1324
    :cond_79
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-ge v6, v4, :cond_8d

    .line 1326
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, v5, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int v1, v6, v7

    .restart local v1    # "finderPosY":I
    goto :goto_44

    .line 1329
    .end local v1    # "finderPosY":I
    :cond_8d
    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int v1, v4, v6

    .restart local v1    # "finderPosY":I
    goto :goto_44
.end method

.method private setRectSizeAndPosition(Landroid/widget/RelativeLayout;IIII)V
    .registers 7
    .param p1, "rect"    # Landroid/widget/RelativeLayout;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1107
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1109
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_13

    .line 1110
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1111
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1112
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1113
    iput p5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1116
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1118
    :cond_13
    return-void
.end method

.method private updateFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;IZ)V
    .registers 12
    .param p1, "resultList"    # Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
    .param p2, "orientation"    # I
    .param p3, "isRectTranslucent"    # Z

    .prologue
    const/4 v7, 0x4

    .line 958
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_c

    .line 1001
    :cond_b
    return-void

    .line 963
    :cond_c
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 964
    .local v3, "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->clearUpdated()V

    goto :goto_12

    .line 967
    .end local v3    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    const/4 v5, 0x5

    if-ge v0, v5, :cond_4a

    .line 968
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_36

    .line 970
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFace(I)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v1

    .line 971
    .local v1, "namedFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    if-nez v1, :cond_39

    .line 967
    .end local v1    # "namedFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 975
    .restart local v1    # "namedFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    :cond_39
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 976
    .local v4, "targetRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-eqz v4, :cond_36

    .line 978
    invoke-direct {p0, v4, v1, p2, p3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateRectangle(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/NamedFace;IZ)V

    .line 983
    invoke-virtual {v4, v7}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    goto :goto_36

    .line 989
    .end local v1    # "namedFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .end local v4    # "targetRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_4a
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_50
    :goto_50
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 990
    .restart local v3    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->isUpdate()Z

    move-result v6

    if-nez v6, :cond_50

    .line 991
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    goto :goto_50

    .line 996
    .end local v3    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_66
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->isZooming()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 997
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_72
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 998
    .local v2, "rect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {v2, v7}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    goto :goto_72
.end method

.method private updateFaceRectanglesData(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Z)V
    .registers 3
    .param p1, "detectionResult"    # Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;
    .param p2, "setRectTranslucent"    # Z

    .prologue
    .line 941
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLastFaceDetectionResult:Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;

    .line 942
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->faceResultToRectangles(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Z)V

    .line 943
    return-void
.end method

.method private updateRectangle(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/NamedFace;IZ)V
    .registers 13
    .param p1, "targetRect"    # Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .param p2, "namedFace"    # Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .param p3, "orientation"    # I
    .param p4, "isRectTranslucent"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1050
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v5

    iget-object v6, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1052
    .local v3, "viewRect":Landroid/graphics/Rect;
    iget-boolean v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRectPositionMirrored:Z

    if-eqz v5, :cond_90

    .line 1053
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v5, v6, :cond_6f

    .line 1055
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v5, v6, v7}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 1058
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1059
    .local v0, "displayHeight":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p1, v5, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    .line 1070
    .end local v0    # "displayHeight":I
    :goto_3b
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectSize(II)V

    .line 1073
    if-eqz p4, :cond_9c

    .line 1074
    invoke-virtual {p1, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1076
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    .line 1082
    :goto_4e
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getVisibility()I

    move-result v5

    if-nez v5, :cond_a2

    const/4 v2, 0x1

    .line 1084
    .local v2, "isAlreadyDisplayed":Z
    :goto_55
    if-nez v2, :cond_5a

    .line 1086
    invoke-virtual {p1, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->startRectangleAnimation(I)V

    .line 1090
    :cond_5a
    iget-object v5, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v5, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->update(Ljava/lang/String;I)V

    .line 1095
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setUpdated()V

    .line 1098
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_6e

    .line 1099
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    .line 1100
    invoke-virtual {p1, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 1102
    :cond_6e
    return-void

    .line 1061
    .end local v2    # "isAlreadyDisplayed":Z
    :cond_6f
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v5, v6, v7}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 1064
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1065
    .local v1, "displayWidth":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    goto :goto_3b

    .line 1068
    .end local v1    # "displayWidth":I
    :cond_90
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    goto :goto_3b

    .line 1078
    :cond_9c
    sget v5, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->NORMAL:I

    invoke-virtual {p1, v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    goto :goto_4e

    :cond_a2
    move v2, v4

    .line 1082
    goto :goto_55
.end method

.method private updateRectanglesCoordinates()V
    .registers 9

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 361
    .local v6, "finderRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->top:I

    .line 365
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 366
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v0, p0

    .line 361
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setRectSizeAndPosition(Landroid/widget/RelativeLayout;IIII)V

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 369
    .local v7, "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSize(II)V

    goto :goto_27

    .line 373
    .end local v7    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_3f
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    .line 374
    return-void
.end method

.method private updateSmileGauge(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;II)V
    .registers 14
    .param p1, "topRect"    # Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .param p2, "resultList"    # Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
    .param p3, "level"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 1014
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceByUuid(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v8

    .line 1015
    .local v8, "targetFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    if-nez v8, :cond_b

    .line 1042
    :goto_a
    return-void

    .line 1019
    :cond_b
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    iget-object v1, v8, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1022
    .local v7, "rect":Landroid/graphics/Rect;
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRectPositionMirrored:Z

    if-eqz v0, :cond_41

    .line 1023
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1025
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1026
    .local v6, "displayWidth":I
    iget v0, v7, Landroid/graphics/Rect;->right:I

    sub-int v1, v6, v0

    iget v2, v7, Landroid/graphics/Rect;->top:I

    iget v0, v7, Landroid/graphics/Rect;->left:I

    sub-int v3, v6, v0

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    move-object v0, p1

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugesPosition(IIIII)V

    .line 1041
    .end local v6    # "displayWidth":I
    :goto_3d
    invoke-virtual {p1, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileLevel(I)V

    goto :goto_a

    .line 1033
    :cond_41
    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    move-object v0, p1

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugesPosition(IIIII)V

    goto :goto_3d
.end method


# virtual methods
.method public clearAllFocus()V
    .registers 1

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAllFocusExceptFace()V

    .line 460
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearFaceDetection()V

    .line 461
    return-void
.end method

.method public clearAllFocusExceptFace()V
    .registers 2

    .prologue
    .line 467
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    .line 470
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearSingleAutoFocus()V

    .line 471
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearTouchFocus()V

    .line 472
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearObjectTracking()V

    .line 473
    return-void
.end method

.method public clearExceptTouchFocus()V
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->clearExceptTouchFocus()V

    .line 456
    return-void
.end method

.method public clearFaceDetection()V
    .registers 3

    .prologue
    .line 492
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V

    .line 493
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetFaceRectangleColor()V

    .line 494
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->updateFaceList(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)V

    .line 495
    return-void
.end method

.method public clearObjectTracking()V
    .registers 1

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideTrackedObjectRecgantle()V

    .line 499
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->removeObjectFocusRectAnimation()V

    .line 500
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor()V

    .line 501
    return-void
.end method

.method public clearSingleAutoFocus()V
    .registers 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 487
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->removeSingleFocusRectAnimation()V

    .line 488
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetSingleFocusRectangleColor()V

    .line 489
    return-void
.end method

.method public clearTouchFocus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 477
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    .line 479
    invoke-direct {p0, v1, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 481
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->removeTouchFocusRectAnimation()V

    .line 482
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetTouchFocusRectangleColor()V

    .line 483
    return-void
.end method

.method public disableFaceTouchCapture()V
    .registers 2

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    .line 214
    return-void
.end method

.method public enableFaceTouchCapture()V
    .registers 2

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    .line 210
    return-void
.end method

.method protected getAfFocusingIcon()I
    .registers 2

    .prologue
    .line 1599
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->FOCUSING:I

    :goto_6
    return v0

    :cond_7
    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectCircleIndicator;->FOCUSING:I

    goto :goto_6
.end method

.method protected getNormalIcon()I
    .registers 2

    .prologue
    .line 1563
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    if-eqz v0, :cond_e

    .line 1564
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz v0, :cond_b

    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->TRACKING_RECORDING:I

    .line 1568
    :goto_a
    return v0

    .line 1564
    :cond_b
    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectCircleIndicator;->TRACKING_RECORDING:I

    goto :goto_a

    .line 1568
    :cond_e
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz v0, :cond_15

    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->TRACKING:I

    goto :goto_a

    :cond_15
    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectCircleIndicator;->TRACKING:I

    goto :goto_a
.end method

.method public getSelectedFaceSmileScore()I
    .registers 3

    .prologue
    .line 1004
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileScore:I

    .line 1007
    .local v0, "score":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileScore:I

    .line 1009
    return v0
.end method

.method protected getSuccessIcon()I
    .registers 2

    .prologue
    .line 1605
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->SUCCESS:I

    :goto_6
    return v0

    :cond_7
    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectCircleIndicator;->SUCCESS:I

    goto :goto_6
.end method

.method protected getTouchAfFocusingIcon()I
    .registers 2

    .prologue
    .line 1587
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$TouchIndicator;->FOCUSING:I

    goto :goto_5
.end method

.method protected getTouchAfSuccessIcon()I
    .registers 2

    .prologue
    .line 1593
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$TouchIndicator;->SUCCESS:I

    goto :goto_5
.end method

.method public getTouchFocusIconSize()Landroid/graphics/Rect;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1532
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 1533
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_single_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 1534
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_single_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method protected getTouchIcon()I
    .registers 2

    .prologue
    .line 1575
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    if-eqz v0, :cond_e

    .line 1576
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz v0, :cond_b

    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->TOUCH_RECORDING:I

    .line 1580
    :goto_a
    return v0

    .line 1576
    :cond_b
    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectCircleIndicator;->TOUCH_RECORDING:I

    goto :goto_a

    .line 1580
    :cond_e
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz v0, :cond_15

    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->TOUCH:I

    goto :goto_a

    :cond_15
    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectCircleIndicator;->TOUCH:I

    goto :goto_a
.end method

.method public isRecording()Z
    .registers 2

    .prologue
    .line 1538
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    return v0
.end method

.method public isZooming()Z
    .registers 2

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsZooming:Z

    return v0
.end method

.method public onAutoFocusCanceled()V
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onAutoFocusCanceled()V

    .line 407
    return-void
.end method

.method public onAutoFocusDone(Z)V
    .registers 3
    .param p1, "isSuccess"    # Z

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onAutoFocusDone(Z)V

    .line 403
    return-void
.end method

.method public onAutoFocusStarted()V
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onAutoFocusStarted()V

    .line 399
    return-void
.end method

.method public onFaceDetected(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;)V
    .registers 3
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onFaceDetected(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;)V

    .line 425
    return-void
.end method

.method public onFaceLost()V
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onFaceLost()V

    .line 429
    return-void
.end method

.method public onObjectFocused()V
    .registers 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    sget v1, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->SUCCESS:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 452
    return-void
.end method

.method public onObjectLost()V
    .registers 3

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz v0, :cond_b

    .line 446
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    sget v1, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->LOST:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 448
    :cond_b
    return-void
.end method

.method public onObjectRemoved()V
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onObjectRemoved()V

    .line 442
    return-void
.end method

.method public onObjectTracked(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    .registers 3
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onTrackedObjectStateUpdated(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V

    .line 438
    return-void
.end method

.method public onRecordingStart()V
    .registers 2

    .prologue
    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    .line 513
    return-void
.end method

.method public onRecordingStop()V
    .registers 2

    .prologue
    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    .line 517
    return-void
.end method

.method public onUiComponentOverlaid()V
    .registers 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onUiComponentOverlaid()V

    .line 505
    return-void
.end method

.method public onUiComponentRemoved()V
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->onUiComponentRemoved()V

    .line 509
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 378
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    .line 379
    return-void
.end method

.method public setAFLocking(Z)V
    .registers 2
    .param p1, "isAFLocking"    # Z

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsAFLocking:Z

    .line 529
    return-void
.end method

.method public setFocusIconType(Z)V
    .registers 2
    .param p1, "isManualFocus"    # Z

    .prologue
    .line 1740
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    .line 1741
    return-void
.end method

.method public setFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .registers 8
    .param p1, "touchedPointOnScreen"    # Landroid/graphics/Point;
    .param p2, "setType"    # Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .prologue
    .line 410
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 411
    .local v0, "locationOfView":[I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    .line 412
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    const/4 v3, 0x0

    aget v3, v0, v3

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    aget v4, v0, v4

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 416
    .local v1, "pointOfView":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v2, v1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->setFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 417
    return-void
.end method

.method public setLockedBySelfTimer(Z)V
    .registers 2
    .param p1, "isLocked"    # Z

    .prologue
    .line 532
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsLockedBySelfTimer:Z

    .line 533
    return-void
.end method

.method public setMirrored(Z)V
    .registers 2
    .param p1, "isMirrored"    # Z

    .prologue
    .line 1559
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRectPositionMirrored:Z

    .line 1560
    return-void
.end method

.method public setObjectTrackingRectSupported(Z)V
    .registers 2
    .param p1, "supported"    # Z

    .prologue
    .line 1736
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    .line 1737
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 1545
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentOrientation:I

    .line 1546
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1550
    return-void
.end method

.method public setZooming(Z)V
    .registers 2
    .param p1, "isRunning"    # Z

    .prologue
    .line 524
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsZooming:Z

    .line 525
    return-void
.end method

.method public startFaceDetection()V
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->startFaceDetection()V

    .line 421
    return-void
.end method

.method public startObjectTracking()V
    .registers 2

    .prologue
    .line 432
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->NOT_DISPLAY:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 433
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->startObjectTracking()V

    .line 434
    return-void
.end method

.method public updateDevicePreviewSize(II)V
    .registers 3
    .param p1, "devicePrevWidth"    # I
    .param p2, "devicePrevHeight"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    .line 218
    iput p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    .line 221
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateRectanglesCoordinates()V

    .line 222
    return-void
.end method
