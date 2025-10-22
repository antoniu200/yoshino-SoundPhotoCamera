.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;
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
    name = "HandSignLostNum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

.field public static final enum FIVE_AND_MORE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

.field public static final enum NA:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

.field public static final enum ONE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

.field public static final enum TWO_TO_FOUR:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

.field public static final enum ZERO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;


# instance fields
.field private mConvertedChar:C

.field private final mMaxNum:I

.field private final mMinNum:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v4, -0x1

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 186
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    const-string v1, "NA"

    const/16 v3, 0x6b

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;-><init>(Ljava/lang/String;ICII)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->NA:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    .line 187
    new-instance v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    const-string v4, "ZERO"

    const/16 v6, 0x6c

    move v5, v9

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;-><init>(Ljava/lang/String;ICII)V

    sput-object v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->ZERO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    .line 188
    new-instance v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    const-string v4, "ONE"

    const/16 v6, 0x6d

    move v5, v10

    move v7, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;-><init>(Ljava/lang/String;ICII)V

    sput-object v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->ONE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    .line 189
    new-instance v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    const-string v4, "TWO_TO_FOUR"

    const/4 v5, 0x3

    const/16 v6, 0x6e

    move v7, v10

    move v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;-><init>(Ljava/lang/String;ICII)V

    sput-object v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->TWO_TO_FOUR:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    .line 190
    new-instance v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    const-string v4, "FIVE_AND_MORE"

    const/16 v6, 0x6f

    const/4 v7, 0x5

    const v8, 0x7fffffff

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;-><init>(Ljava/lang/String;ICII)V

    sput-object v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->FIVE_AND_MORE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    .line 185
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->NA:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->ZERO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->ONE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    aput-object v1, v0, v10

    const/4 v1, 0x3

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->TWO_TO_FOUR:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->FIVE_AND_MORE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    aput-object v1, v0, v11

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICII)V
    .registers 6
    .param p3, "converted"    # C
    .param p4, "minNum"    # I
    .param p5, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CII)V"
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 198
    iput-char p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->mConvertedChar:C

    .line 199
    iput p4, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->mMinNum:I

    .line 200
    iput p5, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->mMaxNum:I

    .line 201
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 185
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;
    .registers 1

    .prologue
    .line 185
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 205
    iget v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->mMinNum:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->mMaxNum:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getConvertedCharacter()C
    .registers 2

    .prologue
    .line 210
    iget-char v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->mConvertedChar:C

    return v0
.end method
