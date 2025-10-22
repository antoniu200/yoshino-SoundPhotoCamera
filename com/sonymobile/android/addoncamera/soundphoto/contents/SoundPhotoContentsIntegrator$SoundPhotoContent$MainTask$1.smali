.class Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask$1;
.super Ljava/lang/Object;
.source "SoundPhotoContentsIntegrator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;->fail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;

.field final synthetic val$request:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .registers 3
    .param p1, "this$2"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask$1;->this$2:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;

    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask$1;->val$request:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask$1;->val$request:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->notifyStoreFailed(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;)V

    .line 274
    return-void
.end method
