.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/Event$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

.field public static final enum CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

.field public static final enum CAPTURE_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

.field public static final enum FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

.field public static final enum GESTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

.field public static final enum OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

.field public static final enum SELF_TIMER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

.field public static final enum SMILE_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

.field public static final enum TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

.field public static final enum VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

.field public static final enum WEARABLE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    const-string v1, "CAMERA_KEY"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 107
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    const-string v1, "CAPTURE_BUTTON"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->CAPTURE_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 108
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    const-string v1, "TOUCH_CAPTURE"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 109
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    const-string v1, "VOLUME_KEY"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 110
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    const-string v1, "FAST_CAPTURING_LAUNCH"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 111
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    const-string v1, "SMILE_CAPTURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SMILE_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 112
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    const-string v1, "SELF_TIMER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SELF_TIMER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 113
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    const-string v1, "WEARABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->WEARABLE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 114
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    const-string v1, "GESTURE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->GESTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 115
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    const-string v1, "OTHER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 105
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->CAPTURE_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SMILE_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SELF_TIMER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->WEARABLE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->GESTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;
    .registers 1

    .prologue
    .line 105
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    return-object v0
.end method
