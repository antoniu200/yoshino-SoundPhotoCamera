.class public Lcom/sonymobile/android/addoncamera/soundphoto/provider/SoundPhotoSettingsProvider;
.super Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;
.source "SoundPhotoSettingsProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.android.addoncamera.soundphoto.provider"

.field private static final DATABASE_NAME:Ljava/lang/String; = "soundphoto.db"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;-><init>()V

    return-void
.end method

.method public static getSpecificAuthority()Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    const-string v0, "com.sonymobile.android.addoncamera.soundphoto.provider"

    return-object v0
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    const-string v0, "com.sonymobile.android.addoncamera.soundphoto.provider"

    return-object v0
.end method

.method protected getDataBaseName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    const-string v0, "soundphoto.db"

    return-object v0
.end method
