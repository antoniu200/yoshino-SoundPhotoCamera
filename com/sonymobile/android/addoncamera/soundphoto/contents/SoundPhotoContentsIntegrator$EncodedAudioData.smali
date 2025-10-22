.class Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;
.super Ljava/lang/Object;
.source "SoundPhotoContentsIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncodedAudioData"
.end annotation


# instance fields
.field public final audioData:[B

.field public final audioDuration:I

.field public final result:Z


# direct methods
.method public constructor <init>(Z[BI)V
    .registers 4
    .param p1, "result"    # Z
    .param p2, "audioData"    # [B
    .param p3, "audioDuration"    # I

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;->result:Z

    .line 105
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;->audioData:[B

    .line 106
    iput p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$EncodedAudioData;->audioDuration:I

    .line 107
    return-void
.end method
