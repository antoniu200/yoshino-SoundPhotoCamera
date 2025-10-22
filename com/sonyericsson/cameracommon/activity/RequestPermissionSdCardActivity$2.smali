.class Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$2;
.super Ljava/lang/Object;
.source "RequestPermissionSdCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->showPermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$2;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$2;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->access$002(Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$2;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->finish(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->access$100(Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;I)V

    .line 150
    return-void
.end method
