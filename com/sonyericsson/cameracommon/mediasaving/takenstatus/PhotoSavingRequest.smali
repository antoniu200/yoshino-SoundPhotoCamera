.class public Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
.super Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
.source "PhotoSavingRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest$OnImageReaderDetachedListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PhotoSavingRequest"


# instance fields
.field private mImage:Landroid/media/Image;

.field private mImageReader:Landroid/media/ImageReader;

.field private mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest$OnImageReaderDetachedListener;

.field public final photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .registers 4
    .param p1, "data"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    .line 76
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;I)V
    .registers 5
    .param p1, "orig"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .param p2, "orientation"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;I)V

    .line 87
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V
    .registers 3
    .param p1, "commonStatus"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;
    .param p2, "photoStatus"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)V

    .line 63
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .line 66
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->log()V

    .line 67
    return-void
.end method


# virtual methods
.method public attachImageReader(Landroid/media/ImageReader;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest$OnImageReaderDetachedListener;)V
    .registers 3
    .param p1, "reader"    # Landroid/media/ImageReader;
    .param p2, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest$OnImageReaderDetachedListener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    .line 105
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest$OnImageReaderDetachedListener;

    .line 106
    return-void
.end method

.method public close()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_c

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 140
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->mImage:Landroid/media/Image;

    .line 142
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest$OnImageReaderDetachedListener;

    if-eqz v0, :cond_17

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->mOnImageReaderDettachedListener:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest$OnImageReaderDetachedListener;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest$OnImageReaderDetachedListener;->onDetached(Landroid/media/ImageReader;)V

    .line 145
    :cond_17
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    .line 146
    return-void
.end method

.method public createContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 10
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v1, "values":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSomcType:I

    if-eqz v2, :cond_18

    .line 167
    const-string v2, "somctype"

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getSomcType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    :cond_18
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "photo":Ljava/io/File;
    const-string v2, "title"

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->removeFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "_display_name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_42

    .line 174
    const-string v2, "description"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_42
    const-string v2, "datetaken"

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getDateTaken()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    const-string v2, "mime_type"

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v2, "orientation"

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string v2, "_size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v2, "date_modified"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    if-eqz v2, :cond_ae

    .line 182
    const-string v2, "latitude"

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    .line 183
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 182
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 184
    const-string v2, "longitude"

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    .line 185
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 184
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 187
    :cond_ae
    const-string v2, "_data"

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v2, "width"

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string v2, "height"

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    return-object v1
.end method

.method public getImageData()[B
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    return-object v0
.end method

.method public getImageReaderData()Ljava/nio/ByteBuffer;
    .registers 4

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_1e

    .line 125
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->mImage:Landroid/media/Image;

    if-nez v2, :cond_11

    .line 126
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->mImage:Landroid/media/Image;

    .line 128
    :cond_11
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    .line 129
    .local v1, "planes":[Landroid/media/Image$Plane;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 131
    .end local v1    # "planes":[Landroid/media/Image$Plane;
    :cond_1e
    return-object v0
.end method

.method public isImageReaderUsing()Z
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public log()V
    .registers 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->log()V

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->log()V

    .line 153
    return-void
.end method

.method public setImageData([B)V
    .registers 3
    .param p1, "image"    # [B

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->photo:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    .line 97
    return-void
.end method
