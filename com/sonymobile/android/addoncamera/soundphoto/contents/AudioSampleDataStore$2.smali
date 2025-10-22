.class Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$2;
.super Ljava/lang/Object;
.source "AudioSampleDataStore.java"

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$2;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .registers 2
    .param p1, "recorder"    # Landroid/media/AudioRecord;

    .prologue
    .line 384
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .registers 4
    .param p1, "recorder"    # Landroid/media/AudioRecord;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$2;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mNowBuffering:Z
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 395
    :goto_8
    return-void

    .line 393
    :cond_9
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$2;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$2;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->mNotificationPeriod:I
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;)I

    move-result v1

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->drainSamples(I)V
    invoke-static {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;I)V

    goto :goto_8
.end method
