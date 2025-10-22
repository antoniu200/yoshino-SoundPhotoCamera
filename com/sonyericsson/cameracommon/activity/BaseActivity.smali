.class public abstract Lcom/sonyericsson/cameracommon/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;
.implements Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;
.implements Lcom/sonyericsson/cameracommon/activity/TerminateListener;
.implements Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$SecurityDialogListener;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtraOperation;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageBroadcastReceiver;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;
    }
.end annotation


# static fields
.field private static final AUTO_OFF_TIMER_TIMEOUT_COUNT:I = 0x2bf20

.field public static final INTENT_SUBJECT_START_SECURE:Ljava/lang/String; = "start-secure"

.field private static final ON_RESUME_DELAY_NON_SECURE_MILLIS:J = 0xfL

.field private static final ON_RESUME_DELAY_SECURE_MILLIS:J = 0x1eL

.field private static final RESULT_AUTO_OFF_TIMER:I = 0x2

.field public static final SP_SECURITY_DIALOG_CHECKED:Ljava/lang/String; = "security-dialog-checked"

.field public static final SP_SECURITY_DIALOG_CONTEXTUAL_SETTING_CHECKED:Ljava/lang/String; = "security-dialog-contextual_setting-checked"

.field public static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field private mActivityResultListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/preference/PreferenceManager$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field mAddToMediaStore:Z

.field mAutoOffTimer:Ljava/util/Timer;

.field protected mAutoReviewSettings:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;

.field protected mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

.field protected mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

.field private final mExtendedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mExtraOutput:Landroid/net/Uri;

.field protected mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field mHandler:Landroid/os/Handler;

.field private mIsAutoOffTimerEnabled:Z

.field protected mIsKeyguardAvailable:Z

.field private mIsReceiverResistered:Z

.field private mIsSdPermissionFinished:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

.field private mLastDeterminedOrientationDegree:I

.field private mLastOrientationDegree:I

.field private mLaunchAsOneShot:Z

.field private mLaunchAsOneShotPhoto:Z

.field private mLaunchAsOneShotPhotoSecure:Z

.field private mLaunchAsOneShotVideo:Z

.field protected mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

.field private mLayoutOrientationChangedListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

.field private mMainHandler:Landroid/os/Handler;

.field protected mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

.field private final mOnResumeTasks:Ljava/lang/Runnable;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field protected mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

.field private mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

.field private mSensorOrientationDegree:I

.field private mSkippedFirstOnResume:Z

.field protected mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

.field private mStorageListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

.field protected mTerminateListener:Lcom/sonyericsson/cameracommon/activity/TerminateListener;

