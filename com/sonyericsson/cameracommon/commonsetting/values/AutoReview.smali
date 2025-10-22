.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;
.super Ljava/lang/Enum;
.source "AutoReview.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;",
        ">;",
        "Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

.field public static final enum EDIT:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

.field public static final enum LONG:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

.field public static final enum SHORT:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

.field public static final TAG:Ljava/lang/String; = "AutoReview"

.field public static final enum UNLIMITED:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

.field private static final sParameterTextId:I


# instance fields
.field private final mDuration:I

.field private final mIconId:I

.field private final mProviderValue:Ljava/lang/String;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 23
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    const-string v1, "UNLIMITED"

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_duration_unlimited_txt:I

    const-string v6, "unlimited"

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->UNLIMITED:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    .line 28
    new-instance v4, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    const-string v5, "LONG"

    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_duration_5sec_txt:I

    const/16 v9, 0x1388

    const-string v10, "long"

    move v6, v11

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->LONG:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    .line 33
    new-instance v4, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    const-string v5, "SHORT"

    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_duration_3sec_txt:I

    const/16 v9, 0xbb8

    const-string v10, "short"

    move v6, v12

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->SHORT:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    .line 38
    new-instance v4, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    const-string v5, "EDIT"

    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_edit_txt:I

    const-string v10, "edit"

    move v6, v13

    move v7, v3

    move v9, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->EDIT:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    .line 43
    new-instance v4, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    const-string v5, "OFF"

    const/4 v6, 0x4

    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_off_txt:I

    const-string v10, "off"

    move v7, v3

    move v9, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->UNLIMITED:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->LONG:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->SHORT:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->EDIT:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    aput-object v1, v0, v13

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    .line 53
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_duration_txt:I

    sput v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->sParameterTextId:I

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->mIconId:I

    .line 75
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->mTextId:I

    .line 76
    iput p5, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->mDuration:I

    .line 77
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->mProviderValue:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;
    .registers 1

    .prologue
    .line 138
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    return-object v0
.end method


# virtual methods
.method public getAutoReviewSettingKey()Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;
    .registers 2

    .prologue
    .line 82
    sget-object v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    return-object v0
.end method

.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .registers 2

    .prologue
    .line 124
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->mDuration:I

    return v0
.end method

.method public getIconId()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->mIconId:I

    return v0
.end method

.method public getParameterKeyTextId()I
    .registers 2

    .prologue
    .line 86
    sget v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->sParameterTextId:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->mProviderValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->mTextId:I

    return v0
.end method
