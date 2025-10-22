.class public Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;
.super Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
.source "SettingValueButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingValueButton"


# instance fields
.field private final mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 34
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$1;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 57
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 60
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    .line 61
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->setting_item_value_button:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mContainer:Landroid/view/View;

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->background:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mBackground:Landroid/view/View;

    .line 63
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->setting_divider:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mDivider:Landroid/view/View;

    .line 64
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->title:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mText:Landroid/widget/TextView;

    .line 65
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .registers 9
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .prologue
    const/4 v5, 0x0

    .line 69
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 71
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, "textColor":I
    const/16 v3, 0x17

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v3, v4, :cond_bf

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 75
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sonyericsson/cameracommon/R$color;->default_text_col:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 82
    :goto_37
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mBackground:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 85
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mBackground:Landroid/view/View;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 89
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 92
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p2, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->height:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 95
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mContainer:Landroid/view/View;

    .line 96
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isMirroringRequired(Landroid/content/Context;)Z

    move-result v0

    .line 97
    .local v0, "isMirrored":Z
    if-eqz v0, :cond_e0

    .line 98
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mText:Landroid/widget/TextView;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    :goto_9b
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->changeDrawableState(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mBackground:Landroid/view/View;

    .line 104
    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->background(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mDivider:Landroid/view/View;

    .line 105
    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->dividerHorizontal(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->apply()V

    .line 107
    return-void

    .line 76
    .end local v0    # "isMirrored":Z
    :cond_b3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sonyericsson/cameracommon/R$color;->grayout_text_col:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    goto/16 :goto_37

    .line 78
    :cond_bf
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 79
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sonyericsson/cameracommon/R$color;->default_text_col:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 80
    :goto_d3
    goto/16 :goto_37

    :cond_d5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sonyericsson/cameracommon/R$color;->grayout_text_col:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_d3

    .line 100
    .restart local v0    # "isMirrored":Z
    :cond_e0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton$ViewHolder;->mText:Landroid/widget/TextView;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_9b
.end method
