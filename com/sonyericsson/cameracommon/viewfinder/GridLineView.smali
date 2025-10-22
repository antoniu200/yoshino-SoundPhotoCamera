.class public Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;
.super Landroid/view/View;
.source "GridLineView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GridLineView"


# instance fields
.field private mBottomHorizontalLinePositionY:F

.field private mIsGridLineEnabled:Z

.field private mLeftVerticalLinePositionX:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRightVerticalLinePositionX:F

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mTopHorizontalLinePositionY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    iput v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mSurfaceWidth:I

    .line 31
    iput v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mSurfaceHeight:I

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    .line 42
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mIsGridLineEnabled:Z

    .line 46
    const/16 v0, 0x17

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_38

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$color;->gridline_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    :goto_27
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->viewfinder_grid_line_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    return-void

    .line 49
    :cond_38
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$color;->gridline_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_27
.end method

.method private drawGridLine(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 84
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mLeftVerticalLinePositionX:F

    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mLeftVerticalLinePositionX:F

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mSurfaceHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 92
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mRightVerticalLinePositionX:F

    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mRightVerticalLinePositionX:F

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mSurfaceHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 100
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mTopHorizontalLinePositionY:F

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mSurfaceWidth:I

    int-to-float v4, v0

    iget v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mTopHorizontalLinePositionY:F

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 108
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mBottomHorizontalLinePositionY:F

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mSurfaceWidth:I

    int-to-float v4, v0

    iget v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mBottomHorizontalLinePositionY:F

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 114
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mIsGridLineEnabled:Z

    .line 149
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setVisibility(I)V

    .line 150
    return-void
.end method

.method public enable()V
    .registers 2

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mIsGridLineEnabled:Z

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setVisibility(I)V

    .line 141
    return-void
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setVisibility(I)V

    .line 132
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mIsGridLineEnabled:Z

    if-eqz v0, :cond_a

    .line 77
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->drawGridLine(Landroid/graphics/Canvas;)V

    .line 79
    :cond_a
    return-void
.end method

.method public setSurfaceSize(II)V
    .registers 6
    .param p1, "surfaceWidth"    # I
    .param p2, "surfaceHeight"    # I

    .prologue
    const/high16 v2, 0x40400000    # 3.0f

    .line 58
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mSurfaceWidth:I

    .line 59
    iput p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mSurfaceHeight:I

    .line 60
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mLeftVerticalLinePositionX:F

    .line 61
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mSurfaceWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mRightVerticalLinePositionX:F

    .line 62
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mTopHorizontalLinePositionY:F

    .line 63
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mSurfaceHeight:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mBottomHorizontalLinePositionY:F

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 66
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_2f

    .line 67
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 68
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->requestLayout()V

    .line 71
    :cond_2f
    return-void
.end method

.method public showIfEnabled()V
    .registers 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mIsGridLineEnabled:Z

    if-eqz v0, :cond_8

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setVisibility(I)V

    .line 124
    :cond_8
    return-void
.end method
