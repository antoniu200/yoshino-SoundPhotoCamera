.class public Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnDismissListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnClickListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LazyAbortListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ImmediatelyAbortListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowThermalListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkMandatoryListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnKeyWrapSelectionShareListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$CheckBoxListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LowBatteryDialogCloseListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelMemoryErrorOkListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickMemoryErrorOkListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$DialogDismissListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableContinuouslyUsedListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapOkCancelListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapSelectionShareListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkAndCheckableContinuouslyUsedListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkAndCheckableListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;,
        Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIALOG_BUTTON_FONT_SIZE_IN_DP:F = 14.0f

.field public static final NO_RESOURCE_ID:I = -0x1

.field public static final TAG:Ljava/lang/String; = "MessagePopup"

.field private static final TERMINATE_WAIT_TIME:I = 0xfa0


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mIsResumed:Z

.field private final mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

.field private mLowBatteryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private final mMessageHandler:Landroid/os/Handler;

.field private mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

.field private mSensorOrientation:I

.field private mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mStateListener:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

.field private mStorageDialogStateListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;

.field private mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mStorageErrorPopupIsError:Z

.field private mStorageErrorPopupTextId:I

.field private mStorageExplanatoryPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mStoreProgressDialog:Landroid/app/AlertDialog;

.field private mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

.field private mTerminateListener:Lcom/sonyericsson/cameracommon/activity/TerminateListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/activity/TerminateListener;)V
    .registers 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "terminateApplication"    # Lcom/sonyericsson/cameracommon/activity/TerminateListener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mSensorOrientation:I

    .line 87
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .line 90
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopupTextId:I

    .line 92
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopupIsError:Z

    .line 95
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 101
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mLowBatteryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 113
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 119
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 122
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 125
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 128
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 131
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 134
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 140
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageExplanatoryPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 145
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStateListener:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

    .line 151
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$KeyEventKiller;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

    .line 163
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    .line 164
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mTerminateListener:Lcom/sonyericsson/cameracommon/activity/TerminateListener;

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mMessageHandler:Landroid/os/Handler;

    .line 166
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mIsResumed:Z

    .line 167
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStateListener:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mLowBatteryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/activity/TerminateListener;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mTerminateListener:Lcom/sonyericsson/cameracommon/activity/TerminateListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mMessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mIsResumed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p1, "x1"    # Landroid/content/DialogInterface;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->onCancelMemoryErrorPopup(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private cancelMemoryErrorPopup()V
    .registers 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_9

    .line 977
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->cancel()V

    .line 980
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_12

    .line 981
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->cancel()V

    .line 983
    :cond_12
    return-void
.end method

