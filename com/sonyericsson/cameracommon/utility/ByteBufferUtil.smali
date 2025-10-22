.class public Lcom/sonyericsson/cameracommon/utility/ByteBufferUtil;
.super Ljava/lang/Object;
.source "ByteBufferUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ByteBufferUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static array(Ljava/nio/ByteBuffer;)[B
    .registers 4
    .param p0, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 43
    .local v1, "src2":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v0, v2, [B

    .line 44
    .local v0, "dst":[B
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 45
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 46
    return-object v0
.end method
