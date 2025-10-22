.class Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;
.super Ljava/lang/Object;
.source "GeotagManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->confirmLocationService(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field final synthetic val$activity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;->val$activity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mConfirmLocationServiceDialogOpened:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->access$002(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Z)Z

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;->val$activity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateRemain(JZ)J

    .line 521
    return-void
.end method
