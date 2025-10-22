.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum ADDON_FW:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum CAMERA_NOT_AVAILABLE:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum CAPTURE_OPERATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum CHANGED_SETTING:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum LOWBATTERY_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum PANORAMA:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum SELFTIMER_CANCELLED:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum SETTINGS_COMMON:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "ADDON_FW"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ADDON_FW:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 23
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "THERMAL_MITIGATION"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 24
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "CAMERA_NOT_AVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->CAMERA_NOT_AVAILABLE:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 25
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "CAPTURE_OPERATION"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->CAPTURE_OPERATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 26
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "PANORAMA"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->PANORAMA:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 27
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "RECORDING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 28
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "SETTINGS_PHOTO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 29
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "SETTINGS_VIDEO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 30
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "SETTINGS_COMMON"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_COMMON:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 31
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "ALL_SETTINGS_PHOTO"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 32
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "ALL_SETTINGS_VIDEO"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 33
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "CHANGED_SETTING"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->CHANGED_SETTING:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 34
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "SELFTIMER_CANCELLED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SELFTIMER_CANCELLED:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 35
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "LOWBATTERY_MITIGATION"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->LOWBATTERY_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 36
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "SLOW_MOTION"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 21
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ADDON_FW:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->CAMERA_NOT_AVAILABLE:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->CAPTURE_OPERATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->PANORAMA:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_COMMON:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->CHANGED_SETTING:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SELFTIMER_CANCELLED:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->LOWBATTERY_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    return-object v0
.end method
