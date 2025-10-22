.class Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsAlreadyLastFileTask;
.super Ljava/lang/Object;
.source "CameraStorageManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckFsAlreadyLastFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckFsAlreadyLastFileTask"


# instance fields
.field private final mStorage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsAlreadyLastFileTask;->mStorage:Ljava/lang/String;

    .line 470
    return-void
.end method


# virtual methods
.method public call()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .registers 3

    .prologue
    .line 477
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsAlreadyLastFileTask;->mStorage:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->isAlreadyLastFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 478
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 484
    .local v0, "state":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :goto_a
    return-object v0

    .line 480
    .end local v0    # "state":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_b
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "state":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_a
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsAlreadyLastFileTask;->call()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v0

    return-object v0
.end method
