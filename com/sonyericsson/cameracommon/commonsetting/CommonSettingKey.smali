.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
.super Ljava/lang/Enum;
.source "CommonSettingKey.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/settings/SettingKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
        ">;",
        "Lcom/sonyericsson/cameracommon/settings/SettingKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum AUTO_REVIEW:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum AUTO_REVIEW_FOR_CAMERA_UI:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum FAST_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum FLASH:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum GRID_LINE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum HELP_GUIDE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum PHOTO_LIGHT:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum SOFTWARE_LICENSES:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final TAG:Ljava/lang/String; = "CommonSettingKey"

.field public static final enum TERM_OF_USE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum TOUCH_BLOCK:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum TOUCH_CAPTURE_FOR_CAMERA_UI:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

.field public static final enum VOLUME_KEY:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;


# instance fields
.field private mKey:Ljava/lang/String;

.field private mTitleTextId:I

.field private mValues:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v1, "FLASH"

    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_flash_txt:I

    const-string v4, "flash"

    .line 41
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->FLASH:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 42
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "PHOTO_LIGHT"

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_flash_torch_txt:I

    const-string v7, "photo_light"

    .line 45
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;

    move-result-object v8

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 46
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "AUTO_REVIEW"

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_preview_duration_title_txt:I

    const-string v7, "auto_review"

    .line 49
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    move-result-object v8

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 50
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "AUTO_REVIEW_FOR_CAMERA_UI"

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_photo_autoreview_txt:I

    const-string v7, "auto_review_for_camera_ui"

    .line 53
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

    move-result-object v8

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->AUTO_REVIEW_FOR_CAMERA_UI:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 54
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "GEO_TAG"

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_geotagging_title_txt:I

    const-string v7, "geo_tag"

    .line 57
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    move-result-object v8

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 58
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "FAST_CAPTURE"

    const/4 v5, 0x5

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_fast_capturing_title_txt:I

    const-string v7, "fast-capture"

    new-array v8, v12, [Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    aput-object v0, v8, v2

    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    aput-object v0, v8, v9

    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    aput-object v0, v8, v10

    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    aput-object v0, v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 67
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "TOUCH_CAPTURE"

    const/4 v5, 0x6

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_touch_capturing_title_txt:I

    const-string v7, "touch_capture"

    .line 70
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 71
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "TOUCH_CAPTURE_FOR_CAMERA_UI"

    const/4 v5, 0x7

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_touch_capturing_title_txt:I

    const-string v7, "touch_capture_for_camera_ui"

    .line 74
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE_FOR_CAMERA_UI:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 75
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "SHUTTER_SOUND"

    const/16 v5, 0x8

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_camera_sound_txt:I

    const-string v7, "shutter_sound"

    .line 78
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 79
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "SAVE_DESTINATION"

    const/16 v5, 0x9

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_save_destination_title_txt:I

    const-string v7, "storage"

    .line 82
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 83
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "VOLUME_KEY"

    const/16 v5, 0xa

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_volumekey_txt:I

    const-string v7, "volume_key"

    .line 86
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->VOLUME_KEY:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 87
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "TERM_OF_USE"

    const/16 v5, 0xb

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_term_of_use_title_txt:I

    const-string v7, "term_of_use"

    new-array v8, v2, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TERM_OF_USE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 92
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "SOFTWARE_LICENSES"

    const/16 v5, 0xc

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_sw_licence_title_txt:I

    const-string v7, "software_licenses"

    new-array v8, v2, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SOFTWARE_LICENSES:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 97
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "TOUCH_BLOCK"

    const/16 v5, 0xd

    const/4 v6, -0x1

    const-string v7, "touch_block"

    new-array v8, v2, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_BLOCK:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 102
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG"

    const/16 v5, 0xe

    const/4 v6, -0x1

    const-string v7, "do_not_show_again_check_for_geotag_dialog_value"

    .line 105
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/DoNotShowAgainCheckForGeotagDialog;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/DoNotShowAgainCheckForGeotagDialog;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 106
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "GRID_LINE"

    const/16 v5, 0xf

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_gridline_txt:I

    const-string v7, "grid_line"

    .line 109
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GRID_LINE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 110
    new-instance v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const-string v4, "HELP_GUIDE"

    const/16 v5, 0x10

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_help_txt:I

    const-string v7, "help_guide"

    new-array v8, v2, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;-><init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->HELP_GUIDE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 37
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->FLASH:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->AUTO_REVIEW_FOR_CAMERA_UI:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE_FOR_CAMERA_UI:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->VOLUME_KEY:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TERM_OF_USE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SOFTWARE_LICENSES:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_BLOCK:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GRID_LINE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->HELP_GUIDE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .registers 6
    .param p3, "titleTextId"    # I
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "values"    # [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->mTitleTextId:I

    .line 137
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->mKey:Ljava/lang/String;

    .line 138
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->mValues:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .line 139
    return-void
.end method

.method public static fromKey(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .registers 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->values()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_16

    aget-object v0, v2, v1

    .line 212
    .local v0, "setting":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    iget-object v4, v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->mKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 216
    .end local v0    # "setting":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :goto_12
    return-object v0

    .line 211
    .restart local v0    # "setting":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 216
    .end local v0    # "setting":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static fromValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .registers 8
    .param p0, "settingKey"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->getValues()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_20

    aget-object v0, v2, v1

    .line 230
    .local v0, "settingValue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 234
    .end local v0    # "settingValue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :goto_1c
    return-object v0

    .line 229
    .restart local v0    # "settingValue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 234
    .end local v0    # "settingValue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_20
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static getValueFromProviderString(Ljava/lang/String;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Ljava/lang/String;
    .registers 7
    .param p0, "providerValue"    # Ljava/lang/String;
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->getValues()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_1c

    aget-object v0, v2, v1

    .line 239
    .local v0, "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getProviderValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .end local v0    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :goto_18
    return-object v1

    .line 238
    .restart local v0    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 243
    .end local v0    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_1c
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method


# virtual methods
.method public getIconId()I
    .registers 2

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 164
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 158
    :pswitch_d
    const-string v0, "com.sonymobile.touchblocker"

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 156
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method public getTitleId()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->mTitleTextId:I

    return v0
.end method

.method public getValues()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->mValues:[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    return-object v0
.end method
