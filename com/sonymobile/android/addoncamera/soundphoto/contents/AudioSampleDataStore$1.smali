.class Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$1;
.super Ljava/lang/Object;
.source "AudioSampleDataStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->requestToDrainSamples(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    iput p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$1;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;

    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore$1;->val$size:I

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->drainSamples(I)V
    invoke-static {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioSampleDataStore;I)V

    .line 284
    return-void
.end method
