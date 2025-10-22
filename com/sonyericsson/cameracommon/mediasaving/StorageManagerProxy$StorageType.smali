.class public final enum Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;
.super Ljava/lang/Enum;
.source "StorageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

.field public static final enum EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

.field public static final enum EXTERNAL_USB:Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

.field public static final enum INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

.field public static final enum UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    .line 76
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    const-string v1, "EXTERNAL_CARD"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    .line 77
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    const-string v1, "EXTERNAL_USB"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;->EXTERNAL_USB:Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    .line 78
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;->EXTERNAL_USB:Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    return-object v0
.end method
