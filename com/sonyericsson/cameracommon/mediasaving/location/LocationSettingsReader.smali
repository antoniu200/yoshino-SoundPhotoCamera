.class public Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;
.super Ljava/lang/Object;
.source "LocationSettingsReader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LocationSettingsReader"


# instance fields
.field mIsGpsLocationAllowed:Z

.field mIsNetworkLocationAllowed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 41
    .local v0, "manager":Landroid/location/LocationManager;
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private setIsGpsLocationAllowed(Z)V
    .registers 2
    .param p1, "isGpsLocationAllowed"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->mIsGpsLocationAllowed:Z

    .line 46
    return-void
.end method

.method private setIsNetworkLocationAllowed(Z)V
    .registers 2
    .param p1, "isNetworkLocationAllowed"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->mIsNetworkLocationAllowed:Z

    .line 50
    return-void
.end method


# virtual methods
.method public getIsGpsLocationAllowed()Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->mIsGpsLocationAllowed:Z

    return v0
.end method

.method public getIsNetworkLocationAllowed()Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->mIsNetworkLocationAllowed:Z

    return v0
.end method

.method public readLocationSettings(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-string v0, "gps"

    .line 26
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 25
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->setIsGpsLocationAllowed(Z)V

    .line 27
    const-string v0, "network"

    .line 28
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 27
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->setIsNetworkLocationAllowed(Z)V

    .line 29
    return-void
.end method
