.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableContinuouslyUsedListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCancelOkAndCheckableContinuouslyUsedListener"
.end annotation


# instance fields
.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 4
    .param p2, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableContinuouslyUsedListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableContinuouslyUsedListener;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 547
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableContinuouslyUsedListener;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 548
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableContinuouslyUsedListener;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_9

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableContinuouslyUsedListener;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 555
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableContinuouslyUsedListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$302(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 556
    return-void
.end method
