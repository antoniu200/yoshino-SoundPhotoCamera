.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;
.super Ljava/lang/Enum;
.source "Flash.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;",
        ">;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

.field public static final enum AUTO:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

.field public static final enum LED_OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

.field public static final enum LED_ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

.field public static final enum ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

.field public static final enum PHOTO_LIGHT_ON_AS_FLASH:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

.field public static final enum RED_EYE:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

.field public static final TAG:Ljava/lang/String; = "Flash"

.field private static final sParameterTextId:I


# instance fields
.field private final mIconId:I

.field private final mIsSceneDependent:Z

.field private final mProviderValue:Ljava/lang/String;

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 22
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    sget v3, Lcom/sonyericsson/cameracommon/R$drawable;->cam_flash_auto_icn:I

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_auto_txt:I

    const-string v5, "auto"

    const/4 v6, 0x1

    const-string v7, "auto"

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->AUTO:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    .line 27
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    const-string v1, "ON"

    const/4 v2, 0x1

    sget v3, Lcom/sonyericsson/cameracommon/R$drawable;->cam_flash_fill_flash_icn:I

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_flash_fill_flash_txt:I

    const-string v5, "on"

    const/4 v6, 0x0

    const-string v7, "fill_flash"

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    .line 32
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    const-string v1, "RED_EYE"

    const/4 v2, 0x2

    sget v3, Lcom/sonyericsson/cameracommon/R$drawable;->cam_flash_red_eye_reduc_icn:I

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_flash_red_eye_reduc_txt:I

    const-string v5, "red-eye"

    const/4 v6, 0x1

    const-string v7, "red_eye_reduction"

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->RED_EYE:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    .line 37
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    const-string v1, "OFF"

    const/4 v2, 0x3

    sget v3, Lcom/sonyericsson/cameracommon/R$drawable;->cam_flash_off_icn:I

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_off_txt:I

    const-string v5, "off"

    const/4 v6, 0x0

    const-string v7, "off"

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    .line 42
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    const-string v1, "LED_ON"

    const/4 v2, 0x4

    sget v3, Lcom/sonyericsson/cameracommon/R$drawable;->cam_flash_torch_icn:I

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_flash_torch_txt:I

    const-string v5, "torch"

    const/4 v6, 0x0

    const-string v7, "flashlight_on"

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->LED_ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    .line 47
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    const-string v1, "LED_OFF"

    const/4 v2, 0x5

    sget v3, Lcom/sonyericsson/cameracommon/R$drawable;->cam_flash_torch_off_icn:I

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_off_txt:I

    const-string v5, "off"

    const/4 v6, 0x0

    const-string v7, "flashlight_off"

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->LED_OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    .line 54
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    const-string v1, "PHOTO_LIGHT_ON_AS_FLASH"

    const/4 v2, 0x6

    sget-object v3, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

    .line 55
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->getIconId()I

    move-result v3

    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

    .line 56
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->getTextId()I

    move-result v4

    sget-object v5, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

    .line 57
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "photoLight"

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->PHOTO_LIGHT_ON_AS_FLASH:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    .line 21
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->AUTO:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->RED_EYE:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->LED_ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->LED_OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->PHOTO_LIGHT_ON_AS_FLASH:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    .line 64
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_flash_txt:I

    sput v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->sParameterTextId:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;ZLjava/lang/String;)V
    .registers 8
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "sceneDependent"    # Z
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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->mIconId:I

    .line 90
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->mTextId:I

    .line 91
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->mValue:Ljava/lang/String;

    .line 92
    iput-boolean p6, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->mIsSceneDependent:Z

    .line 93
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->mProviderValue:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;
    .registers 1

    .prologue
    .line 164
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->AUTO:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    return-object v0
.end method

.method public static getFlashFromParameterString(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;
    .registers 6
    .param p0, "flashString"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_18

    aget-object v0, v2, v1

    .line 149
    .local v0, "flash":Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 155
    .end local v0    # "flash":Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;
    :goto_14
    return-object v0

    .line 148
    .restart local v0    # "flash":Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 155
    .end local v0    # "flash":Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    return-object v0
.end method


# virtual methods
.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .registers 2

    .prologue
    .line 139
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->FLASH:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getIconId()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->mIconId:I

    return v0
.end method

.method public getParameterKeyTextId()I
    .registers 2

    .prologue
    .line 97
    sget v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->sParameterTextId:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->mProviderValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isSceneDependent()Z
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->mIsSceneDependent:Z

    return v0
.end method
