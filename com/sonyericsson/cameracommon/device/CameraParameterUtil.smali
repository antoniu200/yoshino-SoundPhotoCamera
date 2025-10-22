.class public Lcom/sonyericsson/cameracommon/device/CameraParameterUtil;
.super Ljava/lang/Object;
.source "CameraParameterUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraParameterUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreviewMasFps(Landroid/hardware/Camera$Parameters;)I
    .registers 7
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, "maxFps":I
    if-eqz p0, :cond_22

    .line 33
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    .line 35
    .local v3, "supported":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v3, :cond_22

    .line 36
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 37
    .local v1, "eachRange":[I
    const/4 v5, 0x1

    aget v5, v1, v5

    div-int/lit16 v0, v5, 0x3e8

    .line 38
    .local v0, "eachMax":I
    if-ge v2, v0, :cond_d

    .line 39
    move v2, v0

    goto :goto_d

    .line 44
    .end local v0    # "eachMax":I
    .end local v1    # "eachRange":[I
    .end local v3    # "supported":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_22
    return v2
.end method
