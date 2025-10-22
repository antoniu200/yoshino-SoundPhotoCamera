.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;
.super Ljava/lang/Enum;
.source "AutoReviewForCameraUi.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;",
        ">;",
        "Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

.field public static final enum ALWAYS:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

.field public static final enum FRONT_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

.field public static final TAG:Ljava/lang/String; = "AutoReviewForCameraUi"

.field private static final sParameterTextId:I


# instance fields
.field private final mDuration:I

.field private final mIconId:I

.field private final mProviderValue:Ljava/lang/String;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 23
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    const/4 v3, -0x1

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_always_txt:I

    const/16 v5, 0xbb8

    const-string v6, "always"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->ALWAYS:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

    .line 28
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

    const-string v1, "FRONT_ONLY"

    const/4 v2, 0x1

    const/4 v3, -0x1

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_only_front_txt:I

    const/16 v5, 0xbb8

    const-string v6, "front_only"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->FRONT_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

    .line 33
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

    const-string v1, "OFF"

    const/4 v2, 0x2

    const/4 v3, -0x1

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_off_txt:I

    const/4 v5, 0x0

    const-string v6, "off"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->ALWAYS:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->FRONT_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

    .line 43
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_duration_txt:I

    sput v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->sParameterTextId:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILjava/lang/String;)V
    .registers 7
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "duration"    # I
    .param p6, "providerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->mIconId:I

    .line 65
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->mTextId:I

    .line 66
    iput p5, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->mDuration:I

    .line 67
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->mProviderValue:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

    return-object v0
.end method


# virtual methods
.method public getAutoReviewSettingKey()Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;
    .registers 2

    .prologue
    .line 72
    sget-object v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    return-object v0
.end method

.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .registers 2

    .prologue
    .line 114
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->AUTO_REVIEW_FOR_CAMERA_UI:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->mDuration:I

    return v0
.end method

.method public getIconId()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->mIconId:I

    return v0
.end method

.method public getParameterKeyTextId()I
    .registers 2

    .prologue
    .line 76
    sget v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->sParameterTextId:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->mProviderValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->mTextId:I

    return v0
.end method
