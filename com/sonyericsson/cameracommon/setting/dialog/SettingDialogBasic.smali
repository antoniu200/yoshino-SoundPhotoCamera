.class public Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;
.super Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;
.source "SettingDialogBasic.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingDialogBasic"


# instance fields
.field private final ITEM_DIVIDER_HEIGHT:I

.field private final TITLE_HEIGHT:I

.field protected mGridView:Landroid/widget/GridView;

.field private mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

.field private mSelectedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget v0, Lcom/sonyericsson/cameracommon/R$dimen;->title_text_height:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getPixel(I)I

    move-result v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->divider_height:I

    .line 36
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getPixel(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->TITLE_HEIGHT:I

    .line 38
    sget v0, Lcom/sonyericsson/cameracommon/R$dimen;->divider_height:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getPixel(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->ITEM_DIVIDER_HEIGHT:I

    .line 42
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mSelectedView:Landroid/view/View;

    return-object p1
.end method

.method private convertRectInLandscape(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 270
    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_26

    .line 271
    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 272
    .local v2, "x":I
    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 273
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 274
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 275
    .local v0, "height":I
    add-int v4, v2, v1

    add-int v5, v3, v0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 277
    .end local v0    # "height":I
    .end local v1    # "width":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_26
    return-void
.end method

.method private getItemNum()I
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method private getPixel(I)I
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getSelectorPadding()I
    .registers 4

    .prologue
    .line 221
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 222
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 223
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 224
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    .line 227
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private getTitleHeight()I
    .registers 3

    .prologue
    .line 136
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->setting_title_layout:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "titleView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f

    .line 138
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->TITLE_HEIGHT:I

    .line 140
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private isVisibleTitle()Z
    .registers 2

    .prologue
    .line 128
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->setting_title_layout:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public computeHeight(I)I
    .registers 8
    .param p1, "numColumn"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 151
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getSelectorPadding()I

    move-result v1

    .line 152
    .local v1, "selectorPadding":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    .local v0, "ctx":Landroid/content/Context;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3e

    .line 156
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getItemNum()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getItemHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 157
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getItemNum()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->ITEM_DIVIDER_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getTitleHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 159
    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    int-to-float v3, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 165
    :goto_3d
    return v2

    .line 162
    :cond_3e
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getItemNum()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getItemHeight(Landroid/content/Context;)I

    move-result v3

    mul-int/2addr v2, v3

    .line 163
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getItemNum()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->ITEM_DIVIDER_HEIGHT:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 164
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getTitleHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 165
    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    goto :goto_3d
.end method

.method public computeMaxHeight(I)I
    .registers 6
    .param p1, "numRows"    # I

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getSelectorPadding()I

    move-result v0

    .line 173
    .local v0, "selectorPadding":I
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getItemHeight(Landroid/content/Context;)I

    move-result v1

    mul-int/2addr v1, p1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 175
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 176
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->ITEM_DIVIDER_HEIGHT:I

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public computeWidth(I)I
    .registers 4
    .param p1, "numColumn"    # I

    .prologue
    .line 187
    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    .line 188
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_dialog_shortcut_2_column_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 191
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_dialog_shortcut_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_d
.end method

.method public getAdapter()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    return-object v0
.end method

.method public getNumRows(I)I
    .registers 6
    .param p1, "screenHeight"    # I

    .prologue
    .line 213
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 214
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    .line 215
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getTitleHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 216
    .local v0, "contentBodyHeight":I
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->ITEM_DIVIDER_HEIGHT:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 217
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getItemHeight(Landroid/content/Context;)I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->ITEM_DIVIDER_HEIGHT:I

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    return v1
.end method

.method public getSelectedItemRect(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 262
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->convertRectInLandscape(Landroid/graphics/Rect;)V

    .line 263
    const/4 v0, 0x1

    .line 266
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 50
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->onFinishInflate()V

    .line 51
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->setting_gridview:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    .line 52
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->isFocusable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 53
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->isFocusableInTouchMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 55
    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_dialog_scroll_fading_edge_length:I

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getPixel(I)I

    move-result v0

    .line 56
    .local v0, "fadingEdgeLength":I
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setFadingEdgeLength(I)V

    .line 57
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 58
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 59
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    new-instance v2, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic$1;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    return-void
.end method

.method public setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .registers 4
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    if-eqz v0, :cond_11

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getItemHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->setItemHeight(I)V

    .line 91
    :cond_11
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->isVisibleTitle()Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->setRoundTopItemBackground(Z)V

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2f

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 97
    :cond_2f
    return-void

    .line 91
    :cond_30
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public setNumColumns(I)V
    .registers 3
    .param p1, "numColumns"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 254
    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 5
    .param p1, "orientation"    # I

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->requestLayout()V

    .line 237
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->setSensorOrientation(I)V

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 245
    return-void
.end method

.method public setSettingDialogParams(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;)V
    .registers 8
    .param p1, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, "ctx":Landroid/content/Context;
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 73
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->background:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 74
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getBackgroundId()I

    move-result v2

    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->container:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 76
    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 77
    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 78
    invoke-virtual {v4, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 79
    invoke-virtual {v5, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v5

    .line 75
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 80
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    if-eqz v1, :cond_51

    .line 81
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 82
    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getItemHeight(Landroid/content/Context;)I

    move-result v2

    .line 81
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->setItemHeight(I)V

    .line 84
    :cond_51
    return-void
.end method

.method public setTitle(I)V
    .registers 7
    .param p1, "textId"    # I

    .prologue
    const/4 v4, 0x0

    .line 112
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->setting_title:I

    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 113
    .local v2, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 116
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->setting_title_layout:I

    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, "title":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 122
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    if-eqz v0, :cond_29

    .line 123
    invoke-virtual {v0, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->setRoundTopItemBackground(Z)V

    .line 125
    :cond_29
    return-void
.end method
