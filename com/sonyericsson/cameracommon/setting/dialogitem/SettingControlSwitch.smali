.class public Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;
.super Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
.source "SettingControlSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;,
        Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$SwitchOnCheckedChangeListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingControlSwitch"


# instance fields
.field private final mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;

.field private final mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 29
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$SwitchOnCheckedChangeListener;

    invoke-direct {v1, p0, v3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$SwitchOnCheckedChangeListener;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 68
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 71
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;

    .line 72
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;

    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->setting_item_control_switch:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;->mContainer:Landroid/view/View;

    .line 73
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;->mContainer:Landroid/view/View;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->switch_layout:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;

    iput-object v1, v2, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/ControlSwitch;

    .line 74
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mResources:Landroid/content/res/Resources;

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->getOnItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->getOffItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->updateContentDescription(Z)V

    return-void
.end method

.method private getOffItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .registers 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

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
    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    return-object v0
.end method

.method private updateContentDescription(Z)V
    .registers 6
    .param p1, "isChecked"    # Z

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mResources:Landroid/content/res/Resources;

    invoke-interface {v1, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "contentDescription":Ljava/lang/String;
    if-eqz p1, :cond_35

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->getOnItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mResources:Landroid/content/res/Resources;

    invoke-interface {v2, v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_2d
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 135
    return-void

    .line 130
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->getOffItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mResources:Landroid/content/res/Resources;

    invoke-interface {v2, v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public setUiOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/ControlSwitch;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->setUiOrientation(I)V

    .line 101
    return-void
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/ControlSwitch;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mResources:Landroid/content/res/Resources;

    invoke-interface {v1, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;->mContainer:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/ControlSwitch;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->setEnabled(Z)V

    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->getOnItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->updateContentDescription(Z)V

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/ControlSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/ControlSwitch;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->getOnItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/ControlSwitch;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    return-void
.end method
