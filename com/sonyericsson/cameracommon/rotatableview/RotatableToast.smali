.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;
.super Landroid/widget/FrameLayout;
.source "RotatableToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;,
        Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
    }
.end annotation


# static fields
.field private static final FADEOUT_OFFSET_LONG:J = 0x1194L

.field private static final FADEOUT_OFFSET_SHORT:J = 0x9c4L

.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "RotatableToast"

.field private static mLayoutParamsLandscape:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

.field private static mLayoutParamsPortrait:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;


# instance fields
.field private mBackgroundView:Landroid/view/ViewGroup;

.field private mBaseView:Landroid/view/ViewGroup;

.field private mDuration:I

.field private mFadeoutAnimation:Landroid/view/animation/Animation;

.field mHandler:Landroid/os/Handler;

.field private mLayoutRoot:Landroid/view/ViewGroup;

.field private mSensorOrientation:I

.field private final mStartAnimation:Ljava/lang/Runnable;

.field private mTextView:Landroid/widget/TextView;

.field private mToastPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 61
    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsLandscape:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    .line 62
    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsPortrait:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    .line 83
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    .line 86
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    .line 89
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mDuration:I

    .line 95
    sget-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->CENTER:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mToastPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mHandler:Landroid/os/Handler;

    .line 279
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$1;-><init>(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mStartAnimation:Ljava/lang/Runnable;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)Landroid/view/animation/Animation;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mFadeoutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private addToWindow()V
    .registers 2

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 338
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 339
    return-void
.end method

.method private getContainerRect()Landroid/graphics/Rect;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 229
    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    sget-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsPortrait:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    .line 233
    .local v0, "params":Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
    :goto_8
    if-nez v0, :cond_e

    .line 247
    :goto_a
    return-object v1

    .line 229
    .end local v0    # "params":Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
    :cond_b
    sget-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsLandscape:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    goto :goto_8

    .line 237
    .restart local v0    # "params":Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
    :cond_e
    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$2;->$SwitchMap$com$sonyericsson$cameracommon$rotatableview$RotatableToast$ToastPosition:[I

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mToastPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_22

    goto :goto_a

    .line 239
    :pswitch_1c
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;->topContainer:Landroid/graphics/Rect;

    goto :goto_a

    .line 242
    :pswitch_1f
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;->bottomContainer:Landroid/graphics/Rect;

    goto :goto_a

    .line 237
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method

.method public static inflate(Landroid/app/Activity;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 400
    .local v0, "inflater":Landroid/view/LayoutInflater;
    if-nez v0, :cond_e

    .line 401
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "LayoutInflater not found."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 403
    :cond_e
    sget v1, Lcom/sonyericsson/cameracommon/R$layout;->rotatable_toast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    return-object v1
.end method

.method private removeFromWindow()V
    .registers 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 351
    :cond_b
    return-void
.end method

.method public static setToastLayoutParams(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;)V
    .registers 2
    .param p0, "landscape"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
    .param p1, "portrait"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    .prologue
    .line 67
    sput-object p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsLandscape:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    .line 68
    sput-object p1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsPortrait:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    .line 69
    return-void
.end method

.method private updatePosition()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 210
    iget v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v2

    .line 212
    .local v2, "rotation":F
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v1

    .line 213
    .local v1, "layoutScreenOrientation":Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v1, v3, :cond_16

    .line 214
    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    .line 216
    :cond_16
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 217
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getContainerRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 218
    .local v0, "container":Landroid/graphics/Rect;
    if-eqz v0, :cond_36

    .line 219
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 220
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 226
    :goto_35
    return-void

    .line 223
    :cond_36
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 224
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_35
.end method

.method private updateTextMaxWidth()V
    .registers 4

    .prologue
    .line 197
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->rotatable_toast_max_width_for_port:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 204
    :goto_14
    return-void

    .line 201
    :cond_15
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->rotatable_toast_max_width_for_land:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_14
.end method


# virtual methods
.method public getDuration()I
    .registers 2

    .prologue
    .line 179
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mDuration:I

    return v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 295
    return-void
.end method

.method public hideImmediately()V
    .registers 4

    .prologue
    .line 301
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 304
    .local v0, "currentAnimation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_29

    .line 308
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_23

    .line 309
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 314
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->removeFromWindow()V

    .line 325
    :goto_22
    return-void

    .line 316
    :cond_23
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    goto :goto_22

    .line 320
    :cond_29
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mStartAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 323
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->removeFromWindow()V

    goto :goto_22
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->removeFromWindow()V

    .line 357
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 362
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 368
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 126
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutRoot:Landroid/view/ViewGroup;

    .line 130
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->rotatable_toast_base:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    .line 132
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->rotatable_toast_text_background:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    .line 134
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->rotatable_toast_text:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    .line 138
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$anim;->rotatable_toast_anime:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mFadeoutAnimation:Landroid/view/animation/Animation;

    .line 140
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 375
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_a

    .line 380
    const/4 v0, 0x0

    .line 395
    :goto_9
    return v0

    .line 387
    :cond_a
    const/16 v1, 0x40

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 390
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 393
    .local v0, "reult":Z
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method public setDuration(I)V
    .registers 2
    .param p1, "duration"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mDuration:I

    .line 171
    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    .line 160
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->updateTextMaxWidth()V

    .line 161
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->updatePosition()V

    .line 162
    return-void
.end method

.method public setTextResId(I)V
    .registers 3
    .param p1, "res"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 148
    return-void
.end method

.method public setToastPosition(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V
    .registers 2
    .param p1, "position"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mToastPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .line 189
    return-void
.end method

.method public show()V
    .registers 6

    .prologue
    .line 258
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 261
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->addToWindow()V

    .line 262
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->updateTextMaxWidth()V

    .line 263
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->updatePosition()V

    .line 267
    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mDuration:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_28

    .line 268
    const-wide/16 v2, 0x1194

    .line 273
    .local v2, "durationTime":J
    :goto_1b
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mFadeoutAnimation:Landroid/view/animation/Animation;

    .line 274
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 276
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mStartAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    return-void

    .line 270
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v2    # "durationTime":J
    :cond_28
    const-wide/16 v2, 0x9c4

    .restart local v2    # "durationTime":J
    goto :goto_1b
.end method
