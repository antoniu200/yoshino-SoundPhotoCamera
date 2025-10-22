.class public Lcom/sonyericsson/cameracommon/utility/RotationUtil;
.super Ljava/lang/Object;
.source "RotationUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RotationUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAngle(I)F
    .registers 2
    .param p0, "orientation"    # I

    .prologue
    .line 24
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 25
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 27
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getNormalizedRotation(I)I
    .registers 5
    .param p0, "degrees"    # I

    .prologue
    const/16 v3, 0xe1

    const/16 v2, 0x87

    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "normalizedOrientation":I
    rem-int/lit16 p0, p0, 0x168

    .line 44
    const/16 v1, 0x2d

    if-ge v1, p0, :cond_10

    if-gt p0, v2, :cond_10

    .line 45
    const/16 v0, 0x5a

    .line 56
    :goto_f
    return v0

    .line 46
    :cond_10
    if-gt v2, p0, :cond_17

    if-gt p0, v3, :cond_17

    .line 47
    const/16 v0, 0xb4

    goto :goto_f

    .line 48
    :cond_17
    if-gt v3, p0, :cond_20

    const/16 v1, 0x13b

    if-gt p0, v1, :cond_20

    .line 49
    const/16 v0, 0x10e

    goto :goto_f

    .line 51
    :cond_20
    const/4 v0, 0x0

    goto :goto_f
.end method
