.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;
.super Ljava/lang/Enum;
.source "ShootingLabel.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SemiAuto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

.field public static final enum OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

.field public static final enum ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;


# instance fields
.field private mConvertedChar:C

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 384
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    const-string v1, "ON"

    const/16 v2, 0x5f

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;-><init>(Ljava/lang/String;ICI)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    .line 385
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    const-string v1, "OFF"

    const/16 v2, 0x60

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;-><init>(Ljava/lang/String;ICI)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    .line 383
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICI)V
    .registers 5
    .param p3, "converted"    # C
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CI)V"
        }
    .end annotation

    .prologue
    .line 391
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 392
    iput-char p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->mConvertedChar:C

    .line 393
    iput p4, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->mValue:I

    .line 394
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 383
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;
    .registers 1

    .prologue
    .line 383
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 403
    iget v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->mValue:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getConvertedCharacter()C
    .registers 2

    .prologue
    .line 398
    iget-char v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->mConvertedChar:C

    return v0
.end method
