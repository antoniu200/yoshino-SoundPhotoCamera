.class public Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;
.super Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
.source "SettingCategorySwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnClickListener;,
        Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;,
        Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnCheckedChangeListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingCategorySwitch"


# instance fields
.field private final mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

.field private final mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 29
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnCheckedChangeListener;

    invoke-direct {v1, p0, v4}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnCheckedChangeListener;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 66
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 69
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    invoke-direct {v1, v4}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    .line 70
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->setting_item_category_switch:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mContainer:Landroid/view/View;

    .line 71
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->setting_divider:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mDivider:Landroid/view/View;

    .line 72
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->switch_layout:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    .line 73
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mContainer:Landroid/view/View;

    new-instance v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnClickListener;

    invoke-direct {v2, p0, v4}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnClickListener;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getOnItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getOffItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;)Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    return-object v0
.end method

.method private getOffItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .registers 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    return-object v0
.end method

.method private getOnItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .registers 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    return-object v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mContainer:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setEnabled(Z)V

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getOnItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setChecked(Z)V

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->changeDrawableState(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mDivider:Landroid/view/View;

    .line 97
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->dividerHorizontal(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->apply()V

    .line 99
    return-void
.end method
