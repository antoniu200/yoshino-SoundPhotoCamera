.class public Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;
.super Ljava/lang/Object;
.source "CommonSettingChanger.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

.field private final mOnChangedListener:Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;

.field private final mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .param p3, "onChangedListener"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    check-cast p1, Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 40
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .line 41
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->mOnChangedListener:Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;

    .line 42
    return-void
.end method


# virtual methods
.method public changeValue(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->EMMC:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    if-ne v1, v2, :cond_40

    .line 48
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->SDCARD:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    if-ne v1, v2, :cond_40

    .line 49
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->UNGRANTED:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 50
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageController()Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v2

    if-ne v1, v2, :cond_40

    .line 52
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 53
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 52
    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getVolumeUuid(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "uuid":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    const/16 v2, 0x10

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->requestSdCardGranted(Landroid/app/Activity;ILjava/lang/String;)V

    .line 64
    .end local v0    # "uuid":Ljava/lang/String;
    :goto_3f
    return-void

    .line 60
    :cond_40
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 61
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingChanger;->mOnChangedListener:Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-interface {v2, v1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/OnChangedCommonSettingListener;->onSettingChanged(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 63
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-virtual {v2, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendSettingsCommon(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_3f
.end method
