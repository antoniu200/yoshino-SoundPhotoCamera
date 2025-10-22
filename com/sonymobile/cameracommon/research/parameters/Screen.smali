.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Screen;
.super Ljava/lang/Enum;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/Screen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum APPS_UI:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum CREATIVE_EFFECT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum FACE_IN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum FOUR_K_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum MANUAL_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum MANUAL_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum MULTI_CAMERA:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum PANORAMA:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum SMART_COVER_CAMERA:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum SOUND_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum SUPERIOR_AUTO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum SUPERIOR_AUTO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum TIMESHIFT_BURST:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum TIMESHIFT_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum VIDEO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum VIDEO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "SMART_COVER_CAMERA"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SMART_COVER_CAMERA:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 13
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "SUPERIOR_AUTO_MAIN"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 14
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "SUPERIOR_AUTO_FRONT"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 15
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "MANUAL_MAIN"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MANUAL_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 16
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "MANUAL_FRONT"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MANUAL_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 17
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "VIDEO_MAIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 18
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "VIDEO_FRONT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 19
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "SLOW_MOTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 20
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "PANORAMA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->PANORAMA:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 21
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "TIMESHIFT_BURST"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->TIMESHIFT_BURST:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 22
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "FOUR_K_VIDEO"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->FOUR_K_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 23
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "TIMESHIFT_VIDEO"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->TIMESHIFT_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 24
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "CREATIVE_EFFECT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->CREATIVE_EFFECT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 25
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "SOUND_PHOTO"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SOUND_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 26
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "MULTI_CAMERA"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MULTI_CAMERA:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 27
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "FACE_IN"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->FACE_IN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 28
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "APPS_UI"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->APPS_UI:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 11
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Screen;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SMART_COVER_CAMERA:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MANUAL_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MANUAL_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Screen;->PANORAMA:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Screen;->TIMESHIFT_BURST:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Screen;->FOUR_K_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Screen;->TIMESHIFT_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Screen;->CREATIVE_EFFECT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SOUND_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MULTI_CAMERA:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Screen;->FACE_IN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Screen;->APPS_UI:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Screen;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Screen;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Screen;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Screen;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Screen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Screen;

    return-object v0
.end method
