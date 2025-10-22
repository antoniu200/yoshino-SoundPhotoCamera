.class public final enum Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
.super Ljava/lang/Enum;
.source "StorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraStorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

.field public static final enum EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

.field public static final enum INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

.field public static final enum UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

.field public static final enum USB:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 337
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    const-string v1, "EXTERNAL_CARD"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 342
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    const-string v1, "USB"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->USB:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 347
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 328
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->USB:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 328
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .registers 1

    .prologue
    .line 328
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    return-object v0
.end method
