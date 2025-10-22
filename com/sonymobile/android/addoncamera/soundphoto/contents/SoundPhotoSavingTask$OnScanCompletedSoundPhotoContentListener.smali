.class Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask$OnScanCompletedSoundPhotoContentListener;
.super Ljava/lang/Object;
.source "SoundPhotoSavingTask.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnScanCompletedSoundPhotoContentListener"
.end annotation


# instance fields
.field private final mJpegFilename:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;Ljava/lang/String;)V
    .registers 3
    .param p2, "jpegFilename"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask$OnScanCompletedSoundPhotoContentListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask$OnScanCompletedSoundPhotoContentListener;->mJpegFilename:Ljava/lang/String;

    .line 127
    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask$OnScanCompletedSoundPhotoContentListener;->mJpegFilename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 136
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask$OnScanCompletedSoundPhotoContentListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->notifyResult(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;)V
    invoke-static {v0, v1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;)V

    .line 139
    :cond_f
    return-void
.end method
