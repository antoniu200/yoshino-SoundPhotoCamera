.class Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/GeotagDialogListener;
.super Ljava/lang/Object;
.source "GeotagDialogListener.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;


# instance fields
.field private final mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

.field private final mSoundPhotoSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)V
    .registers 3
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "soundPhotoSettingUi"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/GeotagDialogListener;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 27
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/GeotagDialogListener;->mSoundPhotoSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .line 28
    return-void
.end method


# virtual methods
.method public onSet(Z)V
    .registers 4
    .param p1, "available"    # Z

    .prologue
    .line 33
    if-eqz p1, :cond_26

    .line 34
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .line 38
    .local v0, "geotag":Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    :goto_4
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/GeotagDialogListener;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 39
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/GeotagDialogListener;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 40
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/GeotagDialogListener;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/RegionConfig;->isChinaRegion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_25

    if-nez p1, :cond_25

    .line 41
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/GeotagDialogListener;->mSoundPhotoSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->openMenuAndSelectCommonTab()V

    .line 43
    :cond_25
    return-void

    .line 36
    .end local v0    # "geotag":Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    :cond_26
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .restart local v0    # "geotag":Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    goto :goto_4
.end method
