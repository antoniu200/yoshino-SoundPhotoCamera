.class Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$2;
.super Ljava/lang/Object;
.source "AudioData.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$2;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)J
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 210
    const-wide/32 v2, 0xf4240

    int-to-long v4, p1

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$2;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    iget v4, v4, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->bitPerSample:I

    div-int/lit8 v4, v4, 0x8

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$2;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    iget v5, v5, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->channels:I

    mul-int/2addr v4, v5

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$2;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    iget v4, v4, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->sampleRate:I

    int-to-long v4, v4

    div-long v0, v2, v4

    .line 212
    .local v0, "nano":J
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$2;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    # setter for: Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->mEncodedDuration:J
    invoke-static {v2, v4, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->access$002(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;J)J

    .line 213
    return-wide v0
.end method
