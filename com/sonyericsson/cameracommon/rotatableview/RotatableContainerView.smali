.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;
.super Landroid/widget/FrameLayout;
.source "RotatableContainerView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RotatableContainerView"


# instance fields
.field private mContainerView:Landroid/widget/FrameLayout;

.field private mCustomizableView:Landroid/widget/FrameLayout;

.field private mUiOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mUiOrientation:I

    .line 34
    return-void
.end method

.method private isPortraitUi()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 117
    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mUiOrientation:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private setLandscapeUi(IIZ)V
    .registers 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isReverse"    # Z

    .prologue
    .line 80
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 81
    .local v2, "size":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->requestLayout()V

    .line 85
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    .line 86
    .local v1, "backgroundW":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 87
    .local v0, "backgroundH":I
    if-ne v1, p1, :cond_27

    if-eq v0, p2, :cond_3c

    .line 88
    :cond_27
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 89
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput p2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 90
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 93
    :cond_3c
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 94
    return-void
.end method

.method private setPortraitUi(IIZ)V
    .registers 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isReverse"    # Z

    .prologue
    .line 97
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 98
    .local v2, "size":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->requestLayout()V

    .line 102
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    .line 103
    .local v1, "backgroundW":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 104
    .local v0, "backgroundH":I
    if-ne v1, p2, :cond_27

    if-eq v0, p1, :cond_3c

    .line 105
    :cond_27
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput p2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 106
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 109
    :cond_3c
    if-eqz p3, :cond_46

    .line 110
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 114
    :goto_45
    return-void

    .line 112
    :cond_46
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setRotation(F)V

    goto :goto_45
.end method


# virtual methods
.method public getCustamizableView()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 39
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mContainerView:Landroid/widget/FrameLayout;

    .line 40
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->overlay:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    .line 41
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v2, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->getDefaultSize(II)I

    move-result v1

    .line 52
    .local v1, "estimatedWidth":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v2, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->getDefaultSize(II)I

    move-result v0

    .line 54
    .local v0, "estimatedHeight":I
    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mUiOrientation:I

    if-nez v2, :cond_1c

    .line 55
    invoke-direct {p0, v1, v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->setLandscapeUi(IIZ)V

    .line 65
    :goto_18
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 66
    return-void

    .line 58
    :cond_1c
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->isPortraitUi()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 59
    invoke-direct {p0, v1, v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->setPortraitUi(IIZ)V

    goto :goto_18

    .line 61
    :cond_26
    invoke-direct {p0, v1, v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->setLandscapeUi(IIZ)V

    goto :goto_18
.end method

.method public setUiOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 73
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mUiOrientation:I

    if-eq v0, p1, :cond_9

    .line 74
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mUiOrientation:I

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->requestLayout()V

    .line 77
    :cond_9
    return-void
.end method
