.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;
.super Ljava/lang/Enum;
.source "GridLine.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;",
        ">;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

.field public static final enum ON:Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

.field private static final PARAMETER_TEXT_ID:I

.field public static final TAG:Ljava/lang/String; = "GridLine"


# instance fields
.field private final mIconId:I

.field private final mIsGridLineOn:Z

.field private final mProviderValue:Ljava/lang/String;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

    const-string v1, "ON"

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_on_txt:I

    const-string v6, "on"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;-><init>(Ljava/lang/String;IIIZLjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

    .line 30
    new-instance v6, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

    const-string v7, "OFF"

    sget v10, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_off_txt:I

    const-string v12, "off"

    move v8, v5

    move v9, v3

    move v11, v2

    invoke-direct/range {v6 .. v12}, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;-><init>(Ljava/lang/String;IIIZLjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

    .line 40
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_gridline_txt:I

    sput v0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->PARAMETER_TEXT_ID:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZLjava/lang/String;)V
    .registers 7
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "isGridLineOn"    # Z
    .param p6, "providerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->mIconId:I

    .line 64
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->mTextId:I

    .line 65
    iput-boolean p5, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->mIsGridLineOn:Z

    .line 66
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->mProviderValue:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;
    .registers 1

    .prologue
    .line 139
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

    return-object v0
.end method


# virtual methods
.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .registers 2

    .prologue
    .line 74
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GRID_LINE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getCommonSettingKeyTextId()I
    .registers 2

    .prologue
    .line 129
    sget v0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->PARAMETER_TEXT_ID:I

    return v0
.end method

.method public getIconId()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->mIconId:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->mProviderValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->mTextId:I

    return v0
.end method

.method public isGridLineOn()Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->mIsGridLineOn:Z

    return v0
.end method
