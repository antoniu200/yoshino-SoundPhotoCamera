.class public Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;
.super Ljava/lang/Object;
.source "PresetConfigurationResolver.java"


# static fields
.field public static final Af_SUCCESS_FILE_PATH:Ljava/lang/String; = "/system/media/audio/camera/common/af_success.m4a"

.field public static final KEY_SHUTTER_SOUND:Ljava/lang/String; = "COMMON_PARAMS_SHUTTER_SOUND"

.field public static final RECORD_SOUND_FILE_PATH_ON:Ljava/lang/String; = "/system/media/audio/ui/VideoRecord.ogg"

.field public static final SHUTTER_SOUND_FILE_PATH_OFF:Ljava/lang/String; = "off"

.field public static final SHUTTER_SOUND_FILE_PATH_ON:Ljava/lang/String; = "/system/media/audio/ui/camera_click.ogg"

.field public static final TAG:Ljava/lang/String; = "PresetConfigurationResolver"

.field public static final VALUE_SHUTTER_SOUND_OFF:Ljava/lang/String; = "OFF"

.field public static final VALUE_SHUTTER_SOUND_ON:Ljava/lang/String; = "SOUND1"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRecordSoundFilePath(Z)Ljava/lang/String;
    .registers 2
    .param p0, "isShutterSoundEnabled"    # Z

    .prologue
    .line 70
    if-eqz p0, :cond_5

    .line 71
    const-string v0, "/system/media/audio/ui/VideoRecord.ogg"

    .line 77
    .local v0, "soundFilePath":Ljava/lang/String;
    :goto_4
    return-object v0

    .line 73
    .end local v0    # "soundFilePath":Ljava/lang/String;
    :cond_5
    const-string v0, "off"

    .restart local v0    # "soundFilePath":Ljava/lang/String;
    goto :goto_4
.end method

.method public static getShutterSoundFilePath(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Ljava/lang/String;
    .registers 3
    .param p0, "cont"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->isShutterSoundEnabled(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v0

    .line 51
    .local v0, "sound":Z
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->getShutterSoundFilePath(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShutterSoundFilePath(Z)Ljava/lang/String;
    .registers 2
    .param p0, "isShutterSoundEnabled"    # Z

    .prologue
    .line 57
    if-eqz p0, :cond_5

    .line 58
    const-string v0, "/system/media/audio/ui/camera_click.ogg"

    .line 64
    .local v0, "soundFilePath":Ljava/lang/String;
    :goto_4
    return-object v0

    .line 60
    .end local v0    # "soundFilePath":Ljava/lang/String;
    :cond_5
    const-string v0, "off"

    .restart local v0    # "soundFilePath":Ljava/lang/String;
    goto :goto_4
.end method

.method public static isGeoTagEnabled(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Landroid/content/Context;)Z
    .registers 5
    .param p0, "geotag"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne p0, v2, :cond_16

    .line 94
    const-string v2, "gps"

    invoke-static {p1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 96
    .local v0, "gps":Z
    const-string v2, "network"

    invoke-static {p1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 99
    .local v1, "net":Z
    if-nez v0, :cond_14

    if-eqz v1, :cond_16

    .line 101
    :cond_14
    const/4 v2, 0x1

    .line 104
    .end local v0    # "gps":Z
    .end local v1    # "net":Z
    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static isShutterSoundEnabled(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z
    .registers 4
    .param p0, "act"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    .line 83
    .local v0, "commonvalue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    if-ne v0, v1, :cond_10

    .line 84
    const/4 v1, 0x0

    .line 86
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x1

    goto :goto_f
.end method
