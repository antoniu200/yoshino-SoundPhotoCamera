.class public Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;
.super Ljava/lang/Object;
.source "ParamSharedPrefWrapper.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final VERSION_KEY:Ljava/lang/String; = "SHARED_PREFERNCE_VERSION"


# instance fields
.field private final mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

.field private final mSharedPreferenceName:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v2, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-direct {v2, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    .line 54
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mSharedPreferenceName:Ljava/lang/String;

    .line 56
    if-eqz p3, :cond_14

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 58
    :cond_14
    const-string v2, ""

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mVersion:Ljava/lang/String;

    .line 78
    :cond_18
    :goto_18
    return-void

    .line 61
    :cond_19
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mVersion:Ljava/lang/String;

    .line 63
    const-string v2, "SHARED_PREFERNCE_VERSION"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "sharedVersion":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mVersion:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    .local v0, "isAvailabeVersion":Z
    if-nez v0, :cond_18

    .line 75
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->clear()V

    .line 76
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    const-string v3, "SHARED_PREFERNCE_VERSION"

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->setParamToSP(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method


# virtual methods
.method public checkFirmwareVersionUpdated()V
    .registers 5

    .prologue
    .line 196
    const-string v2, "android.os.Build.FINGERPRINT"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "cachedVersion":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 198
    .local v1, "currentVersion":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 201
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->clear()V

    .line 202
    const-string v2, "android.os.Build.FINGERPRINT"

    invoke-virtual {p0, v2, v1}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->setParamToSP(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_18
    return-void
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->clear()V

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    const-string v1, "SHARED_PREFERNCE_VERSION"

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->setParamToSP(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public getParamFromSP(Ljava/lang/String;F)F
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->getParamFromSP(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getParamFromSP(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->getParamFromSP(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParamFromSP(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->getParamFromSP(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSharedPreferenceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mSharedPreferenceName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setParamToSP(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->setParamToSP(Ljava/lang/String;F)V

    .line 149
    return-void
.end method

.method public setParamToSP(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->setParamToSP(Ljava/lang/String;I)V

    .line 107
    return-void
.end method

.method public setParamToSP(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->setParamToSP(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public setParamToSP(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->mParamSharedPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->setParamToSP(Ljava/lang/String;Z)V

    .line 128
    return-void
.end method
