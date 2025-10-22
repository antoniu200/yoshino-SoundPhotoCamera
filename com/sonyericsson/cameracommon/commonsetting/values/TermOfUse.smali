.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;
.super Ljava/lang/Enum;
.source "TermOfUse.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;",
        ">;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

.field public static final enum NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

.field public static final TAG:Ljava/lang/String; = "TermOfUse"


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 16
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    const-string v1, "NO_VALUE"

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->mIconId:I

    .line 31
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->mTextId:I

    .line 32
    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    return-object v0
.end method


# virtual methods
.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TERM_OF_USE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getIconId()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->mIconId:I

    return v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->mTextId:I

    return v0
.end method
