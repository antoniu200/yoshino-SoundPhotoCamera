.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;
.super Ljava/lang/Enum;
.source "ShootingLabel.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SelfTimer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

.field public static final enum INSTANT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

.field public static final enum LONG:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

.field public static final enum OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

.field public static final enum SHORT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;


# instance fields
.field private mConvertedChar:C

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 358
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    const-string v1, "LONG"

    const/16 v2, 0x5a

    const-string v3, "LONG"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->LONG:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    .line 359
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    const-string v1, "SHORT"

    const/16 v2, 0x5b

    const-string v3, "SHORT"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->SHORT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    .line 360
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    const-string v1, "INSTANT"

    const/16 v2, 0x5d

    const-string v3, "INSTANT"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->INSTANT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    .line 361
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    const-string v1, "OFF"

    const/16 v2, 0x5e

    const-string v3, "OFF"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    .line 357
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->LONG:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->SHORT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->INSTANT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICLjava/lang/String;)V
    .registers 5
    .param p3, "converted"    # C
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 368
    iput-char p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->mConvertedChar:C

    .line 369
    iput-object p4, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->mValue:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 357
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;
    .registers 1

    .prologue
    .line 357
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->mValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getConvertedCharacter()C
    .registers 2

    .prologue
    .line 374
    iget-char v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->mConvertedChar:C

    return v0
.end method
