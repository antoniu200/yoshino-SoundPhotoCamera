.class public interface abstract Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;
.super Ljava/lang/Object;
.source "StorageAutoSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StorageAutoSwitchListener"
.end annotation


# virtual methods
.method public abstract canSwitchStorage()Z
.end method

.method public abstract onStorageAutoSwitch(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V
.end method

.method public abstract saveExternalStorageStateAtFirstLaunchInPrefs()V
.end method

.method public abstract shouldShowDialogOnStorageSettingChangedToInternal()Z
.end method
