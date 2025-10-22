.class public Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;
.super Ljava/lang/Object;
.source "SettingDialogItemFactory.java"


# static fields
.field public static final BUTTON:I = 0x1

.field public static final CATEGORY_BUTTON:I = 0x3

.field public static final CATEGORY_SWITCH:I = 0x4

.field public static final CONTROL_SWITCH:I = 0x8

.field public static final END_OF_TYPE_LIST:I = 0x9

.field public static final ICON:I = 0x0

.field public static final MENU:I = 0x6

.field public static final SLIDER:I = 0x5

.field public static final VALUE_BUTTON:I = 0x2

.field public static final VERTICAL_ICON_LIST:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;Landroid/view/ViewGroup;)Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItem;
    .registers 7
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    .local v0, "context":Landroid/content/Context;
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 36
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 60
    :goto_10
    return-object v1

    .line 38
    :cond_11
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    if-nez v1, :cond_1d

    .line 39
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_10

    .line 41
    :cond_1d
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    .line 42
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingValueButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_10

    .line 44
    :cond_2a
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_37

    .line 45
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_10

    .line 47
    :cond_37
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_44

    .line 48
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_10

    .line 50
    :cond_44
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_51

    .line 51
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingEvSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_10

    .line 53
    :cond_51
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5e

    .line 54
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIconList;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_10

    .line 56
    :cond_5e
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6b

    .line 57
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingIcon;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_10

    .line 59
    :cond_6b
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_79

    .line 60
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;

    invoke-direct {v1, v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_10

    .line 63
    :cond_79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The specified type is unknown. type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 64
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDialogItemTypeCount()I
    .registers 2

    .prologue
    .line 18
    const/16 v0, 0x9

    return v0
.end method
