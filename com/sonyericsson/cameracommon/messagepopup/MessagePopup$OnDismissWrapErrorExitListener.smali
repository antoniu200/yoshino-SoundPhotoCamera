.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDismissWrapErrorExitListener"
.end annotation


# instance fields
.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 4
    .param p2, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 608
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 609
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_9

    .line 614
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 616
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$602(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 617
    return-void
.end method
