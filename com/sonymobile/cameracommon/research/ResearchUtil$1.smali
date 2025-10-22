.class synthetic Lcom/sonymobile/cameracommon/research/ResearchUtil$1;
.super Ljava/lang/Object;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LaunchedBy:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

.field static final synthetic $SwitchMap$com$sonymobile$cameracommon$research$ResearchUtil$VideoSize:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 871
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->values()[Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$ResearchUtil$VideoSize:[I

    :try_start_9
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$ResearchUtil$VideoSize:[I

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FOUR_K_UHD:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_12c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$ResearchUtil$VideoSize:[I

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FULL_HD:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_129

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$ResearchUtil$VideoSize:[I

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FULL_HD_60FPS:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_126

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$ResearchUtil$VideoSize:[I

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->HD:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_123

    :goto_35
    :try_start_35
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$ResearchUtil$VideoSize:[I

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->VGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_120

    :goto_40
    :try_start_40
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$ResearchUtil$VideoSize:[I

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FWVGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_11d

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$ResearchUtil$VideoSize:[I

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->QVGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_11a

    :goto_56
    :try_start_56
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$ResearchUtil$VideoSize:[I

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->MMS:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_117

    .line 658
    :goto_62
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->values()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    :try_start_6b
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->AUTO_REVIEW_FOR_CAMERA_UI:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_76} :catch_114

    :goto_76
    :try_start_76
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_81} :catch_111

    :goto_81
    :try_start_81
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8c} :catch_10e

    :goto_8c
    :try_start_8c
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE_FOR_CAMERA_UI:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_97} :catch_10c

    :goto_97
    :try_start_97
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->VOLUME_KEY:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a2} :catch_10a

    :goto_a2
    :try_start_a2
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_ad} :catch_108

    :goto_ad
    :try_start_ad
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b8} :catch_106

    :goto_b8
    :try_start_b8
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_c4} :catch_104

    :goto_c4
    :try_start_c4
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GRID_LINE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_d0} :catch_102

    :goto_d0
    :try_start_d0
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->HELP_GUIDE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d0 .. :try_end_dc} :catch_100

    .line 413
    :goto_dc
    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->values()[Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LaunchedBy:[I

    :try_start_e5
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LaunchedBy:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e5 .. :try_end_f0} :catch_fe

    :goto_f0
    :try_start_f0
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LaunchedBy:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->VIEWER:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fb} :catch_fc

    :goto_fb
    return-void

    :catch_fc
    move-exception v0

    goto :goto_fb

    :catch_fe
    move-exception v0

    goto :goto_f0

    .line 658
    :catch_100
    move-exception v0

    goto :goto_dc

    :catch_102
    move-exception v0

    goto :goto_d0

    :catch_104
    move-exception v0

    goto :goto_c4

    :catch_106
    move-exception v0

    goto :goto_b8

    :catch_108
    move-exception v0

    goto :goto_ad

    :catch_10a
    move-exception v0

    goto :goto_a2

    :catch_10c
    move-exception v0

    goto :goto_97

    :catch_10e
    move-exception v0

    goto/16 :goto_8c

    :catch_111
    move-exception v0

    goto/16 :goto_81

    :catch_114
    move-exception v0

    goto/16 :goto_76

    .line 871
    :catch_117
    move-exception v0

    goto/16 :goto_62

    :catch_11a
    move-exception v0

    goto/16 :goto_56

    :catch_11d
    move-exception v0

    goto/16 :goto_4b

    :catch_120
    move-exception v0

    goto/16 :goto_40

    :catch_123
    move-exception v0

    goto/16 :goto_35

    :catch_126
    move-exception v0

    goto/16 :goto_2a

    :catch_129
    move-exception v0

    goto/16 :goto_1f

    :catch_12c
    move-exception v0

    goto/16 :goto_14
.end method
