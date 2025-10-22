.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;
.super Ljava/lang/Enum;
.source "CommonSettingDefaultLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Record"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

.field public static final enum DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

.field public static final enum FAST_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

.field public static final enum GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

.field public static final enum SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

.field public static final enum SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

.field public static final enum TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

.field public static final enum VOLUME_KEY:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;


# instance fields
.field public final mProviderKey:Ljava/lang/String;

.field public final mProviderValueResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 50
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    const-string v1, "GEO_TAG"

    const-string v2, "geo_tag"

    sget v3, Lcom/sonyericsson/cameracommon/R$string;->commonsetting_default_geo_tag:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    .line 53
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    const-string v1, "FAST_CAPTURE"

    const-string v2, "fast-capture"

    sget v3, Lcom/sonyericsson/cameracommon/R$string;->commonsetting_default_fast_capture:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->FAST_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    .line 56
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    const-string v1, "TOUCH_CAPTURE"

    const-string v2, "touch_capture"

    sget v3, Lcom/sonyericsson/cameracommon/R$string;->commonsetting_default_touch_capture:I

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    .line 59
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    const-string v1, "SHUTTER_SOUND"

    const-string v2, "shutter_sound"

    sget v3, Lcom/sonyericsson/cameracommon/R$string;->commonsetting_default_shutter_sound:I

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    .line 62
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    const-string v1, "SAVE_DESTINATION"

    const-string v2, "storage"

    sget v3, Lcom/sonyericsson/cameracommon/R$string;->commonsetting_default_storage:I

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    .line 65
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    const-string v1, "VOLUME_KEY"

    const/4 v2, 0x5

    const-string v3, "volume_key"

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->commonsetting_default_volume_key:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->VOLUME_KEY:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    .line 74
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    const-string v1, "DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG"

    const/4 v2, 0x6

    const-string v3, "do_not_show_again_check_for_geotag_dialog_value"

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->commonsetting_default_do_not_show_again_check_for_geotag_dialog:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->FAST_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->VOLUME_KEY:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .param p3, "providerKey"    # Ljava/lang/String;
    .param p4, "providerValueResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->mProviderKey:Ljava/lang/String;

    .line 93
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->mProviderValueResId:I

    .line 94
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    return-object v0
.end method
