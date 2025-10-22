.class public Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;
.super Ljava/lang/Object;
.source "GeotagLocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "GeotagLocationListener"


# instance fields
.field private final mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field private mIsDisabled:Z

.field private mLastLocation:Landroid/location/Location;

.field public final mProvider:Ljava/lang/String;

.field private mValid:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Ljava/lang/String;)V
    .registers 5
    .param p1, "geotagManager"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 46
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    .line 47
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mLastLocation:Landroid/location/Location;

    .line 48
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .registers 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    if-eqz v0, :cond_7

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mLastLocation:Landroid/location/Location;

    .line 137
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isDisabled()Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6
    .param p1, "newLocation"    # Landroid/location/Location;

    .prologue
    const-wide/16 v2, 0x0

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    .line 64
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_16

    .line 72
    :goto_15
    return-void

    .line 69
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    goto :goto_15
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    .line 98
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    .line 84
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    .line 113
    if-nez p2, :cond_9

    .line 115
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    if-eqz v0, :cond_a

    .line 121
    :cond_9
    :goto_9
    return-void

    .line 119
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    goto :goto_9
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mValid:Z

    .line 143
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mIsDisabled:Z

    .line 144
    return-void
.end method
