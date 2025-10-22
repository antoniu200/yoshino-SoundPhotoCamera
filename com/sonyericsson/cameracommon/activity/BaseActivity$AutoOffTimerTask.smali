.class Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;
.super Ljava/util/TimerTask;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoOffTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .registers 2

    .prologue
    .line 688
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 692
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    # invokes: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->stopAutoOffTimer()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$400(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    .line 695
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask$1;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 704
    return-void
.end method
