.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;
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
    name = "RecognizedScene"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum ACTION:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum BABY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum BACKLIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum BACKLIGHT_PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum BEACH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum CANDLELIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum DARK:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum DISH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum DOCUMENT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum FIREWORKS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum LANDSCAPE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum MACRO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum NIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum NIGHT_PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum PARTY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum SNOW:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum SPORTS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum SPOTLIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum STEADYPHOTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum SUNSET:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum THEATRE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;


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

    .line 243
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "AUTO"

    const/16 v2, 0x34

    const-string v3, "auto"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 244
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "ACTION"

    const/16 v2, 0x35

    const-string v3, "action"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->ACTION:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 245
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "PORTRAIT"

    const/16 v2, 0x36

    const-string v3, "portrait"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 246
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "LANDSCAPE"

    const/16 v2, 0x37

    const-string v3, "landscape"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->LANDSCAPE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 247
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "NIGHT"

    const/16 v2, 0x38

    const-string v3, "night"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->NIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 248
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "NIGHT_PORTRAIT"

    const/4 v2, 0x5

    const/16 v3, 0x39

    const-string v4, "night-portrait"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->NIGHT_PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 249
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "THEATRE"

    const/4 v2, 0x6

    const/16 v3, 0x3a

    const-string v4, "theatre"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->THEATRE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 250
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "BEACH"

    const/4 v2, 0x7

    const/16 v3, 0x3b

    const-string v4, "beach"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BEACH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 251
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "SNOW"

    const/16 v2, 0x8

    const/16 v3, 0x3c

    const-string v4, "snow"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SNOW:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 252
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "SUNSET"

    const/16 v2, 0x9

    const/16 v3, 0x3d

    const-string v4, "sunset"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SUNSET:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 253
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "STEADYPHOTO"

    const/16 v2, 0xa

    const/16 v3, 0x3e

    const-string v4, "steadyphoto"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->STEADYPHOTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 254
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "FIREWORKS"

    const/16 v2, 0xb

    const/16 v3, 0x3f

    const-string v4, "fireworks"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->FIREWORKS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 255
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "SPORTS"

    const/16 v2, 0xc

    const/16 v3, 0x40

    const-string v4, "sports"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SPORTS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 256
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "PARTY"

    const/16 v2, 0xd

    const/16 v3, 0x41

    const-string v4, "party"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->PARTY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 257
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "CANDLELIGHT"

    const/16 v2, 0xe

    const/16 v3, 0x42

    const-string v4, "candlelight"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->CANDLELIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 258
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "DOCUMENT"

    const/16 v2, 0xf

    const/16 v3, 0x43

    const-string v4, "document"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->DOCUMENT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 259
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "BACKLIGHT"

    const/16 v2, 0x10

    const/16 v3, 0x44

    const-string v4, "backlight"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BACKLIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 260
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "BACKLIGHT_PORTRAIT"

    const/16 v2, 0x11

    const/16 v3, 0x45

    const-string v4, "backlight-portrait"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BACKLIGHT_PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 261
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "DARK"

    const/16 v2, 0x12

    const/16 v3, 0x46

    const-string v4, "dark"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->DARK:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 262
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "BABY"

    const/16 v2, 0x13

    const/16 v3, 0x47

    const-string v4, "baby"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BABY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 263
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "SPOTLIGHT"

    const/16 v2, 0x14

    const/16 v3, 0x48

    const-string v4, "spot-light"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SPOTLIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 264
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "DISH"

    const/16 v2, 0x15

    const/16 v3, 0x49

    const-string v4, "dish"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->DISH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 265
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "MACRO"

    const/16 v2, 0x16

    const/16 v3, 0x4a

    const-string v4, "macro"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->MACRO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 242
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->ACTION:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->LANDSCAPE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->NIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->NIGHT_PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->THEATRE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BEACH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SNOW:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SUNSET:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->STEADYPHOTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->FIREWORKS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SPORTS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->PARTY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->CANDLELIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->DOCUMENT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BACKLIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BACKLIGHT_PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->DARK:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BABY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SPOTLIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->DISH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->MACRO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

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
    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 272
    iput-char p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->mConvertedChar:C

    .line 273
    iput-object p4, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->mValue:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 242
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;
    .registers 1

    .prologue
    .line 242
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->mValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getConvertedCharacter()C
    .registers 2

    .prologue
    .line 278
    iget-char v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->mConvertedChar:C

    return v0
.end method
