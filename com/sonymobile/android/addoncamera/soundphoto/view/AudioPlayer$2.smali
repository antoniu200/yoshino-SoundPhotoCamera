.class Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$2;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->stop()V
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
    .line 313
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$2;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$2;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mOnPlayFinishedListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$OnPlayFinishedListener;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;)Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$OnPlayFinishedListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 317
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$2;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mOnPlayFinishedListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$OnPlayFinishedListener;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;)Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$OnPlayFinishedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$OnPlayFinishedListener;->onPlayFinished()V

    .line 319
    :cond_11
    return-void
.end method
