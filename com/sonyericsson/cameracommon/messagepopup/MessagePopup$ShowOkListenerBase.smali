.class abstract Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ShowOkListenerBase"
.end annotation


# instance fields
.field private final mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 4
    .param p2, "ok"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "dismiss"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 1831
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1832
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1833
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1834
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_9

    .line 1841
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1843
    :cond_9
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->removeReferenceToDialog()V

    .line 1844
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_9

    .line 1849
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1851
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$1200(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$1200(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1852
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;->removeReferenceToDialog()V

    .line 1854
    :cond_20
    return-void
.end method

.method protected abstract removeReferenceToDialog()V
.end method
