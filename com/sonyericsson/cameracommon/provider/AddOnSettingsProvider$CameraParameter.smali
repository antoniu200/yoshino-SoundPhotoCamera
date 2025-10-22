.class interface abstract Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$CameraParameter;
.super Ljava/lang/Object;
.source "AddOnSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CameraParameter"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final MIME_TYPE:Ljava/lang/String; = "cameraparameter"

.field public static final NAME:Ljava/lang/String; = "cameraparameters"

.field public static final PATH:Ljava/lang/String; = "cameraparameters"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/sonyericsson/cameracommon/appsui/CameraCommonProviderConstants;->CAMERAPARAMETER_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$CameraParameter;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
