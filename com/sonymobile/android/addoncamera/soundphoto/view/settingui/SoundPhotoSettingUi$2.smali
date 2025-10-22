.class synthetic Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$2;
.super Ljava/lang/Object;
.source "SoundPhotoSettingUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

.field static final synthetic $SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$settingui$SoundPhotoSettingUi$Shortcut:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 203
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$2;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$settingui$SoundPhotoSettingUi$Shortcut:[I

    :try_start_9
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$2;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$settingui$SoundPhotoSettingUi$Shortcut:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_79

    :goto_14
    :try_start_14
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$2;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$settingui$SoundPhotoSettingUi$Shortcut:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Flash:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_77

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$2;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$settingui$SoundPhotoSettingUi$Shortcut:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->SelfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_75

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$2;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$settingui$SoundPhotoSettingUi$Shortcut:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Menu:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_73

    :goto_35
    :try_start_35
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$2;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$settingui$SoundPhotoSettingUi$Shortcut:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->Facing:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_71

    .line 121
    :goto_40
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->values()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    :try_start_49
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_6f

    :goto_54
    :try_start_54
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_6d

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_6b

    :goto_6a
    return-void

    :catch_6b
    move-exception v0

    goto :goto_6a

    :catch_6d
    move-exception v0

    goto :goto_5f

    :catch_6f
    move-exception v0

    goto :goto_54

    .line 203
    :catch_71
    move-exception v0

    goto :goto_40

    :catch_73
    move-exception v0

    goto :goto_35

    :catch_75
    move-exception v0

    goto :goto_2a

    :catch_77
    move-exception v0

    goto :goto_1f

    :catch_79
    move-exception v0

    goto :goto_14
.end method
