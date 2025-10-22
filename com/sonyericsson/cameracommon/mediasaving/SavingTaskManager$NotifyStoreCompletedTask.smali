.class Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$NotifyStoreCompletedTask;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyStoreCompletedTask"
.end annotation


# instance fields
.field private final mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 2
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$NotifyStoreCompletedTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 603
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$NotifyStoreCompletedTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$NotifyStoreCompletedTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$NotifyStoreCompletedTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    if-eqz v0, :cond_13

    .line 608
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$NotifyStoreCompletedTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$NotifyStoreCompletedTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->notifyStoreResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 615
    :cond_13
    return-void
.end method
