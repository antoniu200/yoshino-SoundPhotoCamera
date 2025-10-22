.class Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;
.super Ljava/lang/Object;
.source "GeotagManager.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->initGeotag(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
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
    .line 332
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;->val$activity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSet(Z)V
    .registers 4
    .param p1, "available"    # Z

    .prologue
    .line 336
    if-eqz p1, :cond_17

    .line 337
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .line 341
    .local v0, "geotag":Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    :goto_4
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;->val$activity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 342
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;->val$activity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 343
    return-void

    .line 339
    .end local v0    # "geotag":Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    :cond_17
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .restart local v0    # "geotag":Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    goto :goto_4
.end method
