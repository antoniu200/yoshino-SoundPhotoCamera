.class synthetic Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;
.super Ljava/lang/Object;
.source "StateMachineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$ErrorCode:[I

.field static final synthetic $SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$StaticEvent:[I

.field static final synthetic $SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

.field static final synthetic $SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$CapturingMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 2849
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$CapturingMode:[I

    :try_start_9
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$CapturingMode:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->FRONT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_35e

    :goto_14
    :try_start_14
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$CapturingMode:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->MAIN:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_35b

    .line 2537
    :goto_1f
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$ErrorCode;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$ErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$ErrorCode:[I

    :try_start_28
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$ErrorCode:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$ErrorCode;->ERROR_ON_START_PREVIEW:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$ErrorCode;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$ErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_358

    .line 2212
    :goto_33
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$StaticEvent:[I

    :try_start_3c
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$StaticEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_47} :catch_355

    :goto_47
    :try_start_47
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$StaticEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_52} :catch_352

    :goto_52
    :try_start_52
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$StaticEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5d} :catch_34f

    :goto_5d
    :try_start_5d
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$StaticEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_68} :catch_34c

    :goto_68
    :try_start_68
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$StaticEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_73} :catch_349

    :goto_73
    :try_start_73
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$StaticEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_RECORD_PROGRESS_UPDATED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7e} :catch_346

    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$StaticEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_SETTING_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_343

    :goto_89
    :try_start_89
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$StaticEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_95} :catch_340

    :goto_95
    :try_start_95
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$StaticEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_DEVICE_ERROR:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_a1} :catch_33d

    .line 2017
    :goto_a1
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    :try_start_aa
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_INITIALIZE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b5} :catch_33a

    :goto_b5
    :try_start_b5
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_RESUME:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_c0} :catch_337

    :goto_c0
    :try_start_c0
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_RESUME_TIMEOUT:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cb} :catch_334

    :goto_cb
    :try_start_cb
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d6} :catch_331

    :goto_d6
    :try_start_d6
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_FINALIZE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d6 .. :try_end_e1} :catch_32e

    :goto_e1
    :try_start_e1
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_EVF_PREPARED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_ec} :catch_32b

    :goto_ec
    :try_start_ec
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_EVF_PREPARATION_FAILED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ec .. :try_end_f7} :catch_328

    :goto_f7
    :try_start_f7
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_AUTO_FOCUS_DONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_103
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_103} :catch_325

    :goto_103
    :try_start_103
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_SHUTTER_DONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_10f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_103 .. :try_end_10f} :catch_322

    :goto_10f
    :try_start_10f
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_TAKE_PICTURE_DONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_11b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10f .. :try_end_11b} :catch_31f

    :goto_11b
    :try_start_11b
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_TOUCH_CONTENT_PROGRESS_BAR:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_127
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11b .. :try_end_127} :catch_31c

    :goto_127
    :try_start_127
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_REQUESTED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_127 .. :try_end_133} :catch_319

    :goto_133
    :try_start_133
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_13f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_133 .. :try_end_13f} :catch_316

    :goto_13f
    :try_start_13f
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_SOUND_CAPTURE_COMPLETED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_14b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13f .. :try_end_14b} :catch_313

    :goto_14b
    :try_start_14b
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_RESET_CAPTURED_AUDIO_SAMPLE_DATA:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_157
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14b .. :try_end_157} :catch_310

    :goto_157
    :try_start_157
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_DOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_163
    .catch Ljava/lang/NoSuchFieldError; {:try_start_157 .. :try_end_163} :catch_30d

    :goto_163
    :try_start_163
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_UP:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_16f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_163 .. :try_end_16f} :catch_30a

    :goto_16f
    :try_start_16f
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_DOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_17b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16f .. :try_end_17b} :catch_307

    :goto_17b
    :try_start_17b
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_UP:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_187
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17b .. :try_end_187} :catch_304

    :goto_187
    :try_start_187
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_ZOOM_IN_DOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_193
    .catch Ljava/lang/NoSuchFieldError; {:try_start_187 .. :try_end_193} :catch_301

    :goto_193
    :try_start_193
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_ZOOM_OUT_DOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_19f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_193 .. :try_end_19f} :catch_2fe

    :goto_19f
    :try_start_19f
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_ZOOM_UP:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_1ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19f .. :try_end_1ab} :catch_2fb

    :goto_1ab
    :try_start_1ab
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_MENU:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_1b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ab .. :try_end_1b7} :catch_2f8

    :goto_1b7
    :try_start_1b7
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_KEY_BACK:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_1c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b7 .. :try_end_1c3} :catch_2f5

    :goto_1c3
    :try_start_1c3
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_PREPARE_TOUCH_ZOOM:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_1cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c3 .. :try_end_1cf} :catch_2f2

    :goto_1cf
    :try_start_1cf
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_PREPARE_TOUCH_ZOOM_TIMEOUTED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1cf .. :try_end_1db} :catch_2ef

    :goto_1db
    :try_start_1db
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_START_TOUCH_ZOOM:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1db .. :try_end_1e7} :catch_2ec

    :goto_1e7
    :try_start_1e7
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_STOP_TOUCH_ZOOM:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e7 .. :try_end_1f3} :catch_2e9

    :goto_1f3
    :try_start_1f3
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_CANCEL_TOUCH_ZOOM:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f3 .. :try_end_1ff} :catch_2e6

    :goto_1ff
    :try_start_1ff
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_20b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ff .. :try_end_20b} :catch_2e3

    :goto_20b
    :try_start_20b
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_RELEASE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_217
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20b .. :try_end_217} :catch_2e0

    :goto_217
    :try_start_217
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_CANCEL:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_223
    .catch Ljava/lang/NoSuchFieldError; {:try_start_217 .. :try_end_223} :catch_2dd

    :goto_223
    :try_start_223
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_SCREEN_CLEAR:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_22f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_223 .. :try_end_22f} :catch_2da

    :goto_22f
    :try_start_22f
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_START_AF_SEARCH_IN_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_23b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22f .. :try_end_23b} :catch_2d7

    :goto_23b
    :try_start_23b
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_START_AF_SEARCH_IN_TOUCH_STOP:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_247
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23b .. :try_end_247} :catch_2d4

    :goto_247
    :try_start_247
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_253
    .catch Ljava/lang/NoSuchFieldError; {:try_start_247 .. :try_end_253} :catch_2d2

    :goto_253
    :try_start_253
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_25f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_253 .. :try_end_25f} :catch_2d0

    :goto_25f
    :try_start_25f
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_26b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25f .. :try_end_26b} :catch_2ce

    :goto_26b
    :try_start_26b
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_MOUNTED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_277
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26b .. :try_end_277} :catch_2cc

    :goto_277
    :try_start_277
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_SHOULD_CHANGE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_283
    .catch Ljava/lang/NoSuchFieldError; {:try_start_277 .. :try_end_283} :catch_2ca

    :goto_283
    :try_start_283
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_SET_FOCUS_POSITION:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_28f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_283 .. :try_end_28f} :catch_2c8

    :goto_28f
    :try_start_28f
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_29b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28f .. :try_end_29b} :catch_2c6

    :goto_29b
    :try_start_29b
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_PREVIEW_FRAME_UPDATED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29b .. :try_end_2a7} :catch_2c4

    :goto_2a7
    :try_start_2a7
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_PREVIEW_FRAME:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a7 .. :try_end_2b3} :catch_2c2

    :goto_2b3
    :try_start_2b3
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachineController$7;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$controller$StateMachine$TransitterEvent:[I

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->EVENT_ON_SWITCH_CAMERA:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;

    invoke-virtual {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b3 .. :try_end_2bf} :catch_2c0

    :goto_2bf
    return-void

    :catch_2c0
    move-exception v0

    goto :goto_2bf

    :catch_2c2
    move-exception v0

    goto :goto_2b3

    :catch_2c4
    move-exception v0

    goto :goto_2a7

    :catch_2c6
    move-exception v0

    goto :goto_29b

    :catch_2c8
    move-exception v0

    goto :goto_28f

    :catch_2ca
    move-exception v0

    goto :goto_283

    :catch_2cc
    move-exception v0

    goto :goto_277

    :catch_2ce
    move-exception v0

    goto :goto_26b

    :catch_2d0
    move-exception v0

    goto :goto_25f

    :catch_2d2
    move-exception v0

    goto :goto_253

    :catch_2d4
    move-exception v0

    goto/16 :goto_247

    :catch_2d7
    move-exception v0

    goto/16 :goto_23b

    :catch_2da
    move-exception v0

    goto/16 :goto_22f

    :catch_2dd
    move-exception v0

    goto/16 :goto_223

    :catch_2e0
    move-exception v0

    goto/16 :goto_217

    :catch_2e3
    move-exception v0

    goto/16 :goto_20b

    :catch_2e6
    move-exception v0

    goto/16 :goto_1ff

    :catch_2e9
    move-exception v0

    goto/16 :goto_1f3

    :catch_2ec
    move-exception v0

    goto/16 :goto_1e7

    :catch_2ef
    move-exception v0

    goto/16 :goto_1db

    :catch_2f2
    move-exception v0

    goto/16 :goto_1cf

    :catch_2f5
    move-exception v0

    goto/16 :goto_1c3

    :catch_2f8
    move-exception v0

    goto/16 :goto_1b7

    :catch_2fb
    move-exception v0

    goto/16 :goto_1ab

    :catch_2fe
    move-exception v0

    goto/16 :goto_19f

    :catch_301
    move-exception v0

    goto/16 :goto_193

    :catch_304
    move-exception v0

    goto/16 :goto_187

    :catch_307
    move-exception v0

    goto/16 :goto_17b

    :catch_30a
    move-exception v0

    goto/16 :goto_16f

    :catch_30d
    move-exception v0

    goto/16 :goto_163

    :catch_310
    move-exception v0

    goto/16 :goto_157

    :catch_313
    move-exception v0

    goto/16 :goto_14b

    :catch_316
    move-exception v0

    goto/16 :goto_13f

    :catch_319
    move-exception v0

    goto/16 :goto_133

    :catch_31c
    move-exception v0

    goto/16 :goto_127

    :catch_31f
    move-exception v0

    goto/16 :goto_11b

    :catch_322
    move-exception v0

    goto/16 :goto_10f

    :catch_325
    move-exception v0

    goto/16 :goto_103

    :catch_328
    move-exception v0

    goto/16 :goto_f7

    :catch_32b
    move-exception v0

    goto/16 :goto_ec

    :catch_32e
    move-exception v0

    goto/16 :goto_e1

    :catch_331
    move-exception v0

    goto/16 :goto_d6

    :catch_334
    move-exception v0

    goto/16 :goto_cb

    :catch_337
    move-exception v0

    goto/16 :goto_c0

    :catch_33a
    move-exception v0

    goto/16 :goto_b5

    .line 2212
    :catch_33d
    move-exception v0

    goto/16 :goto_a1

    :catch_340
    move-exception v0

    goto/16 :goto_95

    :catch_343
    move-exception v0

    goto/16 :goto_89

    :catch_346
    move-exception v0

    goto/16 :goto_7e

    :catch_349
    move-exception v0

    goto/16 :goto_73

    :catch_34c
    move-exception v0

    goto/16 :goto_68

    :catch_34f
    move-exception v0

    goto/16 :goto_5d

    :catch_352
    move-exception v0

    goto/16 :goto_52

    :catch_355
    move-exception v0

    goto/16 :goto_47

    .line 2537
    :catch_358
    move-exception v0

    goto/16 :goto_33

    .line 2849
    :catch_35b
    move-exception v0

    goto/16 :goto_1f

    :catch_35e
    move-exception v0

    goto/16 :goto_14
.end method
