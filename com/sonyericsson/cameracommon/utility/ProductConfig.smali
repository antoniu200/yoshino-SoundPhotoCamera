.class public Lcom/sonyericsson/cameracommon/utility/ProductConfig;
.super Ljava/lang/Object;
.source "ProductConfig.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProductConfig"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getMountAngle(Landroid/content/Context;)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 47
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 48
    .local v2, "rotation":I
    const/4 v0, 0x0

    .line 49
    .local v0, "degrees":I
    packed-switch v2, :pswitch_data_3a

    .line 66
    :goto_14
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 67
    .local v3, "screenSize":Landroid/graphics/Point;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 68
    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_35

    const/4 v1, 0x1

    .line 69
    .local v1, "isLandscape":Z
    :goto_27
    if-eqz v1, :cond_37

    .line 72
    .end local v0    # "degrees":I
    :goto_29
    return v0

    .line 51
    .end local v1    # "isLandscape":Z
    .end local v3    # "screenSize":Landroid/graphics/Point;
    .restart local v0    # "degrees":I
    :pswitch_2a
    const/4 v0, 0x0

    .line 52
    goto :goto_14

    .line 54
    :pswitch_2c
    const/16 v0, 0x10e

    .line 55
    goto :goto_14

    .line 57
    :pswitch_2f
    const/16 v0, 0xb4

    .line 58
    goto :goto_14

    .line 60
    :pswitch_32
    const/16 v0, 0x5a

    goto :goto_14

    .line 68
    .restart local v3    # "screenSize":Landroid/graphics/Point;
    :cond_35
    const/4 v1, 0x0

    goto :goto_27

    .line 72
    .restart local v1    # "isLandscape":Z
    :cond_37
    add-int/lit16 v0, v0, 0x10e

    goto :goto_29

    .line 49
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
    .end packed-switch
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$bool;->is_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static shouldReverseZoomDirection(Landroid/content/Context;Z)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "landscape"    # Z

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 83
    :cond_7
    :goto_7
    return v0

    .line 80
    :cond_8
    if-eqz p1, :cond_7

    .line 81
    const/4 v0, 0x1

    goto :goto_7
.end method
