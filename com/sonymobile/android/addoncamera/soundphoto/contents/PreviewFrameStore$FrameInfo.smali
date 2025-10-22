.class public Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;
.super Ljava/lang/Object;
.source "PreviewFrameStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameInfo"
.end annotation


# instance fields
.field public final format:I

.field public final rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "format"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;->rect:Landroid/graphics/Rect;

    .line 43
    iput p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;->format:I

    .line 44
    return-void
.end method


# virtual methods
.method public computeFrameBytes()I
    .registers 4

    .prologue
    .line 52
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;->format:I

    packed-switch v0, :pswitch_data_32

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported image type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;->format:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :pswitch_20
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameStore$FrameInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    div-int/lit8 v0, v0, 0x8

    return v0

    .line 52
    :pswitch_data_32
    .packed-switch 0x11
        :pswitch_20
    .end packed-switch
.end method
