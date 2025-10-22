.class final enum Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;
.super Ljava/lang/Enum;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ObJectTrackingFocusIconState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

.field public static final enum NOT_DISPLAY:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

.field public static final enum TOUCH_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

.field public static final enum TRACKING_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1703
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    const-string v1, "NOT_DISPLAY"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->NOT_DISPLAY:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 1704
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    const-string v1, "TOUCH_ICON"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TOUCH_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 1705
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    const-string v1, "TRACKING_ICON"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TRACKING_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 1702
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->NOT_DISPLAY:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TOUCH_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TRACKING_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

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
    .line 1702
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1702
    const-class v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;
    .registers 1

    .prologue
    .line 1702
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    return-object v0
.end method
