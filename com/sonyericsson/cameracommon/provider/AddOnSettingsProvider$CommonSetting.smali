.class interface abstract Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$CommonSetting;
.super Ljava/lang/Object;
.source "AddOnSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CommonSetting"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final MIME_TYPE:Ljava/lang/String; = "commonsetting"

.field public static final NAME:Ljava/lang/String; = "commonsettings"

.field public static final PATH:Ljava/lang/String; = "commonsettings"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/sonyericsson/cameracommon/appsui/CameraCommonProviderConstants;->COMMONSETTING_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$CommonSetting;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
