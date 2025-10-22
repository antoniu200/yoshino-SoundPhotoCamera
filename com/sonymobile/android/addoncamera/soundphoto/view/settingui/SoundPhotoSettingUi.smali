.class public Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;
.super Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;
.source "SoundPhotoSettingUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;
    }
.end annotation


# static fields
.field private static final COMMON_ITEMS:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field private static final SHORTCUT_ITEMS:[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

.field private static final SHORTCUT_ITEMS_FLASH_SUPPORTED:[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

.field private static final SHORTCUT_ITEMS_TABLET:[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

.field private static final TABS:[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

.field private mAllItems:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

.field private final mItemResolver:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;

.field private final mPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

.field private final mShortcutItemExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;",
            ">;"
        }
    .end annotation
.end field

.field private final mUtil:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;

.field private final mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->SelfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Facing:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Menu:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->SHORTCUT_ITEMS:[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->SelfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Flash:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Facing:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Menu:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->SHORTCUT_ITEMS_FLASH_SUPPORTED:[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    .line 64
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->SelfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Facing:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Menu:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->SHORTCUT_ITEMS_TABLET:[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    .line 69
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->VOLUME_KEY:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_BLOCK:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TERM_OF_USE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SOFTWARE_LICENSES:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->COMMON_ITEMS:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 76
    new-array v0, v4, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Common:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->TABS:[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;)V
    .registers 10
    .param p1, "activity"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    .param p2, "dialogStack"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .param p3, "commonSettings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .param p4, "preference"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;
    .param p6, "viewFiner"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;",
            "Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
            "<",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;",
            ">;",
            "Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p5, "settingChanger":Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface<Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;>;"
    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->COMMON_ITEMS:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-direct {p0, p1, p2, v1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)V

    .line 236
    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mShortcutItemExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 97
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .line 98
    iput-object p4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    .line 100
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-direct {v0, v1, p0, p5}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    .line 102
    .local v0, "executorFactory":Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;, "Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory<Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;>;"
    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-direct {v1, v2, p4, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;-><init>(Landroid/content/Context;Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingExecutorFactory;)V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mItemResolver:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;

    .line 103
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Menu:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mUtil:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;

    .line 104
    iput-object p6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mItemResolver:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;
    .param p1, "x1"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->openMainSettingsDialog(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method private getShortcutIconResource(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;)I
    .registers 4
    .param p1, "item"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    .prologue
    .line 222
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$2;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$settingui$SoundPhotoSettingUi$Shortcut:[I

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 232
    const/4 v0, -0x1

    :goto_c
    return v0

    .line 224
    :pswitch_d
    const v0, 0x7f0200d3

    goto :goto_c

    .line 226
    :pswitch_11
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->FLASH:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->get(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;->iconId()I

    move-result v0

    goto :goto_c

    .line 228
    :pswitch_22
    const v0, 0x7f0200cd

    goto :goto_c

    .line 230
    :pswitch_26
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->SELF_TIMER:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->get(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;->iconId()I

    move-result v0

    goto :goto_c

    .line 222
    nop

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_11
        :pswitch_26
        :pswitch_d
        :pswitch_22
    .end packed-switch
.end method

.method private isVisible(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;)Z
    .registers 6
    .param p1, "item"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$2;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$settingui$SoundPhotoSettingUi$Shortcut:[I

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_40

    .line 217
    :cond_d
    :goto_d
    return v0

    :pswitch_e
    move v0, v1

    .line 205
    goto :goto_d

    .line 208
    :pswitch_10
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->FLASH:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    invoke-virtual {v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->getSelectability(Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->SELECTABLE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    if-eq v2, v3, :cond_d

    move v0, v1

    goto :goto_d

    .line 212
    :pswitch_22
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->SELF_TIMER:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    invoke-virtual {v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->getSelectability(Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->SELECTABLE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    if-ne v2, v3, :cond_3e

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    .line 214
    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v2

    iget-object v2, v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->capturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->FRONT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    if-eq v2, v3, :cond_d

    :cond_3e
    move v0, v1

    goto :goto_d

    .line 203
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_e
        :pswitch_10
        :pswitch_22
    .end packed-switch
.end method

.method private menuDialogMaxItemCount()I
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mAllItems:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method private openMainSettingsDialog(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;)V
    .registers 6
    .param p1, "tag"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->setupAllItemsAdapter()V

    .line 300
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mAllItems:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 301
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mAllItems:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    const v1, 0x7f0800ce

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Menu:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    .line 305
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->menuDialogMaxItemCount()I

    move-result v3

    .line 301
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;I)V

    .line 307
    :cond_19
    return-void
.end method

.method private setupAllItemsAdapter()V
    .registers 5

    .prologue
    .line 327
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mItemResolver:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->generatePhotoSettingItems()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mAllItems:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .line 328
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mCommonItemResolver:Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/setting/CommonSettingItemResolver;->generateItemAdapter()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v1

    .line 329
    .local v1, "moreItems":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 330
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mAllItems:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 332
    :cond_21
    return-void
.end method


# virtual methods
.method public onSettingChanged(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .registers 6
    .param p1, "value"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 121
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_66

    .line 148
    .end local p1    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :goto_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->updateMenuItems(Z)V

    .line 149
    return-void

    .line 123
    .restart local p1    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :pswitch_14
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RegionConfig;->isChinaRegion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 124
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne p1, v0, :cond_25

    .line 125
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    .line 128
    :cond_25
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    check-cast p1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .end local p1    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/GeotagDialogListener;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-direct {v2, v3, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/GeotagDialogListener;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)V

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setGeotag(Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    goto :goto_f

    .line 133
    .restart local p1    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :pswitch_3a
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->setDestinationToSave()V

    .line 134
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->requestCheckAll()V

    .line 135
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .line 136
    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isToggledStorageReady()Z

    move-result v2

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->setSelectability(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Z)V

    goto :goto_f

    .line 141
    :pswitch_5e
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    check-cast p1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    .end local p1    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-virtual {v0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->setTouchCapture(Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;)V

    goto :goto_f

    .line 121
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_14
        :pswitch_3a
        :pswitch_5e
    .end packed-switch
.end method

.method public onTabSelected(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V
    .registers 3
    .param p1, "tab"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->onTabSelected(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->updateMenuItems(Z)V

    .line 117
    return-void
.end method

.method openMenuAndSelectCommonTab()V
    .registers 5

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->setupAllItemsAdapter()V

    .line 317
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mAllItems:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 318
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mAllItems:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    const v1, 0x7f0800ce

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Menu:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    .line 322
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->menuDialogMaxItemCount()I

    move-result v3

    .line 318
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;I)V

    .line 324
    :cond_19
    return-void
.end method

.method public openSaveDestinationSettingDialog()V
    .registers 6

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->setupAllItemsAdapter()V

    .line 160
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mAllItems:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 161
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mUtil:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mAllItems:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const v3, 0x7f0800ce

    .line 165
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->menuDialogMaxItemCount()I

    move-result v4

    .line 161
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->openMenuDialogAndSelectItem(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;II)V

    .line 167
    :cond_1b
    return-void
.end method

.method public setup()V
    .registers 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->setup()V

    .line 110
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->updateShortcutItems()V

    .line 111
    return-void
.end method

.method public updateMenuItems(Z)V
    .registers 3
    .param p1, "resetScrollPosition"    # Z

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->setupAllItemsAdapter()V

    .line 153
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mAllItems:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 154
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mAllItems:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->updateMenuItems(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Z)V

    .line 156
    :cond_10
    return-void
.end method

.method public updateShortcutItems()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 171
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-direct {v0, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 176
    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->SHORTCUT_ITEMS_TABLET:[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    .line 186
    .local v2, "shortItems":[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;
    :goto_12
    array-length v5, v2

    move v3, v4

    :goto_14
    if-ge v3, v5, :cond_76

    aget-object v1, v2, v3

    .line 188
    .local v1, "item":Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;
    invoke-direct {p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->isVisible(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 189
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    invoke-direct {p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->getShortcutIconResource(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    .line 190
    invoke-virtual {v6, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mShortcutItemExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 191
    invoke-virtual {v6, v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v6

    .line 189
    invoke-virtual {v0, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    .line 186
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 178
    .end local v1    # "item":Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;
    .end local v2    # "shortItems":[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;
    :cond_3e
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v3

    sget-object v5, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->FLASH:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    invoke-virtual {v3, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->getSelectability(Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    move-result-object v3

    sget-object v5, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->SELECTABLE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    if-ne v3, v5, :cond_51

    .line 180
    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->SHORTCUT_ITEMS_FLASH_SUPPORTED:[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    .restart local v2    # "shortItems":[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;
    goto :goto_12

    .line 182
    .end local v2    # "shortItems":[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;
    :cond_51
    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->SHORTCUT_ITEMS:[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    .restart local v2    # "shortItems":[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;
    goto :goto_12

    .line 193
    .restart local v1    # "item":Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;
    :cond_54
    sget-object v6, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    invoke-static {v6}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    sget-object v7, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    .line 194
    invoke-direct {p0, v7}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->getShortcutIconResource(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    .line 195
    invoke-virtual {v6, v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mShortcutItemExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 196
    invoke-virtual {v6, v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v6

    .line 193
    invoke-virtual {v0, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3b

    .line 199
    .end local v1    # "item":Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;
    :cond_76
    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->updateShortcutItems(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 200
    return-void
.end method
