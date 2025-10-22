.class Lcom/sonyericsson/cameracommon/mediasaving/StorageController$NotifyStorageChangedTask;
.super Ljava/lang/Object;
.source "StorageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/StorageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyStorageChangedTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V
    .registers 2

    .prologue
    .line 422
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$NotifyStorageChangedTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageController;Lcom/sonyericsson/cameracommon/mediasaving/StorageController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$1;

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$NotifyStorageChangedTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$NotifyStorageChangedTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    # invokes: Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->notifyStorageChanged()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->access$100(Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    .line 426
    return-void
.end method
