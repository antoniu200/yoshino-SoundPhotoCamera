.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;
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
    name = "FaceNum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

.field public static final enum FACE_NUM_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

.field public static final enum FACE_NUM_1:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

.field public static final enum FACE_NUM_2:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

.field public static final enum FACE_NUM_3:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

.field public static final enum FACE_NUM_4:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

.field public static final enum FACE_NUM_5:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;


# instance fields
.field private mConvertedChar:C

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 215
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    const-string v1, "FACE_NUM_0"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;-><init>(Ljava/lang/String;ICI)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    .line 216
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    const-string v1, "FACE_NUM_1"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;-><init>(Ljava/lang/String;ICI)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_1:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    .line 217
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    const-string v1, "FACE_NUM_2"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;-><init>(Ljava/lang/String;ICI)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_2:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    .line 218
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    const-string v1, "FACE_NUM_3"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;-><init>(Ljava/lang/String;ICI)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_3:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    .line 219
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    const-string v1, "FACE_NUM_4"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v9, v2, v9}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;-><init>(Ljava/lang/String;ICI)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_4:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    .line 220
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    const-string v1, "FACE_NUM_5"

    const/4 v2, 0x5

    const/16 v3, 0x33

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;-><init>(Ljava/lang/String;ICI)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_5:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    .line 214
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_1:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_2:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_3:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_4:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_5:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

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
    .line 226
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 227
    iput-char p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->mConvertedChar:C

    .line 228
    iput p4, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->mValue:I

    .line 229
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 214
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;
    .registers 1

    .prologue
    .line 214
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 238
    iget v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->mValue:I

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
    .line 233
    iget-char v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->mConvertedChar:C

    return v0
.end method
