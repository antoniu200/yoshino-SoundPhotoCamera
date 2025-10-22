.class Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$CircleDecelerateInterpolator;
.super Landroid/view/animation/DecelerateInterpolator;
.source "SelfTimerCountDownCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CircleDecelerateInterpolator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 158
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$1;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$CircleDecelerateInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4
    .param p1, "input"    # F

    .prologue
    .line 162
    const v1, 0x3fd55555

    mul-float/2addr p1, v1

    .line 163
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_c

    .line 164
    const/high16 p1, 0x3f800000    # 1.0f

    .line 166
    :cond_c
    invoke-super {p0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 167
    .local v0, "f":F
    return v0
.end method
