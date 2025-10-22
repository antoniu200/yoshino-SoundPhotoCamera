.class Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$4;
.super Ljava/lang/Object;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 608
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$4;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 614
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$4;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->access$402(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 615
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$4;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    # invokes: Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doNextAction()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->access$500(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    .line 616
    return-void
.end method
