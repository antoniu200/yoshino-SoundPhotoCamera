.class public Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;
.super Landroid/widget/FrameLayout;
.source "SoundRecordingIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator$AnimationListener;
    }
.end annotation


# static fields
.field private static final CAPTURE_DURATION_AFTER_GET_IN_MSEC:I = 0x7d0

.field private static final CAPTURE_DURATION_BEFORE_GET_IN_MSEC:I = 0x1f40

.field private static final CAPTURE_DURATION_FULL:I = 0x2710

.field private static final CONTAINER_NUM:I = 0x3

.field private static final DURATION_PER_CONTAINER:I

.field private static final INTERVAL_MSEC:I = 0x14a

.field private static final MARKER_NUM_AFTER:I

.field private static final MARKER_NUM_AFTER_FLOAT:F = 6.060606f

.field private static final MARKER_NUM_FULL:I

.field private static final MARKER_NUM_FULL_FLOAT:F = 30.30303f

.field private static final MARKER_NUM_PER_CONTAINER:I

.field private static final MARKER_NUM_PER_CONTAINER_FLOAT:F = 15.151515f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAnimationListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator$AnimationListener;

.field private mAnimator:[Landroid/animation/ObjectAnimator;

.field private mContainer:[Landroid/widget/LinearLayout;

.field private final mContainerWidth:F

.field private mCurrentContainerId:I

.field private mCurrentPosition:I

.field private mCurrentPositionAfter:I

.field private final mInterval:I

.field private final mLayoutParams:[Landroid/widget/FrameLayout$LayoutParams;

.field private final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mMainIcon:Landroid/widget/ImageView;

.field private final mMarkerPadding:I

.field private final mMarkerWidth:I

.field private mOrientation:I

.field private mSoundLevel:I

.field private mStartTime:I

.field private mTranslationXPortrait:F

.field private mTranslationYPortrait:F

.field private final mWidth:F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-wide v0, 0x40183e0f80000000L    # 6.060606002807617

    .line 36
    const-class v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->TAG:Ljava/lang/String;

    .line 50
    const-wide v2, 0x403e4d9360000000L    # 30.303030014038086

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    sput v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->MARKER_NUM_FULL:I

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double v2, v0, v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3b

    .line 56
    :goto_25
    double-to-int v0, v0

    sput v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->MARKER_NUM_AFTER:I

    .line 60
    const-wide v0, 0x402e4d9360000000L    # 15.151515007019043

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->MARKER_NUM_PER_CONTAINER:I

    .line 89
    sget v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->MARKER_NUM_PER_CONTAINER:I

    mul-int/lit16 v0, v0, 0x14a

    sput v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->DURATION_PER_CONTAINER:I

    return-void

    .line 56
    :cond_3b
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    goto :goto_25
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09013c

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mWidth:F

    .line 67
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mWidth:F

    float-to-int v0, v0

    sget v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->MARKER_NUM_FULL:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mInterval:I

    .line 70
    iput-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mMainIcon:Landroid/widget/ImageView;

    .line 74
    new-array v0, v3, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    .line 75
    iput v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentContainerId:I

    .line 76
    sget v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->MARKER_NUM_PER_CONTAINER:I

    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mInterval:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainerWidth:F

    .line 79
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090137

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mMarkerWidth:I

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mLayoutParams:[Landroid/widget/FrameLayout$LayoutParams;

    .line 82
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mInterval:I

    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mMarkerWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mMarkerPadding:I

    .line 83
    iput v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mStartTime:I

    .line 86
    new-array v0, v3, [Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mAnimator:[Landroid/animation/ObjectAnimator;

    .line 87
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator$AnimationListener;

    invoke-direct {v0, p0, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator$AnimationListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator$1;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mAnimationListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator$AnimationListener;

    .line 88
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 92
    iput v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentPosition:I

    .line 93
    iput v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentPositionAfter:I

    .line 94
    iput v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mSoundLevel:I

    .line 97
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mOrientation:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mTranslationXPortrait:F

    .line 99
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09013a

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mTranslationYPortrait:F

    .line 136
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;Landroid/animation/Animator;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->clearMark(Landroid/animation/Animator;)V

    return-void
.end method

.method private addScaleMark(I)V
    .registers 5
    .param p1, "level"    # I

    .prologue
    .line 215
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mAnimator:[Landroid/animation/ObjectAnimator;

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentContainerId:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mAnimator:[Landroid/animation/ObjectAnimator;

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentContainerId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 216
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->createScaleMark(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 217
    .local v0, "scaleMark":Landroid/widget/ImageView;
    const v1, 0x7f020127

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentContainerId:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    .end local v0    # "scaleMark":Landroid/widget/ImageView;
    :cond_27
    return-void
.end method

.method private addScaleMarkCaptured(I)V
    .registers 5
    .param p1, "level"    # I

    .prologue
    .line 224
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mAnimator:[Landroid/animation/ObjectAnimator;

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentContainerId:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mAnimator:[Landroid/animation/ObjectAnimator;

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentContainerId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 225
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->createScaleMark(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 226
    .local v0, "scaleMark":Landroid/widget/ImageView;
    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentContainerId:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    .end local v0    # "scaleMark":Landroid/widget/ImageView;
    :cond_27
    return-void
.end method

.method private clearMark(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 441
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mAnimator:[Landroid/animation/ObjectAnimator;

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_11

    .line 444
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 456
    :cond_10
    :goto_10
    return-void

    .line 446
    :cond_11
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mAnimator:[Landroid/animation/ObjectAnimator;

    aget-object v0, v0, v2

    if-ne p1, v0, :cond_1f

    .line 449
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_10

    .line 451
    :cond_1f
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mAnimator:[Landroid/animation/ObjectAnimator;

    aget-object v0, v0, v3

    if-ne p1, v0, :cond_10

    .line 454
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_10
.end method

.method private createAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 189
    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainerWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainerWidth:F

    neg-float v4, v4

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 191
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    sget v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->DURATION_PER_CONTAINER:I

    mul-int/lit8 v1, v1, 0x3

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 192
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 193
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mAnimationListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 196
    return-object v0
.end method

.method private createScaleMark(I)Landroid/widget/ImageView;
    .registers 5
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x0

    .line 202
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, "scaleMark":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mLayoutParams:[Landroid/widget/FrameLayout$LayoutParams;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 205
    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mMarkerPadding:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 206
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 207
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 208
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 210
    return-object v0
.end method

.method private getPreviousContainerId(I)I
    .registers 5
    .param p1, "containerId"    # I

    .prologue
    .line 391
    packed-switch p1, :pswitch_data_24

    .line 399
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviousContainerId: This is invalid containerId. id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    add-int/lit8 v0, p1, -0x1

    :goto_1d
    return v0

    .line 393
    :pswitch_1e
    const/4 v0, 0x2

    goto :goto_1d

    .line 395
    :pswitch_20
    const/4 v0, 0x0

    goto :goto_1d

    .line 397
    :pswitch_22
    const/4 v0, 0x1

    goto :goto_1d

    .line 391
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_20
        :pswitch_22
    .end packed-switch
.end method

.method private initialize()V
    .registers 3

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->startAnimation()V

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    sget v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->MARKER_NUM_FULL:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_14

    .line 256
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->setContainerId()V

    .line 257
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->addScaleMark(I)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 259
    :cond_14
    return-void
.end method

.method private setContainerId()V
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentContainerId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sget v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->MARKER_NUM_PER_CONTAINER:I

    if-ne v0, v1, :cond_13

    .line 236
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentContainerId:I

    packed-switch v0, :pswitch_data_20

    .line 248
    :cond_13
    :goto_13
    return-void

    .line 238
    :pswitch_14
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentContainerId:I

    goto :goto_13

    .line 241
    :pswitch_18
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentContainerId:I

    goto :goto_13

    .line 244
    :pswitch_1c
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentContainerId:I

    goto :goto_13

    .line 236
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_14
        :pswitch_18
        :pswitch_1c
    .end packed-switch
.end method

.method private setPosition()V
    .registers 5

    .prologue
    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "translationX":F
    const/4 v1, 0x0

    .line 504
    .local v1, "translationY":F
    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 505
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mTranslationXPortrait:F

    .line 506
    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mTranslationYPortrait:F

    .line 509
    :cond_b
    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->setTranslationX(F)V

    .line 510
    invoke-virtual {p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->setTranslationY(F)V

    .line 511
    return-void
.end method

.method private startAnimation()V
    .registers 5

    .prologue
    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_36

    .line 265
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mAnimator:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 267
    packed-switch v0, :pswitch_data_38

    .line 264
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    :pswitch_11
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mAnimator:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->DURATION_PER_CONTAINER:I

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    goto :goto_e

    .line 272
    :pswitch_1f
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mAnimator:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->DURATION_PER_CONTAINER:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    goto :goto_e

    .line 276
    :pswitch_2b
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mAnimator:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    goto :goto_e

    .line 280
    :cond_36
    return-void

    .line 267
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_11
        :pswitch_1f
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public clearProgress()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 465
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mMainIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    .line 466
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mMainIcon:Landroid/widget/ImageView;

    const v2, 0x7f020128

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 469
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    const/4 v1, 0x3

    if-ge v0, v1, :cond_28

    .line 470
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mAnimator:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 472
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    if-eqz v1, :cond_25

    .line 473
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 469
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 477
    :cond_28
    iput v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentPosition:I

    .line 478
    iput v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentPositionAfter:I

    .line 479
    iput v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentContainerId:I

    .line 480
    return-void
.end method

.method public onCaptureStarted()V
    .registers 7

    .prologue
    .line 355
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mMainIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_c

    .line 356
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mMainIcon:Landroid/widget/ImageView;

    const v5, 0x7f020129

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    :cond_c
    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentContainerId:I

    .line 361
    .local v1, "containerId":I
    const/4 v3, 0x0

    .line 363
    .local v3, "totalNum":I
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_10
    const/4 v4, 0x3

    if-ge v0, v4, :cond_3f

    .line 364
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1d
    if-ltz v2, :cond_38

    .line 366
    sget v4, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->MARKER_NUM_FULL:I

    if-gt v3, v4, :cond_33

    .line 368
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f020126

    .line 369
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    :cond_33
    add-int/lit8 v3, v3, 0x1

    .line 364
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 378
    :cond_38
    invoke-direct {p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->getPreviousContainerId(I)I

    move-result v1

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 380
    .end local v2    # "i":I
    :cond_3f
    return-void
.end method

.method public onFinishInflate()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 144
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 146
    const v1, 0x7f0e0101

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mMainIcon:Landroid/widget/ImageView;

    .line 148
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    const v1, 0x7f0e0103

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    aput-object v1, v2, v5

    .line 149
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    const v1, 0x7f0e0104

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    aput-object v1, v2, v6

    .line 150
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    const v1, 0x7f0e0105

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    aput-object v1, v2, v7

    .line 152
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v6

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainerWidth:F

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 153
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v7

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainerWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4f
    if-ge v0, v8, :cond_60

    .line 156
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mAnimator:[Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->createAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 159
    :cond_60
    iput v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentContainerId:I

    .line 161
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mLayoutParams:[Landroid/widget/FrameLayout$LayoutParams;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mInterval:I

    iget v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mMarkerWidth:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    aput-object v2, v1, v5

    .line 162
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mLayoutParams:[Landroid/widget/FrameLayout$LayoutParams;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mInterval:I

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090134

    .line 163
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    aput-object v2, v1, v6

    .line 164
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mLayoutParams:[Landroid/widget/FrameLayout$LayoutParams;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mInterval:I

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090135

    .line 165
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    aput-object v2, v1, v7

    .line 166
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mLayoutParams:[Landroid/widget/FrameLayout$LayoutParams;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mInterval:I

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090136

    .line 167
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    aput-object v2, v1, v8

    .line 168
    return-void
.end method

.method public onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 172
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 175
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mTranslationXPortrait:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    .line 176
    sub-int v0, p1, p2

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mTranslationXPortrait:F

    .line 178
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->setPosition()V

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->setVisibility(I)V

    .line 184
    :cond_19
    return-void
.end method

.method public onTakePictureDone()V
    .registers 2

    .prologue
    .line 385
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentPositionAfter:I

    .line 386
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 485
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->setVisibility(I)V

    .line 488
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 489
    return-void
.end method

.method public setIsOpenAutoReview(Z)V
    .registers 3
    .param p1, "bool"    # Z

    .prologue
    .line 407
    if-eqz p1, :cond_7

    .line 408
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->setVisibility(I)V

    .line 412
    :goto_6
    return-void

    .line 410
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->setVisibility(I)V

    goto :goto_6
.end method

.method public setSensorOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 494
    iput p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mOrientation:I

    .line 495
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->setRotation(F)V

    .line 496
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->setPosition()V

    .line 497
    return-void
.end method

.method public updateProgress(II)V
    .registers 16
    .param p1, "milliSec"    # I
    .param p2, "volume"    # I

    .prologue
    const/16 v8, 0x36b

    const/4 v9, 0x0

    .line 289
    iget v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mSoundLevel:I

    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mSoundLevel:I

    .line 291
    iget v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentPosition:I

    if-nez v7, :cond_14

    .line 292
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->initialize()V

    .line 293
    iput p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mStartTime:I

    .line 296
    :cond_14
    const/16 v5, 0xdac

    .line 297
    .local v5, "max":I
    div-int/lit8 v4, v5, 0x4

    .line 298
    .local v4, "low":I
    mul-int/lit8 v6, v8, 0x2

    .line 299
    .local v6, "middle":I
    mul-int/lit8 v1, v8, 0x3

    .line 301
    .local v1, "high":I
    iget v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentPosition:I

    mul-int/lit16 v7, v7, 0x14a

    iget v8, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mStartTime:I

    add-int/2addr v7, v8

    if-lt p1, v7, :cond_3d

    .line 303
    const/4 v3, 0x0

    .line 304
    .local v3, "level":I
    iget v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mSoundLevel:I

    if-ge v7, v4, :cond_3e

    .line 305
    const/4 v3, 0x0

    .line 315
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->setContainerId()V

    .line 317
    iget v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentPositionAfter:I

    if-nez v7, :cond_58

    .line 318
    invoke-direct {p0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->addScaleMark(I)V

    .line 345
    :cond_35
    iget v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentPosition:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentPosition:I

    .line 346
    iput v9, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mSoundLevel:I

    .line 348
    .end local v3    # "level":I
    :cond_3d
    return-void

    .line 306
    .restart local v3    # "level":I
    :cond_3e
    iget v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mSoundLevel:I

    if-gt v4, v7, :cond_48

    iget v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mSoundLevel:I

    if-ge v7, v6, :cond_48

    .line 307
    const/4 v3, 0x1

    goto :goto_2b

    .line 308
    :cond_48
    iget v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mSoundLevel:I

    if-gt v6, v7, :cond_52

    iget v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mSoundLevel:I

    if-ge v7, v1, :cond_52

    .line 309
    const/4 v3, 0x2

    goto :goto_2b

    .line 310
    :cond_52
    iget v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mSoundLevel:I

    if-gt v1, v7, :cond_2b

    .line 311
    const/4 v3, 0x3

    goto :goto_2b

    .line 320
    :cond_58
    invoke-direct {p0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->addScaleMarkCaptured(I)V

    .line 322
    iget v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentPositionAfter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentPositionAfter:I

    .line 325
    iget v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentPositionAfter:I

    sget v8, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->MARKER_NUM_AFTER:I

    add-int/lit8 v8, v8, 0x1

    if-ne v7, v8, :cond_35

    .line 327
    iput v9, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mCurrentPositionAfter:I

    .line 330
    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mMainIcon:Landroid/widget/ImageView;

    if-eqz v7, :cond_77

    .line 331
    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mMainIcon:Landroid/widget/ImageView;

    const v8, 0x7f020128

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    :cond_77
    iget-object v10, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->mContainer:[Landroid/widget/LinearLayout;

    array-length v11, v10

    move v8, v9

    :goto_7b
    if-ge v8, v11, :cond_35

    aget-object v0, v10, v8

    .line 336
    .local v0, "container":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_80
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_95

    .line 337
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v12, 0x7f020127

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 335
    :cond_95
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_7b
.end method
