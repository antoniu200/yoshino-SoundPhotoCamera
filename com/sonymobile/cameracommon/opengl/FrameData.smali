.class public Lcom/sonymobile/cameracommon/opengl/FrameData;
.super Ljava/lang/Object;
.source "FrameData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mByteArray:[B

.field private final mFormat:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

.field private final mFrameHeight:I

.field private final mFrameWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mByteArray:[B

    .line 88
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;->BITMAP:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFormat:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameWidth:I

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameHeight:I

    .line 91
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mBitmap:Landroid/graphics/Bitmap;

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;II)V
    .registers 6
    .param p1, "format"    # Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;
    .param p2, "frameWidth"    # I
    .param p3, "frameHeight"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mByteArray:[B

    .line 48
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFormat:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    .line 49
    iput p2, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameWidth:I

    .line 50
    iput p3, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameHeight:I

    .line 52
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/FrameData$1;->$SwitchMap$com$sonymobile$cameracommon$opengl$FrameData$ImageFormat:[I

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFormat:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 61
    :goto_19
    return-void

    .line 54
    :pswitch_1a
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameWidth:I

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mByteArray:[B

    goto :goto_19

    .line 58
    :pswitch_26
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameWidth:I

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mByteArray:[B

    goto :goto_19

    .line 52
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_26
    .end packed-switch
.end method

.method public constructor <init>(Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;II[B)V
    .registers 6
    .param p1, "format"    # Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;
    .param p2, "frameWidth"    # I
    .param p3, "frameHeight"    # I
    .param p4, "byteArray"    # [B

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mByteArray:[B

    .line 76
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFormat:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    .line 77
    iput p2, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameWidth:I

    .line 78
    iput p3, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameHeight:I

    .line 79
    iput-object p4, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mByteArray:[B

    .line 80
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getByteArrayYvu()[B
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mByteArray:[B

    return-object v0
.end method

.method public getFrameHeight()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameHeight:I

    return v0
.end method

.method public getFrameWidth()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameWidth:I

    return v0
.end method

.method public getImageFormat()Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFormat:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    return-object v0
.end method

.method public getRgb888()[B
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mByteArray:[B

    return-object v0
.end method

.method public getVuOffset()I
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mByteArray:[B

    if-nez v0, :cond_6

    .line 144
    const/4 v0, 0x0

    .line 147
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameWidth:I

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameHeight:I

    mul-int/2addr v0, v1

    goto :goto_5
.end method

.method public getYOffset()I
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public setByteArrayYvu([B)V
    .registers 2
    .param p1, "byteArray"    # [B

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mByteArray:[B

    .line 126
    return-void
.end method
