.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;
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
    name = "AfDoneKeepingTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

.field public static final enum CONTINUOUS_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

.field public static final enum OVER_2000_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

.field public static final enum WITHIN_1000_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

.field public static final enum WITHIN_100_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

.field public static final enum WITHIN_10_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

.field public static final enum WITHIN_1500_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

.field public static final enum WITHIN_2000_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

.field public static final enum WITHIN_200_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

.field public static final enum WITHIN_500_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

.field public static final enum WITHIN_50_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;


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

    .line 408
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    const-string v1, "WITHIN_10_MS"

    const/16 v2, 0x61

    const-string v3, "WITHIN_10_MS"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->WITHIN_10_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    .line 409
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    const-string v1, "WITHIN_50_MS"

    const/16 v2, 0x62

    const-string v3, "WITHIN_50_MS"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->WITHIN_50_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    .line 410
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    const-string v1, "WITHIN_100_MS"

    const/16 v2, 0x63

    const-string v3, "WITHIN_100_MS"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->WITHIN_100_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    .line 411
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    const-string v1, "WITHIN_200_MS"

    const/16 v2, 0x64

    const-string v3, "WITHIN_200_MS"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->WITHIN_200_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    .line 412
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    const-string v1, "WITHIN_500_MS"

    const/16 v2, 0x65

    const-string v3, "WITHIN_500_MS"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->WITHIN_500_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    .line 413
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    const-string v1, "WITHIN_1000_MS"

    const/4 v2, 0x5

    const/16 v3, 0x66

    const-string v4, "WITHIN_1000_MS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->WITHIN_1000_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    .line 414
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    const-string v1, "WITHIN_1500_MS"

    const/4 v2, 0x6

    const/16 v3, 0x67

    const-string v4, "WITHIN_1500_MS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->WITHIN_1500_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    .line 415
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    const-string v1, "WITHIN_2000_MS"

    const/4 v2, 0x7

    const/16 v3, 0x68

    const-string v4, "WITHIN_2000_MS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->WITHIN_2000_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    .line 416
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    const-string v1, "OVER_2000_MS"

    const/16 v2, 0x8

    const/16 v3, 0x69

    const-string v4, "OVER_2000_MS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->OVER_2000_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    .line 417
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    const-string v1, "CONTINUOUS_CAPTURE"

    const/16 v2, 0x9

    const/16 v3, 0x6a

    const-string v4, "CONTINUOUS_CAPTURE"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->CONTINUOUS_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    .line 407
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->WITHIN_10_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->WITHIN_50_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->WITHIN_100_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->WITHIN_200_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->WITHIN_500_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->WITHIN_1000_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->WITHIN_1500_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->WITHIN_2000_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->OVER_2000_MS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->CONTINUOUS_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

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
    .line 423
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 424
    iput-char p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->mConvertedChar:C

    .line 425
    iput-object p4, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->mValue:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 407
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;
    .registers 1

    .prologue
    .line 407
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->mValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getConvertedCharacter()C
    .registers 2

    .prologue
    .line 430
    iget-char v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->mConvertedChar:C

    return v0
.end method
