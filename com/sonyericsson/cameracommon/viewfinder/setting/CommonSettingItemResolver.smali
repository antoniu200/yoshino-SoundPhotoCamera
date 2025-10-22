.class public Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;
.super Ljava/lang/Object;
.source "CommonSettingItemResolver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CommonSettingItemResolver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

.field private final mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;

.field private final mItems:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field private final mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "commonSettings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .param p3, "executorFactory"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;
    .param p4, "dialogItemFactory"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;
    .param p5, "settingItems"    # [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .line 55
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;

    .line 56
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    .line 57
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mItems:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 58
    return-void
.end method

.method private getDialogItemType(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)I
    .registers 5
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    const/4 v0, 0x3

    .line 177
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_10

    .line 193
    :goto_c
    :pswitch_c
    return v0

    .line 185
    :pswitch_d
    const/4 v0, 0x4

    goto :goto_c

    .line 177
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private getSelectedSettingItem([Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .registers 11
    .param p1, "values"    # [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    array-length v6, p1

    if-ge v6, v5, :cond_d

    .line 120
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The specified list is empty."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    :cond_d
    array-length v7, p1

    move v6, v4

    :goto_f
    if-ge v6, v7, :cond_36

    aget-object v3, p1, v6

    .line 124
    .local v3, "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-interface {v3}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v0

    .line 125
    .local v0, "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v8, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 126
    .local v2, "selected":Z
    if-nez v2, :cond_2b

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v8, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->isSelectable(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Z

    move-result v8

    if-eqz v8, :cond_31

    :cond_2b
    move v1, v5

    .line 127
    .local v1, "selectable":Z
    :goto_2c
    if-eqz v2, :cond_33

    if-eqz v1, :cond_33

    .line 131
    .end local v0    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .end local v1    # "selectable":Z
    .end local v2    # "selected":Z
    .end local v3    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :goto_30
    return-object v3

    .restart local v0    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .restart local v2    # "selected":Z
    .restart local v3    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_31
    move v1, v4

    .line 126
    goto :goto_2c

    .line 122
    .restart local v1    # "selectable":Z
    :cond_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 131
    .end local v0    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .end local v1    # "selectable":Z
    .end local v2    # "selected":Z
    .end local v3    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_36
    aget-object v3, p1, v4

    goto :goto_30
.end method

.method private getSettingItem(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .registers 8
    .param p1, "value"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
            ">;)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;"
        }
    .end annotation

    .prologue
    .line 202
    .local p2, "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v0

    .line 203
    .local v0, "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 204
    .local v2, "selected":Z
    if-nez v2, :cond_18

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->isSelectable(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Z

    move-result v3

    if-eqz v3, :cond_43

    :cond_18
    const/4 v1, 0x1

    .line 206
    .local v1, "selectable":Z
    :goto_19
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    .line 207
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    .line 208
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getTextId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    const/4 v4, 0x2

    .line 209
    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    .line 210
    invoke-virtual {v3, p2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    .line 211
    invoke-virtual {v3, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    .line 212
    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selectable(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    .line 213
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    return-object v3

    .line 204
    .end local v1    # "selectable":Z
    :cond_43
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private isTouchBlockSupported()Z
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 228
    const-string v6, "com.sonymobile.touchblocker"

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isPackageExist(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 254
    :cond_b
    :goto_b
    return v5

    .line 233
    :cond_c
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 235
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_b

    .line 239
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v1, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.sonymobile.touchblocker"

    const-string v8, "com.sonymobile.touchblocker.TouchBlockerService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 242
    const-string v6, "launched_from_smallapp"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 243
    const/4 v6, 0x4

    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 246
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 247
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 248
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v3, :cond_33

    .line 249
    const-string v7, "com.sonymobile.touchblocker"

    iget-object v8, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 250
    iget-boolean v5, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    goto :goto_b
.end method

.method private isVisible(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Z
    .registers 6
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3a

    .line 172
    :cond_d
    :goto_d
    return v0

    .line 156
    :pswitch_e
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->isForceSound()Z

    move-result v2

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_d

    .line 160
    :pswitch_16
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isSystemApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_d

    .line 163
    :pswitch_20
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->isTouchBlockSupported()Z

    move-result v0

    goto :goto_d

    .line 166
    :pswitch_25
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->isFixed(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Z

    move-result v2

    if-eqz v2, :cond_2f

    move v0, v1

    .line 167
    goto :goto_d

    .line 169
    :cond_2f
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->shouldStorageForceInternal(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_d

    .line 154
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_16
        :pswitch_16
        :pswitch_20
        :pswitch_25
    .end packed-switch
.end method


# virtual methods
.method public generateItemAdapter()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .registers 19

    .prologue
    .line 64
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v1, v13, v14}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 67
    .local v1, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v12, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mItems:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    array-length v15, v14

    const/4 v13, 0x0

    :goto_18
    if-ge v13, v15, :cond_2a

    aget-object v6, v14, v13

    .line 69
    .local v6, "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->isVisible(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Z

    move-result v16

    if-eqz v16, :cond_27

    .line 70
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_27
    add-int/lit8 v13, v13, 0x1

    goto :goto_18

    .line 75
    .end local v6    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :cond_2a
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_107

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 76
    .restart local v6    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->getDialogItemType(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)I

    move-result v5

    .line 78
    .local v5, "itemType":I
    const-string v10, ""

    .line 79
    .local v10, "valueText":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->getValues()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v11

    .line 81
    .local v11, "values":[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    array-length v13, v11

    if-lez v13, :cond_8e

    .line 83
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->getSelectedSettingItem([Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v3

    .line 84
    .local v3, "current":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;

    .line 85
    invoke-virtual {v13, v5}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->getChangeValueExecutor(I)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v9

    .line 86
    .local v9, "valueExecutor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->getSettingItem(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v4

    .line 87
    .local v4, "currentitem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-interface {v4, v13}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v10

    .line 88
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-interface {v4, v13}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getSubText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "subText":Ljava/lang/String;
    if-eqz v7, :cond_8e

    .line 90
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 94
    .end local v3    # "current":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .end local v4    # "currentitem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .end local v7    # "subText":Ljava/lang/String;
    .end local v9    # "valueExecutor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    :cond_8e
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .line 95
    invoke-virtual {v15, v6}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v15

    invoke-interface {v15}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getIconId()I

    move-result v15

    invoke-virtual {v13, v15}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v13

    .line 96
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->getTitleId()I

    move-result v15

    invoke-virtual {v13, v15}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v6, v15}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->text(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v13

    .line 98
    invoke-virtual {v13, v10}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v13

    .line 99
    invoke-virtual {v13, v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    move-object/from16 v16, v0

    .line 100
    move-object/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->getExecutor(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    .line 102
    .local v2, "builder":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;>;"
    sget-object v13, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->HELP_GUIDE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v6, v13}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e3

    .line 112
    :cond_da
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_2e

    .line 105
    :cond_e3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;

    .line 106
    invoke-virtual {v13, v5}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->getChangeValueExecutor(I)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v9

    .line 107
    .restart local v9    # "valueExecutor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->getValues()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_f3
    move/from16 v0, v16

    if-ge v13, v0, :cond_da

    aget-object v8, v15, v13

    .line 108
    .local v8, "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->getSettingItem(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->item(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    .line 107
    add-int/lit8 v13, v13, 0x1

    goto :goto_f3

    .line 115
    .end local v2    # "builder":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;>;"
    .end local v5    # "itemType":I
    .end local v6    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .end local v8    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .end local v9    # "valueExecutor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    .end local v10    # "valueText":Ljava/lang/String;
    .end local v11    # "values":[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_107
    return-object v1
.end method

.method public generateItemAdapter(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .registers 10
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 140
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v0, v4, v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 141
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->getDialogItemType(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)I

    move-result v2

    .line 143
    .local v2, "itemType":I
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;

    .line 144
    invoke-virtual {v4, v2}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->getChangeValueExecutor(I)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v3

    .line 146
    .local v3, "valueExecutor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->getValues()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v6, :cond_27

    aget-object v1, v5, v4

    .line 147
    .local v1, "item":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->getSettingItem(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 150
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_27
    return-object v0
.end method
