.class Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$1;
.super Ljava/lang/Object;
.source "AudioData.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->makeMp4()[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

.field final synthetic val$finishSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;

    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$1;->val$finishSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Z)V
    .registers 3
    .param p1, "result"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData$1;->val$finishSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 122
    return-void
.end method

.method public onProgress(JJ)V
    .registers 5
    .param p1, "duration"    # J
    .param p3, "size"    # J

    .prologue
    .line 127
    return-void
.end method

.method public onStarted()V
    .registers 1

    .prologue
    .line 117
    return-void
.end method

.method public onStorageFull()V
    .registers 1

    .prologue
    .line 132
    return-void
.end method
