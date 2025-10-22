.class public Lcom/sonyericsson/cameracommon/focusview/SmileScore;
.super Landroid/widget/ImageView;
.source "SmileScore.java"


# static fields
.field private static final GAUGE_BOTTOM_A:I = 0xb2

.field private static final GAUGE_BOTTOM_B:I = 0xe5

.field private static final GAUGE_BOTTOM_G:I = 0xb5

.field private static final GAUGE_BOTTOM_R:I = 0x33

.field private static final GAUGE_TOP_A:I = 0xb2

.field private static final GAUGE_TOP_B:I = 0xcc

.field private static final GAUGE_TOP_G:I = 0x99

.field private static final GAUGE_TOP_R:I = 0x0

.field public static final SMILE_MAX:I = 0x64

.field public static final SMILE_MIN:I = 0x0

.field private static final SMILE_UNIT:I = 0x64

.field public static final TAG:Ljava/lang/String; = "SmileScore"

.field private static final sColorPaints:[Landroid/graphics/Paint;


# instance fields
.field private mFrameHeight:I

.field private mIndicatorStep:F

.field private mIndicatorWidth:I

.field private mSmileScore:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const/16 v13, 0x64

    const/4 v12, 0x0

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "bitA":F
    const v3, 0x3f028f5c    # 0.51f

    .line 58
    .local v3, "bitR":F
    const v2, 0x3e8f5c29    # 0.28f

    .line 59
    .local v2, "bitG":F
    const/high16 v1, 0x3e800000    # 0.25f

    .line 61
    .local v1, "bitB":F
    new-array v6, v13, [Landroid/graphics/Paint;

    sput-object v6, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    .line 62
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    if-ge v4, v13, :cond_40

    .line 63
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 64
    .local v5, "paint":Landroid/graphics/Paint;
    const/high16 v6, 0x43320000    # 178.0f

    int-to-float v7, v4

    mul-float/2addr v7, v12

    add-float/2addr v6, v7

    float-to-int v6, v6

    const v7, 0x3f028f5c    # 0.51f

    int-to-float v8, v4

    mul-float/2addr v7, v8

    add-float/2addr v7, v12

    float-to-int v7, v7

    const/high16 v8, 0x43190000    # 153.0f

    const v9, 0x3e8f5c29    # 0.28f

    int-to-float v10, v4

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    const/high16 v9, 0x434c0000    # 204.0f

    const/high16 v10, 0x3e800000    # 0.25f

    int-to-float v11, v4

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 69
    sget-object v6, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    aput-object v5, v6, v4

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 71
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    return-void
.end method

.method private getSmileScoreRect(FFFF)Landroid/graphics/RectF;
    .registers 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 210
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 212
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->isForLandscape()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 213
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 229
    :cond_e
    :goto_e
    return-object v0

    .line 215
    :cond_f
    invoke-virtual {v0, p2, p1, p4, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 218
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1e

    .line 219
    iput p4, v0, Landroid/graphics/RectF;->left:F

    .line 220
    iput p2, v0, Landroid/graphics/RectF;->right:F

    .line 223
    :cond_1e
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e

    .line 224
    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 225
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_e
.end method

.method private isLayoutOrientationLandscape()Z
    .registers 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isLayoutOrientationLandscape()Z

    move-result v0

    return v0
.end method

.method public static final preload()V
    .registers 0

    .prologue
    .line 32
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v11, 0x64

    .line 141
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_padding_left:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 143
    .local v4, "paddingLeft":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_frame_padding_left:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 145
    .local v5, "paddingLeft_frame":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_frame_padding_bottom:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 147
    .local v3, "paddingBottom_frame":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_frame_padding_top:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 150
    .local v6, "paddingTop_frame":I
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->isLayoutOrientationLandscape()Z

    move-result v9

    if-nez v9, :cond_68

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->isForLandscape()Z

    move-result v9

    if-nez v9, :cond_68

    .line 151
    add-int v9, v4, v5

    int-to-float v2, v9

    .line 152
    .local v2, "left":F
    int-to-float v8, v6

    .line 153
    .local v8, "top":F
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorWidth:I

    int-to-float v9, v9

    add-float v7, v2, v9

    .line 154
    .local v7, "right":F
    const/4 v0, 0x0

    .line 156
    .local v0, "bottom":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    if-ge v1, v11, :cond_47

    .line 157
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    if-ge v9, v1, :cond_4b

    .line 202
    :cond_47
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 204
    return-void

    .line 162
    :cond_4b
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    add-float v0, v8, v9

    .line 163
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    sub-int/2addr v9, v6

    int-to-float v9, v9

    cmpg-float v9, v0, v9

    if-gez v9, :cond_62

    .line 165
    invoke-direct {p0, v2, v8, v7, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getSmileScoreRect(FFFF)Landroid/graphics/RectF;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    aget-object v10, v10, v1

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 173
    :cond_62
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    add-float/2addr v8, v9

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 177
    .end local v0    # "bottom":F
    .end local v1    # "i":I
    .end local v2    # "left":F
    .end local v7    # "right":F
    .end local v8    # "top":F
    :cond_68
    add-int v9, v4, v5

    int-to-float v2, v9

    .line 178
    .restart local v2    # "left":F
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    sub-int/2addr v9, v3

    int-to-float v8, v9

    .line 179
    .restart local v8    # "top":F
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorWidth:I

    int-to-float v9, v9

    add-float v7, v2, v9

    .line 180
    .restart local v7    # "right":F
    const/4 v0, 0x0

    .line 182
    .restart local v0    # "bottom":F
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_76
    if-ge v1, v11, :cond_47

    .line 183
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    if-lt v9, v1, :cond_47

    .line 188
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    add-float v0, v8, v9

    .line 189
    int-to-float v9, v3

    cmpl-float v9, v8, v9

    if-lez v9, :cond_90

    .line 191
    invoke-direct {p0, v2, v8, v7, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getSmileScoreRect(FFFF)Landroid/graphics/RectF;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    aget-object v10, v10, v1

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 199
    :cond_90
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    sub-float/2addr v8, v9

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_76
.end method

.method protected isForLandscape()Z
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 128
    return-void
.end method

.method public onFinishInflate()V
    .registers 3

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_frame_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    .line 117
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_indicator_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorWidth:I

    .line 119
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    .line 122
    return-void
.end method

.method public setSmileScore(I)V
    .registers 2
    .param p1, "score"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    .line 133
    return-void
.end method
