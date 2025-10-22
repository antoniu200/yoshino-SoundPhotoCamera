.class public Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
.super Ljava/lang/Object;
.source "Content.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/contentsview/contents/optionmenu/OptionOperating;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;,
        Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Content"


# instance fields
.field protected mCountText:Ljava/lang/String;

.field private final mExtraIconId:I

.field protected final mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

.field private final mPlayableIconId:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;II)V
    .registers 4
    .param p1, "info"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .param p2, "extraIconId"    # I
    .param p3, "playIconId"    # I

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .line 111
    iput p2, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mExtraIconId:I

    .line 112
    iput p3, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mPlayableIconId:I

    .line 113
    return-void
.end method


# virtual methods
.method public getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    return-object v0
.end method

.method public getCountText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mCountText:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraIconResourceId()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mExtraIconId:I

    return v0
.end method

.method public getPlayIconResourceId()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mPlayableIconId:I

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->getSnapShot()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public shouldShowExtraIcon()Z
    .registers 3

    .prologue
    .line 137
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mExtraIconId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public shouldShowPlayableIcon()Z
    .registers 3

    .prologue
    .line 130
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mPlayableIconId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public viewContent(Landroid/app/Activity;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget v2, v2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget v3, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->launchAlbum(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 176
    :goto_19
    return-void

    .line 173
    :cond_1a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-object v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget v3, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget v4, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->launchAlbum(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;IIZ)V

    goto :goto_19
.end method
