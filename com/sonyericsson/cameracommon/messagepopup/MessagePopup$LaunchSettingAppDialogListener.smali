.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchSettingAppDialogListener"
.end annotation


# instance fields
.field private mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    .registers 4
    .param p2, "geotagListener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .prologue
    .line 1537
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .line 1538
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .line 1539
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    if-eqz v0, :cond_a

    .line 1565
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;->onSet(Z)V

    .line 1567
    :cond_a
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1543
    packed-switch p2, :pswitch_data_1a

    .line 1553
    :cond_3
    :goto_3
    return-void

    .line 1545
    :pswitch_4
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    if-eqz v0, :cond_3

    .line 1546
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;->onSet(Z)V

    goto :goto_3

    .line 1550
    :pswitch_f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$700(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->launchLocationSourceSettings(Landroid/app/Activity;)V

    goto :goto_3

    .line 1543
    nop

    :pswitch_data_1a
    .packed-switch -0x2
        :pswitch_4
        :pswitch_f
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    if-eqz v0, :cond_a

    .line 1558
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;->onSet(Z)V

    .line 1560
    :cond_a
    return-void
.end method
