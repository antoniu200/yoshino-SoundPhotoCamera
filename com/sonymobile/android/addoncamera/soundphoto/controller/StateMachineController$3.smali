.class Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;
.super Ljava/lang/Object;
.source "StateMachineController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->doStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

.field final synthetic val$originalUri:Landroid/net/Uri;

.field final synthetic val$requestId:I

.field final synthetic val$resultCode:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;ZILandroid/net/Uri;)V
    .registers 5
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    .prologue
    .line 2461
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    iput-boolean p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;->val$resultCode:Z

    iput p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;->val$requestId:I

    iput-object p4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;->val$originalUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2464
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;->val$resultCode:Z

    if-nez v0, :cond_2d

    .line 2465
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isCurrentStorageExternal()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2466
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->isSDCardWritable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2467
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showSdCardCorruptedErrorPhoto()V

    .line 2471
    :cond_2d
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    monitor-enter v1

    .line 2472
    :try_start_30
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$3700(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 2473
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;->val$requestId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5d

    .line 2474
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;->val$resultCode:Z

    if-eqz v0, :cond_50

    .line 2475
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$3700(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;->val$requestId:I

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;->val$originalUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->addContent(ILandroid/net/Uri;)V

    .line 2483
    :cond_4e
    :goto_4e
    monitor-exit v1

    .line 2484
    return-void

    .line 2477
    :cond_50
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$3700(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    goto :goto_4e

    .line 2483
    :catchall_5a
    move-exception v0

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_30 .. :try_end_5c} :catchall_5a

    throw v0

    .line 2480
    :cond_5d
    :try_start_5d
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$3;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;->access$3700(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_5a

    goto :goto_4e
.end method
