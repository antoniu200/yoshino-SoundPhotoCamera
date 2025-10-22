.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;
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
    name = "StopOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

.field public static final enum LOWBATTERY_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

.field public static final enum THERMAL_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

.field public static final enum USER_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    const-string v1, "USER_STOP"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->USER_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 90
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    const-string v1, "THERMAL_STOP"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->THERMAL_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 91
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    const-string v1, "LOWBATTERY_STOP"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->LOWBATTERY_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 88
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->USER_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->THERMAL_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->LOWBATTERY_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getType(ZZ)Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;
    .registers 3
    .param p0, "isThermalStop"    # Z
    .param p1, "isLowBatteryStop"    # Z

    .prologue
    .line 95
    if-eqz p0, :cond_5

    .line 96
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->THERMAL_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 100
    :goto_4
    return-object v0

    .line 97
    :cond_5
    if-eqz p1, :cond_a

    .line 98
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->LOWBATTERY_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    goto :goto_4

    .line 100
    :cond_a
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->USER_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;
    .registers 1

    .prologue
    .line 88
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    return-object v0
.end method
