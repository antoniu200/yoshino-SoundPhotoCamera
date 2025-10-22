.class public Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
.super Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;
.source "SettingTabDialogBasic.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingTabDialogBasic"


# instance fields
.field protected mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

.field protected mGridView:Landroid/widget/GridView;

.field private mItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

.field private mNumberOfTabs:I

.field private mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

.field private final mTabBodyAdapterObserver:Landroid/database/DataSetObserver;

.field private mTabs:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mNumberOfTabs:I

    .line 127
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$1;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mTabBodyAdapterObserver:Landroid/database/DataSetObserver;

    .line 191
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$2;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->registerOnItemSelectedListener()V

    return-void
.end method

.method private getPixel(I)I
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private registerOnItemSelectedListener()V
    .registers 4

    .prologue
    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    invoke-interface {v1, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setOnSelectedListener(Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 144
    :cond_19
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    return-object v0
.end method

.method public getSelectedItemRect(Landroid/graphics/Rect;)Z
    .registers 9
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_4e

    .line 177
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 178
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;

    if-eqz v3, :cond_4b

    .line 179
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;

    .line 180
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 181
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 182
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getTop()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 183
    const/4 v3, 0x1

    .line 188
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
    .end local v2    # "v":Landroid/view/View;
    :goto_4a
    return v3

    .line 176
    .restart local v2    # "v":Landroid/view/View;
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    .end local v2    # "v":Landroid/view/View;
    :cond_4e
    const/4 v3, 0x0

    goto :goto_4a
.end method

.method public getSelectedTab()Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mTabs:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->getSelected()Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    move-result-object v0

    return-object v0
.end method

.method public numberOfTabs()I
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mNumberOfTabs:I

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->onFinishInflate()V

    .line 50
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->setting_gridview:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    .line 51
    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_dialog_scroll_fading_edge_length:I

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getPixel(I)I

    move-result v0

    .line 52
    .local v0, "fadingEdgeLength":I
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setFadingEdgeLength(I)V

    .line 53
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 54
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 55
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->tabs:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mTabs:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    .line 56
    return-void
.end method

.method public setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .registers 4
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    if-eqz v0, :cond_11

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getItemHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->setItemHeight(I)V

    .line 79
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->setRoundTopItemBackground(Z)V

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_29

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 85
    :cond_29
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->invalidate()V

    .line 87
    return-void
.end method

.method public setNumColumns(I)V
    .registers 3
    .param p1, "numColumns"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 169
    return-void
.end method

.method public setNumberOfTabs(I)V
    .registers 2
    .param p1, "numberOfTabs"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mNumberOfTabs:I

    .line 214
    return-void
.end method

.method public setOnSelectedTabListener(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mTabs:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->setOnSelectedListener(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;)V

    .line 72
    return-void
.end method

.method public setSelectedTab(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V
    .registers 3
    .param p1, "tab"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mTabs:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->setSelected(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 64
    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 5
    .param p1, "orientation"    # I

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->requestLayout()V

    .line 152
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->setSensorOrientation(I)V

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 160
    return-void
.end method

.method public setSettingDialogParams(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;)V
    .registers 8
    .param p1, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    .local v0, "ctx":Landroid/content/Context;
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 92
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->background:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 93
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getBackgroundId()I

    move-result v2

    .line 92
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->container:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 95
    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 96
    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 97
    invoke-virtual {v4, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 98
    invoke-virtual {v5, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getPadding(Landroid/content/Context;)I

    move-result v5

    .line 94
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    .line 100
    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    if-eqz v1, :cond_5d

    .line 101
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    .line 102
    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->getItemHeight(Landroid/content/Context;)I

    move-result v2

    .line 101
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->setItemHeight(I)V

    .line 104
    :cond_5d
    return-void
.end method

.method public varargs setTabs([Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V
    .registers 3
    .param p1, "tabs"    # [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mTabs:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs;->setTabs([Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 60
    return-void
.end method

.method public setTitle(I)V
    .registers 5
    .param p1, "textId"    # I

    .prologue
    .line 112
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->setting_title:I

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    .local v1, "titleTextView":Landroid/widget/TextView;
    if-nez v1, :cond_b

    .line 124
    :goto_a
    return-void

    .line 117
    :cond_b
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->setting_title_layout:I

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "title":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a
.end method
