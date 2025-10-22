.class public Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
.super Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
.source "SoundPhotoCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ForceExitRequestReceiver;,
        Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$CameraErrorCallbackImpl;,
        Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$OnRecordingSoundCompletedTask;,
        Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ReleaseCameraActionSoundTask;,
        Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$RecordingSoundTask;,
        Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;,
        Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$LazyInitializationTask;
    }
.end annotation


# static fields
.field public static final AUTO_OFF_TIME_OUT_DURATION:I = 0x2bf20

.field public static final CAPTURING_MODE_NAME:Ljava/lang/String; = "capturing_mode_soundphoto"

.field private static final RECORDING_SOUND_DURATION_MILLIS:I = 0x2bc

.field public static final SETUP_DEVICE_SETUP_WAIT_TIME:I = 0x64

.field public static final SETUP_LAZY_EXECUTION_WAIT_TIME:I = 0xc8

.field public static final SHARED_PREFERENCE_NAME:Ljava/lang/String; = "com.sonymobile.android.addoncamera.soundphoto_sharedprefs"

.field static final SHARED_PREFERENCE_VERSION:Ljava/lang/String; = "0.0.0"

.field public static final SHARED_PREFS_KEY_ACCEPT_DISCLAIMER:Ljava/lang/String; = "ACCEPT_DISCLAIMER"

.field private static TAG:Ljava/lang/String;

.field private static mIsLaunchNotified:Z

