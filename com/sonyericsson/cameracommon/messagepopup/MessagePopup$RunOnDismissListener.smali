.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnDismissListener;
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
    name = "RunOnDismissListener"
.end annotation


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Ljava/lang/Runnable;)V
    .registers 3
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 2413
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnDismissListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2414
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnDismissListener;->mRunnable:Ljava/lang/Runnable;

    .line 2415
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnDismissListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$1700(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnDismissListener;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2420
    return-void
.end method
