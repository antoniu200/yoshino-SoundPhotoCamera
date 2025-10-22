.class public Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeAndCloseExecutor;
.super Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;
.source "SettingChangeAndCloseExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingChangeAndCloseExecutor"


# instance fields
.field private final mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;)V
    .registers 3
    .param p2, "settingDialogController"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
            "<TT;>;",
            "Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeAndCloseExecutor;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeAndCloseExecutor<TT;>;"
    .local p1, "changer":Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface<TT;>;"
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;-><init>(Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    .line 22
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeAndCloseExecutor;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    .line 23
    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeAndCloseExecutor;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeAndCloseExecutor<TT;>;"
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;->onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V

    .line 28
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeAndCloseExecutor;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;->closeCurrentDialog()V

    .line 29
    return-void
.end method
