.class public Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;
.super Lcom/sonyericsson/cameracommon/mediasaving/StorageController;
.source "StorageAutoSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogDismissListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelClickListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogOkClickListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;
    }
.end annotation


# static fields
.field public static final SP_KEY_IS_AUTO_SWITCH_TRIGGERED:Ljava/lang/String; = "is-auto_switch_triggered"

.field public static final SP_KEY_IS_SDCARD_AVAILABLE_ON_PREVIOUS_ONPAUSE:Ljava/lang/String; = "is-sdcard-available-on-previous-onpause"

.field public static final TAG:Ljava/lang/String; = "StorageAutoSwitchController"


# instance fields
.field private mDualStorageDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mIsShownDualStorageAvailable:Z

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;Landroid/content/Context;)V
    .registers 5
    .param p1, "switchListener"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;
    .param p2, "viewFinder"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;ZLandroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;ZLandroid/content/Context;)V
    .registers 7
    .param p1, "switchListener"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;
    .param p2, "viewFinder"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;
    .param p3, "isDelayedInitializationRequired"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;Z)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mDualStorageDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 38
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mIsShownDualStorageAvailable:Z

    .line 76
    const-string v0, "storage_preferences"

    invoke-virtual {p4, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 79
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;)Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->saveAutoSwitchTriggered(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mDualStorageDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method private checkBetterStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Z)Z
    .registers 6
    .param p1, "targetStorage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p2, "notify"    # Z

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->isOneShotMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 198
    :cond_7
    :goto_7
    return v0

    .line 190
    :cond_8
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->hasBetterStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 191
    if-nez p2, :cond_1c

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageStatus:Ljava/util/Map;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-eq v1, v2, :cond_7

    .line 195
    :cond_1c
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private isAutoSwitchTriggered()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 428
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "is-auto_switch_triggered"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_c

    .line 431
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private isExternalStorageChangedToReadable()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 418
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "is-sdcard-available-on-previous-onpause"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_c

    .line 421
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private saveAutoSwitchTriggered(Z)V
    .registers 4
    .param p1, "isTriggered"    # Z

    .prologue
    .line 442
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 443
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_10

    .line 444
    const-string v1, "is-auto_switch_triggered"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 445
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 447
    :cond_10
    return-void
.end method

.method private switchStorage()V
    .registers 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-ne v0, v1, :cond_10

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->closeDialog(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->showPopupDualStorageAvailable()Z

    .line 219
    :goto_f
    return-void

    .line 212
    :cond_10
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->isCurrentStorageExternal()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;

    .line 213
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;->shouldShowDialogOnStorageSettingChangedToInternal()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 215
    :cond_1e
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->showDialogForForceChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z

    .line 217
    :cond_25
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;->onStorageAutoSwitch(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V

    goto :goto_f
.end method


# virtual methods
.method protected checkAllState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;ZZZ)V
    .registers 12
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p2, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .param p3, "isSdcardReadable"    # Z
    .param p4, "forceNotify"    # Z
    .param p5, "showDialog"    # Z

    .prologue
    const/4 v2, 0x1

    .line 136
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mViewFinder:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;

    invoke-interface {v3}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;->isHeadUpDisplayReady()Z

    move-result v3

    if-nez v3, :cond_a

    .line 180
    :goto_9
    return-void

    .line 142
    :cond_a
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->isSdcardCorrupt()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 143
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mSdCorruptListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$SdCorruptListener;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$SdCorruptListener;->showBlank()V

    .line 144
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showSdcardErrorMessage()V

    goto :goto_9

    .line 152
    :cond_1b
    if-eqz p3, :cond_69

    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mIsShownDualStorageAvailable:Z

    if-nez v3, :cond_69

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->isExternalStorageChangedToReadable()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 154
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->isExternalStorageChangedToReadable()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->isAutoSwitchTriggered()Z

    move-result v3

    if-nez v3, :cond_69

    :cond_33
    move v0, v2

    .line 157
    .local v0, "isNotify":Z
    :goto_34
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStoragePriority:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e
    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 158
    .local v1, "targetStorage":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    invoke-virtual {p0, p1, p4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->checkAndNotifyStateChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Z)V

    .line 162
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 163
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->TIMEOUT:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 164
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_unavailable_txt:I

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_title_txt:I

    invoke-virtual {p0, v3, v4, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->showStoragePopup(IIZ)Z

    goto :goto_9

    .line 154
    .end local v0    # "isNotify":Z
    .end local v1    # "targetStorage":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    :cond_69
    const/4 v0, 0x0

    goto :goto_34

    .line 168
    .restart local v0    # "isNotify":Z
    .restart local v1    # "targetStorage":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    :cond_6b
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->checkBetterStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Z)Z

    move-result v4

    if-eqz v4, :cond_77

    if-eqz p5, :cond_77

    .line 169
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->switchStorage()V

    goto :goto_3e

    .line 174
    :cond_77
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->showOrClearStorageErrorPopup(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z

    goto :goto_3e

    .line 179
    .end local v1    # "targetStorage":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    :cond_7f
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;->saveExternalStorageStateAtFirstLaunchInPrefs()V

    goto :goto_9
.end method

.method protected getTextIdForForceChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)I
    .registers 5
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .prologue
    .line 263
    const/4 v0, -0x1

    .line 265
    .local v0, "textId":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->isCurrentStorageExternal()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 267
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2c

    .line 301
    :goto_12
    :pswitch_12
    return v0

    .line 273
    :pswitch_13
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_change_full_storage_to_internal_txt:I

    .line 274
    goto :goto_12

    .line 279
    :pswitch_16
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_storage_changing_to_internal_txt:I

    goto :goto_12

    .line 284
    :cond_19
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_38

    goto :goto_12

    .line 290
    :pswitch_25
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_internal_memory_full_txt:I

    .line 291
    goto :goto_12

    .line 296
    :pswitch_28
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_internal_memory_unavailable_txt:I

    goto :goto_12

    .line 267
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_12
        :pswitch_13
        :pswitch_16
        :pswitch_16
    .end packed-switch

    .line 284
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_12
        :pswitch_25
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method protected hasBetterStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)Z
    .registers 8
    .param p1, "targetStorage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .prologue
    const/4 v3, 0x0

    .line 373
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStoragePriority:Ljava/util/Map;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 374
    .local v0, "currentPriority":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;->canSwitchStorage()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 376
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->requestErrorCheckLater(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V

    move v2, v3

    .line 394
    :goto_1b
    return v2

    .line 380
    :cond_1c
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageStatus:Ljava/util/Map;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-eq v2, v4, :cond_2a

    .line 382
    const/16 v0, 0x64

    .line 385
    :cond_2a
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStoragePriority:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 386
    .local v1, "storage":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStoragePriority:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v0, :cond_34

    .line 387
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-ne v2, v5, :cond_34

    .line 390
    const/4 v2, 0x1

    goto :goto_1b

    .end local v1    # "storage":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    :cond_5a
    move v2, v3

    .line 394
    goto :goto_1b
.end method

.method public isToggledStorageReady()Z
    .registers 6

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "isReady":Z
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStoragePriority:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 404
    .local v1, "storage":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mCurrentStorage:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 407
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-ne v3, v4, :cond_b

    .line 408
    const/4 v0, 0x1

    goto :goto_b

    .line 411
    .end local v1    # "storage":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    :cond_2b
    return v0
.end method

.method public saveExternalStorageStateInPrefs(Z)V
    .registers 4
    .param p1, "isExternalCardReadable"    # Z

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->isCurrentStorageExternal()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 466
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->saveAutoSwitchTriggered(Z)V

    .line 472
    :cond_a
    :goto_a
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 473
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_1a

    .line 474
    const-string v1, "is-sdcard-available-on-previous-onpause"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 476
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 479
    :cond_1a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mIsShownDualStorageAvailable:Z

    .line 480
    return-void

    .line 467
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1e
    if-nez p1, :cond_a

    .line 469
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->saveAutoSwitchTriggered(Z)V

    goto :goto_a
.end method

.method protected showDialogForForceChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z
    .registers 5
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .prologue
    const/4 v2, 0x0

    .line 360
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->getTextIdForForceChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)I

    move-result v0

    .line 361
    .local v0, "textId":I
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_save_destination_title_txt:I

    .line 362
    .local v1, "titleId":I
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->closeDialog(Z)V

    .line 363
    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->showStoragePopup(IIZ)Z

    move-result v2

    return v2
