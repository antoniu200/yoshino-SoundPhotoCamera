.class public final enum Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
.super Ljava/lang/Enum;
.source "CameraStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetailStorageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_CHECKING:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_NO_DCIM:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_UNGRANTED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_READY"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 55
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_READY_LOW"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 56
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_READ_ONLY"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 57
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_SHARED"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 58
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_FORMAT"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 59
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_NO_MEMORY_CARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 60
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_ACCESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 61
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_FULL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 62
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_TIMED_OUT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 63
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_NO_DCIM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_NO_DCIM:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 64
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_CHECKING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_CHECKING:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 65
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_UNGRANTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_UNGRANTED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 53
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_NO_DCIM:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_CHECKING:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_UNGRANTED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    return-object v0
.end method
