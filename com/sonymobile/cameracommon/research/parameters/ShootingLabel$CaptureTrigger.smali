.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;
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
    name = "CaptureTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum CAPTURE_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum GESTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum OTHER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum SELF_TIMER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum SMILE_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

.field public static final enum WEARABLE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;


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

    .line 288
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "CAMERA_KEY"

    const/16 v2, 0x4b

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 289
    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 290
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "CAPTURE_BUTTON"

    const/16 v2, 0x4c

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->CAPTURE_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 291
    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->CAPTURE_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 292
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "TOUCH_CAPTURE"

    const/16 v2, 0x4d

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 293
    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 294
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "VOLUME_KEY"

    const/16 v2, 0x4e

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 295
    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 296
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "FAST_CAPTURING_LAUNCH"

    const/16 v2, 0x4f

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 297
    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 298
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "SMILE_CAPTURE"

    const/4 v2, 0x5

    const/16 v3, 0x50

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SMILE_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 299
    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->SMILE_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 300
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "SELF_TIMER"

    const/4 v2, 0x6

    const/16 v3, 0x51

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SELF_TIMER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 301
    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->SELF_TIMER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 302
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "WEARABLE"

    const/4 v2, 0x7

    const/16 v3, 0x52

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->WEARABLE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 303
    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->WEARABLE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 304
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "GESTURE"

    const/16 v2, 0x8

    const/16 v3, 0x70

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->GESTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 305
    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->GESTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 306
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    const-string v1, "OTHER"

    const/16 v2, 0x9

    const/16 v3, 0x53

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 307
    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    .line 287
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->CAPTURE_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->TOUCH_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->FAST_CAPTURING_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->SMILE_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->SELF_TIMER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->WEARABLE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->GESTURE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

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
    .line 313
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 314
    iput-char p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->mConvertedChar:C

    .line 315
    iput-object p4, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->mValue:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 287
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;
    .registers 1

    .prologue
    .line 287
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->mValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getConvertedCharacter()C
    .registers 2

    .prologue
    .line 320
    iget-char v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->mConvertedChar:C

    return v0
.end method
