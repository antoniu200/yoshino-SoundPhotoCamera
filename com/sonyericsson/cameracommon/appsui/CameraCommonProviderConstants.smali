.class public Lcom/sonyericsson/cameracommon/appsui/CameraCommonProviderConstants;
.super Ljava/lang/Object;
.source "CameraCommonProviderConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/appsui/CameraCommonProviderConstants$CommonSettingColumns;,
        Lcom/sonyericsson/cameracommon/appsui/CameraCommonProviderConstants$CameraParameterColumns;,
        Lcom/sonyericsson/cameracommon/appsui/CameraCommonProviderConstants$CapturingModeColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.camerauicommon.provider"

.field private static final BASE_URI:Landroid/net/Uri;

.field public static final CAMERAPARAMETER_CONTENT_URI:Landroid/net/Uri;

.field public static final CAMERAPARAMETER_TABLE:Ljava/lang/String; = "cameraparameters"

.field public static final CAPTURINGMODE_CONTENT_URI:Landroid/net/Uri;

.field public static final CAPTURINGMODE_TABLE:Ljava/lang/String; = "capturingmodes"

.field public static final COMMONSETTING_CONTENT_URI:Landroid/net/Uri;

.field public static final COMMONSETTING_TABLE:Ljava/lang/String; = "commonsettings"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    const-string v0, "content://com.sonymobile.camerauicommon.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/appsui/CameraCommonProviderConstants;->BASE_URI:Landroid/net/Uri;

    .line 30
    sget-object v0, Lcom/sonyericsson/cameracommon/appsui/CameraCommonProviderConstants;->BASE_URI:Landroid/net/Uri;

    const-string v1, "capturingmodes"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/appsui/CameraCommonProviderConstants;->CAPTURINGMODE_CONTENT_URI:Landroid/net/Uri;

    .line 35
    sget-object v0, Lcom/sonyericsson/cameracommon/appsui/CameraCommonProviderConstants;->BASE_URI:Landroid/net/Uri;

    const-string v1, "cameraparameters"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/appsui/CameraCommonProviderConstants;->CAMERAPARAMETER_CONTENT_URI:Landroid/net/Uri;

    .line 40
    sget-object v0, Lcom/sonyericsson/cameracommon/appsui/CameraCommonProviderConstants;->BASE_URI:Landroid/net/Uri;

    const-string v1, "commonsettings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/appsui/CameraCommonProviderConstants;->COMMONSETTING_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method
