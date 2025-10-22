.class public final enum Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;
.super Ljava/lang/Enum;
.source "AutoReviewSettingKey.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/settings/SettingKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;",
        ">;",
        "Lcom/sonyericsson/cameracommon/settings/SettingKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

.field public static final enum AUTO_REVIEW:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

.field public static final TAG:Ljava/lang/String; = "AutoReviewSettingKey"


# instance fields
.field private final mDefault:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;

.field private mTitleTextId:I

.field private mValues:[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    const-string v1, "AUTO_REVIEW"

    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_duration_title_txt:I

    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    .line 23
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;-><init>(Ljava/lang/String;IILcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    sget-object v1, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->$VALUES:[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;)V
    .registers 6
    .param p3, "titleTextId"    # I
    .param p4, "defaultValue"    # Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;
    .param p5, "values"    # [Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;",
            "[",
            "Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->mTitleTextId:I

    .line 48
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->mDefault:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;

    .line 49
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->mValues:[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->$VALUES:[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    return-object v0
.end method


# virtual methods
.method public getDefaultValue()Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->mDefault:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;

    return-object v0
.end method

.method public getDefaultValue(Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;)Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;
    .registers 3
    .param p1, "settingKey"    # Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->mDefault:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;

    return-object v0
.end method

.method public getIconId()I
    .registers 2

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getTextId()I
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getTitleId()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->mTitleTextId:I

    return v0
.end method

.method public getValues()[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingKey;->mValues:[Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/settings/AutoReviewSettingValue;

    return-object v0
.end method
