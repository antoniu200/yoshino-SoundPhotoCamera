.class Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase$1;
.super Ljava/lang/Object;
.source "AudioSampleDataSourceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->requestToReadSampleData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;

.field final synthetic val$eos:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;

    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase$1;->val$eos:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;

    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase$1;->val$eos:Z

    # invokes: Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->readSampleData(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;->access$000(Lcom/sonymobile/cameracommon/media/encoder/source/AudioSampleDataSourceBase;Z)V

    .line 184
    return-void
.end method
