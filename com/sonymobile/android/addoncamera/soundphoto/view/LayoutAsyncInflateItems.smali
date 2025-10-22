.class public Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems;
.super Ljava/lang/Object;
.source "LayoutAsyncInflateItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;
    }
.end annotation


# static fields
.field private static final INFLATE_ITEMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems;->INFLATE_ITEMS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInflateItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems;->INFLATE_ITEMS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_40

    .line 81
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems;->INFLATE_ITEMS:Ljava/util/List;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->HEAD_UP_DISPLAY:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems;->INFLATE_ITEMS:Ljava/util/List;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FACE:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems;->INFLATE_ITEMS:Ljava/util/List;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_SINGLE:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems;->INFLATE_ITEMS:Ljava/util/List;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems;->INFLATE_ITEMS:Ljava/util/List;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_OBJECT_TRACKING:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems;->INFLATE_ITEMS:Ljava/util/List;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->PREVIEW_OVERLAY:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems;->INFLATE_ITEMS:Ljava/util/List;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->SOUND_INDICATOR:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems;->INFLATE_ITEMS:Ljava/util/List;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->AUDIO_PLAYER:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_40
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems;->INFLATE_ITEMS:Ljava/util/List;

    return-object v0
.end method
