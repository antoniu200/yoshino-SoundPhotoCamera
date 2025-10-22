.class public Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants;
.super Ljava/lang/Object;
.source "CommonSettingConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$HelpGuideValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$GridLineValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$DoNotShowAgainCheckForGeotagDialogValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$TouchBlockValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$SoftwareLicenses;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$TermOfUseValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$VolumeKeyValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$TouchCaptureForCameraUiValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$TouchCaptureValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$ShutterSoundValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$StorageValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$GeoTagValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$FastCaptureValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$PhotoLightValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$FlashValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$AutoReviewForCameraUiValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$AutoReviewValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$AutoUploadValue;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$CommonSettingColumns;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.android.addoncamera.dummy.provider"

.field public static final COMMONSETTING_TABLE:Ljava/lang/String; = "commonsettings"

.field public static final TAG:Ljava/lang/String; = "CommonSettingConstants"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthority()Ljava/lang/String;
    .registers 1

    .prologue
    .line 210
    const-string v0, "com.sonymobile.android.addoncamera.dummy.provider"

    return-object v0
.end method
