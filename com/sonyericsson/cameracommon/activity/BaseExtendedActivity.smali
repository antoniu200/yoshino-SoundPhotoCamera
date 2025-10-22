.class public abstract Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
.super Lcom/sonyericsson/cameracommon/activity/BaseActivity;
.source "BaseExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$CameraActivityFinishBroadcastReceiver;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianUnlimited;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$UserPresentIntentReceiver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseExtendedActivity"


# instance fields
.field private mIsAlertDialogOpened:Z

.field protected mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

.field private mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

.field private final mUserPresentIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$UserPresentIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$UserPresentIntentReceiver;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mUserPresentIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mIsAlertDialogOpened:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    return-object v0
.end method


# virtual methods
.method protected abort()V
    .registers 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finish()V

    .line 220
    return-void
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 409
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->prepareFinish()V

    .line 411
    :cond_9
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->finish()V

    .line 412
    return-void
.end method

.method public finishOneShot(Landroid/content/Intent;)V
    .registers 3
    .param p1, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 307
    if-nez p1, :cond_a

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->setResult(I)V

    .line 312
    :goto_6
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finish()V

    .line 313
    return-void

    .line 310
    :cond_a
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_6
.end method

.method public finishUrgently()V
    .registers 1

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->prepareFinish()V

    .line 428
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->finish()V

    .line 429
    return-void
.end method

.method public forTestGetCameraParameters()Landroid/hardware/Camera$Parameters;
    .registers 3

    .prologue
    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getPreviewSize()Landroid/graphics/Rect;
.end method

.method public getSoundPlayer()Lcom/sonyericsson/cameracommon/sound/SoundPlayer;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    return-object v0
.end method

.method public isAlertDialogOpened()Z
    .registers 2

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mIsAlertDialogOpened:Z

    return v0
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->terminateApplication()V

    .line 321
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 144
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 145
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onDestroy()V

    .line 215
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 364
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->setIntent(Landroid/content/Intent;)V

    .line 366
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 367
    return-void
.end method

.method protected onPauseTasks()V
    .registers 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    if-eqz v0, :cond_1e

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->pause()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    .line 197
    :goto_c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->pause()V

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mUserPresentIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 202
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 204
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onPauseTasks()V

    .line 205
    return-void

    .line 193
    :cond_1e
    const-string v0, "BaseExtendedActivity"

    const-string v1, "onPause():[Application is already paused.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method protected onResumeTasks()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->isForceSound()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 160
    new-instance v1, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    .line 166
    :goto_e
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mUserPresentIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    if-ne v1, v2, :cond_24

    .line 171
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->HISTORY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 174
    :cond_24
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onResumeTasks()V

    .line 177
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->resume()V

    .line 178
    return-void

    .line 162
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2d
    new-instance v1, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianUnlimited;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianUnlimited;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    goto :goto_e
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onStart()V

    .line 151
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 209
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onStop()V

    .line 210
    return-void
.end method

.method public onStoreComplete(ZLandroid/net/Uri;Ljava/lang/String;I)V
    .registers 7
    .param p1, "storeSuccessfull"    # Z
    .param p2, "originUri"    # Landroid/net/Uri;
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "orientation"    # I

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->isOneShot()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 283
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_13

    .line 286
    invoke-static {p0, p2, p3, p4}, Lcom/sonyericsson/cameracommon/utility/OneShotUtility;->createResultIntent(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 292
    :cond_13
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finishOneShot(Landroid/content/Intent;)V

    .line 303
    .end local v0    # "resultIntent":Landroid/content/Intent;
    :cond_16
    :goto_16
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->enableAutoOffTimer()V

    .line 304
    return-void

    .line 294
    :cond_1a
    if-eqz p1, :cond_24

    .line 295
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->setResult(I)V

    .line 299
    :goto_20
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finish()V

    goto :goto_16

    .line 297
    :cond_24
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->setResult(I)V

    goto :goto_20
.end method

.method protected abstract prepareFinish()V
.end method

.method public setAlertDialogIsOpened(Z)V
    .registers 2
    .param p1, "dialogIsOpened"    # Z

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mIsAlertDialogOpened:Z

    .line 385
    return-void
.end method

.method public setDestinationToSave()V
    .registers 6

    .prologue
    .line 248
    const/4 v2, 0x0

    .line 250
    .local v2, "type":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->hasExtraOutputPath()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 252
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "fixedStorage":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v2

    .line 260
    .end local v0    # "fixedStorage":Ljava/lang/String;
    :goto_13
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setCurrentStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V

    .line 261
    return-void

    .line 256
    :cond_19
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 257
    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    .line 258
    .local v1, "storage":Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->getStorageType()Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v2

    goto :goto_13
.end method

.method public shouldChangeStorageForSdUngranted()Z
    .registers 4

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->SDCARD:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    if-ne v1, v2, :cond_28

    .line 265
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getStorageController()Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getSdGrantedUri(Landroid/content/Context;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Landroid/net/Uri;

    move-result-object v0

    .line 266
    .local v0, "grantedUri":Landroid/net/Uri;
    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getStorageController()Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-eq v1, v2, :cond_28

    .line 269
    const/4 v1, 0x1

    .line 272
    .end local v0    # "grantedUri":Landroid/net/Uri;
    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method protected showAndConfirmDisclaimer()V
    .registers 1

    .prologue
    .line 375
    return-void
.end method

.method public terminateApplication()V
    .registers 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finish()V

    .line 338
    return-void
.end method
