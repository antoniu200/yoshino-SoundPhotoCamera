.class Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$1;
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
    .line 124
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$1;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.STORAGE_VOLUME_ACCESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$1;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;

    const/16 v2, 0x200

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$1;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;

    const/4 v2, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->access$002(Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 135
    return-void
.end method
