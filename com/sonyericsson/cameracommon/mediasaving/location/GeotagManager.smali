.class public Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
.super Ljava/lang/Object;
.source "GeotagManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;
    }
.end annotation


# static fields
.field static final REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "GeotagManager"


# instance fields
.field private mAcquiring:Z

.field private mConfirmLocationServiceDialogOpened:Z

.field private final mContext:Landroid/content/Context;

.field private mIsItemChecked:Z

.field private mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

.field private mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

.field private mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 391
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    .line 476
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mConfirmLocationServiceDialogOpened:Z

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mConfirmLocationServiceDialogOpened:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mIsItemChecked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mIsItemChecked:Z

    return p1
.end method

.method private checkLocationService(Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    .registers 7
    .param p1, "geotag"    # Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    .param p2, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p3, "settingDialogController"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
    .param p4, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 303
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 305
    if-eqz p4, :cond_14

    .line 306
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne p1, v0, :cond_34

    const/4 v0, 0x1

    :goto_11
    invoke-interface {p4, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;->onSet(Z)V

    .line 309
    :cond_14
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne p1, v0, :cond_33

    .line 310
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isLocationServiceAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 311
    if-eqz p3, :cond_23

    .line 312
    invoke-interface {p3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;->closeCurrentDialog()V

    .line 318
    :cond_23
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 319
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showLaunchSettingAppDialog(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    .line 322
    :cond_33
    return-void

    .line 306
    :cond_34
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static getGeotag(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;)Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    .registers 4
    .param p0, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "originalValue"    # Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .prologue
    .line 420
    move-object v0, p1

    .line 421
    .local v0, "modifiedValue":Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne p1, v1, :cond_d

    .line 422
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isLocationServiceAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 423
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .line 426
    :cond_d
    return-object v0
.end method

.method private isLocationPermissionGranted(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z
    .registers 5
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v0, "notGranted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->getSelfPermissions(Landroid/app/Activity;[Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 434
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 435
    const/4 v1, 0x0

    .line 437
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x1

    goto :goto_12
.end method

.method private static isLocationServiceAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z
    .registers 2
    .param p0, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->readLocationSettings()V

    .line 443
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isGpsLocationAllowed()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isNetworkLocationAllowed()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public assignResource()V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-nez v0, :cond_d

    .line 71
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const-string v1, "gps"

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 74
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-nez v0, :cond_1a

    .line 75
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const-string v1, "network"

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 80
    :cond_1a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_2a

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    .line 84
    :cond_2a
    return-void
.end method

.method public confirmLocationService(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    .registers 13
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "settings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .param p3, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .prologue
    const/4 v2, 0x1

    .line 487
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .line 488
    .local v8, "geotag":Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 489
    invoke-virtual {p2, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/cameracommon/commonsetting/values/DoNotShowAgainCheckForGeotagDialog;

    .line 492
    .local v7, "check":Lcom/sonyericsson/cameracommon/commonsetting/values/DoNotShowAgainCheckForGeotagDialog;
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/DoNotShowAgainCheckForGeotagDialog;->CHECKED:Lcom/sonyericsson/cameracommon/commonsetting/values/DoNotShowAgainCheckForGeotagDialog;

    if-ne v7, v0, :cond_16

    .line 533
    :goto_15
    :pswitch_15
    return-void

    .line 497
    :cond_16
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$4;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$Geotag:[I

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mIsItemChecked:Z

    .line 504
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mConfirmLocationServiceDialogOpened:Z

    .line 505
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    new-instance v3, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    new-instance v5, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;

    invoke-direct {v5, p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$3;

    invoke-direct {v6, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$3;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showConfirmLocationAccess(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_15

    .line 497
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_15
    .end packed-switch
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .registers 4

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "locNetwork":Landroid/location/Location;
    const/4 v0, 0x0

    .line 188
    .local v0, "locGps":Landroid/location/Location;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v2, :cond_c

    .line 189
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 191
    :cond_c
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v2, :cond_16

    .line 192
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object v0

    .line 194
    :cond_16
    if-eqz v0, :cond_19

    .line 201
    .end local v0    # "locGps":Landroid/location/Location;
    :goto_18
    return-object v0

    .line 197
    .restart local v0    # "locGps":Landroid/location/Location;
    :cond_19
    if-eqz v1, :cond_1d

    move-object v0, v1

    .line 198
    goto :goto_18

    .line 201
    :cond_1d
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getLocationListener(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v0, :cond_11

    .line 448
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 449
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 457
    :goto_10
    return-object v0

    .line 452
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v0, :cond_22

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 454
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    goto :goto_10

    .line 457
    :cond_22
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public initGeotag(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .registers 3
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 332
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->initGeotag(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)Z

    .line 345
    return-void
.end method

.method public initGeotag(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)Z
    .registers 8
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .prologue
    .line 360
    const/4 v2, 0x0

    .line 363
    .local v2, "pseudoflag":Z
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->setGeoTagPseudoOff(Z)V

    .line 366
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .line 367
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v4

    .line 366
    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .line 371
    .local v0, "geotag":Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isLocationPermissionGranted(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v1

    .line 374
    .local v1, "granted":Z
    if-eqz v1, :cond_24

    .line 375
    const/4 v3, 0x0

    invoke-direct {p0, v0, p1, v3, p2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->checkLocationService(Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    .line 388
    :goto_23
    return v2

    .line 378
    :cond_24
    sget-object v3, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne v0, v3, :cond_33

    .line 379
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .line 380
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->setGeoTagPseudoOff(Z)V

    .line 381
    const/4 v2, 0x1

    .line 383
    :cond_33
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_23
.end method

.method public isAcquiring()Z
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    return v0
.end method

.method public isConfirmLocationServiceDialogOpened()Z
    .registers 2

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mConfirmLocationServiceDialogOpened:Z

    return v0
.end method

.method public isDisabled()Z
    .registers 4

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "gps":Z
    const/4 v1, 0x0

    .line 465
    .local v1, "net":Z
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v2, :cond_c

    .line 466
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->isDisabled()Z

    move-result v0

    .line 469
    :cond_c
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v2, :cond_16

    .line 470
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->isDisabled()Z

    move-result v1

    .line 473
    :cond_16
    if-eqz v0, :cond_1c

    if-eqz v1, :cond_1c

    const/4 v2, 0x1

    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public isGpsAcquired()Z
    .registers 3

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "isAcquired":Z
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v1, :cond_e

    .line 243
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 244
    const/4 v0, 0x1

    .line 248
    :cond_e
    return v0
.end method

.method public isNetworkAcquired()Z
    .registers 3

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "isAcquired":Z
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v1, :cond_e

    .line 258
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 259
    const/4 v0, 0x1

    .line 263
    :cond_e
    return v0
.end method

.method public notifyStatus()V
    .registers 4

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 213
    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 214
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz v2, :cond_14

    .line 215
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onDisabled()V

    .line 234
    :cond_14
    :goto_14
    return-void

    .line 220
    :cond_15
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGpsAcquired()Z

    move-result v0

    .line 221
    .local v0, "gps":Z
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isNetworkAcquired()Z

    move-result v1

    .line 223
    .local v1, "net":Z
    if-nez v0, :cond_21

    if-eqz v1, :cond_2b

    .line 224
    :cond_21
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz v2, :cond_14

    .line 226
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-interface {v2, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onAcquired(ZZ)V

    goto :goto_14

    .line 229
    :cond_2b
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz v2, :cond_14

    .line 231
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onLost()V

    goto :goto_14
.end method

.method public release()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V

    .line 102
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 103
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 104
    return-void
.end method

.method public releaseResource()V
    .registers 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->stopReceivingLocationUpdates()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    .line 94
    return-void
.end method

.method public setGeotag(Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    .registers 8
    .param p1, "geotag"    # Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    .param p2, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p3, "settingDialogController"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
    .param p4, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .prologue
    .line 403
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne p1, v1, :cond_18

    .line 405
    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->checkAndRequestSelfPermissions(I[Ljava/lang/String;)Z

    move-result v0

    .line 409
    .local v0, "permissionRequested":Z
    if-eqz v0, :cond_18

    .line 411
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 417
    .end local v0    # "permissionRequested":Z
    :goto_17
    return-void

    .line 416
    :cond_18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->checkLocationService(Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    goto :goto_17
.end method

.method public setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    .line 113
    return-void
.end method

.method public declared-synchronized startLocationUpdates(ZZ)V
    .registers 10
    .param p1, "gps"    # Z
    .param p2, "network"    # Z

    .prologue
    .line 129
    monitor-enter p0

    if-eqz p1, :cond_18

    .line 130
    :try_start_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    .line 140
    :cond_18
    if-eqz p2, :cond_2f

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z
    :try_end_2f
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_2f} :catch_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_2f} :catch_40
    .catchall {:try_start_3 .. :try_end_2f} :catchall_3d

    .line 157
    :cond_2f
    :goto_2f
    monitor-exit p0

    return-void

    .line 150
    :catch_31
    move-exception v6

    .line 151
    .local v6, "ex":Ljava/lang/SecurityException;
    :try_start_32
    const-string v0, "GeotagManager"

    const-string v1, "provider can\'t access."

    invoke-static {v0, v1, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3d

    goto :goto_2f

    .line 129
    .end local v6    # "ex":Ljava/lang/SecurityException;
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 153
    :catch_40
    move-exception v6

    .line 155
    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    :try_start_42
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_3d

    goto :goto_2f
.end method

.method public declared-synchronized stopReceivingLocationUpdates()V
    .registers 3

    .prologue
    .line 166
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    if-eqz v0, :cond_24

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_21

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 173
    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 176
    :cond_24
    monitor-exit p0

    return-void

    .line 166
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateLocation(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .registers 6
    .param p1, "geotag"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->assignResource()V

    .line 275
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->stopReceivingLocationUpdates()V

    .line 277
    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne p1, v2, :cond_26

    .line 279
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz v2, :cond_13

    .line 280
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onLost()V

    .line 284
    :cond_13
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    const-string v3, "gps"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 286
    .local v0, "gps":Z
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    const-string v3, "network"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 289
    .local v1, "net":Z
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->startLocationUpdates(ZZ)V

    .line 291
    .end local v0    # "gps":Z
    .end local v1    # "net":Z
    :cond_26
    return-void
.end method
