.class synthetic Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;
.super Ljava/lang/Object;
.source "ViewFinderVisuals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

.field static final synthetic $SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$parameters$SelfTimer:[I

.field static final synthetic $SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$UiComponentKind:[I

.field static final synthetic $SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 2443
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$parameters$SelfTimer:[I

    :try_start_9
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$parameters$SelfTimer:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->LONG:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_389

    :goto_14
    :try_start_14
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$parameters$SelfTimer:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->SHORT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_386

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$parameters$SelfTimer:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_383

    .line 1221
    :goto_2a
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    :try_start_33
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_380

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_RESIZE_EVF_SCOPE:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_37d

    :goto_49
    :try_start_49
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_HIDE_SURFACE:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_37a

    :goto_54
    :try_start_54
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_SURFACE:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_377

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_HIDE_REMAIN_INDICATOR:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_374

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_REMAIN_INDICATOR:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_371

    :goto_75
    :try_start_75
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_PREPARE_RECORDING_INDICATOR:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_36e

    :goto_80
    :try_start_80
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_CAMERA_MODE_CHANGED_TO:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8c} :catch_36b

    :goto_8c
    :try_start_8c
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_98} :catch_368

    :goto_98
    :try_start_98
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_a4} :catch_365

    :goto_a4
    :try_start_a4
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_SELECTED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_b0} :catch_362

    :goto_b0
    :try_start_b0
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_bc} :catch_35f

    :goto_bc
    :try_start_bc
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_c8} :catch_35c

    :goto_c8
    :try_start_c8
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_AF_CANCELED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8 .. :try_end_d4} :catch_359

    :goto_d4
    :try_start_d4
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_UPDATE_DIALOGS:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_e0} :catch_356

    :goto_e0
    :try_start_e0
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_CLOSE_ENTIRE_HIERARCHY_DIALOGS:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e0 .. :try_end_ec} :catch_353

    :goto_ec
    :try_start_ec
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_CLOSE_CURRENT_DIALOGS:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ec .. :try_end_f8} :catch_350

    :goto_f8
    :try_start_f8
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_AUTO_REVIEW:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_104
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f8 .. :try_end_104} :catch_34d

    :goto_104
    :try_start_104
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_INSTANT_VIEWER:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_110
    .catch Ljava/lang/NoSuchFieldError; {:try_start_104 .. :try_end_110} :catch_34a

    :goto_110
    :try_start_110
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_HIGHLIGHT_CAPTURED_SOUND_LEVEL:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_11c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_110 .. :try_end_11c} :catch_347

    :goto_11c
    :try_start_11c
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_CAPTURE_DONE_TO_SOUND_LEVEL_INDICATOR:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_128
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11c .. :try_end_128} :catch_344

    :goto_128
    :try_start_128
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_134
    .catch Ljava/lang/NoSuchFieldError; {:try_start_128 .. :try_end_134} :catch_341

    :goto_134
    :try_start_134
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SET_EARLY_THUMBNAIL:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_140
    .catch Ljava/lang/NoSuchFieldError; {:try_start_134 .. :try_end_140} :catch_33e

    :goto_140
    :try_start_140
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_REMOVE_EARLY_THUMBNAIL:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_14c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_140 .. :try_end_14c} :catch_33b

    :goto_14c
    :try_start_14c
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_158
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14c .. :try_end_158} :catch_338

    :goto_158
    :try_start_158
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_164
    .catch Ljava/lang/NoSuchFieldError; {:try_start_158 .. :try_end_164} :catch_335

    :goto_164
    :try_start_164
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_RECORD_PROGRESS_UPDATED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_170
    .catch Ljava/lang/NoSuchFieldError; {:try_start_164 .. :try_end_170} :catch_332

    :goto_170
    :try_start_170
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CLEAR_INDICATOR_PROGRESS:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_17c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_170 .. :try_end_17c} :catch_32f

    :goto_17c
    :try_start_17c
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_SOUND_CAPTURE_COMPLETED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_188
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17c .. :try_end_188} :catch_32c

    :goto_188
    :try_start_188
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_194
    .catch Ljava/lang/NoSuchFieldError; {:try_start_188 .. :try_end_194} :catch_329

    :goto_194
    :try_start_194
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_NORMAL:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_194 .. :try_end_1a0} :catch_326

    :goto_1a0
    :try_start_1a0
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_WARNING:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a0 .. :try_end_1ac} :catch_323

    :goto_1ac
    :try_start_1ac
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_SELFTIMER_FINISH:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ac .. :try_end_1b8} :catch_320

    :goto_1b8
    :try_start_1b8
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_RESTORE_NAVIGATION_BAR_PREVIOUS_VISIBILITY:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b8 .. :try_end_1c4} :catch_31d

    :goto_1c4
    :try_start_1c4
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_CHANGE_INTERNAL_STORAGE_MESSAGE:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$ViewUpdateEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c4 .. :try_end_1d0} :catch_31a

    .line 1159
    :goto_1d0
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$UiComponentKind:[I

    :try_start_1d9
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$UiComponentKind:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d9 .. :try_end_1e4} :catch_317

    :goto_1e4
    :try_start_1e4
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$SoundPhotoViewFinder$UiComponentKind:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder$UiComponentKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e4 .. :try_end_1ef} :catch_314

    .line 872
    :goto_1ef
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    :try_start_1f8
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_203
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f8 .. :try_end_203} :catch_311

    :goto_203
    :try_start_203
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_203 .. :try_end_20e} :catch_30e

    :goto_20e
    :try_start_20e
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_219
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20e .. :try_end_219} :catch_30b

    :goto_219
    :try_start_219
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_STANDBY:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_224
    .catch Ljava/lang/NoSuchFieldError; {:try_start_219 .. :try_end_224} :catch_308

    :goto_224
    :try_start_224
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_22f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_224 .. :try_end_22f} :catch_305

    :goto_22f
    :try_start_22f
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING_IN_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_23a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22f .. :try_end_23a} :catch_302

    :goto_23a
    :try_start_23a
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_STANDBY_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_245
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23a .. :try_end_245} :catch_2ff

    :goto_245
    :try_start_245
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_251
    .catch Ljava/lang/NoSuchFieldError; {:try_start_245 .. :try_end_251} :catch_2fc

    :goto_251
    :try_start_251
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH_IN_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_25d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_251 .. :try_end_25d} :catch_2f9

    :goto_25d
    :try_start_25d
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH_IN_TOUCH_DRAGGING_FOCUS_POSITION:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_269
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25d .. :try_end_269} :catch_2f6

    :goto_269
    :try_start_269
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_275
    .catch Ljava/lang/NoSuchFieldError; {:try_start_269 .. :try_end_275} :catch_2f4

    :goto_275
    :try_start_275
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE_IN_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_281
    .catch Ljava/lang/NoSuchFieldError; {:try_start_275 .. :try_end_281} :catch_2f2

    :goto_281
    :try_start_281
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_28d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_281 .. :try_end_28d} :catch_2f0

    :goto_28d
    :try_start_28d
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_299
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28d .. :try_end_299} :catch_2ee

    :goto_299
    :try_start_299
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_SELFTIMER_COUNTDOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_2a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_299 .. :try_end_2a5} :catch_2ec

    :goto_2a5
    :try_start_2a5
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_STORE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_2b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a5 .. :try_end_2b1} :catch_2ea

    :goto_2b1
    :try_start_2b1
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_2bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b1 .. :try_end_2bd} :catch_2e8

    :goto_2bd
    :try_start_2bd
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_2c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2bd .. :try_end_2c9} :catch_2e6

    :goto_2c9
    :try_start_2c9
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_2d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c9 .. :try_end_2d5} :catch_2e4

    :goto_2d5
    :try_start_2d5
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_2e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d5 .. :try_end_2e1} :catch_2e2

    :goto_2e1
    return-void

    :catch_2e2
    move-exception v0

    goto :goto_2e1

    :catch_2e4
    move-exception v0

    goto :goto_2d5

    :catch_2e6
    move-exception v0

    goto :goto_2c9

    :catch_2e8
    move-exception v0

    goto :goto_2bd

    :catch_2ea
    move-exception v0

    goto :goto_2b1

    :catch_2ec
    move-exception v0

    goto :goto_2a5

    :catch_2ee
    move-exception v0

    goto :goto_299

    :catch_2f0
    move-exception v0

    goto :goto_28d

    :catch_2f2
    move-exception v0

    goto :goto_281

    :catch_2f4
    move-exception v0

    goto :goto_275

    :catch_2f6
    move-exception v0

    goto/16 :goto_269

    :catch_2f9
    move-exception v0

    goto/16 :goto_25d

    :catch_2fc
    move-exception v0

    goto/16 :goto_251

    :catch_2ff
    move-exception v0

    goto/16 :goto_245

    :catch_302
    move-exception v0

    goto/16 :goto_23a

    :catch_305
    move-exception v0

    goto/16 :goto_22f

    :catch_308
    move-exception v0

    goto/16 :goto_224

    :catch_30b
    move-exception v0

    goto/16 :goto_219

    :catch_30e
    move-exception v0

    goto/16 :goto_20e

    :catch_311
    move-exception v0

    goto/16 :goto_203

    .line 1159
    :catch_314
    move-exception v0

    goto/16 :goto_1ef

    :catch_317
    move-exception v0

    goto/16 :goto_1e4

    .line 1221
    :catch_31a
    move-exception v0

    goto/16 :goto_1d0

    :catch_31d
    move-exception v0

    goto/16 :goto_1c4

    :catch_320
    move-exception v0

    goto/16 :goto_1b8

    :catch_323
    move-exception v0

    goto/16 :goto_1ac

    :catch_326
    move-exception v0

    goto/16 :goto_1a0

    :catch_329
    move-exception v0

    goto/16 :goto_194

    :catch_32c
    move-exception v0

    goto/16 :goto_188

    :catch_32f
    move-exception v0

    goto/16 :goto_17c

    :catch_332
    move-exception v0

    goto/16 :goto_170

    :catch_335
    move-exception v0

    goto/16 :goto_164

    :catch_338
    move-exception v0

    goto/16 :goto_158

    :catch_33b
    move-exception v0

    goto/16 :goto_14c

    :catch_33e
    move-exception v0

    goto/16 :goto_140

    :catch_341
    move-exception v0

    goto/16 :goto_134

    :catch_344
    move-exception v0

    goto/16 :goto_128

    :catch_347
    move-exception v0

    goto/16 :goto_11c

    :catch_34a
    move-exception v0

    goto/16 :goto_110

    :catch_34d
    move-exception v0

    goto/16 :goto_104

    :catch_350
    move-exception v0

    goto/16 :goto_f8

    :catch_353
    move-exception v0

    goto/16 :goto_ec

    :catch_356
    move-exception v0

    goto/16 :goto_e0

    :catch_359
    move-exception v0

    goto/16 :goto_d4

    :catch_35c
    move-exception v0

    goto/16 :goto_c8

    :catch_35f
    move-exception v0

    goto/16 :goto_bc

    :catch_362
    move-exception v0

    goto/16 :goto_b0

    :catch_365
    move-exception v0

    goto/16 :goto_a4

    :catch_368
    move-exception v0

    goto/16 :goto_98

    :catch_36b
    move-exception v0

    goto/16 :goto_8c

    :catch_36e
    move-exception v0

    goto/16 :goto_80

    :catch_371
    move-exception v0

    goto/16 :goto_75

    :catch_374
    move-exception v0

    goto/16 :goto_6a

    :catch_377
    move-exception v0

    goto/16 :goto_5f

    :catch_37a
    move-exception v0

    goto/16 :goto_54

    :catch_37d
    move-exception v0

    goto/16 :goto_49

    :catch_380
    move-exception v0

    goto/16 :goto_3e

    .line 2443
    :catch_383
    move-exception v0

    goto/16 :goto_2a

    :catch_386
    move-exception v0

    goto/16 :goto_1f

    :catch_389
    move-exception v0

    goto/16 :goto_14
.end method
