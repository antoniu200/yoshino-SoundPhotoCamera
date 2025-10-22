.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnClickListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunOnClickListener"
.end annotation


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Ljava/lang/Runnable;)V
    .registers 3
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 2400
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnClickListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2401
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnClickListener;->mRunnable:Ljava/lang/Runnable;

    .line 2402
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 2406
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnClickListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$1700(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnClickListener;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2407
    return-void
.end method
