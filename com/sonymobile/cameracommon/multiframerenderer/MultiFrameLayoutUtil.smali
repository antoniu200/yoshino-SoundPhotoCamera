.class public Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutUtil;
.super Ljava/lang/Object;
.source "MultiFrameLayoutUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSameFrameId(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "frameIdA"    # Ljava/lang/String;
    .param p1, "frameIdB"    # Ljava/lang/String;

    .prologue
    .line 25
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 26
    const/4 v0, 0x1

    .line 32
    :goto_5
    return v0

    .line 28
    :cond_6
    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    .line 29
    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    .line 32
    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method
