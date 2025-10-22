.class public Lcom/sonyericsson/cameracommon/capability/VideoCodecCapability;
.super Ljava/lang/Object;
.source "VideoCodecCapability.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoCodecCapability"

.field private static final VIDEO_CODEC_HEVC:Ljava/lang/String; = "OMX.qcom.video.encoder.hevc"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isH265Supported()Z
    .registers 5

    .prologue
    .line 27
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    .line 28
    .local v2, "numCodecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v2, :cond_1c

    .line 29
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 31
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OMX.qcom.video.encoder.hevc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 32
    const/4 v3, 0x1

    .line 35
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    :goto_18
    return v3

    .line 28
    .restart local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 35
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_1c
    const/4 v3, 0x0

    goto :goto_18
.end method
