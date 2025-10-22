.class public Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;
.super Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;
.source "CommonSettingExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingDialogController"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
    .param p3, "settingChanger"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    .line 32
    return-void
.end method


# virtual methods
.method public getExecutor(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .registers 6
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .param p2, "dialogItemFactory"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
            "Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->getOpenValueSelectDialogExecutor(Ljava/lang/Object;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v0

    :goto_f
    return-object v0

    .line 40
    :pswitch_10
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/executor/TermOfUseSettingExecutor;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;)V

    goto :goto_f

    .line 44
    :pswitch_1a
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;)V

    goto :goto_f

    .line 48
    :pswitch_24
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/executor/TouchBlockSettingExecutor;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/executor/TouchBlockSettingExecutor;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;)V

    goto :goto_f

    .line 52
    :pswitch_2e
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/executor/HelpGuideOnExecutor;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingExecutorFactory;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/executor/HelpGuideOnExecutor;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;)V

    goto :goto_f

    .line 38
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1a
        :pswitch_24
        :pswitch_2e
    .end packed-switch
.end method
