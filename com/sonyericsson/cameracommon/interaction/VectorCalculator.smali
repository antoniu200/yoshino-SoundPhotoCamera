.class public Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;
.super Ljava/lang/Object;
.source "VectorCalculator.java"


# static fields
.field private static final PARALLEL_ANGLE_FORWARD_DIRECTION:F = 0.0f

.field private static final PARALLEL_ANGLE_INVERSE_DIRECTION:F = 3.1415927f

.field private static final PARALLEL_ANGLE_TOLERANCE:F = 1.0471976f

.field private static final RIGHT_ANGLE:F = 1.5707964f

.field private static final RIGHT_ANGLE_TOLERANCE:F = 1.0471976f

.field public static final TAG:Ljava/lang/String; = "VectorCalculator"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRadianFrom2Vector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .registers 6
    .param p0, "vec0"    # Landroid/graphics/PointF;
    .param p1, "vec1"    # Landroid/graphics/PointF;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0}, Landroid/graphics/PointF;->length()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_35

    invoke-virtual {p1}, Landroid/graphics/PointF;->length()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_35

    .line 30
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/PointF;->length()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/PointF;->length()F

    move-result v2

    div-float v0, v1, v2

    .line 33
    .local v0, "difCos":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_36

    .line 34
    const/high16 v0, -0x40800000    # -1.0f

    .line 40
    :cond_2f
    :goto_2f
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 44
    .end local v0    # "difCos":F
    :cond_35
    return v1

    .line 35
    .restart local v0    # "difCos":F
    :cond_36
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2f

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2f
.end method

.method private static isNearlyEquals(FFF)Z
    .registers 4
    .param p0, "target"    # F
    .param p1, "actual"    # F
    .param p2, "tolerance"    # F

    .prologue
    .line 75
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isParallel(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .registers 6
    .param p0, "vec0"    # Landroid/graphics/PointF;
    .param p1, "vec1"    # Landroid/graphics/PointF;

    .prologue
    const/4 v1, 0x1

    const v3, 0x3f860a92

    .line 59
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->getRadianFrom2Vector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 61
    .local v0, "rad":F
    const v2, 0x40490fdb    # (float)Math.PI

    invoke-static {v2, v0, v3}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->isNearlyEquals(FFF)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 71
    :cond_11
    :goto_11
    return v1

    .line 65
    :cond_12
    const/4 v2, 0x0

    invoke-static {v2, v0, v3}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->isNearlyEquals(FFF)Z

    move-result v2

    if-nez v2, :cond_11

    .line 71
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static isSquare(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .registers 4
    .param p0, "vec0"    # Landroid/graphics/PointF;
    .param p1, "vec1"    # Landroid/graphics/PointF;

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->getRadianFrom2Vector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 50
    .local v0, "rad":F
    const v1, 0x3f060a92

    cmpg-float v1, v1, v0

    if-gez v1, :cond_14

    const v1, 0x40278d36

    cmpg-float v1, v0, v1

    if-gez v1, :cond_14

    .line 52
    const/4 v1, 0x1

    .line 55
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method