.field private static mLaunchAndFinishNotifyerService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final REQUESTED_PERMISSIONS:[Ljava/lang/String;

.field private mCameraActionSound:Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

.field private mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

.field private mForceExitRequestReceiver:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ForceExitRequestReceiver;

.field private mHasDisclaimerAccepted:Z

.field private mIsSetContentView:Z

.field private mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private mPostEventHandler:Landroid/os/Handler;

.field private final mSaveSettingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

.field private mSharedPrefs:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

.field private mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

.field private mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mIsLaunchNotified:Z

    .line 139
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mLaunchAndFinishNotifyerService:Ljava/util/concurrent/ExecutorService;

    .line 138
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;-><init>()V

    .line 109
    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mIsSetContentView:Z

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSaveSettingMap:Ljava/util/Map;

    .line 144
    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mHasDisclaimerAccepted:Z

    .line 146
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    .line 1103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mForceExitRequestReceiver:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ForceExitRequestReceiver;

    .line 196
    const-string v0, "SoundPhotoCamera"

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->setAppName(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mHasDisclaimerAccepted:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mHasDisclaimerAccepted:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mPostEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object v0
.end method

.method private checkFirmwareVersionUpdated()V
    .registers 6

    .prologue
    .line 1012
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    const-string v3, "android.os.Build.FINGERPRINT"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    .local v0, "cachedVersion":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 1014
    .local v1, "currentVersion":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1017
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->saveSettings()V

    .line 1018
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->clear()V

    .line 1019
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->restoreSettings()V

    .line 1020
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    const-string v3, "android.os.Build.FINGERPRINT"

    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->setParamFromSP(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_24
    return-void
.end method

.method private getDownAll()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 629
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_FINALIZE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 632
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    invoke-interface {v0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->setCameraDevice(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V

    .line 633
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    invoke-interface {v0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->setViewFinder(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;)V

    .line 634
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->removeStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 636
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-interface {v0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->setStateMachine(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;)V

    .line 637
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-interface {v0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->setCameraDevice(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V

    .line 640
    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    .line 641
    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    .line 644
    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mPostEventHandler:Landroid/os/Handler;

    .line 646
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->release()V

    .line 649
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->release()V

    .line 652
    iput-boolean v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mIsSetContentView:Z

    .line 654
    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 655
    return-void
.end method

.method private loadDestinationToSave()V
    .registers 4

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    .line 358
    .local v0, "dst":Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$4;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$SaveDestination:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_28

    .line 367
    :goto_17
    return-void

    .line 360
    :pswitch_18
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setCurrentStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V

    goto :goto_17

    .line 364
    :pswitch_20
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setCurrentStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V

    goto :goto_17

    .line 358
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_18
        :pswitch_20
    .end packed-switch
.end method

.method private static logPerformance(Ljava/lang/String;)V
    .registers 5
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PERFORMANCE] [TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 77
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method private notifyFinish()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 939
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraActionSound:Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

    if-eqz v0, :cond_24

    .line 940
    sget-boolean v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mIsLaunchNotified:Z

    if-eqz v0, :cond_16

    .line 941
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mLaunchAndFinishNotifyerService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$RecordingSoundTask;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraActionSound:Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$RecordingSoundTask;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonyericsson/cameracommon/sound/CameraActionSound;ZLcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 945
    :cond_16
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mLaunchAndFinishNotifyerService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ReleaseCameraActionSoundTask;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraActionSound:Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ReleaseCameraActionSoundTask;-><init>(Lcom/sonyericsson/cameracommon/sound/CameraActionSound;Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 947
    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraActionSound:Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

    .line 949
    :cond_24
    sput-boolean v4, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mIsLaunchNotified:Z

    .line 951
    return-void
.end method

.method private registerForceExitRequestReceiver()V
    .registers 4

    .prologue
    .line 1107
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sonymobile.cameracommon.intent.ACTION_FORCE_EXIT_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ForceExitRequestReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ForceExitRequestReceiver;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;)V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mForceExitRequestReceiver:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ForceExitRequestReceiver;

    .line 1109
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mForceExitRequestReceiver:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ForceExitRequestReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1110
    return-void
.end method

.method private requestToRestoreNavigationBar()V
    .registers 4

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    if-eqz v0, :cond_e

    .line 1087
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_RESTORE_NAVIGATION_BAR_PREVIOUS_VISIBILITY:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1090
    :cond_e
    return-void
.end method

.method private setUpAll()V
    .registers 4

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->setupCoreInstance()V

    .line 234
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .line 235
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setStorageDialogStateListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;)V

    .line 236
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setMessegePopup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 237
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    .line 240
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    .line 242
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mIsSetContentView:Z

    if-nez v0, :cond_3c

    .line 243
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->setContentView()V

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mIsSetContentView:Z

    .line 248
    :cond_3c
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_INITIALIZE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 251
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->isOneShot()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;Z)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .line 254
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mPostEventHandler:Landroid/os/Handler;

    .line 259
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 261
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;-><init>(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 262
    return-void
.end method

.method private setupCoreInstance()V
    .registers 4

    .prologue
    .line 267
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    const-string v1, "com.sonymobile.android.addoncamera.soundphoto_sharedprefs"

    const-string v2, "0.0.0"

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    .line 270
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->checkFirmwareVersionUpdated()V

    .line 272
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    .line 274
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-static {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$Factory;->newInstance(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    .line 277
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-static {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$Factory;->newInstance(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    .line 280
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getInstance()Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->setCameraDevice(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V

    .line 281
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->setViewFinder(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;)V

    .line 282
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->setStateMachine(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;)V

    .line 283
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getInstance()Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->setCameraDevice(Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;)V

    .line 284
    return-void
.end method

.method private unregisterForceExitRequestReceiver()V
    .registers 2

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mForceExitRequestReceiver:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ForceExitRequestReceiver;

    if-eqz v0, :cond_c

    .line 1115
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mForceExitRequestReceiver:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ForceExitRequestReceiver;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mForceExitRequestReceiver:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ForceExitRequestReceiver;

    .line 1118
    :cond_c
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 2

    .prologue
    .line 839
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->abort(Z)V

    .line 840
    return-void
.end method

.method public abort(Z)V
    .registers 3
    .param p1, "isEmergency"    # Z

    .prologue
    .line 844
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->abort(ZZ)V

    .line 845
    return-void
.end method

.method public abort(ZZ)V
    .registers 6
    .param p1, "isFinshied"    # Z
    .param p2, "isEmergency"    # Z

    .prologue
    const/4 v2, 0x0

    .line 848
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    if-eqz v0, :cond_14

    .line 849
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->canApplicationBeFinished()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 851
    if-eqz p1, :cond_19

    .line 852
    if-eqz p2, :cond_15

    .line 853
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->finishUrgently()V

    .line 867
    :cond_14
    :goto_14
    return-void

    .line 855
    :cond_15
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->finish()V

    goto :goto_14

    .line 859
    :cond_19
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_14

    .line 864
    :cond_23
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_BACK:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public cancelDelayedEvent(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mPostEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 445
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mPostEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 447
    :cond_9
    return-void
.end method

.method protected getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1147
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/provider/SoundPhotoSettingsProvider;->getSpecificAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallingDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 5

    .prologue
    .line 917
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const v1, 0x7f080138

    const v2, 0x7f080137

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showErrorUncancelable(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    return-object v0
.end method

.method protected getParamSharedPrefWrapper()Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;
    .registers 4

    .prologue
    .line 1056
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    const-string v1, "com.sonymobile.android.addoncamera.soundphoto_sharedprefs"

    const-string v2, "0.0.0"

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getPreviewSize()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 912
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public isDualStorageAvailable()Z
    .registers 2

    .prologue
    .line 907
    const/4 v0, 0x0

    return v0
.end method

.method public isMenuAvailable()Z
    .registers 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->canSettingUiBeOpened()Z

    move-result v0

    return v0
.end method

.method public isSelfTimerAvailable()Z
    .registers 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->canSelfTimerBeOpened()Z

    move-result v0

    return v0
.end method

.method public notifyLaunch()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 929
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraActionSound:Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

    if-eqz v0, :cond_14

    .line 930
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mLaunchAndFinishNotifyerService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$RecordingSoundTask;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraActionSound:Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$RecordingSoundTask;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonyericsson/cameracommon/sound/CameraActionSound;ZLcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 932
    sput-boolean v4, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mIsLaunchNotified:Z

    .line 935
    :cond_14
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->canApplicationBeFinished()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1204
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->terminateApplication()V

    .line 1209
    :goto_b
    return-void

    .line 1206
    :cond_c
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_BACK:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->finish()V

    .line 876
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 203
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 204
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mIsSetContentView:Z

    if-nez v0, :cond_18

    .line 205
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->setContentView()V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mIsSetContentView:Z

    .line 209
    :cond_18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 213
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 214
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 216
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 219
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->onCreate()V

    .line 222
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->setUpAll()V

    .line 225
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->registerForceExitRequestReceiver()V

    .line 227
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 228
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 611
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 612
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onDestroy()V

    .line 616
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getDownAll()V

    .line 619
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->unregisterForceExitRequestReceiver()V

    .line 622
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->onDestroy()V

    .line 624
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 625
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 661
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 662
    invoke-virtual {v4, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnDown(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 664
    .local v0, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-interface {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->isOpenAutoReview()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 665
    packed-switch p1, :pswitch_data_ae

    .line 676
    :cond_13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_1f

    .line 677
    sget-object v4, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->VOLUME:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    if-eq v0, v4, :cond_1f

    move v2, v3

    .line 740
    :goto_1e
    :pswitch_1e
    return v2

    .line 683
    :cond_1f
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_27

    move v2, v3

    .line 684
    goto :goto_1e

    .line 687
    :cond_27
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->restartAutoOffTimer()V

    .line 689
    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$4;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_b6

    .line 740
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1e

    .line 693
    :pswitch_3a
    const/16 v4, 0x18

    if-ne p1, v4, :cond_49

    .line 694
    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_ZOOM_IN_DOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    .line 699
    .local v1, "zoomKeyEvent":Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;
    :goto_40
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v4, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    move v2, v3

    .line 700
    goto :goto_1e

    .line 696
    .end local v1    # "zoomKeyEvent":Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;
    :cond_49
    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_ZOOM_OUT_DOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    .restart local v1    # "zoomKeyEvent":Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;
    goto :goto_40

    .line 706
    .end local v1    # "zoomKeyEvent":Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;
    :pswitch_4c
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    invoke-interface {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->isDialogOpened()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 707
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v5, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 710
    :cond_5d
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v5, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_DOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    move v2, v3

    .line 711
    goto :goto_1e

    .line 714
    :pswitch_68
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v4, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 715
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v5, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_DOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    move v2, v3

    .line 716
    goto :goto_1e

    .line 721
    :pswitch_7c
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    invoke-interface {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->isDialogOpened()Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 722
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v5, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 725
    :cond_8d
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v4, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 726
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v5, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_DOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 727
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v5, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_DOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    move v2, v3

    .line 728
    goto/16 :goto_1e

    :pswitch_ab
    move v2, v3

    .line 736
    goto/16 :goto_1e

    .line 665
    :pswitch_data_ae
    .packed-switch 0x18
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    .line 689
    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_1e
        :pswitch_4c
        :pswitch_68
        :pswitch_7c
        :pswitch_7c
        :pswitch_ab
        :pswitch_ab
        :pswitch_ab
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 747
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 831
    :goto_8
    :pswitch_8
    return v1

    .line 751
    :cond_9
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->restartAutoOffTimer()V

    .line 753
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 754
    invoke-virtual {v3, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnUp(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 756
    .local v0, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-interface {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->isOpenAutoReview()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 757
    packed-switch p1, :pswitch_data_9e

    .line 769
    :cond_1d
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-interface {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->isCapturingModeSelectorOpened()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 770
    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$4;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_a6

    .line 787
    :cond_30
    :pswitch_30
    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$4;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_b6

    .line 831
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_8

    :pswitch_40
    move v1, v2

    .line 761
    goto :goto_8

    .line 780
    :pswitch_42
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-interface {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->closeCapturingModeSelector()V

    goto :goto_8

    .line 790
    :pswitch_48
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_ZOOM_UP:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_8

    :pswitch_52
    move v1, v2

    .line 794
    goto :goto_8

    .line 797
    :pswitch_54
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_UP:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_8

    .line 801
    :pswitch_5e
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_UP:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_8

    .line 807
    :pswitch_68
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_UP:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 808
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_UP:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_8

    .line 813
    :pswitch_7b
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_MENU:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_8

    .line 817
    :pswitch_85
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    invoke-interface {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->isDialogOpened()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 818
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_BACK:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 823
    :cond_98
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->abort()V

    goto/16 :goto_8

    .line 757
    nop

    :pswitch_data_9e
    .packed-switch 0x18
        :pswitch_40
        :pswitch_40
    .end packed-switch

    .line 770
    :pswitch_data_a6
    .packed-switch 0x3
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_30
        :pswitch_42
    .end packed-switch

    .line 787
    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_48
        :pswitch_52
        :pswitch_54
        :pswitch_5e
        :pswitch_68
        :pswitch_68
        :pswitch_7b
        :pswitch_85
        :pswitch_8
    .end packed-switch
.end method

.method public onNotifyThermalNormal()V
    .registers 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    if-eqz v0, :cond_e

    .line 178
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_NORMAL:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 180
    :cond_e
    return-void
.end method

.method public onNotifyThermalWarning(Z)V
    .registers 5
    .param p1, "isOnStartup"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    if-eqz v0, :cond_e

    .line 185
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_WARNING:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 187
    :cond_e
    return-void
.end method

.method public onNotifyThermalWarningExtra(Z)V
    .registers 2
    .param p1, "isOnStartup"    # Z

    .prologue
    .line 1101
    return-void
.end method

.method public onPauseTasks()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 561
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    if-eqz v0, :cond_b

    .line 562
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setActivityForeground(Z)V

    .line 564
    :cond_b
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 566
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->notifyFinish()V

    .line 569
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 575
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    if-eqz v0, :cond_48

    .line 576
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->releaseCameraInstance()V

    .line 577
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setStateMachine(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;)V

    .line 578
    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 587
    :goto_2e
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->onPause()V

    .line 589
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->releaseResource()V

    .line 591
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->clearKeepScreenOn()V

    .line 594
    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mPostEventHandler:Landroid/os/Handler;

    .line 597
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onPauseTasks()V

    .line 599
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 600
    return-void

    .line 583
    :cond_48
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getInstance()Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->releaseCameraInstance()V

    goto :goto_2e
.end method

.method public onReachHighTemperature(Z)V
    .registers 7
    .param p1, "isOnStartup"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 159
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    if-eqz v0, :cond_f

    .line 160
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 164
    :cond_f
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    if-eqz v0, :cond_27

    .line 165
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->releaseCameraInstance()V

    .line 166
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v0, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setStateMachine(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;)V

    .line 167
    iput-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 172
    :goto_1f
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendThermalEvent(ZZ)V

    .line 173
    return-void

    .line 169
    :cond_27
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getInstance()Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->releaseCameraInstance()V

    goto :goto_1f
.end method

.method public onRestart()V
    .registers 3

    .prologue
    .line 296
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 297
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onRestart()V

    .line 299
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 300
    return-void
.end method

.method public onResumeTasks()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 304
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 305
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 307
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onResumeTasks()V

    .line 309
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->resume(Z)V

    .line 312
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->getOrientation()I

    move-result v0

    if-ne v0, v2, :cond_75

    .line 314
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->setLayoutOrientation(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V

    .line 320
    :goto_24
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mPostEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_2f

    .line 321
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mPostEventHandler:Landroid/os/Handler;

    .line 324
    :cond_2f
    new-instance v0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mPostEventHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraActionSound:Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

    .line 325
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraActionSound:Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->load(I)V

    .line 328
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->onResume()V

    .line 330
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->isSdPermissionFinished()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 331
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->UNGRANTED:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-eq v0, v1, :cond_60

    .line 333
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->resetSdPermissionFinished()V

    .line 334
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->SDCARD:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 339
    :cond_60
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->loadDestinationToSave()V

    .line 342
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->initGeotag(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    .line 347
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->startInflateTask()V

    .line 349
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 350
    return-void

    .line 317
    :cond_75
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->setLayoutOrientation(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V

    goto :goto_24
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 288
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 289
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onStart()V

    .line 291
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 292
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 604
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 605
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onStop()V

    .line 606
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 607
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1076
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onWindowFocusChanged(Z)V

    .line 1080
    if-eqz p1, :cond_8

    .line 1081
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->requestToRestoreNavigationBar()V

    .line 1083
    :cond_8
    return-void
.end method

.method public postDelayedEvent(Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayTime"    # J

    .prologue
    .line 438
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mPostEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 439
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mPostEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 441
    :cond_9
    return-void
.end method

.method public postEvent(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mPostEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 433
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mPostEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 435
    :cond_9
    return-void
.end method

.method protected prepareFinish()V
    .registers 4

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1096
    return-void
.end method

.method public reconstructLocalCache()V
    .registers 2

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    if-eqz v0, :cond_9

    .line 1156
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->reconstructLocalCache()V

    .line 1158
    :cond_9
    return-void
.end method

.method public requestPostLazyInitializationTaskExecute()V
    .registers 2

    .prologue
    .line 428
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;

    invoke-direct {v0, p0, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$PostDeviceInitializationTask;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->postEvent(Ljava/lang/Runnable;)V

    .line 429
    return-void
.end method

.method public requestSuspend()V
    .registers 1

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->finish()V

    .line 557
    return-void
.end method

.method public restoreSettings()V
    .registers 8

    .prologue
    .line 1040
    const-string v0, "-"

    .line 1042
    .local v0, "DELIMITER":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/4 v5, 0x2

    if-ge v1, v5, :cond_3c

    .line 1043
    if-nez v1, :cond_35

    .line 1044
    sget-object v5, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->MAIN:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-virtual {v5}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1048
    .local v3, "prefix":Ljava/lang/String;
    :goto_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->FLASH:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1049
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSaveSettingMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1050
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    invoke-virtual {v5, v2, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->setParamFromSP(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1046
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_35
    sget-object v5, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->FRONT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-virtual {v5}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "prefix":Ljava/lang/String;
    goto :goto_e

    .line 1052
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_3c
    return-void
.end method

.method public resumeAll()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 392
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->isForceSound()Z

    move-result v1

    if-nez v1, :cond_a

    .line 393
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->pauseAudioPlayback()V

    .line 396
    :cond_a
    sput-boolean v4, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mIsLaunchNotified:Z

    .line 399
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->getInstance()Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    .line 400
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setActivityForeground(Z)V

    .line 401
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->initialize()V

    .line 402
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$CameraErrorCallbackImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$CameraErrorCallbackImpl;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 403
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->setStateMachine(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;)V

    .line 405
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_RESUME:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 408
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSettingPreferences:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v1

    iget-object v0, v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->capturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .line 409
    .local v0, "capturingMode":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mCameraDeviceHandler:Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;

    iget v2, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->cameraId:I

    invoke-virtual {v1, p0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/CameraDeviceHandler;->requestStartCameraOpen(Landroid/content/Context;I)V

    .line 412
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->enableOrientation()V

    .line 414
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->keepScreenOn()V

    .line 417
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->onResume()V

    .line 421
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->checkAndRequestSelfPermissions(I[Ljava/lang/String;)Z

    .line 425
    return-void
.end method

.method public saveLocalCache()V
    .registers 2

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    if-eqz v0, :cond_9

    .line 1166
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->saveLocalCache()V

    .line 1168
    :cond_9
    return-void
.end method

.method public saveSettings()V
    .registers 8

    .prologue
    .line 1025
    const-string v0, "-"

    .line 1027
    .local v0, "DELIMITER":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/4 v5, 0x2

    if-ge v1, v5, :cond_3c

    .line 1028
    if-nez v1, :cond_35

    .line 1029
    sget-object v5, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->MAIN:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-virtual {v5}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1033
    .local v3, "prefix":Ljava/lang/String;
    :goto_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->FLASH:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1034
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    const-string v6, ""

    invoke-virtual {v5, v2, v6}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1035
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSaveSettingMap:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1031
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_35
    sget-object v5, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->FRONT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-virtual {v5}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "prefix":Ljava/lang/String;
    goto :goto_e

    .line 1037
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_3c
    return-void
.end method

.method public setDestinationToSave(Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;)V
    .registers 5
    .param p1, "dstTo"    # Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    .prologue
    .line 370
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$4;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$SaveDestination:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    .line 379
    :goto_b
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->requestCheckAll()V

    .line 380
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 381
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 382
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isToggledStorageReady()Z

    move-result v2

    .line 381
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->setSelectability(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Z)V

    .line 383
    return-void

    .line 372
    :pswitch_29
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setCurrentStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V

    goto :goto_b

    .line 376
    :pswitch_31
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setCurrentStorage(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V

    goto :goto_b

    .line 370
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_29
        :pswitch_31
    .end packed-switch
.end method

.method public setTouchCapture(Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;)V
    .registers 3
    .param p1, "touchCapture"    # Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    .prologue
    .line 924
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    invoke-interface {v0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->setTouchCapture(Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;)V

    .line 925
    return-void
.end method

.method protected showAndConfirmDisclaimer()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1172
    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mHasDisclaimerAccepted:Z

    .line 1173
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    const-string v1, "ACCEPT_DISCLAIMER"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->getParamFromSP(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1174
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)V

    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$2;

    invoke-direct {v2, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$2;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)V

    new-instance v3, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$3;

    invoke-direct {v3, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$3;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDisclaimer(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1198
    :cond_21
    return-void
.end method

.method public startAutoOffTimer()Z
    .registers 2

    .prologue
    .line 883
    const v0, 0x2bf20

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->startAutoOffTimer(I)Z

    move-result v0

    return v0
.end method

.method public terminateApplication()V
    .registers 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->finish()V

    .line 193
    return-void
.end method
