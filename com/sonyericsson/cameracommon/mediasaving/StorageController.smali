.class public Lcom/sonyericsson/cameracommon/mediasaving/StorageController;
.super Ljava/lang/Object;
.source "StorageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/StorageController$NotifyStorageChangedTask;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageController$SdCorruptListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "StorageController"


# instance fields
.field protected mAvailableSize:J

.field protected mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

.field private mIsOneShot:Z

.field private mIsSdcardCorrupt:Z

.field protected mLatestCheckedStorageState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

.field protected mSdCorruptListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$SdCorruptListener;

.field protected mStoragePriority:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mStorageStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;",
            ">;"
        }
    .end annotation
.end field

.field protected mViewFinder:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;)V
    .registers 3
    .param p1, "viewFinder"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;Z)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;Z)V
    .registers 5
    .param p1, "viewFinder"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;
    .param p2, "isDelayedInitializationRequired"    # Z

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 123
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 125
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    .line 127
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    .line 129
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mLatestCheckedStorageState:Ljava/util/Map;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mIsSdcardCorrupt:Z

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    .line 175
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mViewFinder:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;

    .line 177
    if-eqz p2, :cond_1f

    .line 182
    :goto_1e
    return-void

    .line 180
    :cond_1f
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->initialize()V

    goto :goto_1e
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->notifyStorageChanged()V

    return-void
.end method

.method private notifyAvailableSize(J)V
    .registers 6
    .param p1, "available"    # J

    .prologue
    .line 435
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .line 436
    .local v0, "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;->onAvailableSizeUpdated(J)V

    goto :goto_6

    .line 438
    .end local v0    # "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    :cond_16
    return-void
.end method

.method private notifyStateChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V
    .registers 5
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .prologue
    .line 403
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .line 404
    .local v0, "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;->onStorageStateChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V

    goto :goto_6

    .line 406
    .end local v0    # "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    :cond_16
    return-void
.end method

.method private notifyStorageChanged()V
    .registers 4

    .prologue
    .line 412
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .line 413
    .local v0, "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;->onDestinationToSaveChanged()V

    goto :goto_6

    .line 415
    .end local v0    # "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    :cond_16
    return-void
.end method

.method private notifyStorageChangedAsync(Landroid/os/Handler;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 419
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$NotifyStorageChangedTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$NotifyStorageChangedTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageController;Lcom/sonyericsson/cameracommon/mediasaving/StorageController$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    return-void
.end method


# virtual methods
.method public addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V
    .registers 3
    .param p1, "cb"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_d
    return-void
.end method

.method protected checkAllState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;ZZ)V
    .registers 11
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p2, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .param p3, "isStorageEvent"    # Z
    .param p4, "forceNotify"    # Z

    .prologue
    .line 198
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkAllState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;ZZZ)V

    .line 199
    return-void
.end method

