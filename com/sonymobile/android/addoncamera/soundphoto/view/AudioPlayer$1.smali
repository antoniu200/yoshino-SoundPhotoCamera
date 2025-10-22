.class Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$1;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 245
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 246
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;)Landroid/media/AudioTrack;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioDataArray:[B
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;)[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mSizeInBytes:I
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioTrack;->write([BII)I

    .line 248
    :cond_27
    return-void
.end method
