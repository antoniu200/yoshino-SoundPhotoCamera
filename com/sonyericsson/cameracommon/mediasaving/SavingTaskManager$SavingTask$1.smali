.class Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$1;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V
    .registers 2
    .param p1, "this$1"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$1;->this$1:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$1;->this$1:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$000(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateRemain(JZ)J

    .line 187
    return-void
.end method
