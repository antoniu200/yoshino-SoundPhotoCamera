.class Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalWarningDialogCloseListener;
.super Ljava/lang/Object;
.source "ThermalAlertReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThermalWarningDialogCloseListener"
.end annotation


# instance fields
.field private mTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Ljava/lang/Runnable;)V
    .registers 3
    .param p2, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalWarningDialogCloseListener;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalWarningDialogCloseListener;->mTask:Ljava/lang/Runnable;

    .line 441
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalWarningDialogCloseListener;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$502(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 452
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalWarningDialogCloseListener;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    # getter for: Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$400(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalWarningDialogCloseListener;->mTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 446
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalWarningDialogCloseListener;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$502(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 447
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalWarningDialogCloseListener;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$502(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 457
    return-void
.end method
