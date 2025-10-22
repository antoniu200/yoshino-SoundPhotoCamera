.class public final enum Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;
.super Ljava/lang/Enum;
.source "SoundPhotoViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UiComponentKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

.field public static final enum OVERLAY_ALERT_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

.field public static final enum REVIEW_WINDOW:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

.field public static final enum SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

.field public static final enum ZOOM_BAR:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    const-string v1, "ZOOM_BAR"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->ZOOM_BAR:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    .line 83
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    const-string v1, "SETTING_DIALOG"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    .line 84
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    const-string v1, "OVERLAY_ALERT_DIALOG"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->OVERLAY_ALERT_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    .line 85
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    const-string v1, "REVIEW_WINDOW"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->ZOOM_BAR:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->OVERLAY_ALERT_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    invoke-virtual {v0}, [Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    return-object v0
.end method
