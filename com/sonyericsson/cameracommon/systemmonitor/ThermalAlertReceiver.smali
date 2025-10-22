.class public Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThermalAlertReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;,
        Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$CheckBoxListener;,
        Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalWarningDialogCloseListener;,
        Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;,
        Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;
    }
.end annotation


# static fields
.field private static final ACTION_CAMERA_COOLED_DOWN_NORMAL:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL"

.field private static final ACTION_CAMERA_HEATED_CLOSE_TO_SHUTDOWN:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

.field private static final ACTION_CAMERA_HEATED_OVER_CRITICAL:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

.field private static final ACTION_CAMERA_HEATED_OVER_LOW_TEMP_BURN:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN"

.field private static final ACTION_CAMERA_LOW_TEMP_BURN_TIMER_RESET:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET"

.field private static final ACTION_CAMERA_LOW_TEMP_BURN_TIMER_SET:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET"

.field private static final CAMERA_CRITICAL:I = 0x25c

.field private static final CAMERA_HEATED_CLOSE_TO_SHUTDOWN:I = 0x26c

.field private static final CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC"

.field private static final CAMERA_LOW_TEMP_BURN:I = 0x262

.field private static final CAMERA_NORMAL:I = 0x258

.field private static final CAMERA_WARNING:I = 0x25b

.field private static final CAMERA_WARNING_EXTRA:I = 0x259

.field private static final INVALID_LOW_TEMP_BURN_TIMEOUT_DURATION:I = -0x1

.field private static final KEY_LOW_TEMP_BURN_TIMER_DURATION_SEC:Ljava/lang/String; = "com.sonyericsson.psm.extra.TIMEOUT_SEC"

.field private static final LOW_TEMP_BURN_TIMER_LIMIT_MILLIS:I = 0x1b7740

.field private static final SHARED_PREFS_KEY_THERMAL_WARNING_DISABLED:Ljava/lang/String; = "THERMAL_WARNING_DISABLED"

.field private static final SYSMON_SERVICE:Ljava/lang/String; = "com.sonyericsson.psm.sysmonservice"

.field private static final SYSMON_SERVICE_CLASS:Ljava/lang/String; = "com.sonyericsson.psm.sysmonservice.SysmonService"

.field public static final TAG:Ljava/lang/String; = "ThermalAlertReceiver"

.field private static final VARIABLE_LOW_TEMP_BURN_TIMEOUT_DURATION_NOT_SUPPORTED:I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mIsAlreadyHighTemperature:Z

.field private mIsBindSysmonService:Z

.field private mIsWarningExtraState:Z

.field private mIsWarningReceived:Z

.field private mIsWarningState:Z

.field private final mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

.field private final mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

.field private final mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

.field private final mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

.field private final mParamSharedPrefWrapper:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

.field private final mServiceConnectionSysmon:Landroid/content/ServiceConnection;

.field private mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

