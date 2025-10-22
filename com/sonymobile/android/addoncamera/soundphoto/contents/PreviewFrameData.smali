.class public Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;
.super Ljava/lang/Object;
.source "PreviewFrameData.java"


# instance fields
.field public final height:I

.field public final imageFormat:I

.field public final images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final width:I


# direct methods
.method public constructor <init>(IIILjava/util/List;)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p4, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->width:I

    .line 32
    iput p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->height:I

    .line 33
    iput p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->imageFormat:I

    .line 34
    iput-object p4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->images:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    .line 38
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    .line 39
    .local v0, "frame":Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->decrementRefCount()V

    goto :goto_6

    .line 41
    .end local v0    # "frame":Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    :cond_16
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 42
    return-void
.end method
