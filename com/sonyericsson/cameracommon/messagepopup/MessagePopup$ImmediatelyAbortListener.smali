.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ImmediatelyAbortListener;
.super Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImmediatelyAbortListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 1993
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ImmediatelyAbortListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ImmediatelyAbortListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mTerminateListener:Lcom/sonyericsson/cameracommon/activity/TerminateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$1500(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/activity/TerminateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/activity/TerminateListener;->terminateApplication()V

    .line 1998
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2002
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2003
    .local v0, "result":Z
    if-nez v0, :cond_13

    .line 2004
    const/4 v1, 0x4

    if-ne p2, v1, :cond_13

    .line 2005
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ImmediatelyAbortListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mTerminateListener:Lcom/sonyericsson/cameracommon/activity/TerminateListener;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$1500(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/activity/TerminateListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/activity/TerminateListener;->terminateApplication()V

    .line 2006
    const/4 v0, 0x1

    .line 2009
    :cond_13
    return v0
.end method
