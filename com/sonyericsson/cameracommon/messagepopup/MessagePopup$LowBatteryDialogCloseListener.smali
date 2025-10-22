.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LowBatteryDialogCloseListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LowBatteryDialogCloseListener"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 4
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LowBatteryDialogCloseListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1162
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LowBatteryDialogCloseListener;->mTask:Ljava/lang/Runnable;

    .line 1163
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LowBatteryDialogCloseListener;->mActivity:Landroid/app/Activity;

    .line 1164
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LowBatteryDialogCloseListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mLowBatteryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$1002(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1175
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LowBatteryDialogCloseListener;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LowBatteryDialogCloseListener;->mTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1169
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LowBatteryDialogCloseListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mLowBatteryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$1002(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1170
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LowBatteryDialogCloseListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mLowBatteryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$1002(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1180
    return-void
.end method
