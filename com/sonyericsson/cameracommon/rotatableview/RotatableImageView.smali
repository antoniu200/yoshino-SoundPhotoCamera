.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;
.super Landroid/widget/ImageView;
.source "RotatableImageView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RotatableImageView"


# instance fields
.field private mFixRotation:I

.field private mHeight:I

.field private mPrepared:Z

.field private mSensorOrientation:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    .line 27
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 29
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 30
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 32
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    .line 36
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    .line 27
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 29
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 30
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 32
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    .line 41
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    .line 27
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 29
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 30
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 32
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    .line 46
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 47
    return-void
.end method


# virtual methods
.method public clearFixedRotate(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 170
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    .line 171
    return-void
.end method

.method public fixRotation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 165
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    .line 166
    return-void
.end method

.method protected isPrepared()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 73
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_17

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setWidthHeight(II)V

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    .line 78
    :cond_17
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    .line 147
    return-void
.end method

.method public setImageResource(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    .line 154
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    .line 161
    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    .line 88
    return-void
.end method

.method public setWidthHeight(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 57
    iput p2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    .line 59
    return-void
.end method

.method public update()V
    .registers 12

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 94
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->isPrepared()Z

    move-result v8

    if-nez v8, :cond_9

    .line 140
    :goto_8
    return-void

    .line 98
    :cond_9
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getWidth()I

    move-result v7

    .line 99
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getHeight()I

    move-result v2

    .line 100
    .local v2, "height":I
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 101
    .local v3, "matrix":Landroid/graphics/Matrix;
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    .line 103
    .local v4, "orientation":I
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    if-eqz v8, :cond_1e

    .line 104
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 108
    :cond_1e
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_43

    .line 109
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 110
    .local v6, "wScale":F
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v1, v8, v9

    .line 111
    .local v1, "hScale":F
    invoke-virtual {v3, v6, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 115
    .end local v1    # "hScale":F
    .end local v6    # "wScale":F
    :cond_43
    const/4 v8, 0x1

    if-ne v4, v8, :cond_72

    .line 116
    const/16 v0, -0x5a

    .line 119
    .local v0, "degrees":I
    int-to-float v8, v7

    neg-float v8, v8

    div-float/2addr v8, v10

    int-to-float v9, v2

    neg-float v9, v9

    div-float/2addr v9, v10

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 120
    int-to-float v8, v0

    invoke-virtual {v3, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 121
    int-to-float v8, v2

    div-float/2addr v8, v10

    int-to-float v9, v7

    div-float/2addr v9, v10

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 123
    iget v7, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 124
    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 131
    .end local v0    # "degrees":I
    :goto_60
    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 134
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 135
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 137
    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->requestLayout()V

    goto :goto_8

    .line 126
    .end local v5    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_72
    iget v7, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 127
    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    goto :goto_60
.end method