.field private mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "messagePopup"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p3, "listener"    # Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;
    .param p4, "pref"    # Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 292
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 133
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 134
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningState:Z

    .line 135
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningExtraState:Z

    .line 137
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningReceived:Z

    .line 156
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 293
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    .line 294
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 295
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    .line 296
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mParamSharedPrefWrapper:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    .line 297
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 298
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    .line 299
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    .line 300
    new-instance v0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    .line 301
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/psm/sysmonservice/ISysmonService;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
    .param p1, "x1"    # Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->checkStartupStatus(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;II)V
    .registers 3
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->checkLowTempBurnTimeoutTimerDuration(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$702(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->showDialogCritical()V

    return-void
.end method

.method private changeToNormalState()V
    .registers 2

    .prologue
    .line 645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningState:Z

    .line 646
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onNotifyThermalNormal()V

    .line 647
    return-void
.end method

.method private changeToWarningExtraState(Z)V
    .registers 3
    .param p1, "isOnStartup"    # Z

    .prologue
    .line 657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningExtraState:Z

    .line 658
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onNotifyThermalWarningExtra(Z)V

    .line 659
    return-void
.end method

.method private changeToWarningState(Z)V
    .registers 3
    .param p1, "isOnStartup"    # Z

    .prologue
    const/4 v0, 0x1

    .line 650
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningState:Z

    .line 651
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningReceived:Z

    .line 652
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onNotifyThermalWarning(Z)V

    .line 653
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onNotifyThermalWarningExtra(Z)V

    .line 654
    return-void
.end method

.method private checkLowTempBurnTimeoutTimerDuration(II)V
    .registers 7
    .param p1, "thermalLevel"    # I
    .param p2, "durationSec"    # I

    .prologue
    .line 221
    if-nez p2, :cond_f

    .line 225
    const/16 v0, 0x262

    if-ne p1, v0, :cond_e

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->requestTimeMillis(J)V

    .line 243
    :cond_e
    :goto_e
    return-void

    .line 234
    :cond_f
    const/4 v0, -0x1

    if-eq p2, v0, :cond_e

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->requestTimeMillis(J)V

    goto :goto_e
.end method

.method private checkStartupStatus(ILjava/lang/String;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "service"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 180
    sparse-switch p1, :sswitch_data_20

    .line 218
    :goto_7
    return-void

    .line 184
    :sswitch_8
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 185
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->finishOnStartup()V

    goto :goto_7

    .line 191
    :sswitch_e
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToWarningExtraState(Z)V

    goto :goto_7

    .line 197
    :sswitch_12
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 198
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->finishOnStartup()V

    goto :goto_7

    .line 204
    :sswitch_18
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToNormalState()V

    goto :goto_7

    .line 210
    :sswitch_1c
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToWarningState(Z)V

    goto :goto_7

    .line 180
    :sswitch_data_20
    .sparse-switch
        0x258 -> :sswitch_18
        0x259 -> :sswitch_e
        0x25b -> :sswitch_12
        0x25c -> :sswitch_8
        0x26c -> :sswitch_1c
    .end sparse-switch
.end method

.method private finishOnStartup()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 429
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    invoke-interface {v0, v3}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onReachHighTemperature(Z)V

    .line 430
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_already_high_txt:I

    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->CENTER:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {v0, v1, v3, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showRotatableToastMessageAndAbort(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 433
    return-void
.end method

.method private getSharedPrefsKeyForThermalWarningDialog()Ljava/lang/String;
    .registers 3

    .prologue
    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "THERMAL_WARNING_DISABLED_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    .line 499
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getThermalWarningString()I
    .registers 2

    .prologue
    .line 526
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/BrandConfig;->isVerizonBrand()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 527
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_info_vzw_txt:I

    .line 529
    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_info_txt:I

    goto :goto_8
.end method

.method private showDialogCritical()V
    .registers 3

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;->onReachHighTemperature(Z)V

    .line 535
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showThermalCritical()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 536
    return-void
.end method

.method private showDialogWarning()V
    .registers 12

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 463
    .local v10, "inflater":Landroid/view/LayoutInflater;
    if-nez v10, :cond_9

    .line 495
    :cond_8
    :goto_8
    return-void

    .line 468
    :cond_9
    sget v0, Lcom/sonyericsson/cameracommon/R$layout;->thermal_warning_popup_content:I

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 471
    .local v1, "thermalWarningView":Landroid/view/View;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->header_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 472
    .local v9, "header":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->getThermalWarningString()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 474
    new-instance v8, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$CheckBoxListener;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mParamSharedPrefWrapper:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    .line 475
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->getSharedPrefsKeyForThermalWarningDialog()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$CheckBoxListener;-><init>(Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;Ljava/lang/String;)V

    .line 476
    .local v8, "checkBoxListener":Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$CheckBoxListener;
    new-instance v5, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalWarningDialogCloseListener;

    invoke-direct {v5, p0, v8}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalWarningDialogCloseListener;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Ljava/lang/Runnable;)V

    .line 480
    .local v5, "closeListener":Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalWarningDialogCloseListener;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->check_box:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 481
    .local v7, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 482
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 484
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_high_temp_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCustomView(Landroid/view/View;IZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 492
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_8

    .line 493
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_8
.end method


# virtual methods
.method public isAlreadyHighTemperature()Z
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    return v0
.end method

.method public isThermalWarningReceived()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningReceived:Z

    return v0
.end method

.method public isWarningExtraState()Z
    .registers 3

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningExtraState:Z

    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningState:Z

    or-int/2addr v0, v1

    return v0
.end method

.method public isWarningState()Z
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningState:Z

    return v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 307
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v1, "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v1, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string v1, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 317
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningExtraState:Z

    .line 318
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 325
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 356
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 357
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsBindSysmonService:Z

    if-eqz v0, :cond_10

    .line 358
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsBindSysmonService:Z

    .line 359
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 362
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 365
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningReceived:Z

    .line 366
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 372
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsBindSysmonService:Z

    if-nez v3, :cond_7

    .line 426
    :cond_6
    :goto_6
    return-void

    .line 381
    :cond_7
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    if-nez v3, :cond_6

    .line 389
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 392
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 393
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 395
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 396
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v3, :cond_2d

    .line 397
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mThermalWarningDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 399
    :cond_2d
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->showDialogCritical()V

    goto :goto_6

    .line 400
    :cond_31
    const-string v3, "com.sonyericsson.psm.action.CAMERA_COOLED_DOWN_NORMAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 401
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 402
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToNormalState()V

    goto :goto_6

    .line 403
    :cond_42
    const-string v3, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_LOW_TEMP_BURN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 404
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerFixedDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->requestTimeMillis(J)V

    goto :goto_6

    .line 405
    :cond_53
    const-string v3, "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 406
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mParamSharedPrefWrapper:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    .line 407
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->getSharedPrefsKeyForThermalWarningDialog()Ljava/lang/String;

    move-result-object v4

    .line 406
    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->getParamFromSP(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 408
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->showDialogWarning()V

    .line 410
    :cond_6a
    invoke-direct {p0, v5}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToWarningState(Z)V

    goto :goto_6

    .line 411
    :cond_6e
    const-string v3, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_SET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 412
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 413
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_6

    .line 414
    const-string v3, "com.sonyericsson.psm.extra.TIMEOUT_SEC"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 417
    .local v2, "durationSec":I
    if-eq v2, v4, :cond_6

    .line 418
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    mul-int/lit16 v4, v2, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->requestTimeMillis(J)V

    goto/16 :goto_6

    .line 421
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "durationSec":I
    :cond_8e
    const-string v3, "com.sonyericsson.psm.action.CAMERA_LOW_TEMP_BURN_TIMER_RESET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 422
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mLowTempBurnTimerVariableDuration:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    goto/16 :goto_6

    .line 423
    :cond_9d
    const-string v3, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_WARNING_EXTRA_FUNC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 424
    invoke-direct {p0, v5}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->changeToWarningExtraState(Z)V

    goto/16 :goto_6
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 331
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsAlreadyHighTemperature:Z

    .line 332
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsWarningExtraState:Z

    .line 334
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 335
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sonyericsson.psm.sysmonservice"

    const-string v2, "com.sonyericsson.psm.sysmonservice.SysmonService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BIND_SYSMON_SERVICE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/PerfLog;->begin()V

    .line 338
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsBindSysmonService:Z

    .line 342
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BIND_SYSMON_SERVICE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/PerfLog;->end()V

    .line 344
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mIsBindSysmonService:Z

    if-eqz v1, :cond_2a

    .line 350
    :goto_29
    return-void

    .line 348
    :cond_2a
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_29
.end method
