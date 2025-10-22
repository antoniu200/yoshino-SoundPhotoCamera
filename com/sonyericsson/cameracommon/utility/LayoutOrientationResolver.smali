.class public Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;
.super Ljava/lang/Object;
.source "LayoutOrientationResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LayoutOrientationResolver"

.field private static final sInstance:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;


# instance fields
.field private mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->sInstance:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->LANDSCAPE:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->sInstance:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    return-object v0
.end method


# virtual methods
.method public getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    return-object v0
.end method

.method public getPointAccordingToLayoutOrientation(Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 5
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 124
    if-nez p1, :cond_3

    .line 133
    .end local p1    # "point":Landroid/graphics/Point;
    :goto_2
    return-object p1

    .line 128
    .restart local p1    # "point":Landroid/graphics/Point;
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v1, v2, :cond_14

    .line 129
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .local v0, "retPoint":Landroid/graphics/Point;
    :goto_12
    move-object p1, v0

    .line 133
    goto :goto_2

    .line 131
    .end local v0    # "retPoint":Landroid/graphics/Point;
    :cond_14
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .restart local v0    # "retPoint":Landroid/graphics/Point;
    goto :goto_12
.end method

.method public getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 85
    if-nez p1, :cond_5

    .line 86
    const/4 v0, 0x0

    .line 94
    :goto_4
    return-object v0

    .line 89
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v1, v2, :cond_19

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v0, "retRect":Landroid/graphics/Rect;
    goto :goto_4

    .line 92
    .end local v0    # "retRect":Landroid/graphics/Rect;
    :cond_19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v0    # "retRect":Landroid/graphics/Rect;
    goto :goto_4
.end method

.method public getSizeAccordingToLayoutOrientation(Landroid/util/Size;)Landroid/util/Size;
    .registers 6
    .param p1, "size"    # Landroid/util/Size;

    .prologue
    .line 106
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v2, v3, :cond_14

    .line 107
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 108
    .local v1, "sizeW":I
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 113
    .local v0, "sizeH":I
    :goto_e
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object v2

    .line 110
    .end local v0    # "sizeH":I
    .end local v1    # "sizeW":I
    :cond_14
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 111
    .restart local v1    # "sizeW":I
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    .restart local v0    # "sizeH":I
    goto :goto_e
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 57
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->LANDSCAPE:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    .line 65
    :goto_15
    return-void

    .line 60
    :cond_16
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 61
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->mLayoutOrientation:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    goto :goto_15
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 72
    return-void
.end method
