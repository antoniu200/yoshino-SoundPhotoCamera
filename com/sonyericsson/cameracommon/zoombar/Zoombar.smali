.class public Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
.super Landroid/widget/FrameLayout;
.source "Zoombar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DELAY_ZOOMBAR_HIDE:I = 0x3e8

.field private static final IMMEDIATE_ANIMATION_DURATION_IN_MILLIS:J = 0x0L

.field private static final INVISIBLE_ALPHA:F = 0.0f

.field private static final INVISIBLE_ANIMATION_DURATION_IN_MILLIS:J = 0x64L

.field public static final MIN_VALUE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Zoombar"

.field private static final VISIBLE_ALPHA:F = 1.0f

.field private static final VISIBLE_ANIMATION_DURATION_IN_MILLIS:J = 0x64L


# instance fields
.field private mCurrentType:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

.field private final mHideEvent:Ljava/lang/Runnable;

.field private mLeftIndicator:Landroid/widget/ImageView;

.field private mLeftSrIndicator:Landroid/widget/ImageView;

.field private mMaxSrZoom:Ljava/lang/Integer;

.field private mMaxZoom:Ljava/lang/Integer;

.field private mRightIndicator:Landroid/widget/ImageView;

.field private mRightSrIndicator:Landroid/widget/ImageView;

