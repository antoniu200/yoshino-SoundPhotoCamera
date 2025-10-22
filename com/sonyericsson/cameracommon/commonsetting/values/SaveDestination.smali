.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
.super Ljava/lang/Enum;
.source "SaveDestination.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;",
        ">;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

.field public static final enum EMMC:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

.field public static final enum SDCARD:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

.field public static final TAG:Ljava/lang/String; = "SaveDestination"

.field private static sParameterTextId:I

.field private static sPrimaryStorage:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;


# instance fields
.field private final mCompatibleValue:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

.field private mIconId:I

.field private final mProviderValue:Ljava/lang/String;

.field private mTextId:I

.field private final mType:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 33
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    const-string v1, "EMMC"

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_save_destination_ims_txt:I

    const-string v6, "emmc"

    sget-object v7, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->EMMC:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    .line 39
    new-instance v6, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    const-string v7, "SDCARD"

    sget v10, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_save_destination_sd_txt:I

    const-string v12, "sdcard"

    sget-object v13, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move v9, v3

    move-object v11, v5

    invoke-direct/range {v6 .. v13}, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V

    sput-object v6, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->SDCARD:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->EMMC:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->SDCARD:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    aput-object v1, v0, v8

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    .line 50
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_save_destination_txt:I

    sput v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->sParameterTextId:I

    .line 143
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->EMMC:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->sPrimaryStorage:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V
    .registers 8
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "compatibleValue"    # Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    .param p6, "providerValue"    # Ljava/lang/String;
    .param p7, "type"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mIconId:I

    .line 78
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mTextId:I

    .line 79
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mCompatibleValue:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    .line 80
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mProviderValue:Ljava/lang/String;

    .line 81
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mType:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 82
    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    .registers 1

    .prologue
    .line 175
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->EMMC:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    return-object v0
.end method

.method public static getOptions(Landroid/content/Context;)Ljava/util/List;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v0, "options":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;>;"
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getMountableStorageTypes(Landroid/content/Context;)[Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_c
    if-ge v5, v7, :cond_28

    aget-object v1, v6, v5

    .line 157
    .local v1, "type":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    move-result-object v8

    array-length v9, v8

    move v3, v4

    :goto_16
    if-ge v3, v9, :cond_21

    aget-object v2, v8, v3

    .line 158
    .local v2, "value":Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    iget-object v10, v2, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mType:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    if-ne v1, v10, :cond_25

    .line 159
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v2    # "value":Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    :cond_21
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_c

    .line 157
    .restart local v2    # "value":Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 166
    .end local v1    # "type":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .end local v2    # "value":Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    :cond_28
    return-object v0
.end method

.method public static getPrimaryStorage()Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    .registers 1

    .prologue
    .line 151
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->sPrimaryStorage:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    return-object v0
.end method


# virtual methods
.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .registers 2

    .prologue
    .line 89
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getIconId()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mIconId:I

    return v0
.end method

.method public getParameterKeyTextId()I
    .registers 2

    .prologue
    .line 139
    sget v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->sParameterTextId:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mProviderValue:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageType()Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mType:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mTextId:I

    return v0
.end method

.method public isCompatibleValue()Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mCompatibleValue:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    return-object v0
.end method
