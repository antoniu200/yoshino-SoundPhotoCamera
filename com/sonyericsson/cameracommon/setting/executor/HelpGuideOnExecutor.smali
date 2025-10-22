.class public Lcom/sonyericsson/cameracommon/setting/executor/HelpGuideOnExecutor;
.super Ljava/lang/Object;
.source "HelpGuideOnExecutor.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CommonSettingKey:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
        "<TCommonSettingKey;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingController"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    .prologue
    .line 25
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/HelpGuideOnExecutor;, "Lcom/sonyericsson/cameracommon/setting/executor/HelpGuideOnExecutor<TCommonSettingKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/executor/HelpGuideOnExecutor;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/executor/HelpGuideOnExecutor;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    .line 28
    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<TCommonSettingKey;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/HelpGuideOnExecutor;, "Lcom/sonyericsson/cameracommon/setting/executor/HelpGuideOnExecutor<TCommonSettingKey;>;"
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TCommonSettingKey;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/executor/HelpGuideOnExecutor;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;->closeDialogs(Z)V

    .line 33
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/executor/HelpGuideOnExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->isHelpAppAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 34
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/executor/HelpGuideOnExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->startHelpApp(Landroid/content/Context;)V

    .line 38
    :goto_13
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendSettingsCommon(Ljava/lang/String;)V

    .line 39
    return-void

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/executor/HelpGuideOnExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->startOnlineHelp(Landroid/content/Context;)V

    goto :goto_13
.end method
