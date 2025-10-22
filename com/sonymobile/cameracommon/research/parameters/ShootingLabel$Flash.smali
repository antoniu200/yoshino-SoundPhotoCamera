.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;
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
    name = "Flash"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

.field public static final enum AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

.field public static final enum LED_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

.field public static final enum LED_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

.field public static final enum OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

.field public static final enum ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

.field public static final enum RED_EYE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;


# instance fields
.field private mConvertedChar:C

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 330
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    const-string v1, "AUTO"

    const/16 v2, 0x54

    const-string v3, "AUTO"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    .line 331
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    const-string v1, "ON"

    const/16 v2, 0x55

    const-string v3, "ON"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    .line 332
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    const-string v1, "RED_EYE"

    const/16 v2, 0x56

    const-string v3, "RED_EYE"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->RED_EYE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    .line 333
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    const-string v1, "OFF"

    const/16 v2, 0x57

    const-string v3, "OFF"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    .line 334
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    const-string v1, "LED_ON"

    const/16 v2, 0x58

    const-string v3, "LED_ON"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->LED_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    .line 335
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    const-string v1, "LED_OFF"

    const/4 v2, 0x5

    const/16 v3, 0x59

    const-string v4, "LED_OFF"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->LED_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    .line 329
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->RED_EYE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->LED_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->LED_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

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
    .line 341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 342
    iput-char p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->mConvertedChar:C

    .line 343
    iput-object p4, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->mValue:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 329
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;
    .registers 1

    .prologue
    .line 329
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->mValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getConvertedCharacter()C
    .registers 2

    .prologue
    .line 348
    iget-char v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->mConvertedChar:C

    return v0
.end method
