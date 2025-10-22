.class public Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;
.super Landroid/widget/FrameLayout;
.source "EdgeRotatableContainerView.java"


# instance fields
.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->mOrientation:I

    .line 26
    return-void
.end method

.method private setOrientation(FF)V
    .registers 7
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 51
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 52
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setRotation(F)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setTranslationX(F)V

    .line 54
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setTranslationY(F)V

    .line 60
    :goto_11
    return-void

    .line 56
    :cond_12
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setRotation(F)V

    .line 57
    sub-float v0, p1, p2

    div-float/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setTranslationX(F)V

    .line 58
    sub-float v0, p1, p2

    div-float/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setTranslationY(F)V

    goto :goto_11
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 31
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setOrientation(FF)V

    .line 32
    return-void
.end method

.method public setOrientation(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->mOrientation:I

    .line 41
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/EdgeRotatableContainerView;->setOrientation(FF)V

    .line 42
    return-void
.end method
