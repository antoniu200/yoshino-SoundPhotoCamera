.class public Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
.super Ljava/lang/Object;
.source "CameraStorageManager.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsAlreadyLastFileTask;,
        Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;,
        Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$ExternalMemoryListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    }
.end annotation


# static fields
.field private static final SP_KEY_CHECK_SDCARD_STATE_AT_FIRST_LAUNCH_AFTER_DATA_CLEARED:Ljava/lang/String; = "is-sdcard-unavailable-while-storage-setting-is-sdcard-at-first-launch-after-data-cleared"

.field public static final TAG:Ljava/lang/String; = "CameraStorageManager"

.field public static final TIMEOUT_CHECK_FSWRITABLE:I = 0xbb8

.field public static final TIMEOUT_GET_STATFS:I = 0xdac


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

.field private final mDcfPathBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;",
            "Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mLastStorageStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;",
            "Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private final mSlowMotionPathBuilder:Lcom/sonyericsson/cameracommon/mediasaving/SlowMotionPathBuilder;

.field private mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

.field private mWritableCheckResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "storageManager"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;Z)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;Z)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "storageController"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;
    .param p3, "isDelayedInitializationRequired"    # Z

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 74
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    .line 79
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 85
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/SlowMotionPathBuilder;

    const-string v1, ".mp4"

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SlowMotionPathBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mSlowMotionPathBuilder:Lcom/sonyericsson/cameracommon/mediasaving/SlowMotionPathBuilder;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mWritableCheckResult:Ljava/util/HashMap;

    .line 114
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    .line 115
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    .line 119
    if-eqz p3, :cond_2a

    .line 124
    :goto_29
    return-void

    .line 122
    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->initialize(Z)V

    goto :goto_29
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->checkFsWritable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static checkFsWritable(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mountedPath"    # Ljava/lang/String;

    .prologue
    .line 533
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_13

    .line 535
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_13

    .line 536
    const/4 v1, 0x0

    .line 539
    :goto_12
    return v1

    :cond_13
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    goto :goto_12
.end method

.method private getLastStorageState()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .registers 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    return-object v0
.end method

.method private getNextStateFromRemain(J)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .registers 8
    .param p1, "availableSize"    # J

    .prologue
    .line 490
    const-wide/32 v2, 0x25800

    cmp-long v1, p1, v2

    if-lez v1, :cond_a

    .line 491
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 500
    .local v0, "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :goto_9
    return-object v0

    .line 492
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_a
    const-wide/32 v2, 0xf000

    cmp-long v1, p1, v2

    if-lez v1, :cond_14

    .line 493
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_9

    .line 495
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_14
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_9
.end method

.method private getNextStateFromVolume(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .registers 5
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .prologue
    .line 264
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    if-ne p1, v2, :cond_f

    .line 265
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->isExistRemovableStorage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 266
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 294
    :goto_e
    return-object v0

    .line 270
    :cond_f
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getVolumeState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "state":Ljava/lang/String;
    const-string v2, "bad_removal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 276
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .local v0, "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_e

    .line 277
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_20
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 278
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_e

    .line 279
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_2b
    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 280
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_e

    .line 281
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_36
    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 282
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_e

    .line 283
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_41
    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 284
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_e

    .line 285
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_4c
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 286
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_e

    .line 287
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_57
    const-string v2, "checking"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 288
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_CHECKING:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_e

    .line 289
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_62
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 290
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_e

    .line 292
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_6d
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_e
.end method

.method private getNextStateFromWritable(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Z)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .registers 7
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p2, "isSdCardCorruptCheck"    # Z

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromType(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "storage":Ljava/lang/String;
    if-nez v1, :cond_13

    .line 306
    const-string v2, "CameraStorageManager"

    const-string v3, "getNextStateFromWritable(): storage path is null"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_NO_DCIM:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 326
    :cond_12
    :goto_12
    return-object v0

    .line 308
    :cond_13
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    if-ne p1, v2, :cond_31

    .line 309
    if-eqz p2, :cond_2a

    .line 310
    const/16 v2, 0xbb8

    invoke-direct {p0, v1, p1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->requestCheckWritable(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;I)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v0

    .line 312
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    if-ne v0, v2, :cond_12

    .line 313
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setSdCardCorrupt(Z)V

    goto :goto_12

    .line 316
    :cond_2a
    const/16 v2, 0xdac

    invoke-direct {p0, v1, p1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->requestCheckWritable(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;I)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v0

    goto :goto_12

    .line 319
    :cond_31
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->requestCheckWritable(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;I)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v0

    goto :goto_12
.end method

.method private isReadable(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Z
    .registers 4
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .prologue
    .line 808
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$CameraStorageManager$DetailStorageState:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 818
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 816
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 808
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private isReadable(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)Z
    .registers 4
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .prologue
    .line 800
    if-nez p1, :cond_4

    .line 801
    const/4 v1, 0x0

    .line 804
    :goto_3
    return v1

    .line 803
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 804
    .local v0, "state":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReadable(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Z

    move-result v1

    goto :goto_3
.end method

.method private isReady(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Z
    .registers 5
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .prologue
    const/4 v0, 0x0

    .line 772
    if-nez p1, :cond_4

    .line 781
    :goto_3
    return v0

    .line 775
    :cond_4
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$CameraStorageManager$DetailStorageState:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_12

    goto :goto_3

    .line 779
    :pswitch_10
    const/4 v0, 0x1

    goto :goto_3

    .line 775
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method private logStorageState()V
    .registers 1

    .prologue
    .line 523
    return-void
.end method

.method private requestCheckWritable(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;I)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .registers 8
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p3, "timeOut"    # I

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    if-ne v1, p2, :cond_2c

    .line 333
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mWritableCheckResult:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 334
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mWritableCheckResult:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 339
    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :goto_15
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    if-ne v0, v1, :cond_1f

    .line 340
    div-int/lit8 v1, p3, 0x2

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setupCheckFsAlreadyLastFileTask(Ljava/lang/String;I)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v0

    .line 358
    :cond_1f
    :goto_1f
    return-object v0

    .line 336
    :cond_20
    div-int/lit8 v1, p3, 0x2

    invoke-direct {p0, p1, p2, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setupCheckFsDirectoryWritableTask(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;I)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mWritableCheckResult:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 343
    :cond_2c
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mWritableCheckResult:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 344
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mWritableCheckResult:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 350
    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :goto_3c
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    if-ne v0, v1, :cond_1f

    .line 351
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsAlreadyLastFileTask;

    invoke-direct {v1, p1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsAlreadyLastFileTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsAlreadyLastFileTask;->call()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v0

    goto :goto_1f

    .line 346
    :cond_4a
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;-><init>(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    .line 347
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;->call()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mWritableCheckResult:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c
.end method

.method private setLastStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V
    .registers 4
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p2, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->updateStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V

    .line 511
    return-void
.end method

.method private setupCheckFsAlreadyLastFileTask(Ljava/lang/String;I)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .registers 13
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "timeOut"    # I

    .prologue
    const/4 v9, 0x1

    .line 387
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 388
    .local v3, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsAlreadyLastFileTask;

    invoke-direct {v6, p1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsAlreadyLastFileTask;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-interface {v3, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 391
    .local v4, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;>;"
    const/4 v5, 0x0

    .line 393
    .local v5, "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    int-to-long v6, p2

    :try_start_10
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-object v5, v0
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_1a} :catch_2c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_10 .. :try_end_1a} :catch_44
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_10 .. :try_end_1a} :catch_47
    .catchall {:try_start_10 .. :try_end_1a} :catchall_3c

    .line 397
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 398
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 401
    :goto_20
    if-nez v5, :cond_2b

    .line 402
    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 403
    const-string v6, "CameraStorageManager"

    const-string v7, "setupCheckFsAlreadyLastFileTask() timed out"

    invoke-static {v6, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_2b
    return-object v5

    .line 394
    :catch_2c
    move-exception v6

    move-object v2, v6

    .line 395
    .local v2, "e":Ljava/lang/Exception;
    :goto_2e
    :try_start_2e
    const-string v6, "CameraStorageManager"

    const-string v7, "setupCheckFsAlreadyLastFileTask(): "

    invoke-static {v6, v7, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_3c

    .line 397
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 398
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_20

    .line 397
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_3c
    move-exception v6

    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 398
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v6

    .line 394
    :catch_44
    move-exception v6

    move-object v2, v6

    goto :goto_2e

    :catch_47
    move-exception v6

    move-object v2, v6

    goto :goto_2e
.end method

.method private setupCheckFsDirectoryWritableTask(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;I)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .registers 14
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p3, "timeOut"    # I

    .prologue
    const/4 v9, 0x1

    .line 363
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 364
    .local v3, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-direct {v6, p1, p2, v7, v8}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$CheckFsDirectoryWritableTask;-><init>(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    .line 365
    invoke-interface {v3, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 368
    .local v4, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;>;"
    const/4 v5, 0x0

    .line 370
    .local v5, "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    int-to-long v6, p3

    :try_start_14
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-object v5, v0
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1e} :catch_30
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14 .. :try_end_1e} :catch_48
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_14 .. :try_end_1e} :catch_4b
    .catchall {:try_start_14 .. :try_end_1e} :catchall_40

    .line 374
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 375
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 378
    :goto_24
    if-nez v5, :cond_2f

    .line 379
    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 380
    const-string v6, "CameraStorageManager"

    const-string v7, "setupCheckFsDirectoryWritableTask() timed out"

    invoke-static {v6, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_2f
    return-object v5

    .line 371
    :catch_30
    move-exception v6

    move-object v2, v6

    .line 372
    .local v2, "e":Ljava/lang/Exception;
    :goto_32
    :try_start_32
    const-string v6, "CameraStorageManager"

    const-string v7, "setupCheckFsDirectoryWritableTask(): "

    invoke-static {v6, v7, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_40

    .line 374
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 375
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_24

    .line 374
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_40
    move-exception v6

    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 375
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v6

    .line 371
    :catch_48
    move-exception v6

    move-object v2, v6

    goto :goto_32

    :catch_4b
    move-exception v6

    move-object v2, v6

    goto :goto_32
.end method

.method private updateAllStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;JLjava/lang/String;)V
    .registers 11
    .param p1, "targetStorage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p2, "reservedSize"    # J
    .param p4, "intentAction"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateAllStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;JLjava/lang/String;Z)V

    .line 191
    return-void
.end method

.method private updateAllStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;JLjava/lang/String;Z)V
    .registers 16
    .param p1, "targetStorage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p2, "reservedSize"    # J
    .param p4, "intentAction"    # Ljava/lang/String;
    .param p5, "isSdCardCorruptCheck"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getMountableStorageTypes(Landroid/content/Context;)[Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v7

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_9
    if-ge v6, v8, :cond_24

    aget-object v1, v7, v6

    .line 196
    .local v1, "storage":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 197
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;JLjava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 195
    :goto_16
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_9

    .line 199
    :cond_1a
    const-wide/16 v2, 0x0

    const-string v4, ""

    move-object v0, p0

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;JLjava/lang/String;Z)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    goto :goto_16

    .line 202
    .end local v1    # "storage":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    :cond_24
    return-void
.end method

.method private updateStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;JLjava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .registers 11
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p2, "reservedSize"    # J
    .param p4, "intentAction"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;JLjava/lang/String;Z)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v0

    return-object v0
.end method

.method private updateStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;JLjava/lang/String;Z)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .registers 10
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p2, "reservedSize"    # J
    .param p4, "intentAction"    # Ljava/lang/String;
    .param p5, "isSdCardCorruptCheck"    # Z

    .prologue
    .line 225
    const-wide/16 v0, 0x0

    .line 228
    .local v0, "availableSize":J
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getNextStateFromVolume(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v2

    .line 231
    .local v2, "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 232
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 233
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 240
    :cond_18
    :goto_18
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    if-ne v2, v3, :cond_20

    .line 241
    invoke-direct {p0, p1, p5}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getNextStateFromWritable(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Z)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v2

    .line 245
    :cond_20
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    if-ne v2, v3, :cond_2c

    .line 246
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateAvailableStorageSize(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;J)J

    move-result-wide v0

    .line 247
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getNextStateFromRemain(J)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v2

    .line 255
    :cond_2c
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 256
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v3, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setAvailableStorageSize(J)V

    .line 259
    :cond_39
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setLastStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V

    .line 260
    return-object v2

    .line 235
    :cond_3d
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    goto :goto_18
.end method


# virtual methods
.method public addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V
    .registers 3
    .param p1, "cb"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 551
    return-void
.end method

.method public getDcimDirectory()Ljava/lang/String;
    .registers 3

    .prologue
    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getRootDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoPath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 910
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    .line 911
    .local v0, "pathBuilder":Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
    if-eqz v0, :cond_15

    .line 912
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getPhotoPath(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 914
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getPredictiveCapturePhotoPath(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)Ljava/lang/String;
    .registers 4
    .param p1, "savingRequest"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    .line 922
    .line 923
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getDcimDirectory()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    .line 922
    invoke-static {v0, p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->getPhotoPath(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadableStoragePaths()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 830
    .local v2, "type":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReadable(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 831
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromType(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 833
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 837
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "type":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    :cond_2d
    return-object v0
.end method

.method public getRootDirectory()Ljava/lang/String;
    .registers 4

    .prologue
    .line 891
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromType(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, "path":Ljava/lang/String;
    return-object v0
.end method

.method public getStatFs(Ljava/lang/String;)Landroid/os/StatFs;
    .registers 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 651
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 652
    .local v3, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$GetStatFsTask;

    invoke-direct {v6, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$GetStatFsTask;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 654
    .local v4, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/os/StatFs;>;"
    const/4 v5, 0x0

    .line 657
    .local v5, "statFs":Landroid/os/StatFs;
    const-wide/16 v6, 0xdac

    :try_start_11
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/os/StatFs;

    move-object v5, v0
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_1b} :catch_22
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_1b} :catch_31
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_11 .. :try_end_1b} :catch_40
    .catchall {:try_start_11 .. :try_end_1b} :catchall_4f

    .line 665
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 666
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 669
    :goto_21
    return-object v5

    .line 658
    :catch_22
    move-exception v2

    .line 659
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_23
    const-string v6, "CameraStorageManager"

    const-string v7, "GetStatFsTask has been interrupted."

    invoke-static {v6, v7, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_4f

    .line 665
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 666
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_21

    .line 660
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_31
    move-exception v2

    .line 661
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_32
    const-string v6, "CameraStorageManager"

    const-string v7, "GetStatFsTask failed."

    invoke-static {v6, v7, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_4f

    .line 665
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 666
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_21

    .line 662
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_40
    move-exception v2

    .line 663
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_41
    const-string v6, "CameraStorageManager"

    const-string v7, "GetStatFsTask failed."

    invoke-static {v6, v7, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4f

    .line 665
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 666
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_21

    .line 665
    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_4f
    move-exception v6

    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 666
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v6
.end method

.method public getVideoPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 933
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    .line 934
    .local v0, "pathBuilder":Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
    if-eqz v0, :cond_1f

    .line 935
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getVideoPath(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 938
    :goto_1e
    return-object v1

    :cond_1f
    const-string v1, "/dev/null"

    goto :goto_1e
.end method

.method public hasEnoughFreeSpace()Z
    .registers 5

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getLastStorageState()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v1

    .line 743
    .local v1, "state":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$CameraStorageManager$DetailStorageState:[I

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_14

    .line 748
    const/4 v0, 0x0

    .line 752
    .local v0, "hasEnoughFreeSpace":Z
    :goto_10
    return v0

    .line 745
    .end local v0    # "hasEnoughFreeSpace":Z
    :pswitch_11
    const/4 v0, 0x1

    .line 746
    .restart local v0    # "hasEnoughFreeSpace":Z
    goto :goto_10

    .line 743
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch
.end method

.method public initialize(Z)V
    .registers 11
    .param p1, "isSdCardCorruptCheck"    # Z

    .prologue
    const/4 v0, 0x0

    .line 130
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->STORAGE_MANAGER_SETUP:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;->begin()V

    .line 132
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v2, v3, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setStoragePriority(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;I)V

    .line 134
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setStoragePriority(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;I)V

    .line 136
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    const-string v3, "storage_preferences"

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 138
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    .line 139
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getMountableStorageTypes(Landroid/content/Context;)[Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v7

    array-length v8, v7

    move v6, v0

    :goto_2e
    if-ge v6, v8, :cond_3f

    aget-object v1, v7, v6

    .line 140
    .local v1, "storage":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    const-wide/16 v2, 0x0

    const-string v4, ""

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;JLjava/lang/String;Z)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 139
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2e

    .line 142
    .end local v1    # "storage":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    :cond_3f
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->STORAGE_MANAGER_SETUP:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/PerfLog;->end()V

    .line 143
    return-void
.end method

.method public isCurrentStorageExternal()Z
    .registers 3

    .prologue
    .line 723
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isExternalStorageUnavailableWithExternalStorageSettingAtFirstLaunch()Z
    .registers 3

    .prologue
    .line 865
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "is-sdcard-unavailable-while-storage-setting-is-sdcard-at-first-launch-after-data-cleared"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 867
    const/4 v0, 0x0

    .line 870
    :goto_b
    return v0

    .line 869
    :cond_c
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->saveExternalStorageStateAtFirstLaunchInPrefs()V

    .line 870
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public isReadable()Z
    .registers 3

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getLastStorageState()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v0

    .line 796
    .local v0, "state":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReadable(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Z

    move-result v1

    return v1
.end method

.method public isReady()Z
    .registers 3

    .prologue
    .line 761
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getLastStorageState()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v0

    .line 762
    .local v0, "state":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Z

    move-result v1

    return v1
.end method

.method public isStorageExternal(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)Z
    .registers 3
    .param p1, "storageType"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .prologue
    .line 727
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isStorageInternal(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)Z
    .registers 3
    .param p1, "storageType"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .prologue
    .line 731
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isToggledStorageReady()Z
    .registers 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->isToggledStorageReady()Z

    move-result v0

    return v0
.end method

.method public onMediaScanFinished()V
    .registers 4

    .prologue
    .line 546
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Z)V

    .line 547
    return-void
.end method

.method public onStorageCheckRequested(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V
    .registers 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .prologue
    const/4 v5, 0x0

    .line 167
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 168
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setSdCardCorrupt(Z)V

    .line 170
    :cond_e
    const-wide/16 v2, 0x0

    invoke-direct {p0, p2, v2, v3, p1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateAllStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;JLjava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->saveExternalStorageStateAtFirstLaunchInPrefs()V

    .line 175
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const/4 v4, 0x1

    invoke-virtual {v3, p2, v2, v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkAllState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;ZZ)V

    .line 178
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 179
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getRootDirectory()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_3f

    .line 181
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, "pathBuilder":Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->startScan()V

    .line 186
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "pathBuilder":Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
    :cond_3f
    return-void
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 841
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->pause()V

    .line 842
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setSdCardCorrupt(Z)V

    .line 843
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mWritableCheckResult:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 844
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->release()V

    .line 848
    return-void
.end method

.method public removeStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V
    .registers 3
    .param p1, "cb"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->removeStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 555
    return-void
.end method

.method public requestCheckAll()V
    .registers 6

    .prologue
    .line 636
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 637
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 638
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReadable(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)Z

    move-result v3

    const/4 v4, 0x0

    .line 636
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkAllState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;ZZ)V

    .line 639
    return-void
.end method

.method public resume(Z)V
    .registers 8
    .param p1, "isSdCardCorruptCheck"    # Z

    .prologue
    .line 583
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, ""

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateAllStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;JLjava/lang/String;Z)V

    .line 584
    return-void
.end method

.method public saveExternalStorageStateAtFirstLaunchInPrefs()V
    .registers 4

    .prologue
    .line 876
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 877
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_11

    .line 878
    const-string v1, "is-sdcard-unavailable-while-storage-setting-is-sdcard-at-first-launch-after-data-cleared"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 881
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 883
    :cond_11
    return-void
.end method

.method public saveExternalStorageStateInPrefs()V
    .registers 3

    .prologue
    .line 856
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReadable(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->saveExternalStorageStateInPrefs(Z)V

    .line 858
    return-void
.end method

.method public setCurrentStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V
    .registers 3
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .prologue
    .line 592
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setCurrentStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/os/Handler;)V

    .line 593
    return-void
.end method

.method public setCurrentStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/os/Handler;)V
    .registers 9
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 605
    if-nez p1, :cond_3

    .line 630
    :goto_2
    return-void

    .line 608
    :cond_3
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 609
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getRootDirectory()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_28

    .line 611
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 612
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;-><init>(Ljava/lang/String;)V

    .line 613
    .local v1, "pathBuilder":Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .end local v1    # "pathBuilder":Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
    :cond_1d
    :goto_1d
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->startScan()V

    .line 623
    :cond_28
    if-eqz p2, :cond_58

    .line 624
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v2, v3, p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setCurrentStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/os/Handler;)V

    .line 629
    :goto_31
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    const-wide/16 v4, 0x0

    const-string v3, ""

    invoke-direct {p0, v2, v4, v5, v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;JLjava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    goto :goto_2

    .line 614
    :cond_3b
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getRootPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 617
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;-><init>(Ljava/lang/String;)V

    .line 618
    .restart local v1    # "pathBuilder":Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mDcfPathBuilderMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 626
    .end local v1    # "pathBuilder":Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
    :cond_58
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setCurrentStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V

    goto :goto_31
.end method

.method public updateAvailableStorageSize(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;J)J
    .registers 22
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p2, "reservedSize"    # J

    .prologue
    .line 681
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromType(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 682
    .local v9, "path":Ljava/lang/String;
    if-nez v9, :cond_29

    .line 683
    const-string v11, "CameraStorageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Storage is not mounted. : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-wide/16 v2, 0x0

    .line 719
    :goto_28
    return-wide v2

    .line 686
    :cond_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getStatFs(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object v10

    .line 689
    .local v10, "statFs":Landroid/os/StatFs;
    if-nez v10, :cond_4c

    .line 690
    const-string v11, "CameraStorageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to get StatFs: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-wide/16 v2, 0x0

    goto :goto_28

    .line 695
    :cond_4c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getVolumeState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 696
    .local v8, "envState":Ljava/lang/String;
    const-string v11, "mounted"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_61

    .line 697
    const-wide/16 v2, 0x0

    goto :goto_28

    .line 702
    :cond_61
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x11

    if-gt v11, v12, :cond_80

    .line 703
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v6, v11

    .line 704
    .local v6, "blocksize":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v4, v11

    .line 715
    .local v4, "blocknum":J
    :goto_71
    const-wide/16 v12, 0x0

    mul-long v14, v6, v4

    sub-long v14, v14, p2

    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 719
    .local v2, "availableSize":J
    goto :goto_28

    .line 707
    .end local v2    # "availableSize":J
    .end local v4    # "blocknum":J
    .end local v6    # "blocksize":J
    :cond_80
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    .line 708
    .restart local v6    # "blocksize":J
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    .restart local v4    # "blocknum":J
    goto :goto_71
.end method

.method public updateRemain(JZ)J
    .registers 7
    .param p1, "reservedSize"    # J
    .param p3, "forceNotify"    # Z

    .prologue
    .line 558
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateRemain(JZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public updateRemain(JZZ)J
    .registers 12
    .param p1, "reservedSize"    # J
    .param p3, "forceNotify"    # Z
    .param p4, "showDialog"    # Z

    .prologue
    .line 572
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    const-string v1, ""

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateAllStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;JLjava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 574
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReadable(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)Z

    move-result v3

    move v4, p3

    move v5, p4

    .line 573
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkAllState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;ZZZ)V

    .line 575
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getAvailableStorageSize()J

    move-result-wide v0

    return-wide v0
.end method
