.class Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;
.super Landroid/view/animation/AccelerateInterpolator;
.source "SelfTimerCountDownNumberView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlphaAccelerateInterpolator"
.end annotation


# instance fields
.field private final mAnimationRatio:F


# direct methods
.method constructor <init>(F)V
    .registers 2
    .param p1, "animationRatio"    # F

    .prologue
    .line 207
    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 208
    iput p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;->mAnimationRatio:F

    .line 209
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5
    .param p1, "input"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 213
    iget v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;->mAnimationRatio:F

    div-float v1, v2, v1

    mul-float/2addr p1, v1

    .line 214
    cmpg-float v1, v2, p1

    if-gtz v1, :cond_d

    .line 215
    const/high16 p1, 0x3f800000    # 1.0f

    .line 217
    :cond_d
    invoke-super {p0, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 218
    .local v0, "f":F
    return v0
.end method
