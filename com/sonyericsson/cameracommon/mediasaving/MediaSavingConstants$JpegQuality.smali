.class public Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants$JpegQuality;
.super Ljava/lang/Object;
.source "MediaSavingConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JpegQuality"
.end annotation


# static fields
.field public static final ECONOMY:I = 0x55

.field public static final FINE:I = 0x61

.field public static final STANDARD:I = 0x5d


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlatformQualityFromCameraProfile(I)I
    .registers 2
    .param p0, "cameraProfileQuality"    # I

    .prologue
    .line 108
    packed-switch p0, :pswitch_data_c

    .line 112
    const/16 v0, 0x61

    .line 124
    .local v0, "platformQuality":I
    :goto_5
    return v0

    .line 116
    .end local v0    # "platformQuality":I
    :pswitch_6
    const/16 v0, 0x5d

    .line 117
    .restart local v0    # "platformQuality":I
    goto :goto_5

    .line 120
    .end local v0    # "platformQuality":I
    :pswitch_9
    const/16 v0, 0x55

    .restart local v0    # "platformQuality":I
    goto :goto_5

    .line 108
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
