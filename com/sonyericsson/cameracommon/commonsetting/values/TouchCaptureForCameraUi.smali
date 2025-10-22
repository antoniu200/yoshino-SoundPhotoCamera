.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;
.super Ljava/lang/Enum;
.source "TouchCaptureForCameraUi.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;",
        ">;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

.field public static final enum FRONT_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

.field public static final enum ON:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

.field public static final TAG:Ljava/lang/String; = "TouchCaptureForCameraUi"


# instance fields
.field private final mIconId:I

.field private final mProviderValue:Ljava/lang/String;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const/4 v13, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 25
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    const-string v1, "ON"

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_on_txt:I

    const-string v5, "on"

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    .line 29
    new-instance v4, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    const-string v5, "FRONT_ONLY"

    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_only_front_txt:I

    const-string v9, "front_only"

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->FRONT_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    .line 33
    new-instance v7, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    const-string v8, "OFF"

    sget v11, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_off_txt:I

    const-string v12, "off"

    move v9, v13

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v7, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->FRONT_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    aput-object v1, v0, v13

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 6
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "providerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->mIconId:I

    .line 59
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->mTextId:I

    .line 60
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->mProviderValue:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;
    .registers 1

    .prologue
    .line 107
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    return-object v0
.end method


# virtual methods
.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .registers 2

    .prologue
    .line 68
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE_FOR_CAMERA_UI:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getIconId()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->mIconId:I

    return v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->mProviderValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->mTextId:I

    return v0
.end method
