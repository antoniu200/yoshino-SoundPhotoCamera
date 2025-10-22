.class Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;
.super Ljava/lang/Object;
.source "ThermalAlertReceiver.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceConnectionSysmon"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 249
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-static {p2}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    move-result-object v4

    # setter for: Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$002(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/psm/sysmonservice/ISysmonService;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    .line 251
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    # getter for: Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$000(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 253
    :try_start_11
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    # getter for: Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$000(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService;->getThermalLevelForCamera()I

    move-result v1

    .line 254
    .local v1, "thermalLevel":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    const-string v4, "sysmon"

    # invokes: Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->checkStartupStatus(ILjava/lang/String;)V
    invoke-static {v3, v1, v4}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$100(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;ILjava/lang/String;)V

    .line 269
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    # getter for: Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$000(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService;->getCameraLowTempBurnTimeoutSec()I

    move-result v2

    .line 270
    .local v2, "timeoutSec":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    # invokes: Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->checkLowTempBurnTimeoutTimerDuration(II)V
    invoke-static {v3, v1, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$200(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;II)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_31} :catch_32

    .line 276
    .end local v1    # "thermalLevel":I
    .end local v2    # "timeoutSec":I
    :cond_31
    :goto_31
    return-void

    .line 272
    :catch_32
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ThermalAlertReceiver"

    const-string v4, "sysmon ServiceConnection failed."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$002(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/psm/sysmonservice/ISysmonService;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    .line 281
    return-void
.end method
