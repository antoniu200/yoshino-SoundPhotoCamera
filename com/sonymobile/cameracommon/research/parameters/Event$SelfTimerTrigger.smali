.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;
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
    name = "SelfTimerTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

.field public static final enum GESTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

.field public static final enum NORMAL:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->NORMAL:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    .line 218
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    const-string v1, "GESTURE"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->GESTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    .line 210
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->NORMAL:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->GESTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

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
    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;
    .registers 1

    .prologue
    .line 210
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    return-object v0
.end method