.method protected checkAllState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;ZZZ)V
    .registers 9
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p2, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .param p3, "isStorageEvent"    # Z
    .param p4, "forceNotify"    # Z
    .param p5, "showDialog"    # Z

    .prologue
    .line 216
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mViewFinder:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;->isHeadUpDisplayReady()Z

    move-result v1

    if-nez v1, :cond_9

    .line 232
    :cond_8
    return-void

    .line 223
    :cond_9
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 226
    .local v0, "targetStorage":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 227
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->getState(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->showOrClearStorageErrorPopup(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z

    .line 230
    :cond_2e
    invoke-virtual {p0, v0, p4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Z)V

    goto :goto_13
.end method

.method protected checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Z)V
    .registers 5
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p2, "forceNotify"    # Z

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mLatestCheckedStorageState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_10

    if-eqz p2, :cond_1e

    .line 349
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mLatestCheckedStorageState:Ljava/util/Map;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->notifyStateChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V

    .line 352
    :cond_1e
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mAvailableSize:J

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->notifyAvailableSize(J)V

    .line 353
    return-void
.end method

.method protected closeDialog(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    if-eqz v0, :cond_11

    .line 375
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->isMemoryErrorPopupOpened()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 376
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->cancelMemoryErrorPopup(Landroid/content/DialogInterface;)V

    .line 379
    :cond_11
    return-void
.end method

.method protected closeDialog(Z)V
    .registers 3
    .param p1, "closeOnlyError"    # Z

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    if-eqz v0, :cond_11

    .line 391
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->isMemoryErrorPopupOpened()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 392
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->cancelMemoryErrorPopup(Z)V

    .line 395
    :cond_11
    return-void
.end method

.method public getAvailableStorageSize()J
    .registers 3

    .prologue
    .line 579
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mAvailableSize:J

    return-wide v0
.end method

.method public getCurrentCameraStorageType()Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    return-object v0
.end method

.method public getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    .registers 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    return-object v0
.end method

.method public getStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    .registers 3
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    return-object v0
.end method

.method public initialize()V
    .registers 2

    .prologue
    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mLatestCheckedStorageState:Ljava/util/Map;

    .line 191
    return-void
.end method

.method public isCurrentStorageExternal()Z
    .registers 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 591
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isOneShotMode()Z
    .registers 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mIsOneShot:Z

    return v0
.end method

.method public isSdcardCorrupt()Z
    .registers 2

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mIsSdcardCorrupt:Z

    return v0
.end method

.method public isStorageDialogOpen()Z
    .registers 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->isMemoryErrorPopupOpened()Z

    move-result v0

    return v0
.end method

.method public isToggledStorageReady()Z
    .registers 6

    .prologue
    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, "isReady":Z
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 539
    .local v1, "storage":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 542
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-eq v3, v4, :cond_37

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    if-ne v3, v1, :cond_b

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    .line 544
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->UNGRANTED:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-ne v3, v4, :cond_b

    .line 545
    :cond_37
    const/4 v0, 0x1

    goto :goto_b

    .line 548
    .end local v1    # "storage":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    :cond_39
    return v0
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->closeDialog(Z)V

    .line 445
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 452
    return-void
.end method

.method public removeStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V
    .registers 3
    .param p1, "cb"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 304
    :cond_d
    return-void
.end method

.method protected requestErrorCheckLater(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V
    .registers 4
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mLatestCheckedStorageState:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    return-void
.end method

.method public saveExternalStorageStateInPrefs(Z)V
    .registers 2
    .param p1, "isExternalCardReadable"    # Z

    .prologue
    .line 599
    return-void
.end method

.method protected setAvailableStorageSize(J)V
    .registers 4
    .param p1, "size"    # J

    .prologue
    .line 571
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mAvailableSize:J

    .line 572
    return-void
.end method

.method public setCurrentStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V
    .registers 3
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setCurrentStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/os/Handler;)V

    .line 482
    return-void
.end method

.method public setCurrentStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/os/Handler;)V
    .registers 3
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 495
    if-eqz p2, :cond_8

    .line 496
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->notifyStorageChangedAsync(Landroid/os/Handler;)V

    .line 500
    :goto_7
    return-void

    .line 498
    :cond_8
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->notifyStorageChanged()V

    goto :goto_7
.end method

.method public setMessegePopup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V
    .registers 2
    .param p1, "messagePopup"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 556
    return-void
.end method

.method public setOneShotMode(Z)V
    .registers 2
    .param p1, "oneShot"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mIsOneShot:Z

    .line 152
    return-void
.end method

.method public setSdCardCorrupt(Z)V
    .registers 2
    .param p1, "isSdcardCorrupt"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mIsSdcardCorrupt:Z

    .line 327
    return-void
.end method

.method public setSdCorruptListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$SdCorruptListener;)V
    .registers 2
    .param p1, "sdCorruptListener"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$SdCorruptListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mSdCorruptListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$SdCorruptListener;

    .line 85
    return-void
.end method

.method public setStoragePriority(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;I)V
    .registers 5
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p2, "priority"    # I

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    return-void
.end method

.method protected showOrClearStorageErrorPopup(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z
    .registers 7
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .prologue
    const/4 v4, 0x1

    .line 241
    const/4 v0, -0x1

    .line 242
    .local v0, "textId":I
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_title_txt:I

    .line 243
    .local v1, "titleId":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->isCurrentStorageExternal()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 245
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_42

    .line 278
    :goto_19
    invoke-virtual {p0, v0, v1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->showStoragePopup(IIZ)Z

    move-result v2

    return v2

    .line 247
    :pswitch_1e
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->closeDialog(Z)V

    goto :goto_19

    .line 251
    :pswitch_22
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_full_txt:I

    .line 252
    goto :goto_19

    .line 257
    :pswitch_25
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_unavailable_txt:I

    goto :goto_19

    .line 262
    :cond_28
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4e

    goto :goto_19

    .line 264
    :pswitch_38
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->closeDialog(Z)V

    goto :goto_19

    .line 268
    :pswitch_3c
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_ims_full_txt:I

    .line 269
    goto :goto_19

    .line 274
    :pswitch_3f
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_ims_unavailable_txt:I

    goto :goto_19

    .line 245
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_22
        :pswitch_25
        :pswitch_25
    .end packed-switch

    .line 262
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_38
        :pswitch_3c
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method

.method protected showStoragePopup(IIZ)Z
    .registers 7
    .param p1, "textId"    # I
    .param p2, "titleId"    # I
    .param p3, "isError"    # Z

    .prologue
    .line 519
    const/4 v1, 0x0

    .line 521
    .local v1, "isShow":Z
    if-lez p1, :cond_c

    .line 524
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showMemoryError(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    .line 526
    .local v0, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    if-eqz v0, :cond_c

    .line 527
    const/4 v1, 0x1

    .line 530
    .end local v0    # "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    :cond_c
    return v1
.end method

.method public updateStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V
    .registers 5
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p2, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .prologue
    .line 313
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 323
    :goto_8
    return-void

    .line 317
    :cond_9
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->getState(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v0

    .line 322
    .local v0, "newState":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method
