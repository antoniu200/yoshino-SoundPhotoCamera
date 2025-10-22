.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$3;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDisclaimer(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 2036
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$3;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$3;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$1600(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2040
    if-eqz p2, :cond_15

    .line 2042
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$3;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$1600(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setPositiveButtonEnabled(Z)V

    .line 2048
    :cond_14
    :goto_14
    return-void

    .line 2045
    :cond_15
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$3;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$1600(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setPositiveButtonEnabled(Z)V

    goto :goto_14
.end method
