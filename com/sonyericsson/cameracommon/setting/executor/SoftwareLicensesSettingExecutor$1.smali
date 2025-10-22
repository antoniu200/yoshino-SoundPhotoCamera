.class Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor$1;
.super Ljava/lang/Object;
.source "SoftwareLicensesSettingExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor;->showSoftwareLicenses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor;

    .prologue
    .line 46
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor$1;, "Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor$1;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor$1;->this$0:Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 49
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor$1;, "Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor$1;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor$1;->this$0:Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor;

    # getter for: Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor;->access$000(Lcom/sonyericsson/cameracommon/setting/executor/SoftwareLicensesSettingExecutor;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;->closeDialogs(Z)V

    .line 50
    return-void
.end method
