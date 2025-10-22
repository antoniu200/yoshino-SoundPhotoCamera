.class synthetic Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver$1;
.super Ljava/lang/Object;
.source "ModeSettingItemResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$CapturingMode:[I

.field static final synthetic $SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$Parameters:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 136
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver$1;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$Parameters:[I

    :try_start_9
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver$1;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$Parameters:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->FLASH:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_45

    :goto_14
    :try_start_14
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver$1;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$Parameters:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->SELF_TIMER:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_43

    .line 55
    :goto_1f
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver$1;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$CapturingMode:[I

    :try_start_28
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver$1;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$CapturingMode:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->MAIN:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_41

    :goto_33
    :try_start_33
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver$1;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$CapturingMode:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->FRONT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3f

    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    goto :goto_3e

    :catch_41
    move-exception v0

    goto :goto_33

    .line 136
    :catch_43
    move-exception v0

    goto :goto_1f

    :catch_45
    move-exception v0

    goto :goto_14
.end method
