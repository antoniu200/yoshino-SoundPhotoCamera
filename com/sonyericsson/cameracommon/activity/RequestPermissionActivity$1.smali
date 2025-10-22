.class Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$1;
.super Ljava/lang/Object;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionDialog(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$1;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$1;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$1;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    # getter for: Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->access$200(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getRequestPermissionList()[Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->access$300(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;[Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$1;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->access$402(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 552
    return-void
.end method
