.class public Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;
.super Ljava/lang/Object;
.source "CameraExtensionVersion.java"


# static fields
.field private static NOT_SUPPORTED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CameraExtensionVersion"


# instance fields
.field private mMajorVersion:I

.field private mMinorVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, -0x1

    sput v0, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->NOT_SUPPORTED:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget v2, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->NOT_SUPPORTED:I

    iput v2, p0, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->mMajorVersion:I

    .line 21
    sget v2, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->NOT_SUPPORTED:I

    iput v2, p0, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->mMinorVersion:I

    .line 25
    :try_start_c
    const-string v2, "\\."

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "versionSplit":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2a

    .line 29
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->mMajorVersion:I

    .line 30
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->mMinorVersion:I

    .line 39
    .end local v1    # "versionSplit":[Ljava/lang/String;
    :cond_29
    :goto_29
    return-void

    .line 31
    .restart local v1    # "versionSplit":[Ljava/lang/String;
    :cond_2a
    array-length v2, v1

    if-ne v2, v4, :cond_29

    .line 33
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->mMajorVersion:I

    .line 34
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->mMinorVersion:I
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_39} :catch_3a

    goto :goto_29

    .line 36
    .end local v1    # "versionSplit":[Ljava/lang/String;
    :catch_3a
    move-exception v0

    .line 37
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v2, "CameraExtensionVersion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version NumberFormatException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method


# virtual methods
.method public isLaterThanOrEqualTo(II)Z
    .registers 5
    .param p1, "targetMajor"    # I
    .param p2, "targetMinor"    # I

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isSupported()Z

    move-result v1

    if-nez v1, :cond_8

    .line 50
    const/4 v0, 0x0

    .line 65
    :goto_7
    return v0

    .line 53
    :cond_8
    const/4 v0, 0x0

    .line 54
    .local v0, "result":Z
    iget v1, p0, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->mMajorVersion:I

    if-le v1, p1, :cond_f

    .line 55
    const/4 v0, 0x1

    goto :goto_7

    .line 56
    :cond_f
    iget v1, p0, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->mMajorVersion:I

    if-ne v1, p1, :cond_1b

    .line 57
    iget v1, p0, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->mMinorVersion:I

    if-lt v1, p2, :cond_19

    .line 58
    const/4 v0, 0x1

    goto :goto_7

    .line 60
    :cond_19
    const/4 v0, 0x0

    goto :goto_7

    .line 63
    :cond_1b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSupported()Z
    .registers 3

    .prologue
    .line 42
    iget v0, p0, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->mMajorVersion:I

    sget v1, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->NOT_SUPPORTED:I

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->mMinorVersion:I

    sget v1, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->NOT_SUPPORTED:I

    if-ne v0, v1, :cond_e

    .line 43
    :cond_c
    const/4 v0, 0x0

    .line 45
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method
