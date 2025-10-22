.class public Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;
.super Ljava/lang/Object;
.source "ExifInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ExifInfo"


# instance fields
.field private mByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

.field private final mHeight:I

.field private final mLocation:Landroid/location/Location;

.field private final mOrientation:I

.field private mTimestamp:J

.field private final mWidth:I


# direct methods
.method public constructor <init>(JILandroid/location/Location;II)V
    .registers 10
    .param p1, "timeStamp"    # J
    .param p3, "orientation"    # I
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    .line 40
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->BIG_ENDIAN:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .line 48
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    .line 49
    iput p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mOrientation:I

    .line 50
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mLocation:Landroid/location/Location;

    .line 51
    iput p5, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mWidth:I

    .line 52
    iput p6, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mHeight:I

    .line 53
    return-void
.end method

.method public constructor <init>(JILandroid/location/Location;IILcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;)V
    .registers 9
    .param p1, "timeStamp"    # J
    .param p3, "orientation"    # I
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "byteOrder"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .prologue
    .line 62
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;-><init>(JILandroid/location/Location;II)V

    .line 63
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    .registers 4
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    .line 40
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->BIG_ENDIAN:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .line 68
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getDateTaken()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    .line 69
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mOrientation:I

    .line 70
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mLocation:Landroid/location/Location;

    .line 71
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mWidth:I

    .line 72
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mHeight:I

    .line 73
    return-void
.end method


# virtual methods
.method public getByteOrder()Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mHeight:I

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mOrientation:I

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mWidth:I

    return v0
.end method

.method public setTimestamp(J)V
    .registers 4
    .param p1, "timestamp"    # J

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    .line 86
    return-void
.end method
