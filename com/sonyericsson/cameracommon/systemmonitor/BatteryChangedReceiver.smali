.class public Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;
    }
.end annotation


# static fields
.field private static final BATTERY_CHECK_ENABLED:Z

.field private static final SHARED_PREFS_KEY_BATTERY_WARNING_DISABLED:Ljava/lang/String; = "BATTERY_WARNING_DISABLED"

.field private static final TAG:Ljava/lang/String; = "BatteryChangedReceiver"

.field private static final THRESHOLD_BATTERY_LEVEL:I

.field public static final THRESHOLD_LOW_BATTERY_LEVEL:I


# instance fields
.field private mBatteryLevel:I

.field private mBatteryStatus:I

.field private mBatteryTemperature:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHealth:I

.field private mIsAlreadyBcl:Z

.field private mIsOnPause:Z

.field private final mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

.field private mPlugType:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x1

    .line 55
    const-string v0, "msm8996"

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "sdm845"

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 56
    :cond_17
    const/4 v0, 0x5

    sput v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_BATTERY_LEVEL:I

    .line 57
    sput v3, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    .line 58
    sput-boolean v2, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->BATTERY_CHECK_ENABLED:Z

    .line 64
    :goto_1e
    return-void

    .line 60
    :cond_1f
    sput v2, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_BATTERY_LEVEL:I

    .line 61
    sput v3, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    .line 62
    sput-boolean v2, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->BATTERY_CHECK_ENABLED:Z

    goto :goto_1e
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 70
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    .line 71
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsOnPause:Z

    .line 72
    const/16 v0, 0x64

    iput v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    .line 73
    iput v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryStatus:I

    .line 74
    iput v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    .line 75
    iput v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryTemperature:I

    .line 76
    iput v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHealth:I

    .line 88
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHandler:Landroid/os/Handler;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;)Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    return-object v0
.end method

.method private checkBcl(IZ)Z
    .registers 6
    .param p1, "percentage"    # I
    .param p2, "isOnStartup"    # Z

    .prologue
    const/4 v0, 0x1

    .line 202
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    if-nez v1, :cond_34

    .line 203
    invoke-static {}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isCheckEnabled()Z

    move-result v1

    if-eqz v1, :cond_34

    sget v1, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_BATTERY_LEVEL:I

    if-gt p1, v1, :cond_34

    .line 204
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    .line 205
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 206
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    invoke-interface {v1, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;->onReachBatteryLimit(Z)V

    .line 218
    :goto_28
    return v0

    .line 208
    :cond_29
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$1;

    invoke-direct {v2, p0, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$1;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 218
    :cond_34
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public static getSharedPrefsKeyForBatteryWarningDialog(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BATTERY_WARNING_DISABLED_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCheckEnabled()Z
    .registers 1

    .prologue
    .line 238
    sget-boolean v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->BATTERY_CHECK_ENABLED:Z

    return v0
.end method

.method private notifyBatteryLevel(I)V
    .registers 3
    .param p1, "percentage"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;->onBatteryLevelChanged(I)V

    .line 231
    return-void
.end method

.method private notifyLowBattery()V
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;->onReachLowBattery()V

    .line 227
    return-void
.end method


# virtual methods
.method public checkStartupStatus()V
    .registers 5

    .prologue
    .line 184
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    .line 185
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mContext:Landroid/content/Context;

    const-string v3, "batterymanager"

    .line 186
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 187
    .local v0, "bm":Landroid/os/BatteryManager;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    .line 191
    .local v1, "percentage":I
    iput v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    .line 193
    iget v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->checkBcl(IZ)Z

    move-result v2

    if-nez v2, :cond_31

    .line 194
    invoke-static {}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isCheckEnabled()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    sget v3, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    if-gt v2, v3, :cond_2c

    .line 195
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->notifyLowBattery()V

    .line 197
    :cond_2c
    iget v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->notifyBatteryLevel(I)V

    .line 199
    :cond_31
    return-void
.end method

.method public getBatteryLevel()I
    .registers 2

    .prologue
    .line 234
    iget v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    return v0
.end method

.method public isAlreadyBcl()Z
    .registers 2

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    return v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsOnPause:Z

    .line 127
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 132
    iget-boolean v9, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsOnPause:Z

    if-eqz v9, :cond_7

    .line 178
    :cond_6
    :goto_6
    return-void

    .line 140
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 142
    iget v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    .line 143
    .local v1, "oldBatteryLevel":I
    const-string v9, "level"

    const/16 v10, 0x64

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    .line 144
    iget v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryStatus:I

    .line 145
    .local v2, "oldBatteryStatus":I
    const-string v9, "status"

    invoke-virtual {p2, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryStatus:I

    .line 147
    iget v5, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    .line 148
    .local v5, "oldPlugType":I
    const-string v9, "plugged"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    .line 149
    iget v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryTemperature:I

    .line 150
    .local v3, "oldBatteryTemperature":I
    const-string v9, "temperature"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryTemperature:I

    .line 151
    iget v4, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHealth:I

    .line 152
    .local v4, "oldHealth":I
    const-string v9, "health"

    invoke-virtual {p2, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHealth:I

    .line 156
    iget v9, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    if-eqz v9, :cond_73

    move v7, v6

    .line 157
    .local v7, "plugged":Z
    :goto_4c
    if-eqz v5, :cond_75

    .line 169
    .local v6, "oldPlugged":Z
    :goto_4e
    iget v9, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    invoke-direct {p0, v9, v8}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->checkBcl(IZ)Z

    move-result v8

    if-nez v8, :cond_6

    .line 170
    invoke-static {}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isCheckEnabled()Z

    move-result v8

    if-eqz v8, :cond_6d

    iget v8, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    sget v9, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    if-gt v8, v9, :cond_6d

    sget v8, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    if-le v1, v8, :cond_6d

    iget v8, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    if-eq v1, v8, :cond_6d

    .line 173
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->notifyLowBattery()V

    .line 175
    :cond_6d
    iget v8, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    invoke-direct {p0, v8}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->notifyBatteryLevel(I)V

    goto :goto_6

    .end local v6    # "oldPlugged":Z
    .end local v7    # "plugged":Z
    :cond_73
    move v7, v8

    .line 156
    goto :goto_4c

    .restart local v7    # "plugged":Z
    :cond_75
    move v6, v8

    .line 157
    goto :goto_4e
.end method

.method public onResume()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    .line 117
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsOnPause:Z

    .line 118
    return-void
.end method
