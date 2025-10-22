.class public Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;
.super Ljava/lang/Object;
.source "TouchScaleAndRotateDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;
    }
.end annotation


# static fields
.field private static final ROTATE_DETECTION_THRESHOLD_DEGREE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "TouchScaleAndRotateDetector"


# instance fields
.field private mAxisRotateDeg:F

.field private mCurrentAxisVec:Landroid/graphics/PointF;

.field private mCurrentTouchPos0:Landroid/graphics/PointF;

.field private mCurrentTouchPos1:Landroid/graphics/PointF;

.field private mListener:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;

.field private mOriginalAxisLen:F

.field private mPreviousAxisVec:Landroid/graphics/PointF;

.field private mPreviousTouchPos0:Landroid/graphics/PointF;

.field private mPreviousTouchPos1:Landroid/graphics/PointF;

.field private mTouchVec0:Landroid/graphics/PointF;

.field private mTouchVec1:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    .line 27
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec0:Landroid/graphics/PointF;

    .line 33
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec1:Landroid/graphics/PointF;

    .line 37
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    .line 40
    iput v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    .line 43
    iput v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mOriginalAxisLen:F

    .line 56
    return-void
.end method


# virtual methods
.method release()V
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;

    .line 60
    return-void
.end method

.method public setScaleAndRotateDetectorListener(Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;

    .line 64
    return-void
.end method

.method public startScaleAndRotateDetection(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 7
    .param p1, "point0"    # Landroid/graphics/PointF;
    .param p2, "point1"    # Landroid/graphics/PointF;

    .prologue
    .line 67
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos0:Landroid/graphics/PointF;

    .line 68
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos1:Landroid/graphics/PointF;

    .line 69
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mOriginalAxisLen:F

    .line 71
    return-void
.end method

.method public stopScaleAndRotateDetection()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 140
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos0:Landroid/graphics/PointF;

    .line 141
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos1:Landroid/graphics/PointF;

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec0:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec1:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 146
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 149
    iput v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    .line 151
    iput v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mOriginalAxisLen:F

    .line 152
    return-void
.end method

.method public updateCurrentPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 15
    .param p1, "point0"    # Landroid/graphics/PointF;
    .param p2, "point1"    # Landroid/graphics/PointF;

    .prologue
    .line 75
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    invoke-virtual {v7, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 76
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    invoke-virtual {v7, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 79
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec0:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos0:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos0:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 82
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec1:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos1:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos1:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 87
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 92
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec0:Landroid/graphics/PointF;

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->isSquare(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v7

    if-eqz v7, :cond_b4

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec1:Landroid/graphics/PointF;

    .line 93
    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->isSquare(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v7

    if-eqz v7, :cond_b4

    .line 95
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->getRadianFrom2Vector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    .line 100
    .local v2, "difRad":F
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    mul-float/2addr v8, v9

    sub-float v4, v7, v8

    .line 102
    .local v4, "outerProduct":F
    const/4 v7, 0x0

    cmpg-float v7, v7, v4

    if-gtz v7, :cond_f1

    .line 103
    const/high16 v3, 0x3f800000    # 1.0f

    .line 109
    .local v3, "direction":F
    :goto_86
    const/high16 v7, 0x43b40000    # 360.0f

    mul-float/2addr v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-double v8, v7

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    float-to-double v10, v3

    mul-double/2addr v8, v10

    double-to-float v1, v8

    .line 110
    .local v1, "difDeg":F
    iget v5, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    .line 111
    .local v5, "previousDeg":F
    iget v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    .line 112
    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    sub-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_b4

    .line 114
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;

    iget v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    iget v9, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    sub-float/2addr v9, v5

    invoke-interface {v7, v8, v9}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;->onDoubleTouchRotateDetected(FF)V

    .line 120
    .end local v1    # "difDeg":F
    .end local v2    # "difRad":F
    .end local v3    # "direction":F
    .end local v4    # "outerProduct":F
    .end local v5    # "previousDeg":F
    :cond_b4
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec0:Landroid/graphics/PointF;

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->isParallel(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v7

    if-eqz v7, :cond_db

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec1:Landroid/graphics/PointF;

    .line 121
    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->isParallel(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v7

    if-eqz v7, :cond_db

    .line 123
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    invoke-virtual {v7}, Landroid/graphics/PointF;->length()F

    move-result v0

    .line 124
    .local v0, "currentLen":F
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    invoke-virtual {v7}, Landroid/graphics/PointF;->length()F

    move-result v6

    .line 127
    .local v6, "previousLen":F
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;

    iget v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mOriginalAxisLen:F

    invoke-interface {v7, v0, v6, v8}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;->onDoubleTouchScaleDetected(FFF)V

    .line 131
    .end local v0    # "currentLen":F
    .end local v6    # "previousLen":F
    :cond_db
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    invoke-virtual {v7, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 132
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos0:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    invoke-virtual {v7, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 133
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos1:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    invoke-virtual {v7, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 134
    return-void

    .line 105
    .restart local v2    # "difRad":F
    .restart local v4    # "outerProduct":F
    :cond_f1
    const/high16 v3, -0x40800000    # -1.0f

    .restart local v3    # "direction":F
    goto :goto_86
.end method
