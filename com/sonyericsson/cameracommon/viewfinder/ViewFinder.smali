.class public abstract Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;
.super Ljava/lang/Object;
.source "ViewFinder.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;
.implements Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeSelectListener;
.implements Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeFinishListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;
.implements Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
.implements Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageController$SdCorruptListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$CheckBoxListener;,
        Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$ThermalDialogCloseListener;,
        Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;,
        Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$SetupCapturingModeSelectorTask;
    }
.end annotation


# static fields
.field public static final SHARED_PREFS_KEY_THERMAL_DISABLED:Ljava/lang/String; = "THERMAL_DISABLED"

.field public static final TAG:Ljava/lang/String; = "ViewFinder"


# instance fields
.field private final mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

.field private mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

.field private mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

.field private mInflateFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mInflateItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field public mIsItemChecked:Z

.field private mIsRequestedLaterSetup:Z

.field private mLayoutPattern:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

.field private mLayoutPatternApplier:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;

.field private mPreInflatedHeadUpDisplay:Landroid/view/View;

.field protected mPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

.field protected mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

.field private mTargetPreviewRect:Landroid/graphics/Rect;

.field private mThermalDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;)V
    .registers 5
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "visibilityContoller"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;
    .param p3, "pref"    # Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;Z)V

    .line 319
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;Z)V
    .registers 6
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "visibilityContoller"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;
    .param p3, "pref"    # Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;
    .param p4, "isLazyInitializationRequired"    # Z

    .prologue
    const/4 v0, 0x0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsRequestedLaterSetup:Z

    .line 784
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsItemChecked:Z

    .line 338
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 339
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mLayoutPatternApplier:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;

    .line 340
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    .line 341
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getScreenAspect()Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    .line 344
    if-eqz p4, :cond_17

    .line 350
    :goto_16
    return-void

    .line 348
    :cond_17
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->initialize()V

    goto :goto_16
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isSetupNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setupCapturingModeSelectorLater()V

    return-void
.end method

.method private getThermalString()I
    .registers 2

    .prologue
    .line 777
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/BrandConfig;->isVerizonBrand()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 778
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_high_temp_vzw_txt:I

    .line 780
    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_high_temp_txt:I

    goto :goto_8
.end method

.method private isAcquired()Z
    .registers 4

    .prologue
    .line 239
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 240
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGpsAcquired()Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 241
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isNetworkAcquired()Z

    move-result v2

    or-int v0, v1, v2

    .line 242
    .local v0, "isAcquired":Z
    return v0
.end method

