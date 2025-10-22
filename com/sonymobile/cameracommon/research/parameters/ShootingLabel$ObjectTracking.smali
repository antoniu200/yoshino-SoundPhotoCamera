.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;
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
    name = "ObjectTracking"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

.field public static final enum OBJECT_TRACKING_AUTO_TARGET_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

.field public static final enum OBJECT_TRACKING_AUTO_TARGET_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

.field public static final enum OBJECT_TRACKING_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;


# instance fields
.field private mConvertedChar:C

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 471
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    const-string v1, "OBJECT_TRACKING_OFF"

    const/16 v2, 0x77

    const-string v3, "OFF_OFF"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    .line 472
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    const-string v1, "OBJECT_TRACKING_AUTO_TARGET_OFF"

    const/16 v2, 0x78

    const-string v3, "ON_OFF"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_AUTO_TARGET_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    .line 473
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    const-string v1, "OBJECT_TRACKING_AUTO_TARGET_ON"

    const/16 v2, 0x79

    const-string v3, "ON_ON"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_AUTO_TARGET_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    .line 470
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_AUTO_TARGET_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->OBJECT_TRACKING_AUTO_TARGET_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

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
    .line 479
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 480
    iput-char p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->mConvertedChar:C

    .line 481
    iput-object p4, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->mValue:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 470
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;
    .registers 1

    .prologue
    .line 470
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->mValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getConvertedCharacter()C
    .registers 2

    .prologue
    .line 486
    iget-char v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->mConvertedChar:C

    return v0
.end method
