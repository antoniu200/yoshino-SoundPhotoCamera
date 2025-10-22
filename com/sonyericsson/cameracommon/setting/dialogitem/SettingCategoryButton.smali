.class public Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;
.super Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
.source "SettingCategoryButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingCategoryButton"


# instance fields
.field private final mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 31
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$1;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 63
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    .line 67
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->setting_item_category_button:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->background:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mBackground:Landroid/view/View;

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->setting_divider:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mDivider:Landroid/view/View;

    .line 70
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->category:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mCategory:Landroid/widget/TextView;

    .line 71
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->value:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    .line 72
    return-void
.end method

.method private getSelectedItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .registers 4

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 154
    .local v0, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 159
    .end local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :goto_24
    return-object v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .registers 13
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 79
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mCategory:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->getSelectedItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    .line 83
    .local v2, "selected":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    if-eqz v2, :cond_b4

    .line 85
    invoke-interface {v2, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getLongText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a8

    .line 86
    invoke-interface {v2, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getLongText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a8

    .line 87
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-interface {v2, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getLongText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_40
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :goto_47
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mBackground:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 118
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mBackground:Landroid/view/View;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const/4 v3, 0x0

    .line 123
    .local v3, "textColor":I
    const/16 v5, 0x17

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v5, v6, :cond_10e

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v5

    if-eqz v5, :cond_102

    .line 125
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$color;->default_text_col:I

    invoke-virtual {v5, v6, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 132
    :goto_73
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mCategory:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->changeDrawableState(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mBackground:Landroid/view/View;

    .line 139
    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->background(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mDivider:Landroid/view/View;

    .line 140
    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->dividerHorizontal(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v5

    .line 141
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->apply()V

    .line 142
    return-void

    .line 90
    .end local v3    # "textColor":I
    :cond_a8
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-interface {v2, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_40

    .line 95
    :cond_b4
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    .line 96
    .local v0, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    instance-of v5, v0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;

    if-eqz v5, :cond_f9

    .line 97
    const/4 v4, 0x0

    .line 99
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getLongText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e9

    .line 100
    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getLongText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_e9

    .line 101
    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getLongText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .end local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :goto_d1
    if-eqz v4, :cond_f0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_f0

    .line 106
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_47

    .line 103
    .restart local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_e9
    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;

    .end local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getValueText()Ljava/lang/String;

    move-result-object v4

    goto :goto_d1

    .line 109
    :cond_f0
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_47

    .line 113
    .end local v4    # "value":Ljava/lang/String;
    .restart local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_f9
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$ViewHolder;->mValue:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_47

    .line 126
    .end local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .restart local v3    # "textColor":I
    :cond_102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$color;->grayout_text_col:I

    invoke-virtual {v5, v6, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    goto/16 :goto_73

    .line 128
    :cond_10e
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v5

    if-eqz v5, :cond_124

    .line 129
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$color;->default_text_col:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 130
    :goto_122
    goto/16 :goto_73

    :cond_124
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$color;->grayout_text_col:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_122
.end method