.method private isGeoTagEnabled()Z
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 234
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 233
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->isGeoTagEnabled(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isSetupNeeded()Z
    .registers 2

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsRequestedLaterSetup:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-nez v0, :cond_a

    .line 636
    const/4 v0, 0x1

    .line 639
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private setupCapturingModeSelectorLater()V
    .registers 2

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setupCapturingModeSelector()V

    .line 645
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCurrentOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setOrientation(I)V

    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsRequestedLaterSetup:Z

    .line 647
    return-void
.end method

.method private setupHeadUpDisplay()V
    .registers 4

    .prologue
    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "isReload":Z
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    if-nez v1, :cond_6

    .line 400
    const/4 v0, 0x1

    .line 404
    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    if-eqz v1, :cond_14

    .line 405
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setPreInflatedHeadUpDisplay(Landroid/view/View;)V

    .line 406
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    .line 409
    :cond_14
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOrientation(I)V

    .line 412
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getThumbnailClickListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setup(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    .line 422
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->updateIndicatorState()V

    .line 424
    if-nez v0, :cond_36

    .line 425
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getThumbnailClickListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->reloadContentsViewController(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    .line 430
    :cond_36
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 431
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V

    .line 434
    :cond_47
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 435
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 437
    :cond_58
    return-void
.end method

.method private updateIndicatorState()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 441
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 442
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 441
    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->isGeoTagEnabled(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 445
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 446
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isAcquiring()Z

    move-result v0

    .line 447
    .local v0, "acquiring":Z
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->set(Z)V

    .line 448
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v3

    if-nez v0, :cond_43

    :goto_39
    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->isAcquired(Z)V

    .line 453
    .end local v0    # "acquiring":Z
    :cond_3c
    :goto_3c
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->updateLowMemoryIndicator()V

    .line 454
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->updateThermalIndicator()V

    .line 455
    return-void

    .restart local v0    # "acquiring":Z
    :cond_43
    move v1, v2

    .line 448
    goto :goto_39

    .line 451
    .end local v0    # "acquiring":Z
    :cond_45
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->set(Z)V

    goto :goto_3c
.end method

.method private updateLowMemoryIndicator()V
    .registers 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 462
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->hasEnoughFreeSpace()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    .line 461
    :goto_13
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 463
    return-void

    .line 462
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private updateThermalIndicator()V
    .registers 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isThermalWarningState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 470
    return-void
.end method


# virtual methods
.method public changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V
    .registers 4
    .param p1, "pattern"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_7

    .line 230
    :cond_6
    :goto_6
    return-void

    .line 217
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mLayoutPatternApplier:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;->apply(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 218
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mLayoutPattern:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .line 220
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isGeoTagEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->set(Z)V

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isAcquired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->isAcquired(Z)V

    .line 227
    :cond_38
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->clearTouched()V

    goto :goto_6
.end method

.method public checkGridLineIsDisplayedOrNot()V
    .registers 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->checkGridLineIsDisplayedOrNot()V

    .line 889
    return-void
.end method

.method protected clearPreInflatedViews()V
    .registers 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateItemMap:Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 721
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateItemMap:Ljava/util/Map;

    .line 724
    :cond_c
    return-void
.end method

.method public closeCapturingModeSelector()V
    .registers 3

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isCapturingModeSelectorOpened()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 516
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->close()V

    .line 517
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 520
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->onCloseCapturingModeSelector()V

    .line 522
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->showGridLineView()V

    .line 524
    :cond_1d
    return-void
.end method

.method protected computePreviewRect(Landroid/app/Activity;II)Landroid/graphics/Rect;
    .registers 8
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 165
    if-nez p2, :cond_12

    if-nez p3, :cond_12

    .line 177
    const-string v1, "ViewFinder"

    const-string v2, "Preview size is not set."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 182
    :goto_11
    return-object v0

    :cond_12
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    invoke-static {p1, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_11
.end method

.method protected disableAccessibilityTalkBack()V
    .registers 3

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 684
    return-void
.end method

.method public disableGridLineView()V
    .registers 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->disableGridLineView()V

    .line 901
    return-void
.end method

.method public enableGridLineView()V
    .registers 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->enableGridLineView()V

    .line 897
    return-void
.end method

.method protected getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    return-object v0
.end method

.method protected getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    return-object v0
.end method

.method public getCurrentLayoutPattern()Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;
    .registers 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mLayoutPattern:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    return-object v0
.end method

.method protected getLayoutPatternApplier()Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;
    .registers 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mLayoutPatternApplier:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;

    return-object v0
.end method

.method public getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;
    .registers 3
    .param p1, "id"    # Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateItemMap:Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 742
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateItemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 744
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected getThermalDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;
    .registers 3

    .prologue
    .line 876
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$ThermalDialogCloseListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$ThermalDialogCloseListener;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;)V

    return-object v0
.end method

.method protected getThermalDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .registers 3

    .prologue
    .line 872
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$ThermalDialogCloseListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$ThermalDialogCloseListener;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;)V

    return-object v0
.end method

.method protected getThumbnailClickListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;
    .registers 2

    .prologue
    .line 366
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)V

    return-object v0
.end method

.method public initialize()V
    .registers 4

    .prologue
    .line 354
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    .line 357
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->addOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V

    .line 358
    return-void
.end method

.method protected invalidatePreviewSize()V
    .registers 2

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    .line 152
    return-void
.end method

.method public isCapturingModeSelectorOpened()Z
    .registers 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-nez v0, :cond_6

    .line 659
    const/4 v0, 0x0

    .line 661
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->isOpened()Z

    move-result v0

    goto :goto_5
.end method

.method public isHeadUpDisplayReady()Z
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->isHeadUpDisplayReady()Z

    move-result v0

    return v0
.end method

.method public isInflated()Z
    .registers 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateItemMap:Ljava/util/Map;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected isInvalidatedPreviewSize()Z
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected isRequestingPreviewSizeChange()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isInvalidatedPreviewSize()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 160
    :cond_7
    :goto_7
    return v0

    .line 158
    :cond_8
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    .line 159
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreview()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_30

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    .line 160
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreview()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_7

    :cond_30
    const/4 v0, 0x1

    goto :goto_7
.end method

.method protected joinInflateTask()V
    .registers 4

    .prologue
    .line 701
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_11

    .line 703
    :try_start_4
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateItemMap:Ljava/util/Map;
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_e} :catch_12
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_e} :catch_1b

    .line 709
    :goto_e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateFuture:Ljava/util/concurrent/Future;

    .line 713
    :cond_11
    return-void

    .line 704
    :catch_12
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ViewFinder"

    const-string v2, "join"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 706
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1b
    move-exception v0

    .line 707
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v1, "ViewFinder"

    const-string v2, "join"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method protected notifyThermaDialogClosed()V
    .registers 1

    .prologue
    .line 755
    return-void
.end method

.method public onAcquired(ZZ)V
    .registers 5
    .param p1, "gps"    # Z
    .param p2, "net"    # Z

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_7

    .line 487
    :goto_6
    return-void

    .line 486
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v1

    if-nez p1, :cond_11

    if-eqz p2, :cond_16

    :cond_11
    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->isAcquired(Z)V

    goto :goto_6

    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public onAvailableSizeUpdated(J)V
    .registers 5
    .param p1, "available"    # J

    .prologue
    .line 554
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 555
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->hasEnoughFreeSpace()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    .line 554
    :goto_13
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 556
    return-void

    .line 555
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onCaptureDone()V
    .registers 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_7

    .line 288
    :goto_6
    return-void

    .line 287
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->clearTouched()V

    goto :goto_6
.end method

.method public onClickCapturingModeButton(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;)V
    .registers 4
    .param p1, "view"    # Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isSetupNeeded()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setupCapturingModeSelectorLater()V

    .line 673
    :cond_9
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->getCurrentCapturingMode()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    move-result-object v0

    .line 674
    .local v0, "mode":Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;
    if-eqz v0, :cond_16

    .line 675
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->openCapturingModeSelector(Ljava/lang/String;)V

    .line 677
    :cond_16
    return-void
.end method

.method protected abstract onCloseCapturingModeSelector()V
.end method

.method public onDestinationToSaveChanged()V
    .registers 3

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_7

    .line 547
    :goto_6
    return-void

    .line 546
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getThumbnailClickListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->reloadContentsViewController(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    goto :goto_6
.end method

.method public onDisabled()V
    .registers 3

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->set(Z)V

    .line 511
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->readLocationSettings()V

    .line 512
    return-void
.end method

.method public onLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    .registers 5
    .param p1, "changed"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 573
    const/4 v0, 0x2

    .line 574
    .local v0, "orientation":I
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$2;->$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LayoutOrientation:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_14

    .line 580
    const/4 v0, 0x2

    .line 583
    :goto_d
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setOrientation(I)V

    .line 584
    return-void

    .line 576
    :pswitch_11
    const/4 v0, 0x1

    .line 577
    goto :goto_d

    .line 574
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch
.end method

.method public onLost()V
    .registers 3

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_7

    .line 501
    :goto_6
    return-void

    .line 500
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->isAcquired(Z)V

    goto :goto_6
.end method

.method protected onNotifyThermalStatus(Z)V
    .registers 3
    .param p1, "isWarning"    # Z

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 750
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 752
    :cond_15
    return-void
.end method

.method protected abstract onOpenCapturingModeSelector()V
.end method

.method public onShutterDone(Z)V
    .registers 3
    .param p1, "isThumbnailFeedbackShown"    # Z

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_7

    .line 305
    :cond_6
    :goto_6
    return-void

    .line 298
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->clearTouched()V

    .line 301
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_6

    .line 303
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->show()V

    goto :goto_6
.end method

.method public onStorageStateChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V
    .registers 3
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_6

    .line 534
    :cond_6
    return-void
.end method

.method public onZoomChanged(I)V
    .registers 3
    .param p1, "current"    # I

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_7

    .line 278
    :goto_6
    return-void

    .line 277
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->zoom(I)I

    goto :goto_6
.end method

.method public openCapturingModeSelector(Ljava/lang/String;)V
    .registers 3
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isCapturingModeSelectorOpened()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-eqz v0, :cond_19

    .line 561
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0, p1}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->open(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->onOpenCapturingModeSelector()V

    .line 566
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideGridLineView()V

    .line 568
    :cond_19
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->pause()V

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->closeCapturingModeSelector()V

    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->releaseCapturingModeSelector()V

    .line 114
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->release()V

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->releaseCapturingModeSelector()V

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->removeOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V

    .line 128
    :cond_1f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->removeStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 131
    :cond_30
    return-void
.end method

.method public releaseCapturingModeSelector()V
    .registers 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-eqz v0, :cond_c

    .line 651
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->release()V

    .line 652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    .line 654
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsRequestedLaterSetup:Z

    .line 655
    return-void
.end method

.method protected repositionZoombar()V
    .registers 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->repositionZoombar()V

    .line 905
    return-void
.end method

.method public requestSetupHeadUpDisplay()V
    .registers 1

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setupHeadUpDisplay()V

    .line 253
    return-void
.end method

.method protected requestToDimSystemUi()V
    .registers 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->requestToDimSystemUi()V

    .line 198
    return-void
.end method

.method protected requestToRecoverSystemUi()V
    .registers 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->requestToRecoverSystemUi()V

    .line 194
    return-void
.end method

.method protected requestToRemoveSystemUi()V
    .registers 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->requestToRemoveSystemUi()V

    .line 190
    return-void
.end method

.method protected requestToRestoreSystemUi()V
    .registers 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->requestToRestoreSystemUi()V

    .line 202
    return-void
.end method

.method public requestUpdateSurfaceSize(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_16

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p1, :cond_16

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ne v0, p2, :cond_16

    .line 266
    :goto_15
    return-void

    .line 264
    :cond_16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    .line 265
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setPreviewRect(Landroid/graphics/Rect;)V

    goto :goto_15
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideContentsViewController()V

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupBlankScreen()V

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->resume()V

    .line 107
    :cond_21
    return-void
.end method

.method protected setOrientation(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    .line 587
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOrientation(I)V

    .line 588
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->isHeadUpDisplayReady()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 589
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-eqz v0, :cond_1c

    .line 590
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCurrentOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->setUiOrientation(I)V

    .line 593
    :cond_1c
    return-void
.end method

.method protected setOrientation(II)V
    .registers 5
    .param p1, "sensorOrientation"    # I
    .param p2, "recordingOrientation"    # I

    .prologue
    .line 596
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOrientation(II)V

    .line 597
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->isHeadUpDisplayReady()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-eqz v0, :cond_1c

    .line 599
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCurrentOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->setUiOrientation(I)V

    .line 602
    :cond_1c
    return-void
.end method

.method public setPreInflatedHeadUpDisplay(Landroid/view/View;)V
    .registers 2
    .param p1, "headUpDisplay"    # Landroid/view/View;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    .line 247
    return-void
.end method

.method protected setup(Landroid/view/View;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/View;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mLayoutPatternApplier:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShot()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;->setup(Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;Z)V

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->attachToWindow(Landroid/view/View;)V

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupPreviewView()V

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupRotatableToast(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)V

    .line 391
    return-void
.end method

.method public setupCapturingModeSelector()V
    .registers 4

    .prologue
    .line 605
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-nez v0, :cond_2a

    .line 606
    new-instance v0, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    .line 607
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLazyInflatedUiComponentContainerFront()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    .line 609
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0, p0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->setOnModeSelectListener(Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeSelectListener;)V

    .line 610
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0, p0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->setOnModeFinishListener(Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeFinishListener;)V

    .line 611
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCurrentOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->setUiOrientation(I)V

    .line 613
    :cond_2a
    return-void
.end method

.method public showBlank()V
    .registers 1

    .prologue
    .line 914
    return-void
.end method

.method protected showThermalDialog()V
    .registers 2

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getThermalString()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->showThermalDialog(I)V

    .line 774
    return-void
.end method

.method protected showThermalDialog(I)V
    .registers 14
    .param p1, "id"    # I

    .prologue
    .line 786
    new-instance v11, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;

    invoke-direct {v11, p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)V

    .line 788
    .local v11, "listener":Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    if-nez v0, :cond_a

    .line 823
    :cond_9
    :goto_9
    return-void

    .line 793
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 794
    .local v10, "inflater":Landroid/view/LayoutInflater;
    if-eqz v10, :cond_9

    .line 799
    sget v0, Lcom/sonyericsson/cameracommon/R$layout;->thermal_popup_content:I

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 802
    .local v1, "thermalView":Landroid/view/View;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->header_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 803
    .local v9, "header":Landroid/widget/TextView;
    invoke-virtual {v9, p1}, Landroid/widget/TextView;->setText(I)V

    .line 806
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->check_box:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 807
    .local v7, "checkBox":Landroid/widget/CheckBox;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->footer_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 808
    .local v8, "footer":Landroid/widget/TextView;
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$CheckBoxListener;

    const/4 v2, -0x1

    invoke-direct {v0, v11, v8, v2}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$CheckBoxListener;-><init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroid/widget/TextView;I)V

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 810
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 812
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_high_temp_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    .line 817
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getThermalDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    .line 818
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getThermalDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v6

    .line 812
    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCustomViewContinuouslyUsed(Landroid/view/View;IZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mThermalDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 820
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mThermalDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_9

    .line 821
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mThermalDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v11}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_9
.end method

.method protected startInflateTask(Landroid/view/LayoutInflater;Ljava/util/List;)V
    .registers 5
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 690
    .local p2, "inflateItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 691
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;

    invoke-direct {v1, p1, p2}, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateFuture:Ljava/util/concurrent/Future;

    .line 693
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 696
    return-void
.end method

.method public startSetupCapturingModeSelectorTask()V
    .registers 4

    .prologue
    .line 622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsRequestedLaterSetup:Z

    .line 623
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$SetupCapturingModeSelectorTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$SetupCapturingModeSelectorTask;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 624
    return-void
.end method

.method public updateGridLineView(II)V
    .registers 4
    .param p1, "viewfinderWidth"    # I
    .param p2, "viewfinderHeight"    # I

    .prologue
    .line 892
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->updateGridLine(II)V

    .line 893
    return-void
.end method

.method public updatePreviewContainer()V
    .registers 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->updatePreviewContainer()V

    .line 909
    return-void
.end method
