.class Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$1;
.super Ljava/lang/Object;
.source "BatteryChangedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->checkBcl(IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

.field final synthetic val$isOnStartup:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$1;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$1;->val$isOnStartup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$1;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    # getter for: Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->access$000(Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;)Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$1;->val$isOnStartup:Z

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;->onReachBatteryLimit(Z)V

    .line 212
    return-void
.end method
