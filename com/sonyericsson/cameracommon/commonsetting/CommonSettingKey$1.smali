.class synthetic Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey$1;
.super Ljava/lang/Object;
.source "CommonSettingKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 156
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->values()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    :try_start_9
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_BLOCK:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
