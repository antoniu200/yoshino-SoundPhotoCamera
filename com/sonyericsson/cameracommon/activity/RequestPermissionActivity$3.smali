.class Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$3;
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
    .line 588
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$3;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 592
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$3;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    .line 593
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 595
    .local v1, "intent":Landroid/content/Intent;
    :try_start_24
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$3;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_29
    .catch Landroid/content/ActivityNotFoundException; {:try_start_24 .. :try_end_29} :catch_30

    .line 602
    :goto_29
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$3;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    const/4 v3, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->access$402(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 603
    return-void

    .line 598
    :catch_30
    move-exception v0

    .line 599
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "RequestPermissionActivity"

    const-string v3, "showPermissionDialog() launchApplicationSettings: failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method
