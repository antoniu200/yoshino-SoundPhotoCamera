.class public Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;
.super Landroid/widget/FrameLayout;
.source "SelfTimerCountDownView.java"


# instance fields
.field mIsHideHintText:Z

.field private mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

.field private mSelfTimerCountDownCircleViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

.field private mSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

.field private mSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrib"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mIsHideHintText:Z

    .line 37
    return-void
.end method


# virtual methods
.method public cancelSelfTimerCountDownAnimation()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    if-eqz v0, :cond_9

    .line 88
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->cancelSelfTimerAnimation()V

    .line 91
    :cond_9
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    if-eqz v0, :cond_12

    .line 92
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->cancelSelfTimerAnimation()V

    .line 95
    :cond_12
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz v0, :cond_1b

    .line 96
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->cancelSelfTimerAnimation()V

    .line 99
    :cond_1b
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz v0, :cond_24

    .line 100
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->cancelSelfTimerAnimation()V

    .line 102
    :cond_24
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 42
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->selftimer_countdown_circle:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    .line 44
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->selftimer_countdown_circle_port:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    .line 46
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->selftimer_countdown_text:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    .line 48
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->selftimer_countdown_text_port:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    .line 50
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 126
    invoke-super {p0, p2, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 127
    return-void
.end method

.method public setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V
    .registers 4
    .param p1, "selftimer"    # Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    if-eqz v0, :cond_9

    .line 106
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 109
    :cond_9
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    if-eqz v0, :cond_12

    .line 110
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 113
    :cond_12
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz v0, :cond_1b

    .line 114
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 117
    :cond_1b
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz v0, :cond_24

    .line 118
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 121
    :cond_24
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getCountDownIconId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2f

    const/4 v0, 0x1

    :goto_2c
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mIsHideHintText:Z

    .line 122
    return-void

    .line 121
    :cond_2f
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public setSensorOrientation(I)V
    .registers 8
    .param p1, "orientation"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 130
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 131
    .local v0, "degree":F
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setRotation(F)V

    .line 132
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->selftimer_countdown_layout_base_landscape:I

    invoke-virtual {p0, v3}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 134
    .local v1, "selfTimerViewLandscape":Landroid/view/View;
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->selftimer_countdown_layout_base_port:I

    invoke-virtual {p0, v3}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 137
    .local v2, "selfTimerViewPortrait":Landroid/view/View;
    const/4 v3, 0x2

    if-ne p1, v3, :cond_23

    .line 138
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :goto_22
    return-void

    .line 141
    :cond_23
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 142
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_22
.end method

.method public startSelfTimerCountDownAnimation(Z)V
    .registers 7
    .param p1, "isFront"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 58
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->selftimer_hint_text:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    .local v0, "selfTimerHintText":Landroid/widget/TextView;
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->selftimer_hint_text_port:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 61
    .local v1, "selfTimerHintTextPort":Landroid/widget/TextView;
    if-eqz p1, :cond_43

    iget-boolean v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mIsHideHintText:Z

    if-nez v2, :cond_43

    .line 62
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :goto_1e
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz v2, :cond_27

    .line 70
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->startAnimation()V

    .line 73
    :cond_27
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz v2, :cond_30

    .line 74
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->startAnimation()V

    .line 77
    :cond_30
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    if-eqz v2, :cond_39

    .line 78
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->startAnimation()V

    .line 81
    :cond_39
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    if-eqz v2, :cond_42

    .line 82
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->startAnimation()V

    .line 84
    :cond_42
    return-void

    .line 65
    :cond_43
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1e
.end method
