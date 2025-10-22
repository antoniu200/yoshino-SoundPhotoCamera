.class public Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final INVALID_VALUE:I = -0x1

.field public static final TAG:Ljava/lang/String; = "SettingAdapter"


# instance fields
.field private final mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

.field private mItemHeight:I

.field private mSetRoundBackgroundTop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialogItemFactory"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    .prologue
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "dialogItemFactory"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ">;",
            "Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;>;"
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 43
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    .line 44
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mSetRoundBackgroundTop:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mItemHeight:I

    .line 46
    return-void
.end method

.method private generateItemLayoutParams(Landroid/view/ViewGroup;I)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;
    .registers 15
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "itemPosition"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 202
    const/4 v6, 0x1

    .line 203
    .local v6, "columnCount":I
    instance-of v0, p1, Landroid/widget/GridView;

    if-eqz v0, :cond_d

    .line 204
    check-cast p1, Landroid/widget/GridView;

    .end local p1    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v6

    .line 207
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v0

    div-int/2addr v0, v6

    add-int/lit8 v8, v0, -0x1

    .line 208
    .local v8, "lastRow":I
    div-int v10, p2, v6

    .line 209
    .local v10, "thisRow":I
    add-int/lit8 v7, v6, -0x1

    .line 210
    .local v7, "lastColumn":I
    rem-int v9, p2, v6

    .line 212
    .local v9, "thisColumn":I
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mItemHeight:I

    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mSetRoundBackgroundTop:Z

    if-eqz v2, :cond_31

    if-nez v10, :cond_31

    move v2, v5

    :goto_25
    if-ne v10, v8, :cond_33

    move v3, v5

    :goto_28
    if-nez v9, :cond_35

    move v4, v5

    :goto_2b
    if-ne v9, v7, :cond_37

    :goto_2d
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;-><init>(IZZZZ)V

    return-object v0

    :cond_31
    move v2, v11

    goto :goto_25

    :cond_33
    move v3, v11

    goto :goto_28

    :cond_35
    move v4, v11

    goto :goto_2b

    :cond_37
    move v5, v11

    goto :goto_2d
.end method


# virtual methods
.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    if-eqz v1, :cond_f

    .line 190
    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    .line 192
    :goto_e
    return v1

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_e
.end method

.method public getSelected()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .registers 4

    .prologue
    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 108
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 109
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 113
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :goto_13
    return-object v1

    .line 107
    .restart local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_17
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getSelectedPosition()I
    .registers 4

    .prologue
    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 121
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 122
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 126
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :goto_13
    return v0

    .line 120
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 126
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 158
    .local v0, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-direct {p0, p3, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->generateItemLayoutParams(Landroid/view/ViewGroup;I)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    move-result-object v2

    .line 161
    .local v2, "params":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;
    if-eqz p2, :cond_2b

    .line 163
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;

    if-eqz v3, :cond_2b

    .line 165
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;

    .line 167
    .local v1, "itemView":Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    if-eq v3, v0, :cond_23

    .line 170
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->setItem(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 172
    :cond_23
    invoke-virtual {v1, p3, v2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->update(Landroid/view/ViewGroup;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    .line 173
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->getView()Landroid/view/View;

    move-result-object v3

    .line 183
    :goto_2a
    return-object v3

    .line 179
    .end local v1    # "itemView":Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
    :cond_2b
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-virtual {v3, v0, p3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;->create(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;Landroid/view/ViewGroup;)Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;

    move-result-object v1

    .line 180
    .restart local v1    # "itemView":Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
    invoke-virtual {v1, p3, v2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->update(Landroid/view/ViewGroup;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    .line 181
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;->getView()Landroid/view/View;

    move-result-object v3

    goto :goto_2a
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;->getDialogItemTypeCount()I

    move-result v0

    return v0
.end method

.method public selectByData(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "itemData":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    .line 80
    .local v2, "target":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2d

    .line 81
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 82
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 83
    invoke-interface {v2, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->compareData(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 84
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 80
    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 86
    :cond_28
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_25

    .line 90
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_2d
    return-void
.end method

.method public selectByItem(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .registers 5
    .param p1, "target"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 93
    if-nez p1, :cond_3

    .line 104
    :cond_2
    return-void

    .line 96
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 97
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 98
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {p1, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->compareData(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 99
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 96
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 101
    :cond_1d
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_1a
.end method

.method public setItemHeight(I)V
    .registers 3
    .param p1, "height"    # I

    .prologue
    .line 61
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mItemHeight:I

    if-eq v0, p1, :cond_9

    .line 62
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mItemHeight:I

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    .line 65
    :cond_9
    return-void
.end method

.method public setRoundTopItemBackground(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mSetRoundBackgroundTop:Z

    if-eq v0, p1, :cond_9

    .line 72
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->mSetRoundBackgroundTop:Z

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    .line 75
    :cond_9
    return-void
.end method