.field protected mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsAutoOffTimerEnabled:Z

    .line 105
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShot:Z

    .line 107
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhoto:Z

    .line 109
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhotoSecure:Z

    .line 111
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotVideo:Z

    .line 150
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .line 152
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    .line 156
    iput v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSensorOrientationDegree:I

    .line 158
    iput v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    .line 160
    iput v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    .line 172
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 196
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsKeyguardAvailable:Z

    .line 199
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsReceiverResistered:Z

    .line 201
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageBroadcastReceiver;

    invoke-direct {v0, p0, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageBroadcastReceiver;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtendedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    .line 264
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 295
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 302
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSkippedFirstOnResume:Z

    .line 304
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsSdPermissionFinished:Z

    .line 310
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->notifyStorageStatusChanged(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSkippedFirstOnResume:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSkippedFirstOnResume:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->stopAutoOffTimer()V

    return-void
.end method

.method static synthetic access$502(Lcom/sonyericsson/cameracommon/activity/BaseActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSensorOrientationDegree:I

    return p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 77
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    return v0
.end method

.method static synthetic access$602(Lcom/sonyericsson/cameracommon/activity/BaseActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    return p1
.end method

.method static synthetic access$702(Lcom/sonyericsson/cameracommon/activity/BaseActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    return p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->notifyLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V

    return-void
.end method

.method private addActivityResultListener(ILandroid/preference/PreferenceManager$OnActivityResultListener;)Z
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "listener"    # Landroid/preference/PreferenceManager$OnActivityResultListener;

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 1354
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    .line 1357
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1358
    const/4 v0, 0x0

    .line 1362
    :goto_14
    return v0

    .line 1361
    :cond_15
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1362
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private checkOneShot()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1041
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1042
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1046
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1c

    .line 1047
    const-string v3, "BaseActivity"

    const-string v4, "setRequestedMode: getAction() == null "

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1054
    :cond_1c
    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1055
    iput-boolean v5, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhoto:Z

    .line 1061
    :cond_26
    :goto_26
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhoto:Z

    if-nez v3, :cond_32

    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhotoSecure:Z

    if-nez v3, :cond_32

    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotVideo:Z

    if-eqz v3, :cond_34

    .line 1062
    :cond_32
    iput-boolean v5, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShot:Z

    .line 1066
    :cond_34
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1067
    .local v1, "extra":Landroid/os/Bundle;
    if-nez v1, :cond_59

    .line 1068
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    .line 1069
    iput-boolean v5, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAddToMediaStore:Z

    .line 1092
    :goto_3e
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    if-eqz v3, :cond_42

    .line 1102
    :cond_42
    return-void

    .line 1056
    .end local v1    # "extra":Landroid/os/Bundle;
    :cond_43
    const-string v3, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1057
    iput-boolean v5, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhotoSecure:Z

    goto :goto_26

    .line 1058
    :cond_4e
    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1059
    iput-boolean v5, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotVideo:Z

    goto :goto_26

    .line 1070
    .restart local v1    # "extra":Landroid/os/Bundle;
    :cond_59
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShot:Z

    if-eqz v3, :cond_85

    .line 1071
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_65
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_65

    .line 1075
    :cond_72
    const-string v3, "output"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    .line 1076
    const-string v3, "addToMediaStore"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAddToMediaStore:Z

    goto :goto_3e

    .line 1078
    :cond_85
    iput-object v6, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    .line 1079
    iput-boolean v5, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAddToMediaStore:Z

    goto :goto_3e
.end method

.method private getOrientationDegree(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)I
    .registers 6
    .param p1, "fixed"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 930
    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$3;->$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LayoutOrientation:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_22

    .line 946
    const/4 v0, -0x1

    .local v0, "degree":I
    move v1, v0

    .line 952
    .end local v0    # "degree":I
    .local v1, "degree":I
    :goto_d
    return v1

    .line 934
    .end local v1    # "degree":I
    :pswitch_e
    const/4 v0, 0x0

    .line 949
    .restart local v0    # "degree":I
    :goto_f
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v0, v2

    .line 950
    rem-int/lit16 v0, v0, 0x168

    move v1, v0

    .line 952
    .end local v0    # "degree":I
    .restart local v1    # "degree":I
    goto :goto_d

    .line 937
    .end local v1    # "degree":I
    :pswitch_18
    const/16 v0, 0x5a

    .line 938
    .restart local v0    # "degree":I
    goto :goto_f

    .line 940
    .end local v0    # "degree":I
    :pswitch_1b
    const/16 v0, 0xb4

    .line 941
    .restart local v0    # "degree":I
    goto :goto_f

    .line 943
    .end local v0    # "degree":I
    :pswitch_1e
    const/16 v0, 0x10e

    .line 944
    .restart local v0    # "degree":I
    goto :goto_f

    .line 930
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
    .end packed-switch
.end method

.method private static in(III)Z
    .registers 4
    .param p0, "testee"    # I
    .param p1, "lower"    # I
    .param p2, "upper"    # I

    .prologue
    .line 899
    if-lt p0, p1, :cond_6

    if-ge p0, p2, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private muteSound(I)V
    .registers 6
    .param p1, "streamType"    # I

    .prologue
    const/4 v3, 0x1

    .line 585
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_18

    .line 586
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 587
    .local v0, "m":Landroid/media/AudioManager;
    if-eqz v0, :cond_18

    .line 588
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v3, :cond_18

    .line 596
    .end local v0    # "m":Landroid/media/AudioManager;
    :cond_18
    return-void
.end method

.method private notifyLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    .registers 5
    .param p1, "orientation"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 823
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-ne p1, v1, :cond_5

    .line 835
    :cond_4
    return-void

    .line 825
    :cond_5
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-eq p1, v1, :cond_4

    .line 831
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .line 832
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;

    .line 833
    .local v0, "listener":Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    invoke-interface {v0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;->onLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V

    goto :goto_11
.end method

.method private notifyStorageStatusChanged(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 222
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;

    .line 223
    .local v0, "listener":Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "storage":Ljava/lang/String;
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 225
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;->onMediaScanFinished()V

    goto :goto_6

    .line 227
    :cond_22
    invoke-static {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v2

    .line 228
    .local v2, "type":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    if-eq v2, v4, :cond_6

    .line 229
    invoke-interface {v0, p1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;->onStorageCheckRequested(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V

    goto :goto_6

    .line 233
    .end local v0    # "listener":Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;
    .end local v1    # "storage":Ljava/lang/String;
    .end local v2    # "type":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    :cond_2e
    return-void
.end method

.method private registerIntentFilter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "intent"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 482
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 483
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    if-eqz p2, :cond_a

    .line 484
    invoke-virtual {v0, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 486
    :cond_a
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtendedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 487
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsReceiverResistered:Z

    .line 488
    return-void
.end method

.method private final declared-synchronized stopAutoOffTimer()V
    .registers 2

    .prologue
    .line 653
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    if-eqz v0, :cond_12

    .line 654
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 655
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 658
    :cond_12
    monitor-exit p0

    return-void

    .line 653
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unmuteSound(I)V
    .registers 5
    .param p1, "streamType"    # I

    .prologue
    .line 604
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_18

    .line 605
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 606
    .local v0, "m":Landroid/media/AudioManager;
    if-eqz v0, :cond_18

    .line 607
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 614
    .end local v0    # "m":Landroid/media/AudioManager;
    :cond_18
    return-void
.end method


# virtual methods
.method protected abstract abort()V
.end method

.method public addOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;

    .prologue
    .line 783
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 784
    return-void
.end method

.method public addStorageListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 247
    if-eqz p1, :cond_f

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_f
    return-void
.end method

.method protected callOnCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 1208
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1209
    return-void
.end method

.method protected callOnDestroy()V
    .registers 1

    .prologue
    .line 1232
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1233
    return-void
.end method

.method protected callOnPause()V
    .registers 1

    .prologue
    .line 1220
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1221
    return-void
.end method

.method protected callOnRestart()V
    .registers 1

    .prologue
    .line 1216
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1217
    return-void
.end method

.method protected callOnResume()V
    .registers 1

    .prologue
    .line 1224
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1225
    return-void
.end method

.method protected callOnStart()V
    .registers 1

    .prologue
    .line 1212
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1213
    return-void
.end method

.method protected callOnStop()V
    .registers 1

    .prologue
    .line 1228
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1229
    return-void
.end method

.method public checkAndRequestSelfPermissions(I[Ljava/lang/String;)Z
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 1490
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->checkAndRequestSelfPermissions(Landroid/app/Activity;I[Ljava/lang/String;)Z

    move-result v1

    .line 1492
    .local v1, "result":Z
    if-eqz v1, :cond_e

    .line 1493
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$2;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$2;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;[Ljava/lang/String;)V

    .line 1527
    .local v0, "listener":Landroid/preference/PreferenceManager$OnActivityResultListener;
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->addActivityResultListener(ILandroid/preference/PreferenceManager$OnActivityResultListener;)Z

    .line 1529
    .end local v0    # "listener":Landroid/preference/PreferenceManager$OnActivityResultListener;
    :cond_e
    return v1
.end method

.method protected clearKeepScreenOn()V
    .registers 3

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 738
    return-void
.end method

.method protected createBatteryChangedReceiver()V
    .registers 2

    .prologue
    .line 402
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    .line 405
    return-void
.end method

.method protected createCommonSettings()V
    .registers 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    if-nez v0, :cond_13

    .line 385
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .line 387
    :cond_13
    return-void
.end method

.method protected createMessagePopup()V
    .registers 2

    .prologue
    .line 390
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/activity/TerminateListener;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 391
    return-void
.end method

.method protected createThermalAlertReceiver()V
    .registers 4

    .prologue
    .line 394
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 398
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getParamSharedPrefWrapper()Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    move-result-object v2

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    .line 399
    return-void
.end method

.method public final disableAutoOffTimer()V
    .registers 2

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->stopAutoOffTimer()V

    .line 675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsAutoOffTimerEnabled:Z

    .line 676
    return-void
.end method

.method public disableOrientation()V
    .registers 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_c

    .line 765
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 766
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 768
    :cond_c
    return-void
.end method

.method public final enableAutoOffTimer()V
    .registers 2

    .prologue
    .line 665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsAutoOffTimerEnabled:Z

    .line 666
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->startAutoOffTimer()Z

    .line 667
    return-void
.end method

.method public enableOrientation()V
    .registers 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_10

    .line 756
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 757
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 760
    :cond_10
    return-void
.end method

.method protected getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1609
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoReviewSettings()Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;
    .registers 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoReviewSettings:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;

    return-object v0
.end method

.method public getBatteryLevel()I
    .registers 2

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->getBatteryLevel()I

    move-result v0

    return v0
.end method

.method public abstract getCallingDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
.end method

.method public getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .registers 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    return-object v0
.end method

.method public getConfigurationOrientation()I
    .registers 2

    .prologue
    .line 906
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    packed-switch v0, :pswitch_data_a

    .line 917
    const/4 v0, 0x2

    :goto_6
    return v0

    .line 908
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 906
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public getExtraOutput()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    return-object v0
.end method

.method public getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .registers 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object v0
.end method

.method public getLastDetectedOrientation()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;
    .registers 2

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    return-object v0
.end method

.method public getLaunchedBy()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;
    .registers 2

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    return-object v0
.end method

.method public getLayoutOrientation()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 843
    iget v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    .line 844
    .local v2, "orientation":I
    if-ne v2, v3, :cond_7

    .line 845
    iget v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    .line 847
    :cond_7
    if-ne v2, v3, :cond_c

    .line 848
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .line 884
    :goto_b
    return-object v3

    .line 853
    :cond_c
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result v3

    rsub-int v3, v3, 0x168

    add-int/2addr v2, v3

    .line 854
    rem-int/lit16 v2, v2, 0x168

    .line 859
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    sget-object v4, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-eq v3, v4, :cond_21

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    sget-object v4, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-ne v3, v4, :cond_33

    :cond_21
    const/4 v1, 0x1

    .line 862
    .local v1, "nowPortrait":Z
    :goto_22
    if-eqz v1, :cond_35

    const/16 v0, 0x3c

    .line 874
    .local v0, "margin":I
    :goto_26
    rsub-int/lit8 v3, v0, 0x5a

    add-int/lit8 v4, v0, 0x5a

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->in(III)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 875
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    goto :goto_b

    .line 859
    .end local v0    # "margin":I
    .end local v1    # "nowPortrait":Z
    :cond_33
    const/4 v1, 0x0

    goto :goto_22

    .line 862
    .restart local v1    # "nowPortrait":Z
    :cond_35
    const/16 v0, 0x1e

    goto :goto_26

    .line 877
    .restart local v0    # "margin":I
    :cond_38
    add-int/lit8 v3, v0, 0x5a

    rsub-int v4, v0, 0x10e

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->in(III)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 878
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    goto :goto_b

    .line 880
    :cond_45
    rsub-int v3, v0, 0x10e

    add-int/lit16 v4, v0, 0x10e

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->in(III)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 881
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    goto :goto_b

    .line 884
    :cond_52
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    goto :goto_b
.end method

.method public getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .registers 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    return-object v0
.end method

.method public getOrientation()I
    .registers 4

    .prologue
    .line 961
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .line 962
    .local v0, "orientation":Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-ne v0, v1, :cond_a

    .line 963
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutOrientation()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    move-result-object v0

    .line 966
    :cond_a
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$3;->$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LayoutOrientation:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    .line 976
    const/4 v1, 0x0

    :goto_16
    return v1

    .line 968
    :pswitch_17
    const/4 v1, 0x1

    goto :goto_16

    .line 974
    :pswitch_19
    const/4 v1, 0x2

    goto :goto_16

    .line 966
    nop

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_19
        :pswitch_17
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method public getOrientationDegree()I
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 986
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    if-eq v0, v1, :cond_8

    .line 987
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    .line 1000
    :goto_7
    return v0

    .line 988
    :cond_8
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    if-eq v0, v1, :cond_f

    .line 990
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    goto :goto_7

    .line 1000
    :cond_f
    const/16 v0, 0x10e

    goto :goto_7
.end method

.method protected abstract getParamSharedPrefWrapper()Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;
.end method

.method public getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .registers 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    return-object v0
.end method

.method public getScreenAspect()Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;
    .registers 9

    .prologue
    const v7, 0x3c23d70a    # 0.01f

    .line 366
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    if-nez v4, :cond_42

    .line 367
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 368
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 369
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 370
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 371
    iget v4, v2, Landroid/graphics/Point;->y:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/Point;->y:I

    iget v6, v2, Landroid/graphics/Point;->x:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 372
    .local v1, "screenAspectRatio":F
    const/high16 v4, 0x40000000    # 2.0f

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_45

    .line 373
    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    .line 380
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "screenAspectRatio":F
    .end local v2    # "size":Landroid/graphics/Point;
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_42
    :goto_42
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    return-object v4

    .line 374
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "screenAspectRatio":F
    .restart local v2    # "size":Landroid/graphics/Point;
    .restart local v3    # "wm":Landroid/view/WindowManager;
    :cond_45
    const v4, 0x3fe38e39

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_57

    .line 375
    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->SIXTEEN_NINE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    goto :goto_42

    .line 377
    :cond_57
    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->NOT_DEFINED:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    goto :goto_42
.end method

.method public getSensorOrientationDegree()I
    .registers 2

    .prologue
    .line 1010
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSensorOrientationDegree:I

    return v0
.end method

.method public getStorageController()Lcom/sonyericsson/cameracommon/mediasaving/StorageController;
    .registers 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    return-object v0
.end method

.method public getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    .registers 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    return-object v0
.end method

.method public hasExtraOutputPath()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1131
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    if-nez v2, :cond_6

    .line 1136
    :cond_5
    :goto_5
    return v1

    .line 1134
    :cond_6
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    .line 1135
    invoke-static {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, "fixedStoragePath":Ljava/lang/String;
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public abstract isAlertDialogOpened()Z
.end method

.method public isAlreadyBcl()Z
    .registers 2

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isAlreadyBcl()Z

    move-result v0

    return v0
.end method

.method public isAlreadyHighTemperature()Z
    .registers 2

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isAlreadyHighTemperature()Z

    move-result v0

    return v0
.end method

.method public isDeviceInSecurityLock()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1155
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1157
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_28

    .line 1159
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1161
    .local v3, "subject":Ljava/lang/String;
    const-string v5, "keyguard"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 1163
    .local v1, "keyguadManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    .line 1166
    .local v2, "restrictedMode":Z
    const-string v5, "start-secure"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    if-eqz v2, :cond_28

    const/4 v4, 0x1

    .line 1169
    .end local v1    # "keyguadManager":Landroid/app/KeyguardManager;
    .end local v2    # "restrictedMode":Z
    .end local v3    # "subject":Ljava/lang/String;
    :cond_28
    return v4
.end method

.method public abstract isDualStorageAvailable()Z
.end method

.method public isGpsLocationAllowed()Z
    .registers 2

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->getIsGpsLocationAllowed()Z

    move-result v0

    return v0
.end method

.method public isInLockTaskMode()Z
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1335
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1336
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v2, 0x17

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v3, :cond_17

    .line 1337
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x1

    .line 1341
    :cond_16
    :goto_16
    return v1

    .line 1338
    :cond_17
    const/16 v2, 0x15

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v3, :cond_16

    .line 1339
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    goto :goto_16
.end method

.method protected isKeyguardLocked()Z
    .registers 2

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_e

    .line 1585
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1587
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_19

    .line 1588
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 1590
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected isKeyguardSecure()Z
    .registers 2

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_e

    .line 1595
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1597
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_19

    .line 1598
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    .line 1600
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public isLaunchedByPowerKeyDoubleTap()Z
    .registers 4

    .prologue
    .line 1546
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1547
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_16

    .line 1548
    const-string v2, "com.android.systemui.camera_launch_source"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1550
    .local v1, "launchSource":Ljava/lang/String;
    const-string v2, "power_double_tap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1551
    const/4 v2, 0x1

    .line 1554
    .end local v1    # "launchSource":Ljava/lang/String;
    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public abstract isMenuAvailable()Z
.end method

.method public isNetworkLocationAllowed()Z
    .registers 2

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->getIsNetworkLocationAllowed()Z

    move-result v0

    return v0
.end method

.method public isOneShot()Z
    .registers 2

    .prologue
    .line 1106
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShot:Z

    return v0
.end method

.method public isOneShotPhoto()Z
    .registers 2

    .prologue
    .line 1111
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhoto:Z

    return v0
.end method

.method public isOneShotPhotoSecure()Z
    .registers 2

    .prologue
    .line 1116
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhotoSecure:Z

    return v0
.end method

.method public isOneShotVideo()Z
    .registers 2

    .prologue
    .line 1121
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotVideo:Z

    return v0
.end method

.method protected isSdPermissionFinished()Z
    .registers 2

    .prologue
    .line 1533
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsSdPermissionFinished:Z

    return v0
.end method

.method public isThermalWarningExtraState()Z
    .registers 2

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isWarningExtraState()Z

    move-result v0

    return v0
.end method

.method public isThermalWarningReceived()Z
    .registers 2

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isThermalWarningReceived()Z

    move-result v0

    return v0
.end method

.method public isThermalWarningState()Z
    .registers 2

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->isWarningState()Z

    move-result v0

    return v0
.end method

.method protected keepScreenOn()V
    .registers 3

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 733
    return-void
.end method

.method protected loadCommonSettings()V
    .registers 2

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->load()V

    .line 479
    return-void
.end method

.method public logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "lifeCycle"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    .prologue
    .line 1302
    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->access$900(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureResource(Ljava/lang/String;)V

    .line 1305
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    if-eq p2, v0, :cond_26

    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    if-ne p2, v0, :cond_26

    .line 1310
    :cond_26
    return-void
.end method

.method public logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "lifeCycle"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    .prologue
    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureResource(Ljava/lang/String;)V

    .line 1322
    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->access$900(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 1324
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    if-ne p2, v0, :cond_25

    .line 1325
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->outResult()V

    .line 1327
    :cond_25
    return-void
.end method

.method public msgPopupCanceled()V
    .registers 1

    .prologue
    .line 748
    return-void
.end method

.method public msgPopupOpened()V
    .registers 1

    .prologue
    .line 743
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1382
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1383
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->reconstructLocalCache()V

    .line 1385
    const/16 v1, 0x10

    if-ne v1, p1, :cond_10

    const/4 v1, -0x1

    if-ne p2, v1, :cond_10

    .line 1387
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsSdPermissionFinished:Z

    .line 1390
    :cond_10
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    if-nez v1, :cond_15

    .line 1402
    :cond_14
    :goto_14
    return-void

    .line 1393
    :cond_15
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceManager$OnActivityResultListener;

    .line 1394
    .local v0, "listener":Landroid/preference/PreferenceManager$OnActivityResultListener;
    if-eqz v0, :cond_2a

    .line 1395
    invoke-interface {v0, p1, p2, p3}, Landroid/preference/PreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1396
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1399
    :cond_2a
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_14

    .line 1400
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    goto :goto_14
.end method

.method public onBatteryLevelChanged(I)V
    .registers 2
    .param p1, "level"    # I

    .prologue
    .line 1573
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 329
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_e

    .line 330
    sget v0, Lcom/sonyericsson/cameracommon/R$style;->SomcCameraHoloTheme:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->setTheme(I)V

    .line 333
    :cond_e
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->checkOneShot()V

    .line 335
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 338
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->createMessagePopup()V

    .line 339
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setMessagePopupStateListener(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;)V

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->addOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V

    .line 345
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->createThermalAlertReceiver()V

    .line 347
    new-instance v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoReviewSettings:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;

    .line 349
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->createCommonSettings()V

    .line 353
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    .line 356
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onCreate(Landroid/content/Context;)V

    .line 359
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 555
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 558
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 561
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->removeOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V

    .line 562
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->releaseContext()V

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 570
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onDestroy()V

    .line 571
    return-void
.end method

.method protected final onPause()V
    .registers 3

    .prologue
    .line 494
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 495
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 502
    :cond_b
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSkippedFirstOnResume:Z

    if-nez v0, :cond_12

    .line 504
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onPauseTasks()V

    .line 507
    :cond_12
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 508
    return-void
.end method

.method protected onPauseTasks()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 517
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsReceiverResistered:Z

    if-eqz v0, :cond_c

    .line 518
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtendedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 519
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsReceiverResistered:Z

    .line 523
    :cond_c
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->disableAutoOffTimer()V

    .line 526
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->unmuteSound(I)V

    .line 528
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 529
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->suspend()V

    .line 532
    :cond_20
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->onPause()V

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->release()V

    .line 536
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->disableOrientation()V

    .line 538
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->removeStorageListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;)V

    .line 540
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onPause(Z)V

    .line 543
    return-void
.end method

.method public onReachBatteryLimit(Z)V
    .registers 2
    .param p1, "isOnStartup"    # Z

    .prologue
    .line 1563
    return-void
.end method

.method public onReachLowBattery()V
    .registers 1

    .prologue
    .line 1568
    return-void
.end method

.method protected final onResume()V
    .registers 5

    .prologue
    .line 420
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMainHandler:Landroid/os/Handler;

    if-nez v2, :cond_f

    .line 421
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMainHandler:Landroid/os/Handler;

    .line 423
    :cond_f
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 424
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSkippedFirstOnResume:Z

    if-nez v2, :cond_39

    .line 426
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSkippedFirstOnResume:Z

    .line 427
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_36

    const-wide/16 v0, 0x1e

    .line 431
    .local v0, "delay":J
    :goto_2b
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    .end local v0    # "delay":J
    :goto_32
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 439
    return-void

    .line 427
    :cond_36
    const-wide/16 v0, 0xf

    goto :goto_2b

    .line 435
    :cond_39
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSkippedFirstOnResume:Z

    .line 436
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onResumeTasks()V

    goto :goto_32
.end method

.method protected onResumeTasks()V
    .registers 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->onResume()V

    .line 450
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    const-string v1, "file"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->registerIntentFilter(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    const-string v1, "file"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->registerIntentFilter(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v0, "android.intent.action.MEDIA_EJECT"

    const-string v1, "file"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->registerIntentFilter(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    const-string v1, "file"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->registerIntentFilter(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 456
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 458
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 459
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 461
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->loadCommonSettings()V

    .line 463
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->readLocationSettings(Landroid/content/Context;)V

    .line 466
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->enableAutoOffTimer()V

    .line 469
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getOrientationDegree(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSensorOrientationDegree:I

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->addStorageListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;)V

    .line 472
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->onResume(Z)V

    .line 475
    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 550
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 551
    return-void
.end method

.method public pauseAudioPlayback()V
    .registers 4

    .prologue
    .line 620
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 625
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->muteSound(I)V

    .line 626
    return-void
.end method

.method public readLocationSettings()V
    .registers 2

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->readLocationSettings(Landroid/content/Context;)V

    .line 1331
    return-void
.end method

.method public reconstructLocalCache()V
    .registers 1

    .prologue
    .line 1617
    return-void
.end method

.method public removeOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;

    .prologue
    .line 787
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 788
    return-void
.end method

.method public removeStorageListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 258
    :cond_d
    return-void
.end method

.method public requestStartActivity(Landroid/content/Intent;Landroid/os/Bundle;Z)Z
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "isFromInformationActivity"    # Z

    .prologue
    .line 1465
    const/4 v1, 0x0

    .line 1467
    .local v1, "result":Z
    if-eqz p2, :cond_8

    .line 1468
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1472
    :goto_6
    const/4 v1, 0x1

    .line 1477
    :goto_7
    return v1

    .line 1470
    :cond_8
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_b} :catch_c

    goto :goto_6

    .line 1473
    :catch_c
    move-exception v0

    .line 1474
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "BaseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to launch the AddOn application. Message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1475
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1474
    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method protected resetSdPermissionFinished()V
    .registers 2

    .prologue
    .line 1537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsSdPermissionFinished:Z

    .line 1538
    return-void
.end method

.method public final declared-synchronized restartAutoOffTimer()V
    .registers 2

    .prologue
    .line 684
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->stopAutoOffTimer()V

    .line 685
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->startAutoOffTimer()Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 686
    monitor-exit p0

    return-void

    .line 684
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract resumeAll()V
.end method

.method public saveLocalCache()V
    .registers 1

    .prologue
    .line 1624
    return-void
.end method

.method public abstract setAlertDialogIsOpened(Z)V
.end method

.method public setLayoutOrientation(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    .registers 3
    .param p1, "orientation"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 892
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getOrientationDegree(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)I

    move-result v0

    .line 893
    .local v0, "orientationDegree":I
    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSensorOrientationDegree:I

    .line 894
    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    .line 895
    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    .line 896
    return-void
.end method

.method public shouldAddToMediaStore()Z
    .registers 2

    .prologue
    .line 1141
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAddToMediaStore:Z

    return v0
.end method

.method public showContextualSettingsSecurityDialog(Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1417
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getParamSharedPrefWrapper()Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    move-result-object v1

    const-string v2, "security-dialog-contextual_setting-checked"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->getParamFromSP(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1419
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$SecurityDialogListener;

    const-string v1, "security-dialog-contextual_setting-checked"

    invoke-direct {v0, p0, v1, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$SecurityDialogListener;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1421
    .local v0, "listener":Lcom/sonyericsson/cameracommon/activity/BaseActivity$SecurityDialogListener;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v1, p0, v0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showContextualSettingsSecurityDialog(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1424
    .end local v0    # "listener":Lcom/sonyericsson/cameracommon/activity/BaseActivity$SecurityDialogListener;
    :cond_19
    return-void
.end method

.method public showScreenPinningOkDialog(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runOnDismiss"    # Ljava/lang/Runnable;

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showScreenPinningOkDialog(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 1432
    return-void
.end method

.method public showSecurityOkOrCancelDialog(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runOnOk"    # Ljava/lang/Runnable;
    .param p2, "runOnCancel"    # Ljava/lang/Runnable;

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0, p0, p1, p2, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showSecurityOkOrCancelDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1428
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1376
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->saveLocalCache()V

    .line 1377
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1378
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/preference/PreferenceManager$OnActivityResultListener;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "listener"    # Landroid/preference/PreferenceManager$OnActivityResultListener;

    .prologue
    .line 1367
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->addActivityResultListener(ILandroid/preference/PreferenceManager$OnActivityResultListener;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1368
    const/4 v0, 0x0

    .line 1371
    :goto_7
    return v0

    .line 1370
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1371
    const/4 v0, 0x1

    goto :goto_7
.end method

.method protected startAutoOffTimer()Z
    .registers 2

    .prologue
    .line 633
    const v0, 0x2bf20

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->startAutoOffTimer(I)Z

    move-result v0

    return v0
.end method

.method protected final declared-synchronized startAutoOffTimer(I)Z
    .registers 8
    .param p1, "autoOffTimeoutDuration"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 637
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsAutoOffTimerEnabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_23

    if-nez v2, :cond_9

    .line 649
    :cond_7
    :goto_7
    monitor-exit p0

    return v0

    .line 641
    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    if-nez v2, :cond_7

    .line 643
    new-instance v0, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    .line 646
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    new-instance v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;)V

    int-to-long v4, p1

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_23

    move v0, v1

    .line 647
    goto :goto_7

    .line 637
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateRemain()Z
    .registers 6

    .prologue
    .line 1244
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->getExpectedTotalSavedPicturesSize()J

    move-result-wide v2

    .line 1245
    .local v2, "reservedSize":J
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateRemain(JZ)J

    .line 1246
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    .line 1249
    .local v0, "isReady":Z
    return v0
.end method
