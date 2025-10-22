.class Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;
.super Ljava/lang/Object;
.source "SoundPhotoContentsIntegrator.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YuvToJpegTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final mExifByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

.field private final mExifInfo:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

.field private final mFrame:Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

.field private final mImageRect:Landroid/graphics/Rect;

.field private final mIndex:I

.field private final mPrevireFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

.field private final mWorkBuffers:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;Landroid/graphics/Rect;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;Ljava/util/concurrent/BlockingQueue;)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "frame"    # Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    .param p3, "previreFrames"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;
    .param p4, "imageRect"    # Landroid/graphics/Rect;
    .param p5, "exifByteOrder"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;
    .param p6, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;",
            "Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;",
            "Landroid/graphics/Rect;",
            "Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;",
            "Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;",
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p7, "workBuffers":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->mFrame:Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    .line 374
    iput-object p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->mPrevireFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    .line 375
    iput p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->mIndex:I

    .line 376
    iput-object p4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->mImageRect:Landroid/graphics/Rect;

    .line 377
    iput-object p5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->mExifByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .line 378
    iput-object p6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->mExifInfo:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

    .line 379
    iput-object p7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->mWorkBuffers:Ljava/util/concurrent/BlockingQueue;

    .line 380
    return-void
.end method

.method private compressToJpeg([B)[B
    .registers 9
    .param p1, "yuvData"    # [B

    .prologue
    const/4 v5, 0x0

    .line 430
    new-instance v0, Landroid/graphics/YuvImage;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->mPrevireFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    iget v2, v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->imageFormat:I

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->mPrevireFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    iget v3, v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->width:I

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->mPrevireFrames:Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;

    iget v4, v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PreviewFrameData;->height:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 437
    .local v0, "yuvImage":Landroid/graphics/YuvImage;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 438
    .local v6, "jpegDataStream":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->mImageRect:Landroid/graphics/Rect;

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 442
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 444
    :cond_26
    return-object v5
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->call()[B

    move-result-object v0

    return-object v0
.end method

.method public call()[B
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 384
    const/4 v1, 0x0

    .line 386
    .local v1, "jpegData":[B
    :try_start_2
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->mWorkBuffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 387
    .local v3, "yuvData":[B
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->mFrame:Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->get()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 391
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->mFrame:Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->get()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 393
    invoke-direct {p0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->compressToJpeg([B)[B

    move-result-object v1

    .line 395
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->mWorkBuffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_25} :catch_36

    .line 402
    if-eqz v1, :cond_35

    .line 404
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->mExifByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    if-eqz v4, :cond_4b

    .line 405
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator$YuvToJpegTask;->mExifInfo:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

    invoke-static {v1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->addExifToPlainJpeg([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B

    move-result-object v2

    .line 413
    .local v2, "jpegDataWithExif":[B
    if-eqz v2, :cond_41

    .line 414
    move-object v1, v2

    .end local v2    # "jpegDataWithExif":[B
    :goto_34
    move-object v4, v1

    .line 426
    .end local v3    # "yuvData":[B
    :cond_35
    :goto_35
    return-object v4

    .line 397
    :catch_36
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/InterruptedException;
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->access$1000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "To take from work buffers is interrupted."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 417
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "jpegDataWithExif":[B
    .restart local v3    # "yuvData":[B
    :cond_41
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->access$1000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to add EXIF into flame"

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 422
    .end local v2    # "jpegDataWithExif":[B
    :cond_4b
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoContentsIntegrator;->access$1000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Exif byte order of picture data is unknown."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method
