.class public Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;
.super Ljava/lang/Object;
.source "SettingUiUtil.java"


# instance fields
.field private final mMenuShortcutTag:Ljava/lang/Object;

.field private final mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;Ljava/lang/Object;)V
    .registers 3
    .param p1, "ui"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;
    .param p2, "menuShortcutTag"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    .line 25
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mMenuShortcutTag:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mMenuShortcutTag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;)Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    return-object v0
.end method


# virtual methods
.method public openMenuDialogAndSelectItem(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;II)V
    .registers 10
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "selectItemData"    # Ljava/lang/Object;
    .param p3, "titleTextResource"    # I
    .param p4, "menuDialogRowCount"    # I

    .prologue
    .line 81
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mMenuShortcutTag:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->selectShortcut(Ljava/lang/Object;)V

    .line 83
    const/4 v2, 0x0

    .line 84
    .local v2, "selectItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_25

    .line 85
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    invoke-interface {v3, p2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->compareData(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 86
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "selectItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    check-cast v2, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 87
    .restart local v2    # "selectItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 92
    :cond_25
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mMenuShortcutTag:Ljava/lang/Object;

    invoke-virtual {v3, p1, p3, v4, p4}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;I)V

    .line 95
    if-eqz v2, :cond_3c

    .line 96
    move-object v1, v2

    .line 98
    .local v1, "requestToSelect":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil$2;

    invoke-direct {v4, p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil$2;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    .end local v1    # "requestToSelect":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_3c
    return-void

    .line 84
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public openMenuDialogAndSelectItem(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;I)V
    .registers 15
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "selectItemData"    # Ljava/lang/Object;
    .param p3, "tabs"    # [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .param p4, "selectedTab"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .param p5, "menuDialogRowCount"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mMenuShortcutTag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->selectShortcut(Ljava/lang/Object;)V

    .line 44
    const/4 v8, 0x0

    .line 45
    .local v8, "selectItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_9
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v0

    if-ge v6, v0, :cond_25

    .line 46
    invoke-virtual {p1, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    invoke-interface {v0, p2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->compareData(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 47
    invoke-virtual {p1, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "selectItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    check-cast v8, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 48
    .restart local v8    # "selectItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 53
    :cond_25
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mMenuShortcutTag:Ljava/lang/Object;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Ljava/lang/Object;I)V

    .line 56
    if-eqz v8, :cond_40

    .line 57
    move-object v7, v8

    .line 59
    .local v7, "requestToSelect":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil$1;

    invoke-direct {v1, p0, v7}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil$1;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    .end local v7    # "requestToSelect":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_40
    return-void

    .line 45
    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_9
.end method
