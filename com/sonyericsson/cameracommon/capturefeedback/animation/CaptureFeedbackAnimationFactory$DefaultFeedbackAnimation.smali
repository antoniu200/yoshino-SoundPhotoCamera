.class Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;
.super Ljava/lang/Object;
.source "CaptureFeedbackAnimationFactory.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultFeedbackAnimation"
.end annotation


# static fields
.field private static final BLUE:F = 0.0f

.field private static final CONTROL_X1:F = 0.95f

.field private static final CONTROL_X2:F = 0.795f

.field private static final CONTROL_Y1:F = 0.05f

.field private static final CONTROL_Y2:F = 0.035f

.field private static final DURATION_MILLIS:J = 0xc8L

.field private static final END_ALPHA:F = 0.0f

.field private static final GREEN:F = 0.0f

.field private static final RED:F = 0.0f

.field private static final START_ALPHA:F = 1.0f


# instance fields
.field private final mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method private constructor <init>()V
    .registers 6

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f733333    # 0.95f

    const v2, 0x3d4ccccd    # 0.05f

    const v3, 0x3f4b851f    # 0.795f

    const v4, 0x3d0f5c29    # 0.035f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$1;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;J)Z
    .registers 12
    .param p1, "canvas"    # Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;
    .param p2, "elapsedTimeMillis"    # J

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 50
    long-to-float v2, p2

    const/high16 v3, 0x43480000    # 200.0f

    div-float v1, v2, v3

    .line 51
    .local v1, "progress":F
    const/high16 v2, -0x40800000    # -1.0f

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 52
    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 51
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v2, v3

    add-float v0, v4, v2

    .line 60
    .local v0, "alpha":F
    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_23

    .line 61
    invoke-interface {p1, v6, v6, v6, v6}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;->drawColor(FFFF)V

    .line 62
    const/4 v2, 0x0

    .line 65
    :goto_22
    return v2

    .line 64
    :cond_23
    invoke-interface {p1, v0, v6, v6, v6}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;->drawColor(FFFF)V

    .line 65
    const/4 v2, 0x1

    goto :goto_22
.end method