.field private mValueIndicator:Landroid/widget/TextView;

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    sget-object v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;->NORMAL:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mCurrentType:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    .line 275
    new-instance v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$1;-><init>(Lcom/sonyericsson/cameracommon/zoombar/Zoombar;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/zoombar/Zoombar;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->hideWithAnimation(Z)V

    return-void
.end method

.method private hideWithAnimation(Z)V
    .registers 5
    .param p1, "doAnimation"    # Z

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 295
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_15

    const-wide/16 v0, 0x64

    .line 296
    :goto_d
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 300
    return-void

    .line 295
    :cond_15
    const-wide/16 v0, 0x0

    goto :goto_d
.end method

.method private showWithAnimation(Z)V
    .registers 5
    .param p1, "doAnimation"    # Z

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_16

    const-wide/16 v0, 0x64

    .line 285
    :goto_e
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 289
    return-void

    .line 284
    :cond_16
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method private validateZoomParameters(I)Z
    .registers 8
    .param p1, "current"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 309
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mCurrentType:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    sget-object v5, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;->PARTIAL_SUPER_RESOLUTION:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    if-ne v4, v5, :cond_16

    move v1, v2

    .line 311
    .local v1, "isSuperResolutionEnabled":Z
    :goto_9
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxZoom:Ljava/lang/Integer;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxZoom:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gtz v4, :cond_18

    .line 327
    :cond_15
    :goto_15
    return v3

    .end local v1    # "isSuperResolutionEnabled":Z
    :cond_16
    move v1, v3

    .line 309
    goto :goto_9

    .line 314
    .restart local v1    # "isSuperResolutionEnabled":Z
    :cond_18
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mZoomRatios:Ljava/util/List;

    if-eqz v4, :cond_15

    .line 317
    if-eqz v1, :cond_2a

    .line 318
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxSrZoom:Ljava/lang/Integer;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxSrZoom:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_15

    .line 322
    :cond_2a
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mZoomRatios:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 323
    .local v0, "currentZoomRatio":Ljava/lang/Integer;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_15

    move v3, v2

    .line 327
    goto :goto_15
.end method


# virtual methods
.method public hideDelayed()V
    .registers 5

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 259
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_d

    .line 260
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    :cond_d
    return-void
.end method

.method public hideImmediately()V
    .registers 3

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 269
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_b

    .line 270
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->hideWithAnimation(Z)V

    .line 273
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 119
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->left_indicator:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLeftIndicator:Landroid/widget/ImageView;

    .line 120
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->right_indicator:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mRightIndicator:Landroid/widget/ImageView;

    .line 121
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->left_sr_indicator:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLeftSrIndicator:Landroid/widget/ImageView;

    .line 122
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->right_sr_indicator:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mRightSrIndicator:Landroid/widget/ImageView;

    .line 123
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->value_indicator:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mValueIndicator:Landroid/widget/TextView;

    .line 124
    return-void
.end method

.method public setMaxSrZoom(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "maxSrZoom"    # Ljava/lang/Integer;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxSrZoom:Ljava/lang/Integer;

    .line 158
    return-void
.end method

.method public setMaxZoom(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "maxZoom"    # Ljava/lang/Integer;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxZoom:Ljava/lang/Integer;

    .line 140
    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 4
    .param p1, "orient"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mValueIndicator:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 233
    return-void
.end method

.method public setZoomRatios(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mZoomRatios:Ljava/util/List;

    .line 149
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 237
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_b

    .line 238
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 240
    :cond_b
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->showWithAnimation(Z)V

    .line 241
    return-void
.end method

.method public showImmediately()V
    .registers 3

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 248
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_b

    .line 249
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->showWithAnimation(Z)V

    .line 252
    return-void
.end method

.method public updateZoombarType(Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;)V
    .registers 2
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mCurrentType:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    .line 131
    return-void
.end method

.method public zoom(I)I
    .registers 21
    .param p1, "current"    # I

    .prologue
    .line 175
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->validateZoomParameters(I)Z

    move-result v12

    if-nez v12, :cond_c

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->hideImmediately()V

    move/from16 v1, p1

    .line 228
    .end local p1    # "current":I
    .local v1, "current":I
    :goto_b
    return v1

    .line 180
    .end local v1    # "current":I
    .restart local p1    # "current":I
    :cond_c
    if-gez p1, :cond_10

    .line 181
    const/16 p1, 0x0

    .line 183
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxZoom:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move/from16 v0, p1

    if-le v0, v12, :cond_24

    .line 184
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxZoom:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 187
    :cond_24
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mCurrentType:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    sget-object v13, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;->PARTIAL_SUPER_RESOLUTION:Lcom/sonyericsson/cameracommon/zoombar/Zoombar$Type;

    if-ne v12, v13, :cond_147

    const/4 v3, 0x1

    .line 188
    .local v3, "isSuperResolutionEnabled":Z
    :goto_2d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mZoomRatios:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 190
    .local v2, "currentZoomRatio":Ljava/lang/Integer;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 192
    .local v7, "res":Landroid/content/res/Resources;
    sget v12, Lcom/sonyericsson/cameracommon/R$dimen;->max_zoom_indicator_width:I

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v4, v12

    .line 193
    .local v4, "maxWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLeftIndicator:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 194
    .local v5, "minWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLeftSrIndicator:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 196
    .local v11, "widthSrIndicator":I
    sub-int v12, v4, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxZoom:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sub-int v13, v13, p1

    mul-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxZoom:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    div-int/2addr v12, v13

    add-int v6, v12, v5

    .line 197
    .local v6, "position":I
    const/4 v8, 0x0

    .line 198
    .local v8, "srPosition":I
    if-eqz v3, :cond_97

    .line 199
    sub-int v12, v4, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxZoom:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxSrZoom:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int/2addr v13, v14

    mul-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mMaxZoom:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    div-int/2addr v12, v13

    add-int/2addr v12, v5

    sub-int v8, v12, v11

    .line 202
    :cond_97
    if-eqz v3, :cond_14a

    const/4 v9, 0x0

    .line 203
    .local v9, "srVisibility":I
    :goto_9a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    const-string v13, "%.1f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 204
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    .line 203
    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 206
    .local v10, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLeftIndicator:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iput v6, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mRightIndicator:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iput v6, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLeftSrIndicator:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mRightSrIndicator:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 210
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mValueIndicator:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLeftIndicator:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->requestLayout()V

    .line 213
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mRightIndicator:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->requestLayout()V

    .line 214
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLeftSrIndicator:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->requestLayout()V

    .line 215
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mRightSrIndicator:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->requestLayout()V

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mLeftSrIndicator:Landroid/widget/ImageView;

    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->mRightSrIndicator:Landroid/widget/ImageView;

    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "%.1f"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 227
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42c80000    # 100.0f

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    .line 226
    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v12, v13}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomRatio(F)V

    move/from16 v1, p1

    .line 228
    .end local p1    # "current":I
    .restart local v1    # "current":I
    goto/16 :goto_b

    .line 187
    .end local v1    # "current":I
    .end local v2    # "currentZoomRatio":Ljava/lang/Integer;
    .end local v3    # "isSuperResolutionEnabled":Z
    .end local v4    # "maxWidth":I
    .end local v5    # "minWidth":I
    .end local v6    # "position":I
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v8    # "srPosition":I
    .end local v9    # "srVisibility":I
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "widthSrIndicator":I
    .restart local p1    # "current":I
    :cond_147
    const/4 v3, 0x0

    goto/16 :goto_2d

    .line 202
    .restart local v2    # "currentZoomRatio":Ljava/lang/Integer;
    .restart local v3    # "isSuperResolutionEnabled":Z
    .restart local v4    # "maxWidth":I
    .restart local v5    # "minWidth":I
    .restart local v6    # "position":I
    .restart local v7    # "res":Landroid/content/res/Resources;
    .restart local v8    # "srPosition":I
    .restart local v11    # "widthSrIndicator":I
    :cond_14a
    const/4 v9, 0x4

    goto/16 :goto_9a
.end method