.end method

.method protected showOrClearStorageErrorPopup(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z
    .registers 7
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .prologue
    const/4 v4, 0x1

    .line 312
    const/4 v0, -0x1

    .line 313
    .local v0, "textId":I
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_title_txt:I

    .line 314
    .local v1, "titleId":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->isCurrentStorageExternal()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 316
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_42

    .line 349
    :goto_19
    invoke-virtual {p0, v0, v1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->showStoragePopup(IIZ)Z

    move-result v2

    return v2

    .line 318
    :pswitch_1e
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->closeDialog(Z)V

    goto :goto_19

    .line 322
    :pswitch_22
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_internal_sd_full_txt:I

    .line 323
    goto :goto_19

    .line 328
    :pswitch_25
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_unavailable_txt:I

    goto :goto_19

    .line 333
    :cond_28
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4e

    goto :goto_19

    .line 335
    :pswitch_38
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->closeDialog(Z)V

    goto :goto_19

    .line 339
    :pswitch_3c
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_internal_sd_full_txt:I

    .line 340
    goto :goto_19

    .line 345
    :pswitch_3f
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_ims_unavailable_txt:I

    goto :goto_19

    .line 316
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_22
        :pswitch_25
        :pswitch_25
    .end packed-switch

    .line 333
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_38
        :pswitch_3c
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method

.method protected showPopupDualStorageAvailable()Z
    .registers 14

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 228
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_change_storage_to_sd_txt:I

    .line 229
    .local v1, "textId":I
    const/4 v10, 0x0

    .line 231
    .local v10, "isShow":Z
    if-lez v1, :cond_37

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mDualStorageDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_d

    move v0, v11

    .line 253
    :goto_c
    return v0

    .line 235
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_save_destination_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_change_txt:I

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_cancel_txt:I

    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogOkClickListener;

    invoke-direct {v6, p0, v12}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogOkClickListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;)V

    new-instance v7, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelClickListener;

    invoke-direct {v7, p0, v12}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelClickListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;)V

    new-instance v8, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelListener;

    invoke-direct {v8, p0, v12}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;)V

    new-instance v9, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogDismissListener;

    invoke-direct {v9, p0, v12}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogDismissListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;)V

    invoke-virtual/range {v0 .. v9}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCancelStorage(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mDualStorageDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mDualStorageDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_37

    .line 249
    const/4 v10, 0x1

    .line 250
    iput-boolean v11, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mIsShownDualStorageAvailable:Z

    :cond_37
    move v0, v10

    .line 253
    goto :goto_c
.end method
