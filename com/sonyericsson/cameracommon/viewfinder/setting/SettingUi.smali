.class public Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;
.super Ljava/lang/Object;
.source "SettingUi.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;
.implements Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;
.implements Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingUi"


# instance fields
.field protected final mCommonItemResolver:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;

.field protected final mContext:Landroid/content/Context;

.field protected final mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

.field private final mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private mMenuItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

.field private mSelectedTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

.field private mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

.field private final mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialogStack"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .param p3, "commonSettings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .param p4, "items"    # [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    const/4 v7, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    .line 68
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-direct {v0, p3}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;-><init>(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 70
    new-instance v6, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;

    invoke-direct {v6, p1, p3, p0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;)V

    .line 74
    .local v6, "commonSettingChanger":Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;

    new-instance v3, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;

    invoke-direct {v3, p1, p0, v6}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;)V

    new-instance v4, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v4}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;-><init>()V

    move-object v1, p1

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mCommonItemResolver:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;

    .line 79
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 80
    iput-object v7, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mMenuItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 81
    iput-object v7, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 82
    iput-object v7, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSelectedTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)V
    .registers 6
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "dialogStack"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .param p3, "items"    # [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    invoke-static {p3, p1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->getVisibleCommonKeys([Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/activity/BaseActivity;)[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)V

    .line 59
    return-void
.end method

.method private copy(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .registers 5
    .param p1, "to"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "from"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 269
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->clear()V

    .line 270
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 271
    invoke-virtual {p2, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 273
    :cond_14
    return-void
.end method

.method private static getVisibleCommonKeys([Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/activity/BaseActivity;)[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .registers 9
    .param p0, "candidates"    # [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    const/4 v3, 0x0

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v1, "selection":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;>;"
    array-length v4, p0

    move v2, v3

    :goto_8
    if-ge v2, v4, :cond_31

    aget-object v0, p0, v2

    .line 289
    .local v0, "i":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    sget-object v5, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_3a

    .line 303
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_1a
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 291
    :pswitch_1d
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_1a

    .line 292
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 297
    :pswitch_27
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isSystemApp(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 298
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 307
    .end local v0    # "i":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :cond_31
    new-array v2, v3, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v2

    .line 289
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method public clearShortcutSelected()V
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    .line 99
    return-void
.end method

.method public clearShortcutTray(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;)V

    .line 209
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->updateShortcutItems(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 210
    return-void
.end method

.method public closeCurrentDialog()V
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeCurrentDialog()Z

    .line 191
    return-void
.end method

.method public closeDialogs(Z)V
    .registers 3
    .param p1, "withAnimation"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs(Z)V

    .line 196
    return-void
.end method

.method protected closeDialogsTemporarily()V
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->closeDialogs(Z)V

    .line 266
    :cond_c
    return-void
.end method

.method protected findCommonSettingKeyShownBySettingDialog()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .registers 6

    .prologue
    .line 316
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->values()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_16

    aget-object v0, v2, v1

    .line 317
    .local v0, "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isOpened(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 321
    .end local v0    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :goto_12
    return-object v0

    .line 316
    .restart local v0    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 321
    .end local v0    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getSelectedTab()Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSelectedTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    return-object v0
.end method

.method public hideShortcutTray()V
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->hideShortcutTray()V

    .line 204
    return-void
.end method

.method public isOpened()Z
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    return v0
.end method

.method public onSettingChanged(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .registers 2
    .param p1, "value"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 283
    return-void
.end method

.method public onTabSelected(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V
    .registers 2
    .param p1, "tab"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSelectedTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .line 278
    return-void
.end method

.method public openControlDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)V
    .registers 4
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openControlDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;I)V
    .registers 6
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "titleTextResource"    # I
    .param p3, "tag"    # Ljava/lang/Object;
    .param p4, "menuDialogRowCount"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 136
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mMenuItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 138
    :cond_a
    return-void
.end method

.method public openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Ljava/lang/Object;I)V
    .registers 12
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "tabs"    # [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .param p3, "selectedTab"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .param p4, "tag"    # Ljava/lang/Object;
    .param p5, "menuDialogRowCount"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 124
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mMenuItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 125
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSelectedTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getMenuDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSelectedTab:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setSelectedTab(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 128
    :cond_1c
    return-void
.end method

.method public openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)V
    .registers 5
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0, v1, p2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;)V
    .registers 6
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "titleId"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0, v1, p2, p3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;)Z

    .line 186
    return-void
.end method

.method public selectShortcut(Ljava/lang/Object;)V
    .registers 3
    .param p1, "shortcut"    # Ljava/lang/Object;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    if-eqz v0, :cond_e

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->selectByData(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    .line 217
    :cond_e
    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->setUiOrientation(I)V

    .line 221
    return-void
.end method

.method public setup()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->updateShortcutTray(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 87
    return-void
.end method

.method public showShortcutTray()V
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->showShortcutTray()V

    .line 200
    return-void
.end method

.method protected updateMenuItems(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Z)V
    .registers 4
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "resetScrollPosition"    # Z

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mMenuItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    if-eqz v0, :cond_10

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mMenuItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->copy(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 240
    if-eqz p2, :cond_11

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mMenuItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetInvalidated()V

    .line 246
    :cond_10
    :goto_10
    return-void

    .line 243
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mMenuItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    goto :goto_10
.end method

.method protected updateSettingItems(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .registers 3
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    if-eqz v0, :cond_e

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->copy(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mSettingItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    .line 253
    :cond_e
    return-void
.end method

.method protected updateShortcutItems(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .registers 4
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 224
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    if-eqz v1, :cond_1f

    .line 225
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getSelected()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    if-nez v1, :cond_20

    .line 227
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getSelected()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    .line 228
    .local v0, "selected":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->copy(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 229
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->selectByItem(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 233
    .end local v0    # "selected":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :goto_1a
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    .line 235
    :cond_1f
    return-void

    .line 231
    :cond_20
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mShortcutItemAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->copy(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    goto :goto_1a
.end method
