.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;
.super Ljava/lang/Enum;
.source "PhotoLight.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;",
        ">;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

.field public static final enum ON:Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

.field public static final TAG:Ljava/lang/String; = "PhotoLight"

.field private static final sParameterTextId:I


# instance fields
.field private final mBooleanValue:Z

.field private final mIconId:I

.field private final mProviderValue:Ljava/lang/String;

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

    const-string v1, "ON"

    sget v3, Lcom/sonyericsson/cameracommon/R$drawable;->cam_flash_torch_icn:I

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_on_txt:I

    const-string v5, "torch"

    const-string v7, "on"

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;-><init>(Ljava/lang/String;IIILjava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

    .line 27
    new-instance v4, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

    const-string v5, "OFF"

    sget v7, Lcom/sonyericsson/cameracommon/R$drawable;->cam_flash_torch_off_icn:I

    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_off_txt:I

    const-string v9, "off"

    const-string v11, "off"

    move v10, v2

    invoke-direct/range {v4 .. v11}, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;-><init>(Ljava/lang/String;IIILjava/lang/String;ZLjava/lang/String;)V

    sput-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

    .line 37
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_flash_torch_txt:I

    sput v0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->sParameterTextId:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;ZLjava/lang/String;)V
    .registers 8
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "booleanValue"    # Z
    .param p7, "providerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->mIconId:I

    .line 63
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->mTextId:I

    .line 64
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->mValue:Ljava/lang/String;

    .line 65
    iput-boolean p6, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->mBooleanValue:Z

    .line 66
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->mProviderValue:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;
    .registers 1

    .prologue
    .line 126
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

    return-object v0
.end method


# virtual methods
.method public getBooleanValue()Z
    .registers 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->mBooleanValue:Z

    return v0
.end method

.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .registers 2

    .prologue
    .line 112
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getIconId()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->mIconId:I

    return v0
.end method

.method public getParameterKeyTextId()I
    .registers 2

    .prologue
    .line 70
    sget v0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->sParameterTextId:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->mProviderValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->mValue:Ljava/lang/String;

    return-object v0
.end method
