.class Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;
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
    name = "CheckFsDirectoryWritableTask"
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
.field private static final TAG:Ljava/lang/String; = "CheckFsDirectoryWritableTask"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mStorage:Ljava/lang/String;

.field private final mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

.field private final mType:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V
    .registers 5
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "storageController"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;->mStorage:Ljava/lang/String;

    .line 419
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;->mType:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 420
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;->mActivity:Landroid/app/Activity;

    .line 421
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .line 422
    return-void
.end method


# virtual methods
.method public call()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .registers 6

    .prologue
    .line 428
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 430
    .local v2, "state":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;->mType:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    if-ne v3, v4, :cond_39

    .line 431
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getSdGrantedUri(Landroid/content/Context;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Landroid/net/Uri;

    move-result-object v1

    .line 432
    .local v1, "grantedUri":Landroid/net/Uri;
    if-eqz v1, :cond_36

    .line 433
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->isSdCardGranted(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 434
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->setSdCardGranted(Landroid/content/Context;Landroid/net/Uri;)V

    .line 460
    .end local v1    # "grantedUri":Landroid/net/Uri;
    :goto_1f
    return-object v2

    .line 436
    .restart local v1    # "grantedUri":Landroid/net/Uri;
    :cond_20
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_UNGRANTED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 438
    :try_start_22
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x3

    .line 439
    invoke-virtual {v3, v1, v4}, Landroid/content/ContentResolver;->releasePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_1f

    .line 442
    :catch_2d
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "CheckFsDirectoryWritableTask"

    const-string v4, "can not releasePersistableUriPermission"

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 447
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_36
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_UNGRANTED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    goto :goto_1f

    .line 450
    .end local v1    # "grantedUri":Landroid/net/Uri;
    :cond_39
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;->mStorage:Ljava/lang/String;

    # invokes: Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->checkFsWritable(Ljava/lang/String;)Z
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->access$000(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 451
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    goto :goto_1f

    .line 452
    :cond_44
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;->mStorage:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->checkAndCreateDirectory(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 453
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    goto :goto_1f

    .line 455
    :cond_51
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_NO_DCIM:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    goto :goto_1f
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;->call()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v0

    return-object v0
.end method
