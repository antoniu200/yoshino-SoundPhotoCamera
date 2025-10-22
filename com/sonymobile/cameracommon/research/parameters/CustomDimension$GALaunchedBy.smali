.class public final enum Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;
.super Ljava/lang/Enum;
.source "CustomDimension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/CustomDimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GALaunchedBy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

.field public static final enum ADDONS:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

.field public static final enum HOME:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

.field public static final enum HW_CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

.field public static final enum HW_CAMERA_KEY_LOCK:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

.field public static final enum INFORMATION:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

.field public static final enum LOCK_SCREEN:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

.field public static final enum MODE_SELECTOR:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

.field public static final enum MORE_SETTINGS_SECURE_LOCK:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

.field public static final enum ONE_SHOT_APP:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

.field public static final enum OTHER:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

.field public static final enum POWER_KEY_DOUBLE_TAP:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

.field public static final enum SAME_ACTIVITY:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

.field public static final enum SMART_COVER:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

.field public static final enum VIEWER:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    const-string v1, "LOCK_SCREEN"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->LOCK_SCREEN:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 16
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    const-string v1, "HW_CAMERA_KEY"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->HW_CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 17
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    const-string v1, "HW_CAMERA_KEY_LOCK"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->HW_CAMERA_KEY_LOCK:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 18
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->HOME:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 19
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    const-string v1, "ONE_SHOT_APP"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->ONE_SHOT_APP:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 20
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    const-string v1, "SAME_ACTIVITY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->SAME_ACTIVITY:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 21
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    const-string v1, "MODE_SELECTOR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->MODE_SELECTOR:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 22
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    const-string v1, "MORE_SETTINGS_SECURE_LOCK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->MORE_SETTINGS_SECURE_LOCK:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 23
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    const-string v1, "SMART_COVER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->SMART_COVER:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 24
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    const-string v1, "VIEWER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 25
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    const-string v1, "POWER_KEY_DOUBLE_TAP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->POWER_KEY_DOUBLE_TAP:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 26
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    const-string v1, "INFORMATION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->INFORMATION:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 27
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    const-string v1, "ADDONS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->ADDONS:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 28
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    const-string v1, "OTHER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 14
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->LOCK_SCREEN:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->HW_CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->HW_CAMERA_KEY_LOCK:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->HOME:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->ONE_SHOT_APP:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->SAME_ACTIVITY:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->MODE_SELECTOR:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->MORE_SETTINGS_SECURE_LOCK:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->SMART_COVER:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->POWER_KEY_DOUBLE_TAP:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->INFORMATION:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->ADDONS:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    return-object v0
.end method
