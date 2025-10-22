.class public Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;
.super Ljava/lang/Object;
.source "SettingExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingChanger:Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
            "<TValue;>;"
        }
    .end annotation
.end field

.field private final mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingDialogController"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
            "<TValue;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;, "Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory<TKey;TValue;>;"
    .local p3, "settingChanger":Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface<TValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    .line 30
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->mSettingChanger:Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .registers 4
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .param p2, "x2"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->generateChildrenAdapter(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    return-object v0
.end method

.method private generateChildrenAdapter(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .registers 7
    .param p1, "parent"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .param p2, "dialogItemFactory"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    .prologue
    .line 64
    .local p0, "this":Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;, "Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory<TKey;TValue;>;"
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 66
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 67
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    goto :goto_f

    .line 70
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_1f
    return-object v0
.end method


# virtual methods
.method public getChangeValueExecutor(I)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .registers 5
    .param p1, "keyItemType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TValue;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;, "Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory<TKey;TValue;>;"
    packed-switch p1, :pswitch_data_16

    .line 56
    :pswitch_3
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeAndCloseExecutor;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->mSettingChanger:Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeAndCloseExecutor;-><init>(Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;)V

    :goto_c
    return-object v0

    .line 53
    :pswitch_d
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;->mSettingChanger:Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;-><init>(Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    goto :goto_c

    .line 46
    nop

    :pswitch_data_16
    .packed-switch 0x4
        :pswitch_d
        :pswitch_d
        :pswitch_3
        :pswitch_d
    .end packed-switch
.end method

.method public getOpenValueSelectDialogExecutor(Ljava/lang/Object;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .registers 4
    .param p2, "dialogItemFactory"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;",
            "Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TKey;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;, "Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory<TKey;TValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TKey;"
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory$1;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory$1;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    return-object v0
.end method
