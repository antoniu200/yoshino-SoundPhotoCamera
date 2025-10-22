.class Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;
.super Ljava/lang/Object;
.source "GeotagManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmLocationAccessDialogListener"
.end annotation


# instance fields
.field private final mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

.field private final mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

.field private final mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    .registers 5
    .param p2, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p3, "settings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .param p4, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 546
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .line 547
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .line 548
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 552
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mIsItemChecked:Z
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->access$100(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/DoNotShowAgainCheckForGeotagDialog;->CHECKED:Lcom/sonyericsson/cameracommon/commonsetting/values/DoNotShowAgainCheckForGeotagDialog;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 555
    :cond_f
    packed-switch p2, :pswitch_data_32

    .line 566
    :goto_12
    :pswitch_12
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mConfirmLocationServiceDialogOpened:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->access$002(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Z)Z

    .line 567
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateRemain(JZ)J

    .line 568
    return-void

    .line 557
    :pswitch_25
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setGeotag(Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    goto :goto_12

    .line 555
    :pswitch_data_32
    .packed-switch -0x2
        :pswitch_12
        :pswitch_25
    .end packed-switch
.end method
