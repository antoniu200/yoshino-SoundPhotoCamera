.class public Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;
.super Ljava/lang/Object;
.source "LayoutDependencyResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;,
        Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;
    }
.end annotation


# static fields
.field private static final BASIC_SYSTEM_UI_FLAGS:I

.field private static final SCREEN_ASPECT_EIGHTEEN_NINE:F = 2.0f

.field private static final SCREEN_ASPECT_NOT_DEFINED:F = -1.0f

.field private static final SCREEN_ASPECT_SIXTEEN_NINE:F = 1.7777778f

.field public static final TAG:Ljava/lang/String; = "LayoutDependencyResolver"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_b

    .line 49
    const/16 v0, 0x700

    sput v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->BASIC_SYSTEM_UI_FLAGS:I

    .line 61
    :goto_a
    return-void

    .line 52
    :cond_b
    const/16 v0, 0x1f00

    sput v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->BASIC_SYSTEM_UI_FLAGS:I

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cropWithAspectRatio(Landroid/graphics/Point;F)Landroid/graphics/Rect;
    .registers 9
    .param p0, "size"    # Landroid/graphics/Point;
    .param p1, "aspectWidthPerHeight"    # F

    .prologue
    const/4 v6, 0x0

    .line 165
    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v0, v2

    .line 166
    .local v0, "longSideLength":F
    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v1, v2

    .line 167
    .local v1, "shortSideLength":F
    div-float v2, v0, v1

    cmpg-float v2, v2, p1

    if-gez v2, :cond_2d

    .line 168
    new-instance v2, Landroid/graphics/Rect;

    float-to-double v4, v0

    .line 169
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    div-float v4, v0, p1

    float-to-double v4, v4

    .line 170
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 174
    :goto_2c
    return-object v2

    .line 172
    :cond_2d
    new-instance v2, Landroid/graphics/Rect;

    mul-float v3, v1, p1

    float-to-double v4, v3

    .line 173
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    float-to-double v4, v1

    .line 174
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2c
.end method

.method public static getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 98
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ALWAYS_CANCELED:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    .line 100
    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->REGION_OVERLAID:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    goto :goto_8
.end method