.method private createDialogOkAndCancel(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 13
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "can"    # I
    .param p6, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "cancelClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 697
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v2, :cond_d

    .line 698
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 699
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 704
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 705
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_14

    .line 718
    :goto_13
    return-object v1

    .line 709
    :cond_14
    if-eq p2, v3, :cond_19

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 710
    :cond_19
    if-eqz p3, :cond_1e

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 711
    :cond_1e
    if-eq p1, v3, :cond_23

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 712
    :cond_23
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;

    invoke-direct {v1, p0, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p4, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 713
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;

    invoke-direct {v1, p0, p7}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p5, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 714
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapOkCancelListener;

    invoke-direct {v1, p0, p8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapOkCancelListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 715
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 716
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 718
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_13
.end method

.method private getSoftwareLicensesFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2130
    const/4 v0, 0x0

    .line 2131
    .local v0, "bufReader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2134
    .local v2, "builder":Ljava/lang/StringBuilder;
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 2135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1c} :catch_82
    .catchall {:try_start_6 .. :try_end_1c} :catchall_6f

    .line 2138
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .local v1, "bufReader":Ljava/io/BufferedReader;
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 2139
    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_25

    .line 2140
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2143
    :cond_25
    :goto_25
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_55

    .line 2144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_41} :catch_42
    .catchall {:try_start_1c .. :try_end_41} :catchall_7f

    goto :goto_25

    .line 2146
    .end local v4    # "line":Ljava/lang/String;
    :catch_42
    move-exception v3

    move-object v0, v1

    .line 2147
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/IOException;
    :goto_44
    :try_start_44
    const-string v5, "TraceLog"

    const-string v6, "Can not load assets file."

    invoke-static {v5, v6, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_6f

    .line 2150
    if-eqz v0, :cond_50

    .line 2151
    :try_start_4d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_66

    .line 2158
    .end local v3    # "e":Ljava/io/IOException;
    :cond_50
    :goto_50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2150
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_55
    if-eqz v1, :cond_5a

    .line 2151
    :try_start_57
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5c

    :cond_5a
    move-object v0, v1

    .line 2155
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_50

    .line 2153
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    :catch_5c
    move-exception v3

    .line 2154
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v5, "TraceLog"

    const-string v6, "Fail to close BufferedReader."

    invoke-static {v5, v6, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 2156
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_50

    .line 2153
    .end local v4    # "line":Ljava/lang/String;
    :catch_66
    move-exception v3

    .line 2154
    const-string v5, "TraceLog"

    const-string v6, "Fail to close BufferedReader."

    invoke-static {v5, v6, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    .line 2149
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_6f
    move-exception v5

    .line 2150
    :goto_70
    if-eqz v0, :cond_75

    .line 2151
    :try_start_72
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    .line 2155
    :cond_75
    :goto_75
    throw v5

    .line 2153
    :catch_76
    move-exception v3

    .line 2154
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v6, "TraceLog"

    const-string v7, "Fail to close BufferedReader."

    invoke-static {v6, v7, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75

    .line 2149
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    :catchall_7f
    move-exception v5

    move-object v0, v1

    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_70

    .line 2146
    :catch_82
    move-exception v3

    goto :goto_44
.end method

.method private getStringFieldNameForDebug(I)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 2233
    const-string v0, ""

    return-object v0
.end method

.method private getThermalCriticalString()I
    .registers 2

    .prologue
    .line 1118
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/BrandConfig;->isVerizonBrand()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1119
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_shutting_down_vzw_txt:I

    .line 1121
    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_shutting_down_txt:I

    goto :goto_8
.end method

.method private isLargeTextEnabled()Z
    .registers 4

    .prologue
    .line 2565
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2566
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 2568
    .local v1, "scale":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_14

    .line 2569
    const/4 v2, 0x1

    .line 2571
    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method private lazyAbort()V
    .registers 5

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mMessageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$2;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1991
    return-void
.end method

.method private onCancelMemoryErrorPopup(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 986
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 987
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShown(Landroid/content/DialogInterface;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 988
    :cond_15
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 990
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopupIsError:Z

    .line 991
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopupTextId:I

    .line 994
    :cond_1d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 995
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShown(Landroid/content/DialogInterface;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 996
    :cond_31
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1000
    :cond_33
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->notifyCloseDialog()V

    .line 1001
    return-void
.end method

.method private sendGoogleAnalyticsCameraNotAvailableEvent()V
    .registers 2

    .prologue
    .line 1627
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCameraNotAvailableFailedToOpen()V

    .line 1628
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendCameraNotAvailableEvent()V

    .line 1629
    return-void
.end method

.method private setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;)V
    .registers 3
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 1957
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;I)V

    .line 1958
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;I)V

    .line 1959
    const/4 v0, -0x3

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;I)V

    .line 1960
    return-void
.end method

.method private setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "buttonId"    # I

    .prologue
    .line 1966
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 1967
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_c

    .line 1968
    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1970
    :cond_c
    return-void
.end method

.method private show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 4
    .param p1, "builder"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .prologue
    .line 355
    iget v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mSensorOrientation:I

    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOrientation(I)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 358
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->createRotatableDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    .line 359
    .local v0, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->show()V

    .line 360
    return-object v0
.end method

.method private showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 5
    .param p1, "builder"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .prologue
    .line 1075
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v1, :cond_7

    .line 1076
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->cancelMemoryErrorPopup()V

    .line 1079
    :cond_7
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v1, :cond_10

    .line 1080
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 1083
    :cond_10
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v1, :cond_2c

    .line 1084
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 1085
    .local v0, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1086
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1087
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1089
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1092
    .end local v0    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;
    :cond_2c
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v1
.end method

.method private showOkDialogImpl(IIZILcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 9
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "listener"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;

    .prologue
    .line 1732
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1733
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_8

    .line 1734
    const/4 v1, 0x0

    .line 1744
    :goto_7
    return-object v1

    .line 1737
    :cond_8
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1738
    if-eqz p3, :cond_10

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1739
    :cond_10
    const/4 v1, -0x1

    if-eq p1, v1, :cond_16

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1740
    :cond_16
    invoke-virtual {v0, p4, p5}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1741
    invoke-virtual {v0, p5}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1742
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1744
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    goto :goto_7
.end method


# virtual methods
.method public cancelMemoryErrorPopup(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 969
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShown(Landroid/content/DialogInterface;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 970
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShown(Landroid/content/DialogInterface;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 971
    :cond_18
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->cancelMemoryErrorPopup()V

    .line 973
    :cond_1b
    return-void
.end method

.method public cancelMemoryErrorPopup(Z)V
    .registers 3
    .param p1, "onlyError"    # Z

    .prologue
    .line 951
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_a

    .line 952
    if-eqz p1, :cond_b

    .line 953
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopupIsError:Z

    if-nez v0, :cond_b

    .line 961
    :cond_a
    :goto_a
    return-void

    .line 959
    :cond_b
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->cancelMemoryErrorPopup()V

    goto :goto_a
.end method

.method public closeMessage()V
    .registers 2

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    if-eqz v0, :cond_9

    .line 1979
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->hideImmediately()V

    .line 1981
    :cond_9
    return-void
.end method

.method public createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 337
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_6

    .line 349
    :cond_5
    :goto_5
    return-object v0

    .line 340
    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 344
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 347
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5
.end method

.method public isMemoryErrorPopupOpened()Z
    .registers 2

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isMemoryErrorPopupOpened(Landroid/content/DialogInterface;)Z
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x1

    .line 1033
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v1, :cond_e

    .line 1034
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShown(Landroid/content/DialogInterface;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1045
    :cond_d
    :goto_d
    return v0

    .line 1039
    :cond_e
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v1, :cond_1a

    .line 1040
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShown(Landroid/content/DialogInterface;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1045
    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isStorageErrorDialogOpened()Z
    .registers 2

    .prologue
    .line 2671
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected notifyCloseDialog()V
    .registers 2

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageDialogStateListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;->onCloseStorageDialog()V

    .line 2250
    return-void
.end method

.method protected notifyOpenDialog()V
    .registers 2

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageDialogStateListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;->onOpenStorageDialog()V

    .line 2242
    return-void
.end method

.method public onLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    .registers 5
    .param p1, "changed"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 1520
    const/4 v0, 0x2

    .line 1521
    .local v0, "orientation":I
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$6;->$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LayoutOrientation:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_14

    .line 1527
    const/4 v0, 0x2

    .line 1530
    :goto_d
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setSensorOrientation(I)V

    .line 1531
    return-void

    .line 1523
    :pswitch_11
    const/4 v0, 0x1

    .line 1524
    goto :goto_d

    .line 1521
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mIsResumed:Z

    .line 195
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mIsResumed:Z

    .line 188
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    if-eqz v0, :cond_c

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->hideImmediately()V

    .line 203
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .line 205
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_1c

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 208
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 211
    :cond_1c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_2c

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 214
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 216
    :cond_2c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_37

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 218
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 220
    :cond_37
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_42

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 222
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 224
    :cond_42
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_4d

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 226
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 228
    :cond_4d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_58

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 230
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 232
    :cond_58
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_68

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 235
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 238
    :cond_68
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_73

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 240
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 243
    :cond_73
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_7e

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 245
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 248
    :cond_7e
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_89

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 250
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 253
    :cond_89
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mLowBatteryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_94

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mLowBatteryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 255
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mLowBatteryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 257
    :cond_94
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageExplanatoryPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_9f

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageExplanatoryPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 259
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageExplanatoryPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 263
    :cond_9f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method public releaseContext()V
    .registers 2

    .prologue
    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    .line 271
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->release()V

    .line 272
    return-void
.end method

.method public setMessagePopupStateListener(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStateListener:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

    .line 174
    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 278
    iput p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mSensorOrientation:I

    .line 279
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_b

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 282
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_14

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 285
    :cond_14
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_1d

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 288
    :cond_1d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_26

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 291
    :cond_26
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_2f

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 294
    :cond_2f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_38

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 297
    :cond_38
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    if-eqz v0, :cond_41

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setSensorOrientation(I)V

    .line 300
    :cond_41
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_4a

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 303
    :cond_4a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_53

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 306
    :cond_53
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_5c

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 309
    :cond_5c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_65

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 312
    :cond_65
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mLowBatteryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_6e

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mLowBatteryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 315
    :cond_6e
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageExplanatoryPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_77

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageExplanatoryPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    .line 318
    :cond_77
    return-void
.end method

.method public setStorageDialogStateListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageDialogStateListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;

    .line 181
    return-void
.end method

.method public showBclMessage(Z)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 7
    .param p1, "isRecording"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1131
    new-instance v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LazyAbortListener;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LazyAbortListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 1133
    .local v2, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1134
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_d

    .line 1152
    :goto_c
    return-object v1

    .line 1138
    :cond_d
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mLowBatteryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v3, :cond_18

    .line 1139
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mLowBatteryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 1140
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mLowBatteryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1142
    :cond_18
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_high_temp_title_txt:I

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1143
    if-eqz p1, :cond_38

    .line 1144
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_battery_level_low_recording_txt:I

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1148
    :goto_24
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    invoke-virtual {v0, v3, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1149
    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1150
    sget-object v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v4, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1151
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 1152
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_c

    .line 1146
    .end local v1    # "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    :cond_38
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_battery_level_low_using_txt:I

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_24
.end method

.method public showCameraDisabledMessage()V
    .registers 4

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1658
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_7

    .line 1665
    :goto_6
    return-void

    .line 1661
    :cond_7
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1662
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_use_of_camera_not_authorized_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1663
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 1665
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_6
.end method

.method public showCameraDisabledMessageOk()V
    .registers 9

    .prologue
    .line 1673
    new-instance v6, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;

    invoke-direct {v6, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 1674
    .local v6, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_use_of_camera_not_authorized_txt:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v7

    .line 1681
    .local v7, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    return-void
.end method

.method public showCameraNotAvailableError(ZZ)V
    .registers 3
    .param p1, "isCameraDisabled"    # Z
    .param p2, "isCancelable"    # Z

    .prologue
    .line 2259
    if-eqz p1, :cond_c

    .line 2260
    if-eqz p2, :cond_8

    .line 2261
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showCameraDisabledMessageOk()V

    .line 2272
    :goto_7
    return-void

    .line 2263
    :cond_8
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showCameraDisabledMessage()V

    goto :goto_7

    .line 2266
    :cond_c
    if-eqz p2, :cond_12

    .line 2267
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceErrorMessageOk()V

    goto :goto_7

    .line 2269
    :cond_12
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceErrorMessage()V

    goto :goto_7
.end method

.method public showConfirmLocationAccess(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 21
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isUsedForStartupGeotagCheck"    # Z
    .param p3, "onAllowClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "onDenyClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p6, "onCheckedChangeListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 2280
    if-nez p1, :cond_3

    .line 2327
    :cond_2
    :goto_2
    return-void

    .line 2284
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 2285
    .local v11, "inflater":Landroid/view/LayoutInflater;
    if-eqz v11, :cond_2

    .line 2291
    if-eqz p2, :cond_78

    .line 2292
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_remember_geotag_title_txt:I

    .line 2293
    .local v3, "titleId":I
    sget v1, Lcom/sonyericsson/cameracommon/R$layout;->dialog_remember_geo_tag_content:I

    const/4 v4, 0x0

    invoke-virtual {v11, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2295
    .local v2, "contentView":Landroid/view/View;
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->check_box_do_not_show_again:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    .line 2296
    .local v10, "cb":Landroid/widget/CheckBox;
    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2297
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2303
    .end local v10    # "cb":Landroid/widget/CheckBox;
    :goto_25
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->text_cta_dialog_subtitle:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2304
    .local v13, "subtitle":Landroid/widget/TextView;
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->text_cta_location_info:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2306
    .local v12, "info":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/RegionConfig;->isChinaRegion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 2307
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2308
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_cta_access_txt:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 2309
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_application_name_txt:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2307
    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2310
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2311
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2317
    :goto_68
    const/4 v4, 0x0

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_shut_down_yes_txt:I

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_shut_down_no_txt:I

    move-object v1, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCancelCustomView(Landroid/view/View;IZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_2

    .line 2299
    .end local v2    # "contentView":Landroid/view/View;
    .end local v3    # "titleId":I
    .end local v12    # "info":Landroid/widget/TextView;
    .end local v13    # "subtitle":Landroid/widget/TextView;
    :cond_78
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_cta_title_txt:I

    .line 2300
    .restart local v3    # "titleId":I
    sget v1, Lcom/sonyericsson/cameracommon/R$layout;->dialog_confirm_location_access_content:I

    const/4 v4, 0x0

    invoke-virtual {v11, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "contentView":Landroid/view/View;
    goto :goto_25

    .line 2313
    .restart local v12    # "info":Landroid/widget/TextView;
    .restart local v13    # "subtitle":Landroid/widget/TextView;
    :cond_82
    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2314
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_68
.end method

.method public showContextualSettingsSecurityDialog(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "runOnClickOk"    # Ljava/lang/Runnable;
    .param p3, "onCheckedChangeListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 2341
    if-nez p1, :cond_5

    .line 2373
    :cond_4
    :goto_4
    return-void

    .line 2345
    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 2346
    .local v9, "inflater":Landroid/view/LayoutInflater;
    if-eqz v9, :cond_4

    .line 2351
    sget v0, Lcom/sonyericsson/cameracommon/R$layout;->dialog_screen_locked:I

    invoke-virtual {v9, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2352
    .local v1, "content":Landroid/view/View;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->text_screen_locked_body:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2353
    .local v10, "message":Landroid/widget/TextView;
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_fast_capturing_screen_locked_settings_txt:I

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2356
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->check_box_do_not_show_again:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 2357
    .local v7, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v7, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2358
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2360
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_fast_capturing_screen_locked_title_txt:I

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    new-instance v5, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnClickListener;

    invoke-direct {v5, p0, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnClickListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Ljava/lang/Runnable;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCustomView(Landroid/view/View;IZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v8

    .line 2368
    .local v8, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    if-eqz v8, :cond_41

    .line 2369
    invoke-virtual {v8, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_4

    .line 2371
    :cond_41
    const-string v0, "MessagePopup"

    const-string v2, "showContextualSettingsSecurityDialog: dialog is null"

    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public showDestinationChangedToInternalMessageOk(Ljava/lang/Runnable;)V
    .registers 10
    .param p1, "runOnClickOk"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 2682
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_sd_permission_info_txt:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_high_temp_title_txt:I

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    const/4 v5, 0x0

    new-instance v6, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnDismissListener;

    invoke-direct {v6, p0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnDismissListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Ljava/lang/Runnable;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v7

    .line 2689
    .local v7, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-virtual {v7, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setCanceledOnTouchOutside(Z)V

    .line 2693
    return-void
.end method

.method public showDeviceErrorMessage()V
    .registers 4

    .prologue
    .line 1594
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1595
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_7

    .line 1606
    :goto_6
    return-void

    .line 1599
    :cond_7
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1600
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_device_not_available_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1601
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 1603
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->sendGoogleAnalyticsCameraNotAvailableEvent()V

    goto :goto_6
.end method

.method public showDeviceErrorMessageOk()V
    .registers 9

    .prologue
    .line 1638
    new-instance v6, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;

    invoke-direct {v6, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 1639
    .local v6, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_device_not_available_txt:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v7

    .line 1646
    .local v7, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->sendGoogleAnalyticsCameraNotAvailableEvent()V

    .line 1649
    return-void
.end method

.method public showDisclaimer(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 16
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "onOkClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "onCancelClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 2025
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 2026
    .local v10, "inflater":Landroid/view/LayoutInflater;
    if-nez v10, :cond_9

    .line 2068
    :cond_8
    :goto_8
    return-void

    .line 2030
    :cond_9
    sget v0, Lcom/sonyericsson/cameracommon/R$layout;->disclaimer_content:I

    invoke-virtual {v10, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2032
    .local v1, "contentView":Landroid/view/View;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->check_box:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 2033
    .local v9, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_consent_txt:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 2035
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$3;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2051
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2052
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_title_txt:I

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_accept_txt:I

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_decline_txt:I

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCancelCustomView(Landroid/view/View;IZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 2063
    invoke-virtual {v9, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2064
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_8

    .line 2065
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setPositiveButtonEnabled(Z)V

    .line 2066
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDisclaimerDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, p4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_8
.end method

.method public showErrorOkAndCancelExit(IZIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnKeyListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 14
    .param p1, "title"    # I
    .param p2, "needAlertIcon"    # Z
    .param p3, "msg"    # I
    .param p4, "ok"    # I
    .param p5, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "can"    # I
    .param p7, "canClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p9, "keyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    const/4 v3, -0x1

    .line 1337
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v2, :cond_3c

    .line 1338
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;

    invoke-direct {v1, p0, p8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1341
    .local v1, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1342
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_12

    .line 1343
    const/4 v2, 0x0

    .line 1357
    .end local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .end local v1    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;
    :goto_11
    return-object v2

    .line 1346
    .restart local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .restart local v1    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;
    :cond_12
    if-eq p1, v3, :cond_17

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1347
    :cond_17
    if-eqz p2, :cond_1c

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1348
    :cond_1c
    if-eq p3, v3, :cond_21

    invoke-virtual {v0, p3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1349
    :cond_21
    invoke-virtual {v0, p4, p5}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1350
    if-eq p6, v3, :cond_29

    invoke-virtual {v0, p6, p7}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1351
    :cond_29
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1352
    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1353
    invoke-virtual {v0, p9}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1354
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1357
    .end local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .end local v1    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnDismissWrapErrorExitListener;
    :cond_3c
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_11
.end method

.method public showErrorOkExit(IZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnKeyListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 19
    .param p1, "title"    # I
    .param p2, "needAlertIcon"    # Z
    .param p3, "msg"    # I
    .param p4, "ok"    # I
    .param p5, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p7, "keyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 1300
    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showErrorOkAndCancelExit(IZIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnKeyListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v10

    .line 1310
    .local v10, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    return-object v10
.end method

.method public showErrorUncancelable(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 8
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 379
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_8

    .line 380
    const/4 v1, 0x0

    .line 389
    :goto_7
    return-object v1

    .line 383
    :cond_8
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 384
    if-eqz p3, :cond_10

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 385
    :cond_10
    const/4 v2, -0x1

    if-eq p1, v2, :cond_16

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 386
    :cond_16
    new-instance v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ErrorExitListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 387
    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 388
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 389
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_7
.end method

.method public showHintTextMessage(III[I)V
    .registers 16
    .param p1, "titleId"    # I
    .param p2, "headerId"    # I
    .param p3, "footerId"    # I
    .param p4, "contents"    # [I

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 2487
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 2488
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_9

    .line 2557
    :cond_8
    :goto_8
    return-void

    .line 2492
    :cond_9
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v8, :cond_8

    .line 2493
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2494
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2497
    .local v5, "res":Landroid/content/res/Resources;
    if-eq p2, v9, :cond_32

    .line 2498
    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2500
    array-length v8, p4

    if-lez v8, :cond_32

    .line 2502
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2503
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2508
    :cond_32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    array-length v8, p4

    if-ge v1, v8, :cond_56

    .line 2509
    aget v8, p4, v1

    if-eq v8, v9, :cond_43

    .line 2510
    aget v8, p4, v1

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2513
    :cond_43
    add-int/lit8 v4, v1, 0x1

    .line 2514
    .local v4, "nextIndex":I
    array-length v8, p4

    if-ge v4, v8, :cond_53

    aget v8, p4, v4

    if-eq v8, v9, :cond_53

    .line 2516
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2508
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 2521
    .end local v4    # "nextIndex":I
    :cond_56
    if-eq p3, v9, :cond_70

    .line 2522
    array-length v8, p4

    if-lez v8, :cond_69

    .line 2524
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2525
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2528
    :cond_69
    invoke-virtual {v5, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2530
    :cond_70
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2532
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->isLargeTextEnabled()Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 2534
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2535
    .local v2, "inflater":Landroid/view/LayoutInflater;
    if-eqz v2, :cond_8

    .line 2538
    sget v8, Lcom/sonyericsson/cameracommon/R$layout;->dialog_scrollable_message:I

    invoke-virtual {v2, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 2540
    .local v7, "scrollableTextView":Landroid/widget/TextView;
    new-instance v8, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v8}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2541
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2542
    invoke-virtual {v0, v7}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2547
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v7    # "scrollableTextView":Landroid/widget/TextView;
    :goto_9b
    sget-object v8, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v9, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v8, v9}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 2548
    new-instance v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;

    invoke-direct {v3, p0, v10, v10}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2549
    .local v3, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;
    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_tutorial_button_txt:I

    invoke-virtual {v0, v8, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2552
    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 2553
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto/16 :goto_8

    .line 2545
    .end local v3    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;
    :cond_b7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_9b
.end method

.method public showLaunchSettingAppDialog(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "geotagListener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_6

    .line 1576
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    .line 1578
    :cond_6
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_advanced_setting_geo_tag_both_off_txt:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_advanced_setting_geo_tag_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_cancel_txt:I

    new-instance v6, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    new-instance v7, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;

    invoke-direct {v7, p0, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    new-instance v8, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;

    invoke-direct {v8, p0, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCancel(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1586
    return-void
.end method

.method public showLowBatteryDialog(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;Ljava/lang/String;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sharedPrefs"    # Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;
    .param p3, "sharedPrefsKey"    # Ljava/lang/String;

    .prologue
    .line 1213
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mLowBatteryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v6, :cond_5

    .line 1251
    :cond_4
    :goto_4
    return-void

    .line 1217
    :cond_5
    if-eqz p1, :cond_4

    .line 1221
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 1222
    .local v5, "inflater":Landroid/view/LayoutInflater;
    if-eqz v5, :cond_4

    .line 1226
    sget v6, Lcom/sonyericsson/cameracommon/R$layout;->dialog_low_battery:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1228
    .local v4, "content":Landroid/view/View;
    new-instance v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$CheckBoxListener;

    invoke-direct {v2, p2, p3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$CheckBoxListener;-><init>(Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;Ljava/lang/String;)V

    .line 1230
    .local v2, "checkBoxListener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$CheckBoxListener;
    sget v6, Lcom/sonyericsson/cameracommon/R$id;->check_box:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1231
    .local v1, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1232
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1235
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1236
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-eqz v0, :cond_4

    .line 1240
    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_high_temp_title_txt:I

    invoke-virtual {v0, v6}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1241
    invoke-virtual {v0, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setViewAsScrollable(Landroid/view/View;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1243
    new-instance v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LowBatteryDialogCloseListener;

    invoke-direct {v3, p0, p1, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LowBatteryDialogCloseListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 1245
    .local v3, "closeListener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LowBatteryDialogCloseListener;
    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    new-instance v7, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkAndCheckableListener;

    invoke-direct {v7, p0, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkAndCheckableListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v6, v7}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1247
    new-instance v6, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;

    invoke-direct {v6, p0, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v6}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1248
    sget-object v6, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v7, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v6, v7}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1249
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mLowBatteryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1250
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mLowBatteryDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v6, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_4
.end method

.method public showMemoryError(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 9
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "isError"    # Z

    .prologue
    const/4 v2, 0x0

    .line 879
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v3, :cond_6

    .line 920
    :cond_5
    :goto_5
    return-object v2

    .line 884
    :cond_6
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v3, :cond_14

    .line 885
    iget v3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopupTextId:I

    if-ne v3, p1, :cond_11

    .line 888
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_5

    .line 890
    :cond_11
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->cancelMemoryErrorPopup()V

    .line 894
    :cond_14
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    .line 899
    .local v1, "ok":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 900
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-eqz v0, :cond_5

    .line 904
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 905
    const/4 v3, -0x1

    if-eq p1, v3, :cond_25

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 906
    :cond_25
    new-instance v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickMemoryErrorOkListener;

    invoke-direct {v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickMemoryErrorOkListener;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 907
    new-instance v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelMemoryErrorOkListener;

    invoke-direct {v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelMemoryErrorOkListener;-><init>()V

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 912
    sget-object v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v4, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 913
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 915
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->notifyOpenDialog()V

    .line 916
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    new-instance v4, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$DialogDismissListener;

    invoke-direct {v4, p0, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$DialogDismissListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 917
    iput p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopupTextId:I

    .line 918
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopupIsError:Z

    .line 920
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_5
.end method

.method public showMemoryErrorAndAbort(II)V
    .registers 5
    .param p1, "msg"    # I
    .param p2, "title"    # I

    .prologue
    .line 932
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LazyAbortListener;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LazyAbortListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 934
    .local v1, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 935
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_c

    .line 943
    :goto_b
    return-void

    .line 939
    :cond_c
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 940
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 941
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 942
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_b
.end method

.method public showMessageOnUiThread(II)V
    .registers 5
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1714
    return-void
.end method

.method public showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 13
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "okListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v0, :cond_14

    .line 1766
    new-instance v5, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;

    invoke-direct {v5, p0, p5, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .local v5, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1767
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkDialogImpl(IIZILcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1769
    .end local v5    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;
    :cond_14
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v0
.end method

.method public showOkAndCancel(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 10
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "can"    # I
    .param p6, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "cancelClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 664
    invoke-direct/range {p0 .. p8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createDialogOkAndCancel(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 671
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v0
.end method

.method public showOkAndCancelCustomView(Landroid/view/View;IZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 12
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "can"    # I
    .param p6, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "cancelClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v1, 0x0

    .line 743
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v2, :cond_6

    .line 769
    :cond_5
    :goto_5
    return-object v1

    .line 750
    :cond_6
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v2, :cond_f

    .line 751
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 754
    :cond_f
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 755
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-eqz v0, :cond_5

    .line 759
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 760
    if-eqz p3, :cond_1d

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 761
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setViewAsScrollable(Landroid/view/View;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 762
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;

    invoke-direct {v1, p0, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p4, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 763
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;

    invoke-direct {v1, p0, p7}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p5, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 765
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;

    invoke-direct {v1, p0, p8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 766
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 767
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 769
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_5
.end method

.method public showOkAndCancelMsg(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 12
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "can"    # I
    .param p6, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "cancelClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v1, 0x0

    .line 2183
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDeviceErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v2, :cond_6

    .line 2208
    :cond_5
    :goto_5
    return-object v1

    .line 2189
    :cond_6
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v2, :cond_f

    .line 2190
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 2193
    :cond_f
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 2194
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-eqz v0, :cond_5

    .line 2198
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2199
    if-eqz p3, :cond_1d

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 2200
    :cond_1d
    const/4 v1, -0x1

    if-eq p1, v1, :cond_23

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2201
    :cond_23
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;

    invoke-direct {v1, p0, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p4, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2202
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;

    invoke-direct {v1, p0, p7}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelCustomViewListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p5, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2204
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;

    invoke-direct {v1, p0, p8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2205
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 2206
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 2208
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_5
.end method

.method public showOkAndCancelStorage(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 12
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "can"    # I
    .param p6, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "cancelClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p9, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 634
    invoke-direct/range {p0 .. p8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createDialogOkAndCancel(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 641
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_1d

    .line 642
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setCanceledOnTouchOutside(Z)V

    .line 644
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$DialogDismissListener;

    invoke-direct {v1, p0, p9}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$DialogDismissListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 645
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->notifyOpenDialog()V

    .line 648
    :cond_1d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v0
.end method

.method public showOkAndCustomView(Landroid/view/View;IZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 10
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 790
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v1, :cond_34

    .line 791
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 792
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_c

    .line 793
    const/4 v1, 0x0

    .line 805
    .end local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    :goto_b
    return-object v1

    .line 796
    .restart local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    :cond_c
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 797
    if-eqz p3, :cond_14

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 798
    :cond_14
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setViewAsScrollable(Landroid/view/View;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 799
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkAndCheckableListener;

    invoke-direct {v1, p0, p5}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkAndCheckableListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p4, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 800
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;

    invoke-direct {v1, p0, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 801
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 802
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 805
    .end local v0    # "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    :cond_34
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_b
.end method

.method public showOkAndCustomViewContinuouslyUsed(Landroid/view/View;IZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 10
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v1, 0x0

    .line 840
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v2, :cond_c

    .line 841
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 842
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 845
    :cond_c
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 846
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_13

    .line 860
    :goto_12
    return-object v1

    .line 850
    :cond_13
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 851
    if-eqz p3, :cond_1b

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 852
    :cond_1b
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setViewAsScrollable(Landroid/view/View;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 853
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkAndCheckableContinuouslyUsedListener;

    invoke-direct {v1, p0, p5}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkAndCheckableContinuouslyUsedListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p4, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 855
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableContinuouslyUsedListener;

    invoke-direct {v1, p0, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelOkAndCheckableContinuouslyUsedListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 857
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 858
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 860
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCustomViewPopupContinuouslyUsed:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_12
.end method

.method public showOkMandatory(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 13
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "okListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_c

    .line 1791
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 1792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1794
    :cond_c
    new-instance v5, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkMandatoryListener;

    invoke-direct {v5, p0, p5, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkMandatoryListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .local v5, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1795
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkDialogImpl(IIZILcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1796
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOkMandatory:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v0
.end method

.method public showRecordingSizeLimitError()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 4

    .prologue
    .line 1269
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1270
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_8

    .line 1271
    const/4 v1, 0x0

    .line 1277
    :goto_7
    return-object v1

    .line 1274
    :cond_8
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1275
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_mms_rec_size_limit_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1276
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 1277
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_7
.end method

.method public showRotatableToastMessage(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V
    .registers 6
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .param p3, "position"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    if-eqz v0, :cond_c

    .line 1483
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->hideImmediately()V

    .line 1484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .line 1486
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_11

    .line 1497
    :goto_10
    return-void

    .line 1490
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->inflate(Landroid/app/Activity;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .line 1491
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setDuration(I)V

    .line 1492
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setTextResId(I)V

    .line 1493
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    iget v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mSensorOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setSensorOrientation(I)V

    .line 1494
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0, p3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setToastPosition(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 1495
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->show()V

    goto :goto_10
.end method

.method public showRotatableToastMessageAndAbort(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V
    .registers 4
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .param p3, "position"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .prologue
    .line 1509
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showRotatableToastMessage(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 1510
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->lazyAbort()V

    .line 1511
    return-void
.end method

.method public showScreenPinningOkDialog(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "runOnDismiss"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 2427
    if-nez p1, :cond_4

    .line 2439
    :goto_3
    return-void

    .line 2431
    :cond_4
    const/4 v1, -0x1

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_screen_pinned_txt:I

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    const/4 v5, 0x0

    new-instance v6, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnDismissListener;

    invoke-direct {v6, p0, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnDismissListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Ljava/lang/Runnable;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v7

    .line 2438
    .local v7, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-virtual {v7, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_3
.end method

.method public showSdCardCorruptedErrorPhoto()V
    .registers 3

    .prologue
    .line 2464
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 2465
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_7

    .line 2474
    :goto_6
    return-void

    .line 2469
    :cond_7
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2471
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_fatal_sd_photo_txt:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2472
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_6
.end method

.method public showSdCardCorruptedErrorVideo()V
    .registers 3

    .prologue
    .line 2447
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 2448
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_7

    .line 2456
    :goto_6
    return-void

    .line 2452
    :cond_7
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2453
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_fatal_sd_video_txt:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2454
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_6
.end method

.method public showSdcardErrorMessage()V
    .registers 4

    .prologue
    .line 1614
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1615
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_7

    .line 1624
    :goto_6
    return-void

    .line 1619
    :cond_7
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1620
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_unavailable_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1621
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 1624
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_6
.end method

.method public showSecurityOkOrCancelDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "runOnClickOk"    # Ljava/lang/Runnable;
    .param p3, "runOnClickCancel"    # Ljava/lang/Runnable;
    .param p4, "runOnDismiss"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 2380
    if-nez p1, :cond_4

    .line 2395
    :goto_3
    return-void

    .line 2384
    :cond_4
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_fast_capturing_screen_locked_apps_list_txt:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_fast_capturing_screen_locked_title_txt:I

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_unlock_button_txt:I

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_cancel_txt:I

    new-instance v6, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnClickListener;

    invoke-direct {v6, p0, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnClickListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Ljava/lang/Runnable;)V

    new-instance v7, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnClickListener;

    invoke-direct {v7, p0, p3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnClickListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Ljava/lang/Runnable;)V

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCancel(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v9

    .line 2393
    .local v9, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-virtual {v9, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setCanceledOnTouchOutside(Z)V

    .line 2394
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnDismissListener;

    invoke-direct {v0, p0, p4}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$RunOnDismissListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_3
.end method

.method public showShareSelection(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 9
    .param p1, "titleResource"    # I
    .param p2, "selectListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p4, "listAdapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v3, 0x0

    .line 1395
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v1, :cond_c

    .line 1396
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 1397
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1400
    :cond_c
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1401
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1402
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapSelectionShareListener;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapSelectionShareListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p4, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1403
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;

    invoke-direct {v1, p0, p3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1404
    sget-object v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1408
    new-instance v1, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnKeyWrapSelectionShareListener;

    invoke-direct {v1, p0, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnKeyWrapSelectionShareListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1410
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1412
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v1
.end method

.method public showShareSelection(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 5
    .param p1, "selectListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p3, "listAdapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1373
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_file_share_title_txt:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showShareSelection(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1378
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v0
.end method

.method public showSoftwareLicenses(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 13
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "onOkClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 2102
    if-nez p1, :cond_3

    .line 2127
    :cond_2
    :goto_2
    return-void

    .line 2107
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 2108
    .local v7, "inflater":Landroid/view/LayoutInflater;
    if-eqz v7, :cond_2

    .line 2113
    sget v0, Lcom/sonyericsson/cameracommon/R$layout;->sw_license_content:I

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2114
    .local v1, "contentView":Landroid/view/View;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->sw_license_content_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2115
    .local v8, "link":Landroid/widget/TextView;
    const-string v0, "NOTICE.txt"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->getSoftwareLicensesFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2116
    const/16 v0, 0xf

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 2117
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2119
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_sw_licence_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCustomView(Landroid/view/View;IZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_2
.end method

.method public showStorageExplanatoryDialog(Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 15
    .param p1, "sharedPrefs"    # Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;
    .param p2, "sharedPrefsKey"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v7, 0x0

    .line 2586
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_6

    .line 2618
    :cond_5
    :goto_5
    return-void

    .line 2591
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 2592
    .local v10, "inflater":Landroid/view/LayoutInflater;
    if-eqz v10, :cond_5

    .line 2597
    sget v0, Lcom/sonyericsson/cameracommon/R$layout;->storage_popup_content:I

    invoke-virtual {v10, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2600
    .local v1, "explanatoryView":Landroid/view/View;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->check_box:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 2601
    .local v9, "checkBox":Landroid/widget/CheckBox;
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$4;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2608
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2610
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_change_save_destination_slowmotion_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_shut_down_yes_txt:I

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_high_temp_shut_down_no_txt:I

    move-object v0, p0

    move-object v6, p3

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCancelCustomView(Landroid/view/View;IZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_5
.end method

.method public showStorageExplanatoryDialogForSettings(Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;Ljava/lang/String;)V
    .registers 11
    .param p1, "sharedPrefs"    # Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;
    .param p2, "sharedPrefsKey"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 2629
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    if-nez v5, :cond_6

    .line 2663
    :cond_5
    :goto_5
    return-void

    .line 2633
    :cond_6
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 2634
    .local v4, "inflater":Landroid/view/LayoutInflater;
    if-eqz v4, :cond_5

    .line 2638
    sget v5, Lcom/sonyericsson/cameracommon/R$layout;->storage_popup_content:I

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2639
    .local v2, "content":Landroid/view/View;
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->header_text:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2640
    .local v3, "header":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_video_explanatory_slowmotion_setting_txt:I

    .line 2641
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2640
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2643
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->check_box:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2644
    .local v1, "checkBox":Landroid/widget/CheckBox;
    new-instance v5, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$5;

    invoke-direct {v5, p0, p1, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$5;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2651
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2653
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 2654
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-eqz v0, :cond_5

    .line 2658
    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_save_destination_title_txt:I

    invoke-virtual {v0, v5}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2659
    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setViewAsScrollable(Landroid/view/View;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 2660
    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    invoke-virtual {v0, v5, v7}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2661
    sget-object v5, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v6, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->UseDefault:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v5, v6}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 2662
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->show(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageExplanatoryPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_5
.end method

.method public showStoreProgressDialog(I)Landroid/app/AlertDialog;
    .registers 5
    .param p1, "msg"    # I

    .prologue
    .line 1906
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_15

    .line 1907
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1909
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1912
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1913
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    .line 1915
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :cond_15
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1916
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1917
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1918
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;)V

    .line 1919
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public showStoreProgressDialog(IIZLandroid/view/View;)Landroid/app/AlertDialog;
    .registers 8
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "isVisibleIcon"    # Z
    .param p4, "view"    # Landroid/view/View;

    .prologue
    .line 1935
    if-eqz p4, :cond_39

    .line 1936
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    if-nez v1, :cond_2c

    .line 1937
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1939
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1940
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1941
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1942
    if-eqz p3, :cond_1f

    .line 1943
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1945
    :cond_1f
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    .line 1946
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1948
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2c
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1949
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setDefaultDialogButtonFontSize(Landroid/app/AlertDialog;)V

    .line 1950
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    .line 1952
    :goto_38
    return-object v1

    :cond_39
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showStoreProgressDialog(I)Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_38
.end method

.method public showTermsAndConditions(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 13
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "onOkClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 2072
    if-nez p1, :cond_3

    .line 2098
    :cond_2
    :goto_2
    return-void

    .line 2077
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 2078
    .local v7, "inflater":Landroid/view/LayoutInflater;
    if-eqz v7, :cond_2

    .line 2083
    sget v0, Lcom/sonyericsson/cameracommon/R$layout;->terms_and_conditions_content:I

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2085
    .local v1, "contentView":Landroid/view/View;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->consent_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2086
    .local v8, "link":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_txt:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2088
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2090
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCustomView(Landroid/view/View;IZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_2
.end method

.method public showThermalCritical()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1101
    new-instance v2, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LazyAbortListener;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LazyAbortListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 1103
    .local v2, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1104
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_d

    .line 1114
    :goto_c
    return-object v1

    .line 1108
    :cond_d
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_high_temp_title_txt:I

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1109
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->getThermalCriticalString()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1110
    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    invoke-virtual {v0, v3, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1111
    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1112
    sget-object v3, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->True:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    sget-object v4, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;->False:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;

    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 1113
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 1114
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_c
.end method

.method public showThermalCriticalAndAbort()V
    .registers 1

    .prologue
    .line 1259
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showThermalCritical()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1260
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->lazyAbort()V

    .line 1261
    return-void
.end method

.method public showThermalWarning(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .registers 13
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "needAlertIcon"    # Z
    .param p4, "ok"    # I
    .param p5, "okListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v0, :cond_14

    .line 1818
    new-instance v5, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;

    invoke-direct {v5, p0, p5, p6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;-><init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .local v5, "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1819
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkDialogImpl(IIZILcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1821
    .end local v5    # "listener":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListenerBase;
    :cond_14
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogThermal:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object v0
.end method

.method public showUnknownErrorMessage()V
    .registers 4

    .prologue
    .line 1689
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->createBuilder()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    move-result-object v0

    .line 1690
    .local v0, "builder":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    if-nez v0, :cond_7

    .line 1698
    :goto_6
    return-void

    .line 1694
    :cond_7
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_dialog_title_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1695
    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_fatal_txt:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1696
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceError(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    .line 1698
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    goto :goto_6
.end method

.method public showZoomHelpMessage(Z)V
    .registers 5
    .param p1, "zoomSupported"    # Z

    .prologue
    .line 1424
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_e

    .line 1427
    if-eqz p1, :cond_f

    .line 1428
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_zoom_help_txt:I

    .line 1433
    .local v0, "resId":I
    :goto_8
    const/4 v1, 0x0

    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->TOP:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showRotatableToastMessage(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 1435
    .end local v0    # "resId":I
    :cond_e
    return-void

    .line 1430
    :cond_f
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_zoom_not_supported_txt:I

    .restart local v0    # "resId":I
    goto :goto_8
.end method
