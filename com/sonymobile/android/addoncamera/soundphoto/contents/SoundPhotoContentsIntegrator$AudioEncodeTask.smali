.class Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$AudioEncodeTask;
.super Ljava/lang/Object;
.source "SoundPhotoContentsIntegrator.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioEncodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;",
        ">;"
    }
.end annotation


# instance fields
.field public final audio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;)V
    .registers 3
    .param p2, "audioData"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$AudioEncodeTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$AudioEncodeTask;->audio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    .line 115
    return-void
.end method


# virtual methods
.method public call()Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;
    .registers 6

    .prologue
    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$AudioEncodeTask;->audio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->makeMp4()[B

    move-result-object v0

    .line 124
    .local v0, "audioData":[B
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$AudioEncodeTask;->audio:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->duration()J

    move-result-wide v2

    long-to-int v1, v2

    .line 125
    .local v1, "audioDuration":I
    if-nez v0, :cond_19

    .line 126
    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;-><init>(Z[BI)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    .line 133
    :goto_16
    return-object v2

    .line 131
    .end local v0    # "audioData":[B
    .end local v1    # "audioDuration":I
    :catchall_17
    move-exception v2

    throw v2

    .line 133
    .restart local v0    # "audioData":[B
    .restart local v1    # "audioDuration":I
    :cond_19
    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;-><init>(Z[BI)V

    goto :goto_16
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$AudioEncodeTask;->call()Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;

    move-result-object v0

    return-object v0
.end method
