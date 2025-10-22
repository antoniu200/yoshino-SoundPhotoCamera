.class public Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;
.super Ljava/lang/Object;
.source "AlphaMaskedBlurredYuvFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlurIncrementalController"
.end annotation


# instance fields
.field private mActualBlurLevel:F

.field private final mInitialBlurLevel:F

.field private final mStep:F

.field private mTarget:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

.field private mTargetBlurLevel:F


# direct methods
.method public constructor <init>(FF)V
    .registers 4
    .param p1, "initialBlurLevel"    # F
    .param p2, "step"    # F

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mTarget:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    .line 405
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mInitialBlurLevel:F

    .line 406
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->resetActual()V

    .line 407
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mInitialBlurLevel:F

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mTargetBlurLevel:F

    .line 409
    iput p2, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mStep:F

    .line 410
    return-void
.end method


# virtual methods
.method public applyActual()V
    .registers 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mTarget:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;->setBlurLevel(F)V

    .line 437
    return-void
.end method

.method public resetActual()V
    .registers 2

    .prologue
    .line 420
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mInitialBlurLevel:F

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    .line 421
    return-void
.end method

.method public setTargetElement(Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;)V
    .registers 2
    .param p1, "target"    # Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mTarget:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    .line 414
    return-void
.end method

.method public update()V
    .registers 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 446
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mTargetBlurLevel:F

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    sub-float v0, v1, v2

    .line 447
    .local v0, "dif":F
    cmpg-float v1, v3, v0

    if-gez v1, :cond_28

    .line 448
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mStep:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    .line 453
    :cond_14
    :goto_14
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1c

    iput v3, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    .line 454
    :cond_1c
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    cmpg-float v1, v4, v1

    if-gez v1, :cond_24

    iput v4, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    .line 456
    :cond_24
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->applyActual()V

    .line 457
    return-void

    .line 449
    :cond_28
    cmpg-float v1, v0, v3

    if-gez v1, :cond_14

    .line 450
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mStep:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mActualBlurLevel:F

    goto :goto_14
.end method

.method public updateTarget(F)V
    .registers 2
    .param p1, "targetAlpha"    # F

    .prologue
    .line 429
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame$BlurIncrementalController;->mTargetBlurLevel:F

    .line 430
    return-void
.end method
