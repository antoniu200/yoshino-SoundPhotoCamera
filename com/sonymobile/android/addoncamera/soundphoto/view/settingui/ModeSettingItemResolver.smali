.class public Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;
.super Ljava/lang/Object;
.source "ModeSettingItemResolver.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

.field private final mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory",
            "<",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferences"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;",
            "Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory",
            "<",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, "executorFactory":Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;, "Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory<Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->mPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    .line 45
    iput-object p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;

    .line 46
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    .line 47
    return-void
.end method

.method private getItemType(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)I
    .registers 5
    .param p1, "key"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;

    .prologue
    const/4 v2, 0x3

    .line 135
    instance-of v0, p1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    if-eqz v0, :cond_f

    .line 136
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver$1;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$Parameters:[I

    check-cast p1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    .end local p1    # "key":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;
    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 141
    :cond_f
    return v2
.end method

.method private getItemType(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)I
    .registers 4
    .param p1, "value"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    .prologue
    .line 146
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver$1;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$Parameters:[I

    invoke-interface {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;->key()Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 152
    const/4 v0, 0x2

    :goto_10
    return v0

    .line 149
    :pswitch_11
    const/4 v0, 0x1

    goto :goto_10

    .line 146
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method private getSettingItem(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .registers 8
    .param p1, "key"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->getItemType(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)I

    move-result v2

    .line 100
    .local v2, "type":I
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    .line 101
    invoke-interface {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;->textId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    .line 102
    invoke-virtual {v3, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    .line 103
    invoke-virtual {v4, p1, v5}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->getOpenValueSelectDialogExecutor(Ljava/lang/Object;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v0

    .line 106
    .local v0, "builder":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;>;"
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->getValueItems(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 107
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->item(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    goto :goto_28

    .line 110
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_38
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    return-object v3
.end method

.method private getValueItems(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)Ljava/util/List;
    .registers 12
    .param p1, "key"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;>;"
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->mPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->options(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v3

    .line 117
    .local v3, "options":[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;
    if-nez v3, :cond_13

    .line 131
    :cond_12
    return-object v2

    .line 120
    :cond_13
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->mPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->get(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v0

    .line 121
    .local v0, "current":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;
    array-length v7, v3

    move v6, v5

    :goto_1f
    if-ge v6, v7, :cond_12

    aget-object v1, v3, v6

    .line 122
    .local v1, "item":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v4

    .line 123
    invoke-interface {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;->iconId()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v4

    .line 124
    invoke-interface {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;->textId()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v4

    .line 125
    invoke-direct {p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->getItemType(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v8

    if-ne v1, v0, :cond_5f

    const/4 v4, 0x1

    .line 126
    :goto_42
    invoke-virtual {v8, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->mExecutorFactory:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;

    .line 127
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->getItemType(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->getChangeValueExecutor(I)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v4

    .line 128
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v4

    .line 122
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1f

    :cond_5f
    move v4, v5

    .line 125
    goto :goto_42
.end method


# virtual methods
.method public generateFlashItems()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .registers 5

    .prologue
    .line 83
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v0, v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 84
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->FLASH:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->getValueItems(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 85
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    goto :goto_13

    .line 87
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_23
    return-object v0
.end method

.method public generatePhotoSettingItems()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 50
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->mPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v5}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v1

    .line 53
    .local v1, "currentParameterSet":Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;
    const/4 v3, 0x0

    .line 55
    .local v3, "parameters":[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<*>;"
    sget-object v5, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver$1;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$CapturingMode:[I

    iget-object v6, v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->capturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-virtual {v6}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_50

    .line 74
    :goto_1d
    array-length v5, v3

    :goto_1e
    if-ge v4, v5, :cond_4f

    aget-object v2, v3, v4

    .line 75
    .local v2, "param":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<*>;"
    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->getSelectability()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    move-result-object v6

    sget-object v7, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->SELECTABLE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    if-ne v6, v7, :cond_39

    .line 76
    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->get()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;->key()Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->getSettingItem(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    .line 74
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 57
    .end local v2    # "param":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<*>;"
    :pswitch_3c
    const/4 v5, 0x2

    new-array v3, v5, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    .end local v3    # "parameters":[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<*>;"
    iget-object v5, v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->selfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    aput-object v5, v3, v4

    iget-object v5, v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->autoReview:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    aput-object v5, v3, v7

    .line 61
    .restart local v3    # "parameters":[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<*>;"
    goto :goto_1d

    .line 64
    :pswitch_48
    new-array v3, v7, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    .end local v3    # "parameters":[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<*>;"
    iget-object v5, v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->autoReview:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    aput-object v5, v3, v4

    .line 67
    .restart local v3    # "parameters":[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<*>;"
    goto :goto_1d

    .line 79
    :cond_4f
    return-object v0

    .line 55
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_48
    .end packed-switch
.end method

.method public generateSelfTimerItems()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .registers 5

    .prologue
    .line 91
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v0, v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 92
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->SELF_TIMER:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->getValueItems(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 93
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    goto :goto_13

    .line 95
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_23
    return-object v0
.end method
