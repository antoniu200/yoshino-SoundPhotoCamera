.class Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSkippedFirstOnResume:Z
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$200(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSkippedFirstOnResume:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$202(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Z)Z

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onResumeTasks()V

    .line 319
    :cond_13
    return-void
.end method
