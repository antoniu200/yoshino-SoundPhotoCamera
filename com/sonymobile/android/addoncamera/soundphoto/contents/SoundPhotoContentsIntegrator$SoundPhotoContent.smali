.class public Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;
.super Ljava/lang/Object;
.source "SoundPhotoContentsIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundPhotoContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;
    }
.end annotation


# instance fields
.field public final audio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

.field private final mDebugId:I

.field public final picture:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

.field public final previewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .registers 6
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;
    .param p2, "audioData"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;
    .param p3, "previewFramesData"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;
    .param p4, "pictureData"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    # ++operator for: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->sDebugIdGen:I
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->access$104()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->mDebugId:I

    .line 167
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->audio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    .line 168
    iput-object p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->previewFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    .line 169
    iput-object p4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->picture:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 170
    const-string v0, "CREATED"

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->trace(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;
    .param p3, "x2"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;
    .param p4, "x3"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .param p5, "x4"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$1;

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private debugTag()Ljava/lang/String;
    .registers 3

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONTENT["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->mDebugId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private trace(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 160
    return-void
.end method


# virtual methods
.method public setStoreFinishedListener(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->picture:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->addCallback(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;)V

    .line 179
    return-void
.end method

.method public store(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)V
    .registers 4
    .param p1, "savingTaskManager"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->mMainTaskRunner:Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;)Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent$MainTask;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$SoundPhotoContent;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner;->put(Lcom/sonymobile/android/addoncamera/soundphoto/contents/BackgroundTaskRunner$BackgroundTask;)V

    .line 175
    return-void
.end method
