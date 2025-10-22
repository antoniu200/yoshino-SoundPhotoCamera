.class Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;
.super Ljava/lang/Object;
.source "Yuv2ExifJpegConvertor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SegmentInfo"
.end annotation


# instance fields
.field private final mIndex:I

.field private final mSegmentLength:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "segmentLength"    # I

    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;->mIndex:I

    .line 563
    iput p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;->mSegmentLength:I

    .line 564
    return-void
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    .prologue
    .line 565
    iget v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;->mIndex:I

    return v0
.end method

.method public getSegmentLength()I
    .registers 2

    .prologue
    .line 566
    iget v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;->mSegmentLength:I

    return v0
.end method
