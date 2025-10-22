.class public Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;
.super Landroid/widget/RelativeLayout;
.source "CapturingModeButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final INVALID_ID:I = -0x1

.field private static final PRESSED_FILTER:I

.field private static final ROTATE_DEGREE:F = -90.0f

.field public static final TAG:Ljava/lang/String; = "CapturingModeButton"


# instance fields
.field private mAttributes:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

.field private mBackgroundView:Landroid/widget/ImageView;

.field protected mHasInvalidResources:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mListener:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;

.field private mSensorOrientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    sget v0, Lcom/sonyericsson/cameracommon/R$color;->pressed_filter:I

    sput v0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->PRESSED_FILTER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mSensorOrientation:I

    .line 66
    return-void
.end method

.method private createBackground()Landroid/widget/ImageView;
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 93
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, "backgroundView":Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 95
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 96
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->addView(Landroid/view/View;)V

    .line 100
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    return-object v0
.end method

.method private createIcon()Landroid/widget/ImageView;
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 108
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 110
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 111
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->addView(Landroid/view/View;)V

    .line 115
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 116
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 117
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 118
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 119
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    return-object v0
.end method

.method private getIconBitmapId()I
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mAttributes:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    if-nez v0, :cond_6

    .line 166
    const/4 v0, -0x1

    .line 169
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mAttributes:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;->getIconId()I

    move-result v0

    goto :goto_5
.end method

.method private updateBackground()V
    .registers 3

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "visible":I
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mAttributes:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    if-nez v1, :cond_6

    .line 129
    const/4 v0, 0x4

    .line 132
    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mBackgroundView:Landroid/widget/ImageView;

    if-eqz v1, :cond_f

    .line 133
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    :cond_f
    return-void
.end method

.method private updateIcon()V
    .registers 6

    .prologue
    .line 138
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    if-nez v3, :cond_5

    .line 159
    :goto_4
    return-void

    .line 143
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mAttributes:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    if-nez v3, :cond_10

    .line 144
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 148
    :cond_10
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->getIconBitmapId()I

    move-result v1

    .line 149
    .local v1, "icon":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "description":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mAttributes:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;->getTextId()I

    move-result v2

    .line 154
    .local v2, "textId":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_31

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_31
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private updateLayout()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 174
    :try_start_2
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->updateBackground()V

    .line 175
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->updateIcon()V

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mHasInvalidResources:Z
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_b} :catch_28
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_b} :catch_2c

    .line 191
    :goto_b
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mHasInvalidResources:Z

    if-eqz v1, :cond_21

    .line 192
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_18

    .line 193
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    :cond_18
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mBackgroundView:Landroid/widget/ImageView;

    if-eqz v1, :cond_21

    .line 196
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    :cond_21
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->requestLayout()V

    .line 201
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->invalidate()V

    .line 202
    return-void

    .line 178
    :catch_28
    move-exception v0

    .line 182
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mHasInvalidResources:Z

    goto :goto_b

    .line 184
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2c
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/RuntimeException;
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mHasInvalidResources:Z

    goto :goto_b
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 216
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mSensorOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 217
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 218
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 220
    .local v0, "height":F
    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 223
    .end local v0    # "height":F
    .end local v1    # "width":F
    :cond_1a
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 224
    return-void
.end method

.method public getCurrentCapturingMode()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mAttributes:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;->onClickCapturingModeButton(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;)V

    .line 235
    :cond_d
    return-void
.end method

.method public setCurrentCapturingMode(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;)V
    .registers 2
    .param p1, "attributes"    # Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mAttributes:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    .line 88
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->updateLayout()V

    .line 89
    return-void
.end method

.method public setOnCapturingModeButtonListener(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mListener:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;

    .line 228
    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mSensorOrientation:I

    .line 210
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->updateLayout()V

    .line 211
    return-void
.end method

.method public setup(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setVisibility(I)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setClickable(Z)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setFocusable(Z)V

    .line 72
    invoke-virtual {p0, p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setOnCapturingModeButtonListener(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;)V

    .line 75
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->createBackground()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mBackgroundView:Landroid/widget/ImageView;

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->createIcon()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mIconView:Landroid/widget/ImageView;

    .line 78
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->mHasInvalidResources:Z

    .line 80
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->updateLayout()V

    .line 81
    return-void
.end method