.method public static getLeftItemCount(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$integer;->shortcut_icon_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "previewAspectRatio"    # F
    .param p2, "screenAspect"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    .prologue
    const v6, 0x3c23d70a    # 0.01f

    const/4 v7, 0x0

    .line 188
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v4

    .line 189
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 190
    .local v3, "viewFinderSize":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 191
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 193
    .local v2, "viewFinderAspectRatio":F
    cmpl-float v4, p1, v2

    if-lez v4, :cond_65

    .line 196
    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    if-ne p2, v4, :cond_54

    const/high16 v4, 0x3f100000    # 0.5625f

    sub-float v4, p1, v4

    .line 197
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_54

    .line 199
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->navigationbar_width:I

    invoke-static {p0, v5, v6}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->left_icon_area_height:I

    invoke-static {p0, v5, v6}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    sub-int v0, v4, v5

    .line 205
    .local v0, "previewHeight_18_9":I
    new-instance v4, Landroid/graphics/Rect;

    int-to-float v5, v0

    mul-float/2addr v5, p1

    float-to-int v5, v5

    invoke-direct {v4, v7, v7, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 239
    .end local v0    # "previewHeight_18_9":I
    :goto_53
    return-object v4

    .line 211
    :cond_54
    new-instance v4, Landroid/graphics/Rect;

    .line 214
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 215
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, p1

    float-to-int v6, v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_53

    .line 220
    :cond_65
    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    if-ne p2, v4, :cond_9a

    const v4, 0x3fe38e39

    sub-float v4, p1, v4

    .line 221
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_9a

    .line 223
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->navigationbar_width:I

    invoke-static {p0, v5, v6}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->left_icon_area_height:I

    invoke-static {p0, v5, v6}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    sub-int v1, v4, v5

    .line 229
    .local v1, "previewWidth_18_9":I
    new-instance v4, Landroid/graphics/Rect;

    int-to-float v5, v1

    div-float/2addr v5, p1

    float-to-int v5, v5

    invoke-direct {v4, v7, v7, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_53

    .line 235
    .end local v1    # "previewWidth_18_9":I
    :cond_9a
    new-instance v4, Landroid/graphics/Rect;

    .line 238
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    .line 239
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_53
.end method

.method public static getSystemBarMargin(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3e

    .line 119
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getSystemBarMargin(): Unknown system bar status"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :pswitch_17
    const/4 v1, 0x0

    .line 116
    :goto_18
    return v1

    .line 111
    :pswitch_19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, "resourceId":I
    if-lez v0, :cond_32

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_18

    .line 116
    :cond_32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->navigationbar_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_18

    .line 105
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_17
        :pswitch_19
    .end packed-switch
.end method

.method public static getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    new-instance v0, Landroid/graphics/Point;

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 134
    .local v0, "appDisplaySize":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 135
    .local v1, "realDisplaySize":Landroid/graphics/Point;
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 136
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 138
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    .line 139
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 141
    .local v2, "viewFinderAspectRatio":F
    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_70

    .line 160
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "getViewFinderSize(): Unknown system bar status"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    :pswitch_5b
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 150
    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->cropWithAspectRatio(Landroid/graphics/Point;F)Landroid/graphics/Rect;

    move-result-object v4

    .line 157
    :goto_65
    return-object v4

    .line 152
    :cond_66
    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->cropWithAspectRatio(Landroid/graphics/Point;F)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_65

    .line 157
    :pswitch_6b
    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->cropWithAspectRatio(Landroid/graphics/Point;F)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_65

    .line 141
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_6b
    .end packed-switch
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$bool;->is_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isTenInch(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$bool;->is_ten_inch:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static requestToDimSystemUi(Landroid/view/View;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 288
    if-nez p0, :cond_3

    .line 307
    :goto_2
    return-void

    .line 293
    :cond_3
    sget v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->BASIC_SYSTEM_UI_FLAGS:I

    .line 294
    .local v0, "visibility":I
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_22

    .line 306
    :goto_18
    :pswitch_18
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    .line 300
    :pswitch_1c
    or-int/lit8 v0, v0, 0x1

    .line 301
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_18

    .line 294
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1c
    .end packed-switch
.end method

.method public static requestToRecoverSystemUi(Landroid/view/View;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 311
    if-nez p0, :cond_3

    .line 329
    :goto_2
    return-void

    .line 316
    :cond_3
    sget v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->BASIC_SYSTEM_UI_FLAGS:I

    .line 317
    .local v0, "visibility":I
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_20

    .line 328
    :goto_18
    :pswitch_18
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    .line 323
    :pswitch_1c
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_18

    .line 317
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1c
    .end packed-switch
.end method

.method public static requestToRemoveSystemUi(Landroid/view/View;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 263
    if-nez p0, :cond_3

    .line 284
    :goto_2
    return-void

    .line 268
    :cond_3
    sget v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->BASIC_SYSTEM_UI_FLAGS:I

    .line 269
    .local v0, "visibility":I
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus:[I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getCurrentSystemBarStatus(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$SystemBarStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_28

    .line 283
    :goto_18
    :pswitch_18
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    .line 275
    :pswitch_1c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-gt v1, v2, :cond_24

    .line 276
    or-int/lit8 v0, v0, 0x2

    .line 278
    :cond_24
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_18

    .line 269
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1c
    .end packed-switch
.end method

.method public static resolveLayoutDependencyOnDevice(Landroid/app/Activity;Landroid/view/View;Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)V
    .registers 6
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "screenAspect"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    .prologue
    .line 249
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 250
    .local v1, "viewfinderRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 251
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 252
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 253
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 255
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupRightContainer(Landroid/app/Activity;)V

    .line 256
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupCaptureMethodIndicatorContainer(Landroid/app/Activity;)V

    .line 257
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupSystemBarMargin(Landroid/app/Activity;)V

    .line 258
    invoke-static {p0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupRotatableToast(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)V

    .line 259
    return-void
.end method

.method private static setupCaptureMethodIndicatorContainer(Landroid/app/Activity;)V
    .registers 4
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 411
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->capture_method_indicator_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 412
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 413
    return-void
.end method

.method private static setupModeIndicatorContainer(Landroid/app/Activity;)V
    .registers 7
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 416
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$dimen;->capturing_mode_selector_button_item_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 418
    .local v1, "modeIconSize":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$dimen;->shortcut_dialog_item_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 420
    .local v3, "shortcutIconHeight":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$dimen;->right_container_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 423
    .local v0, "containerWidth":I
    sget v4, Lcom/sonyericsson/cameracommon/R$id;->mode_indicator_container:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 424
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 425
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 426
    sub-int v4, v0, v1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    .line 427
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSystemBarMargin(Landroid/content/Context;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 428
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result v5

    div-int/2addr v4, v5

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 430
    return-void
.end method

.method private static setupRightContainer(Landroid/app/Activity;)V
    .registers 9
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x0

    .line 335
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v4

    .line 336
    .local v4, "viewfinderRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->shortcut_dialog_item_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 338
    .local v1, "shortcutIconHeight":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->shortcut_dialog_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 341
    .local v2, "shortcutIconHeightPadding":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result v6

    div-int/2addr v5, v6

    sub-int/2addr v5, v1

    add-int/2addr v5, v2

    div-int/lit8 v3, v5, 0x2

    .line 343
    .local v3, "topMargin":I
    move v0, v3

    .line 344
    .local v0, "bottomMargin":I
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7, v3, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 346
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupModeIndicatorContainer(Landroid/app/Activity;)V

    .line 347
    return-void
.end method

.method public static setupRotatableToast(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)V
    .registers 18
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "screenAspect"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    .prologue
    .line 350
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 351
    .local v7, "metrix":Landroid/util/DisplayMetrics;
    iget v12, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v13, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 352
    .local v2, "displayWidth":I
    iget v12, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v13, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 354
    .local v1, "displayHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/sonyericsson/cameracommon/R$dimen;->left_container_width:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 356
    .local v6, "leftMargin":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/sonyericsson/cameracommon/R$dimen;->right_container_width:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 357
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSystemBarMargin(Landroid/content/Context;)I

    move-result v13

    add-int v10, v12, v13

    .line 358
    .local v10, "rightMargin":I
    sget-object v12, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_45

    .line 359
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/sonyericsson/cameracommon/R$dimen;->capture_button_offset_18_9:I

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    add-int/2addr v10, v12

    .line 363
    :cond_45
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v3

    .line 364
    .local v3, "finderRect":Landroid/graphics/Rect;
    const/4 v12, 0x0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int v13, v1, v13

    invoke-virtual {v3, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 365
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result v13

    div-int v11, v12, v13

    .line 368
    .local v11, "toastHeight":I
    new-instance v5, Landroid/graphics/Rect;

    iget v12, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v6

    iget v13, v3, Landroid/graphics/Rect;->top:I

    iget v14, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v10

    iget v15, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v11

    invoke-direct {v5, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 373
    .local v5, "landscapeTop":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    iget v12, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v6

    iget v13, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v11

    iget v14, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v10

    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 380
    .local v4, "landscapeBottom":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    iget v12, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v6

    iget v13, v3, Landroid/graphics/Rect;->top:I

    iget v14, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v6

    add-int/2addr v14, v11

    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v9, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 385
    .local v9, "portraitTop":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    iget v12, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v10

    sub-int/2addr v12, v11

    iget v13, v3, Landroid/graphics/Rect;->top:I

    iget v14, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v10

    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 391
    .local v8, "portraitBottom":Landroid/graphics/Rect;
    new-instance v12, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    invoke-direct {v12, v2, v1, v5, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;-><init>(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance v13, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    invoke-direct {v13, v2, v1, v9, v8}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;-><init>(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {v12, v13}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setToastLayoutParams(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;)V

    .line 394
    return-void
.end method

.method private static setupSystemBarMargin(Landroid/app/Activity;)V
    .registers 6
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 397
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->icons:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 398
    .local v0, "iconContainer":Landroid/view/View;
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->lazy_inflated_ui_component_container:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 400
    .local v2, "uiComponentsContainer":Landroid/view/View;
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSystemBarMargin(Landroid/content/Context;)I

    move-result v1

    .line 401
    .local v1, "navigationBarWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 402
    invoke-virtual {v3, v4, v4, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 403
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 405
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 406
    invoke-virtual {v3, v4, v4, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 407
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 408
    return-void
.end method
