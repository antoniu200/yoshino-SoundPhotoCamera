.class public final enum Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;
.super Ljava/lang/Enum;
.source "LayoutAsyncInflateItems.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraInflateItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;",
        ">;",
        "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum AUDIO_PLAYER:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum AUTO_REVIEW:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum HEAD_UP_DISPLAY:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum PREVIEW_OVERLAY:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_FACE:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_OBJECT_TRACKING:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_SINGLE:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum SOUND_INDICATOR:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;


# instance fields
.field protected final mInflateId:I

.field protected final mViewCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 25
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "HEAD_UP_DISPLAY"

    const v2, 0x7f03006b

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->HEAD_UP_DISPLAY:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 28
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "RECTANGLE_FACE"

    const v2, 0x7f030034

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FACE:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 31
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "RECTANGLE_SINGLE"

    const v2, 0x7f030035

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_SINGLE:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 34
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "RECTANGLE_TOUCH"

    const v2, 0x7f030035

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 37
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "RECTANGLE_OBJECT_TRACKING"

    const/4 v2, 0x4

    const v3, 0x7f030034

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_OBJECT_TRACKING:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 40
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "AUTO_REVIEW"

    const v2, 0x7f030022

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->AUTO_REVIEW:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 43
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "PREVIEW_OVERLAY"

    const/4 v2, 0x6

    const v3, 0x7f03004e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->PREVIEW_OVERLAY:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 46
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "SOUND_INDICATOR"

    const/4 v2, 0x7

    const v3, 0x7f030063

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->SOUND_INDICATOR:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 49
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "AUDIO_PLAYER"

    const/16 v2, 0x8

    const v3, 0x7f030021

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->AUDIO_PLAYER:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 24
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->HEAD_UP_DISPLAY:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FACE:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_SINGLE:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_OBJECT_TRACKING:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->AUTO_REVIEW:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v1, v0, v5

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->PREVIEW_OVERLAY:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->SOUND_INDICATOR:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->AUDIO_PLAYER:Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .param p3, "inflateId"    # I
    .param p4, "viewCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->mInflateId:I

    .line 59
    iput p4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->mViewCount:I

    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {v0}, [Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->mInflateId:I

    return v0
.end method

.method public getViewCount()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/LayoutAsyncInflateItems$CameraInflateItem;->mViewCount:I

    return v0
.end method
