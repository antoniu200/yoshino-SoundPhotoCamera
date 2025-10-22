.class public Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "FadingEdgeFrameLayout.java"


# static fields
.field private static final FADE_GRADIENT_COLORS:[I

.field private static final FADE_GRADIENT_POSITIONS:[F


# instance fields
.field private mFadingEndPosition:I

.field private mFadingStartPosition:I

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->FADE_GRADIENT_COLORS:[I

    .line 39
    new-array v0, v1, [F

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->FADE_GRADIENT_POSITIONS:[F

    return-void

    .line 35
    :array_10
    .array-data 4
        -0x1000000
        0x0
        0x0
    .end array-data

    .line 39
    :array_1a
    .array-data 4
        0x0
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mMatrix:Landroid/graphics/Matrix;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 32
    iput v1, p0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mFadingStartPosition:I

    .line 33
    iput v1, p0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mFadingEndPosition:I

    .line 96
    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->setWillNotDraw(Z)V

    .line 97
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 45
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mFadingEndPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mFadingStartPosition:I

    sub-int v10, v2, v3

    .line 47
    .local v10, "fadingLength":I
    if-lez v10, :cond_120

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->getRight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->getLeft()I

    move-result v3

    sub-int v16, v2, v3

    .line 49
    .local v16, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->getBottom()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->getTop()I

    move-result v3

    sub-int v11, v2, v3

    .line 50
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->getScrollX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->getPaddingLeft()I

    move-result v3

    add-int v12, v2, v3

    .line 51
    .local v12, "left":I
    add-int v2, v12, v16

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->getPaddingLeft()I

    move-result v3

    sub-int v13, v2, v3

    .line 52
    .local v13, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->getScrollY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->getPaddingTop()I

    move-result v3

    add-int v15, v2, v3

    .line 53
    .local v15, "top":I
    add-int v2, v15, v11

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->getPaddingTop()I

    move-result v3

    sub-int v9, v2, v3

    .line 55
    .local v9, "bottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v14

    .line 56
    .local v14, "saveCount":I
    int-to-float v2, v12

    int-to-float v3, v15

    int-to-float v4, v13

    int-to-float v5, v9

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 58
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 61
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    sget-object v6, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->FADE_GRADIENT_COLORS:[I

    sget-object v7, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->FADE_GRADIENT_POSITIONS:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 65
    .local v1, "shader":Landroid/graphics/Shader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 68
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-int/lit8 v4, v11, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mFadingEndPosition:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v3, v12

    int-to-float v4, v15

    int-to-float v5, v11

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mFadingEndPosition:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 71
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v16

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    new-instance v1, Landroid/graphics/LinearGradient;

    .end local v1    # "shader":Landroid/graphics/Shader;
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->FADE_GRADIENT_COLORS:[I

    sget-object v7, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->FADE_GRADIENT_POSITIONS:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 79
    .restart local v1    # "shader":Landroid/graphics/Shader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v10

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v3, v12

    div-int/lit8 v4, v11, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mFadingStartPosition:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 84
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 85
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v16

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 88
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 92
    .end local v1    # "shader":Landroid/graphics/Shader;
    .end local v9    # "bottom":I
    .end local v11    # "height":I
    .end local v12    # "left":I
    .end local v13    # "right":I
    .end local v14    # "saveCount":I
    .end local v15    # "top":I
    .end local v16    # "width":I
    :goto_11f
    return-void

    .line 90
    :cond_120
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_11f
.end method

.method public getFadingEndPosition()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mFadingEndPosition:I

    return v0
.end method

.method public getFadingStartPosition()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mFadingStartPosition:I

    return v0
.end method

.method public setFadingEndPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mFadingEndPosition:I

    .line 121
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->postInvalidate()V

    .line 122
    return-void
.end method

.method public setFadingStartPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->mFadingStartPosition:I

    .line 105
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/extendedview/FadingEdgeFrameLayout;->postInvalidate()V

    .line 106
    return-void
.end method
