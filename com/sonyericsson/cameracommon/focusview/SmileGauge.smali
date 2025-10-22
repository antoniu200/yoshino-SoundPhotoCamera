.class public Lcom/sonyericsson/cameracommon/focusview/SmileGauge;
.super Landroid/widget/RelativeLayout;
.source "SmileGauge.java"


# static fields
.field public static final SMILE_LEVEL:I = 0x5

.field public static final SMILE_MAX:I = 0x64

.field public static final SMILE_MIN:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SmileGauge"


# instance fields
.field private mIsForLandscape:Z

.field private mMargin:I

.field private mSmileScore:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mIsForLandscape:Z

    .line 76
    sget-object v1, Lcom/sonyericsson/cameracommon/R$styleable;->SmileGauge:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v1, Lcom/sonyericsson/cameracommon/R$styleable;->SmileGauge_forLandscape:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mIsForLandscape:Z

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void
.end method


# virtual methods
.method protected alignToDirection(I)V
    .registers 4
    .param p1, "direction"    # I

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 290
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v0, :cond_9

    .line 295
    :goto_8
    return-void

    .line 293
    :cond_9
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->rect:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 294
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8
.end method

.method protected clearLayoutParams()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 272
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v0, :cond_a

    .line 281
    :goto_9
    return-void

    .line 275
    :cond_a
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 276
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 277
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 278
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 279
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 280
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9
.end method

.method protected drawThreshold()V
    .registers 8

    .prologue
    const/16 v6, 0xc

    const/4 v5, -0x2

    .line 145
    sget v4, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_threshold:I

    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 147
    .local v3, "threshold":Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 151
    iget v4, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mMargin:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 152
    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 169
    :goto_1f
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    return-void

    .line 154
    :cond_23
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 156
    .local v2, "paramsFrame":Landroid/widget/RelativeLayout$LayoutParams;
    sget v4, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_frame:I

    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 158
    .local v0, "frame":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isLayoutOrientationLandscape()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 159
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    iget v4, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mMargin:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 161
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 167
    :goto_42
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1f

    .line 163
    :cond_46
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    iget v4, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mMargin:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 165
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_42
.end method

.method public getSmileScore()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mSmileScore:I

    return v0
.end method

.method public isForLandscape()Z
    .registers 2

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mIsForLandscape:Z

    return v0
.end method

.method public isLayoutOrientationLandscape()Z
    .registers 3

    .prologue
    .line 312
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v1, :cond_e

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method protected moveToId(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getId()I

    move-result v0

    if-eq v0, p1, :cond_c

    .line 259
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 263
    :goto_b
    return-void

    .line 261
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    goto :goto_b
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 301
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 302
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mSmileScore:I

    .line 90
    return-void
.end method

.method public setPosition(IIIII)V
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "orientation"    # I

    .prologue
    .line 199
    if-eq p1, p3, :cond_4

    if-ne p2, p4, :cond_9

    .line 200
    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 204
    :goto_8
    return-void

    .line 202
    :cond_9
    invoke-virtual {p0, p5}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->update(I)V

    goto :goto_8
.end method

.method public setSmileLevel(I)V
    .registers 3
    .param p1, "dimenId"    # I

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mMargin:I

    .line 137
    return-void
.end method

.method public setSmileScore(I)V
    .registers 7
    .param p1, "score"    # I

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xa

    .line 100
    if-gez p1, :cond_33

    .line 101
    const/4 p1, 0x0

    .line 105
    :cond_7
    :goto_7
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mSmileScore:I

    .line 106
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_score:I

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/SmileScore;

    .line 107
    .local v1, "smileScore":Lcom/sonyericsson/cameracommon/focusview/SmileScore;
    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->setSmileScore(I)V

    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 111
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 112
    .local v0, "paramsScore":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isLayoutOrientationLandscape()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 113
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 114
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 119
    :goto_2c
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    .end local v0    # "paramsScore":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2f
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->invalidate()V

    .line 124
    return-void

    .line 102
    .end local v1    # "smileScore":Lcom/sonyericsson/cameracommon/focusview/SmileScore;
    :cond_33
    const/16 v2, 0x64

    if-le p1, v2, :cond_7

    .line 103
    const/16 p1, 0x64

    goto :goto_7

    .line 116
    .restart local v0    # "paramsScore":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "smileScore":Lcom/sonyericsson/cameracommon/focusview/SmileScore;
    :cond_3a
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 117
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2c
.end method

.method public setVisibility(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 182
    if-nez p1, :cond_8

    .line 183
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->drawThreshold()V

    .line 185
    :cond_8
    return-void
.end method

.method protected update(I)V
    .registers 7
    .param p1, "orientation"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 215
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isLayoutOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 216
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result v0

    if-eqz v0, :cond_13

    if-ne p1, v1, :cond_1b

    .line 217
    :cond_13
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result v0

    if-nez v0, :cond_39

    if-eq p1, v2, :cond_39

    .line 218
    :cond_1b
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->clearLayoutParams()V

    .line 219
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 251
    :goto_21
    return-void

    .line 223
    :cond_22
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result v0

    if-nez v0, :cond_2a

    if-ne p1, v1, :cond_32

    .line 224
    :cond_2a
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result v0

    if-eqz v0, :cond_39

    if-eq p1, v2, :cond_39

    .line 225
    :cond_32
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->clearLayoutParams()V

    .line 226
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    goto :goto_21

    .line 231
    :cond_39
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->clearLayoutParams()V

    .line 232
    if-ne p1, v1, :cond_5a

    .line 233
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isLayoutOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 234
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_left:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToId(I)V

    .line 235
    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->alignToDirection(I)V

    .line 250
    :goto_4c
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->postInvalidate()V

    goto :goto_21

    .line 237
    :cond_50
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_top:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToId(I)V

    .line 238
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->alignToDirection(I)V

    goto :goto_4c

    .line 241
    :cond_5a
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isLayoutOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 242
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_bottom:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToId(I)V

    .line 243
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->alignToDirection(I)V

    goto :goto_4c

    .line 245
    :cond_6a
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_left:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToId(I)V

    .line 246
    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->alignToDirection(I)V

    goto :goto_4c
.end method
