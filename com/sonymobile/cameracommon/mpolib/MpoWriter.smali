.class public Lcom/sonymobile/cameracommon/mpolib/MpoWriter;
.super Ljava/lang/Object;
.source "MpoWriter.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "mpo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addCombineJpegData([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native addCombineJpegFile(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native endCombineJpegToMpo()V
.end method

.method private static native getOutputData([B)V
.end method

.method public static getOutputData()[B
    .registers 2

    .prologue
    .line 61
    invoke-static {}, Lcom/sonymobile/cameracommon/mpolib/MpoWriter;->getOutputDataLength()I

    move-result v1

    new-array v0, v1, [B

    .line 62
    .local v0, "data":[B
    invoke-static {v0}, Lcom/sonymobile/cameracommon/mpolib/MpoWriter;->getOutputData([B)V

    .line 63
    return-object v0
.end method

.method private static native getOutputDataLength()I
.end method

.method public static native startCombineJpegToMpo(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
