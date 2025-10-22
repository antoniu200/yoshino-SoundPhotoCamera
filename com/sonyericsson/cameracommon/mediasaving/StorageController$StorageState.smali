.class public final enum Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
.super Ljava/lang/Enum;
.source "StorageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/StorageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

.field public static final enum AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

.field public static final enum FULL:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

.field public static final enum REMOVED:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

.field public static final TAG:Ljava/lang/String; = "StorageState"

.field public static final enum TIMEOUT:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

.field public static final enum UNAVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

.field public static final enum UNGRANTED:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;


# instance fields
.field private final mDetailStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 32
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    const-string v1, "REMOVED"

    new-array v2, v6, [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .line 34
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    const-string v1, "AVAILABLE"

    new-array v2, v7, [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v6, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .line 37
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    const-string v1, "UNAVAILABLE"

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_NO_DCIM:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v7, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->UNAVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .line 43
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    const-string v1, "FULL"

    new-array v2, v6, [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v8, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->FULL:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .line 45
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    const-string v1, "TIMEOUT"

    new-array v2, v6, [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v9, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->TIMEOUT:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .line 47
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    const-string v1, "UNGRANTED"

    const/4 v2, 0x5

    new-array v3, v6, [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_UNGRANTED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->UNGRANTED:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->UNAVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->FULL:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->TIMEOUT:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->UNGRANTED:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V
    .registers 5
    .param p3, "states"    # [Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->mDetailStateList:Ljava/util/List;

    .line 52
    return-void
.end method

.method public static getState(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    .registers 8
    .param p0, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .prologue
    .line 63
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->values()[Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v4, :cond_26

    aget-object v0, v3, v2

    .line 64
    .local v0, "candidate":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    iget-object v5, v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->mDetailStateList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 65
    .local v1, "envState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 70
    .end local v0    # "candidate":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    .end local v1    # "envState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :goto_22
    return-object v0

    .line 63
    .restart local v0    # "candidate":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 70
    .end local v0    # "candidate":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    :cond_26
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->UNAVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    goto :goto_22
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    return-object v0
.end method
