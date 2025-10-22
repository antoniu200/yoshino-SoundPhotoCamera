.class public final enum Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;
.super Ljava/lang/Enum;
.source "FontUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/font/FontUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RobotoFontType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum BLACK:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum BLACK_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED_BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED_BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED_LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED_LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum MEDIUM_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum REGULAR:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum REGULAR_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum THIN:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum THIN_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;


# instance fields
.field private final mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "THIN"

    const-string v2, "/system/fonts/Roboto-Thin.ttf"

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->THIN:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 21
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "THIN_ITALIC"

    const-string v2, "/system/fonts/Roboto-ThinItalic.ttf"

    invoke-direct {v0, v1, v5, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->THIN_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 22
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "LIGHT"

    const-string v2, "/system/fonts/Roboto-Light.ttf"

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 23
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "LIGHT_ITALIC"

    const-string v2, "/system/fonts/Roboto-LightItalic.ttf"

    invoke-direct {v0, v1, v7, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 24
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "REGULAR"

    const-string v2, "/system/fonts/Roboto-Regular.ttf"

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 25
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "REGULAR_ITALIC"

    const/4 v2, 0x5

    const-string v3, "/system/fonts/Roboto-Italic.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 26
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "MEDIUM"

    const/4 v2, 0x6

    const-string v3, "/system/fonts/Roboto-Medium.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 27
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "MEDIUM_ITALIC"

    const/4 v2, 0x7

    const-string v3, "/system/fonts/Roboto-MediumItalic.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 28
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "BLACK"

    const/16 v2, 0x8

    const-string v3, "/system/fonts/Roboto-Black.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BLACK:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 29
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "BLACK_ITALIC"

    const/16 v2, 0x9

    const-string v3, "/system/fonts/Roboto-BlackItalic.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BLACK_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 30
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "BOLD"

    const/16 v2, 0xa

    const-string v3, "/system/fonts/Roboto-Bold.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 31
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "BOLD_ITALIC"

    const/16 v2, 0xb

    const-string v3, "/system/fonts/Roboto-BoldItalic.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 32
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "CONDENSED_LIGHT"

    const/16 v2, 0xc

    const-string v3, "/system/fonts/RobotoCondensed-Light.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 33
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "CONDENSED_LIGHT_ITALIC"

    const/16 v2, 0xd

    const-string v3, "/system/fonts/RobotoCondensed-LightItalic.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 34
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "CONDENSED"

    const/16 v2, 0xe

    const-string v3, "/system/fonts/RobotoCondensed-Regular.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 35
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "CONDENSED_ITALIC"

    const/16 v2, 0xf

    const-string v3, "/system/fonts/RobotoCondensed-Italic.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 36
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "CONDENSED_BOLD"

    const/16 v2, 0x10

    const-string v3, "/system/fonts/RobotoCondensed-Bold.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 37
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "CONDENSED_BOLD_ITALIC"

    const/16 v2, 0x11

    const-string v3, "/system/fonts/RobotoCondensed-BoldItalic.ttf"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 19
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->THIN:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->THIN_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BLACK:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BLACK_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->$VALUES:[Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->mPath:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->$VALUES:[Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    return-object v0
.end method
