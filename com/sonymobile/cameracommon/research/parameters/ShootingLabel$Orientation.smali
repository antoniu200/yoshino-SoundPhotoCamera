.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;
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
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

.field public static final enum ORIENTATION_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

.field public static final enum ORIENTATION_180:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

.field public static final enum ORIENTATION_270:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

.field public static final enum ORIENTATION_90:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;


# instance fields
.field private mConvertedChar:C

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 129
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    const-string v1, "ORIENTATION_0"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;-><init>(Ljava/lang/String;ICI)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->ORIENTATION_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    .line 130
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    const-string v1, "ORIENTATION_90"

    const/16 v2, 0x21

    const/16 v3, 0x5a

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;-><init>(Ljava/lang/String;ICI)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->ORIENTATION_90:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    .line 131
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    const-string v1, "ORIENTATION_180"

    const/16 v2, 0x22

    const/16 v3, 0xb4

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;-><init>(Ljava/lang/String;ICI)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->ORIENTATION_180:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    .line 132
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    const-string v1, "ORIENTATION_270"

    const/16 v2, 0x23

    const/16 v3, 0x10e

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;-><init>(Ljava/lang/String;ICI)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->ORIENTATION_270:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    .line 128
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->ORIENTATION_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->ORIENTATION_90:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->ORIENTATION_180:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->ORIENTATION_270:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

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
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    iput-char p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->mConvertedChar:C

    .line 140
    iput p4, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->mValue:I

    .line 141
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;
    .registers 1

    .prologue
    .line 128
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 150
    iget v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->mValue:I

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
    .line 145
    iget-char v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->mConvertedChar:C

    return v0
.end method
