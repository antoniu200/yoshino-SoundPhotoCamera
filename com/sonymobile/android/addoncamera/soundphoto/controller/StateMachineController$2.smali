.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$2;
.super Ljava/lang/Object;
.source "StateMachineController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->showRecordingErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 2365
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$2;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 2368
    new-instance v5, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$ErrorDialogListener;

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$2;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$ErrorDialogListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$1;)V

    .line 2370
    .local v5, "listener":Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$ErrorDialogListener;
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$2;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const v1, 0x7f080120

    const v2, 0x7f080122

    const/4 v3, 0x0

    const v4, 0x7f0801bf

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 2377
    return-void
.end method
