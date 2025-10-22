.class synthetic Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceFactory$1;
.super Ljava/lang/Object;
.source "SettingPreferenceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$CapturingMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 21
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceFactory$1;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$CapturingMode:[I

    :try_start_9
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceFactory$1;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$CapturingMode:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->MAIN:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceFactory$1;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$CapturingMode:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->FRONT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
