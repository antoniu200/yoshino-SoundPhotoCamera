.class public Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
.super Ljava/lang/Object;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentInfo"
.end annotation


# instance fields
.field public mBucketId:I

.field public mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public mGroupedImage:I

.field public mHeight:I

.field public mId:I

.field public mMimeType:Ljava/lang/String;

.field public mOrientation:I

.field public mOriginalPath:Ljava/lang/String;

.field public mOriginalUri:Landroid/net/Uri;

.field public mSomcType:I

.field public mThumbnail:Landroid/graphics/Bitmap;

.field public mType:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSnapShot()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .registers 3

    .prologue
    .line 86
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;-><init>()V

    .line 87
    .local v0, "dest":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:I

    iput v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:I

    .line 88
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    iput v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    .line 89
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 91
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOrientation:I

    iput v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOrientation:I

    .line 92
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mWidth:I

    iput v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mWidth:I

    .line 93
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mHeight:I

    iput v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mHeight:I

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2b
    iput-object v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    .line 95
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mGroupedImage:I

    iput v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mGroupedImage:I

    .line 96
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    iput v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    .line 97
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    iput v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    .line 98
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mThumbnail:Landroid/graphics/Bitmap;

    .line 100
    return-object v0

    .line 94
    :cond_42
    const/4 v1, 0x0

    goto :goto_2b
.end method
