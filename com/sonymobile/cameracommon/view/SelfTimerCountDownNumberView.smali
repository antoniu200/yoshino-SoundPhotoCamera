.class public Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
.super Landroid/widget/ImageView;
.source "SelfTimerCountDownNumberView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;,
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;,
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;,
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;
    }
.end annotation


# static fields
.field private static final ANIMATION_FADING_DURATION_MS:I = 0xfa

.field private static final ANIMATION_VALUE:I = 0xff

.field private static final SECOND_COUNT_MILLIS:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "SelfTimerCountDownNumberView"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mAnimationEventHandler:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

.field private mCountDownIconId:I

.field private mCountDownInitNum:I

.field private mCurrentCount:I

.field private mIsCountDownStarted:Z

.field private mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 38
    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    .line 40
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->handler:Landroid/os/Handler;

    .line 42
    iput-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    .line 43
    new-instance v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mAnimationEventHandler:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownIconId:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 38
    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    .line 40
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->handler:Landroid/os/Handler;

    .line 42
    iput-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    .line 43
    new-instance v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mAnimationEventHandler:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownIconId:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 38
    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    .line 40
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->handler:Landroid/os/Handler;

    .line 42
    iput-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    .line 43
    new-instance v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mAnimationEventHandler:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownIconId:I

    .line 57
    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)I
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    .prologue
    .line 27
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    return v0
.end method

.method static synthetic access$410(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)I
    .registers 3
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    .prologue
    .line 27
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImage()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->postNextUpdateEvent()V

    return-void
.end method

.method private getAnimationRatio(I)F
    .registers 4
    .param p1, "duration"    # I

    .prologue
    .line 139
    const/high16 v0, 0x437a0000    # 250.0f

    int-to-float v1, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private getDuration(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)I
    .registers 5
    .param p1, "selfTimer"    # Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;

    .prologue
    .line 128
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_b

    .line 129
    const/16 v0, 0x1f4

    .line 135
    .local v0, "duration":I
    :goto_a
    return v0

    .line 130
    .end local v0    # "duration":I
    :cond_b
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result v1

    const/16 v2, 0x5dc

    if-ne v1, v2, :cond_16

    .line 131
    const/16 v0, 0x5dc

    .restart local v0    # "duration":I
    goto :goto_a

    .line 133
    .end local v0    # "duration":I
    :cond_16
    const/16 v0, 0x3e8

    .restart local v0    # "duration":I
    goto :goto_a
.end method

.method private postNextUpdateEvent()V
    .registers 5

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    return-void
.end method

.method private setAnimator(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V
    .registers 8
    .param p1, "selfTimer"    # Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;

    .prologue
    .line 158
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getCountDownIconId()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownIconId:I

    .line 160
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getDuration(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)I

    move-result v1

    .line 161
    .local v1, "duration":I
    invoke-direct {p0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getAnimationRatio(I)F

    move-result v0

    .line 162
    .local v0, "animationRatio":F
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_46

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 163
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;

    invoke-direct {v3, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownInitNum:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 165
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 166
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 167
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 168
    return-void

    .line 162
    nop

    :array_46
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private setImage()V
    .registers 4

    .prologue
    .line 80
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownIconId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 81
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownIconId:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    .line 124
    :goto_a
    return-void

    .line 83
    :cond_b
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    packed-switch v0, :pswitch_data_92

    .line 115
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_75

    .line 116
    const-string v0, "SelfTimerCountDownNumberView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImage() [Irregal Value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 117
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 85
    :pswitch_39
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_10_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_a

    .line 88
    :pswitch_3f
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_9_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_a

    .line 91
    :pswitch_45
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_8_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_a

    .line 94
    :pswitch_4b
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_7_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_a

    .line 97
    :pswitch_51
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_6_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_a

    .line 100
    :pswitch_57
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_5_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_a

    .line 103
    :pswitch_5d
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_4_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_a

    .line 106
    :pswitch_63
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_3_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_a

    .line 109
    :pswitch_69
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_2_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_a

    .line 112
    :pswitch_6f
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_1_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_a

    .line 119
    :cond_75
    const-string v0, "SelfTimerCountDownNumberView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImage() : mCurrentCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 83
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_69
        :pswitch_63
        :pswitch_5d
        :pswitch_57
        :pswitch_51
        :pswitch_4b
        :pswitch_45
        :pswitch_3f
        :pswitch_39
    .end packed-switch
.end method

.method private startCountDownNumber()V
    .registers 3

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    .line 224
    new-instance v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    .line 225
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownInitNum:I

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    .line 226
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImage()V

    .line 227
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->postNextUpdateEvent()V

    .line 228
    return-void
.end method

.method private stopCountDownNumber()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    .line 232
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 233
    iput-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mUpdateCountDownNumberTask:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;

    .line 234
    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 235
    return-void
.end method


# virtual methods
.method public cancelSelfTimerAnimation()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 149
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->stopCountDownNumber()V

    .line 150
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    return-void
.end method

.method public setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V
    .registers 3
    .param p1, "selfTimer"    # Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;

    .prologue
    .line 143
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCountDownInitNum:I

    .line 144
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setAnimator(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 145
    return-void
.end method

.method public setVisibility(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    return-void
.end method

.method public startAnimation()V
    .registers 4

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 66
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 67
    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 71
    :goto_17
    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_24

    .line 72
    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 74
    :cond_24
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mIsCountDownStarted:Z

    if-nez v1, :cond_2b

    .line 75
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->startCountDownNumber()V

    .line 77
    :cond_2b
    return-void

    .line 69
    :cond_2c
    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mAnimationEventHandler:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_17
.end method
