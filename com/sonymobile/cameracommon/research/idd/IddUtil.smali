.class public Lcom/sonymobile/cameracommon/research/idd/IddUtil;
.super Ljava/lang/Object;
.source "IddUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;,
        Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final IDD_CLASS_NAME:Ljava/lang/String; = "com.sonyericsson.idd.api.Idd"

.field private static final IDD_METHOD_NAME:Ljava/lang/String; = "addAppDataJSON"

.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_ENVIRONMENT:Ljava/lang/String; = "environment"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_LAUNCHEDBY:Ljava/lang/String; = "launched_by"

.field private static final KEY_MODE:Ljava/lang/String; = "mode"

.field private static final KEY_PERFORMANCE_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final KEY_PERFORMANCE_TARGET:Ljava/lang/String; = "target"

.field private static final KEY_PERFORMANCE_THERMAL_STATUS:Ljava/lang/String; = "thermal_status"

.field private static final KEY_PERFORMANCE_TIME:Ljava/lang/String; = "time"

.field private static final KEY_SETTING:Ljava/lang/String; = "setting"

.field private static final KEY_SUB_TYPE:Ljava/lang/String; = "subtype"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_VALUE_AFTER:Ljava/lang/String; = "after"

.field private static final KEY_VALUE_BEFORE:Ljava/lang/String; = "before"

.field public static final TAG:Ljava/lang/String; = "IddUtil"

.field private static final THERMAL_STATUS_HIGH:Ljava/lang/String; = "HIGH"

.field private static final THERMAL_STATUS_NORMAL:Ljava/lang/String; = "NORMAL"

.field private static final TYPE_CAMERA_NOT_AVAILABLE_EVENT:Ljava/lang/String; = "CAMERA_NOT_AVAILABLE"

.field private static final TYPE_CHANGE_SETTING_EVENT:Ljava/lang/String; = "CHANGE_SETTING_EVENT"

.field private static final TYPE_LOWBATTERY_ERROR_EVENT:Ljava/lang/String; = "LOWBATTERY_ERROR"

.field private static final TYPE_MODE_SELECTOR_EVENT:Ljava/lang/String; = "MODE_SELECTOR_EVENT"

.field private static final TYPE_PANORAMA_EVENT:Ljava/lang/String; = "PANORAMA"

.field private static final TYPE_PERFORMANCE_EVENT:Ljava/lang/String; = "PERFORMANCE"

.field private static final TYPE_PHOTO_EVENT:Ljava/lang/String; = "PHOTO_EVENT"

.field private static final TYPE_SELFTIMER_CANCEL_EVENT:Ljava/lang/String; = "SELFTIMER_CANCEL_EVENT"

.field private static final TYPE_SLOW_MOTION_EVENT:Ljava/lang/String; = "SLOW_MOTION_EVENT"

.field private static final TYPE_THERMAL_ERROR_EVENT:Ljava/lang/String; = "THERMAL_ERROR"

.field private static final TYPE_VIDEO_EVENT:Ljava/lang/String; = "VIDEO_EVENT"

.field private static mContext:Landroid/content/Context;

.field private static mIsIddSupportAlreadyChecked:Z

.field private static mIsIddSupported:Z

.field private static mIsSendingAllowed:Z

.field private static mLaunchedBy:Ljava/lang/String;

.field private static mPackageName:Ljava/lang/String;

.field private static mVersionCode:I

.field private static mVersionName:Ljava/lang/String;

.field private static mView:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    .line 76
    const-string v0, ""

    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    .line 77
    const-string v0, ""

    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionName:Ljava/lang/String;

    .line 78
    sput v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionCode:I

    .line 80
    const-string v0, ""

    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mView:Ljava/lang/String;

    .line 81
    const-string v0, ""

    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mLaunchedBy:Ljava/lang/String;

    .line 83
    sput-boolean v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    .line 84
    sput-boolean v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupportAlreadyChecked:Z

    .line 86
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsSendingAllowed:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mView:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mLaunchedBy:Ljava/lang/String;

    return-object v0
.end method

.method private static checkIddSupported()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 119
    sget-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupportAlreadyChecked:Z

    if-eqz v0, :cond_9

    .line 120
    sget-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    .line 133
    :goto_8
    return v0

    .line 123
    :cond_9
    sput-boolean v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    .line 125
    :try_start_b
    const-string v0, "com.sonyericsson.idd.api.Idd"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "addAppDataJSON"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Lorg/json/JSONObject;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 127
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z
    :try_end_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_30} :catch_35
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_30} :catch_39
    .catch Ljava/lang/LinkageError; {:try_start_b .. :try_end_30} :catch_37

    .line 132
    :goto_30
    sput-boolean v5, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupportAlreadyChecked:Z

    .line 133
    sget-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsIddSupported:Z

    goto :goto_8

    .line 129
    :catch_35
    move-exception v0

    goto :goto_30

    :catch_37
    move-exception v0

    goto :goto_30

    :catch_39
    move-exception v0

    goto :goto_30
.end method

.method private static getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;
    .registers 4
    .param p0, "category"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .prologue
    const/4 v0, 0x0

    .line 216
    if-eqz p0, :cond_e

    .line 217
    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    .line 242
    :cond_e
    :goto_e
    return-object v0

    .line 219
    :pswitch_f
    const-string v0, "PHOTO_EVENT"

    goto :goto_e

    .line 221
    :pswitch_12
    const-string v0, "VIDEO_EVENT"

    goto :goto_e

    .line 225
    :pswitch_15
    const-string v0, "MODE_SELECTOR_EVENT"

    goto :goto_e

    .line 227
    :pswitch_18
    const-string v0, "THERMAL_ERROR"

    goto :goto_e

    .line 229
    :pswitch_1b
    const-string v0, "CAMERA_NOT_AVAILABLE"

    goto :goto_e

    .line 231
    :pswitch_1e
    const-string v0, "PANORAMA"

    goto :goto_e

    .line 233
    :pswitch_21
    const-string v0, "SELFTIMER_CANCEL_EVENT"

    goto :goto_e

    .line 235
    :pswitch_24
    const-string v0, "LOWBATTERY_ERROR"

    goto :goto_e

    .line 237
    :pswitch_27
    const-string v0, "SLOW_MOTION_EVENT"

    goto :goto_e

    .line 217
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method public static onCreate(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    sput-object p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method public static onDestroy(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    .line 161
    return-void
.end method

.method public static onPause(Z)V
    .registers 1
    .param p0, "isSameActivity"    # Z

    .prologue
    .line 150
    return-void
.end method

.method public static onResume()V
    .registers 0

    .prologue
    .line 141
    return-void
.end method

.method public static sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p0, "category"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 199
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 213
    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "label":Ljava/lang/String;
    :goto_6
    return-void

    .line 203
    .restart local p1    # "action":Ljava/lang/String;
    .restart local p2    # "label":Ljava/lang/String;
    :cond_7
    sget-boolean v1, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v1, :cond_45

    const-string v1, "IddUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEvent(): category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 204
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", label = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_45
    new-instance v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "action"

    if-nez p1, :cond_54

    const-string p1, ""

    .line 208
    .end local p1    # "action":Ljava/lang/String;
    :cond_54
    invoke-virtual {v1, v2, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object v1

    const-string v2, "label"

    if-nez p2, :cond_5e

    const-string p2, ""

    .line 209
    .end local p2    # "label":Ljava/lang/String;
    :cond_5e
    invoke-virtual {v1, v2, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object v1

    const-string v2, "value"

    .line 210
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "payLoad":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static sendEventAllSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .param p0, "category"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v1, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v1, :cond_34

    const-string v1, "IddUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEventAllSettings(): category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 285
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", env = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_34
    new-instance v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->getTypeName(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "environment"

    .line 289
    invoke-virtual {v1, v2, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/util/Map;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object v1

    const-string v2, "setting"

    .line 290
    invoke-virtual {v1, v2, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/util/Map;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "payLoad":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public static sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "setting"    # Ljava/lang/String;
    .param p1, "before"    # Ljava/lang/String;
    .param p2, "after"    # Ljava/lang/String;

    .prologue
    .line 303
    sget-boolean v1, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v1, :cond_30

    const-string v1, "IddUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEventChangedSetting(): setting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", before = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", after = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_30
    new-instance v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v2, "CHANGE_SETTING_EVENT"

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "setting"

    if-nez p0, :cond_3d

    const-string p0, ""

    .line 308
    .end local p0    # "setting":Ljava/lang/String;
    :cond_3d
    invoke-virtual {v1, v2, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object v1

    const-string v2, "before"

    if-nez p1, :cond_47

    const-string p1, ""

    .line 309
    .end local p1    # "before":Ljava/lang/String;
    :cond_47
    invoke-virtual {v1, v2, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object v1

    const-string v2, "after"

    if-nez p2, :cond_51

    const-string p2, ""

    .line 310
    .end local p2    # "after":Ljava/lang/String;
    :cond_51
    invoke-virtual {v1, v2, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "payLoad":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method private static sendJsonData(Ljava/lang/String;)V
    .registers 5
    .param p0, "payLoad"    # Ljava/lang/String;

    .prologue
    .line 317
    sget-boolean v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mIsSendingAllowed:Z

    if-eqz v0, :cond_1b

    .line 319
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setPackageInfo()V

    .line 321
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->checkIddSupported()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 323
    :try_start_d
    sget-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionName:Ljava/lang/String;

    sget v2, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionCode:I

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/idd/api/Idd;->addAppDataJSON(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1b} :catch_1c

    .line 331
    :cond_1b
    :goto_1b
    return-void

    .line 325
    :catch_1c
    move-exception v0

    goto :goto_1b
.end method

.method public static sendPerformanceData(Ljava/lang/String;JZLjava/lang/String;)V
    .registers 12
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "millis"    # J
    .param p3, "isHeated"    # Z
    .param p4, "batteryLevel"    # Ljava/lang/String;

    .prologue
    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendPerformanceData(): key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p0, :cond_83

    const-string v3, ""

    .line 257
    :goto_f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time(millis) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isHeated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "logInfo":Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    const-string v4, "PERFORMANCE"

    invoke-direct {v3, v4}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "target"

    if-nez p0, :cond_38

    const-string p0, ""

    .line 261
    .end local p0    # "key":Ljava/lang/String;
    :cond_38
    invoke-virtual {v3, v4, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object v3

    const-string v4, "time"

    .line 262
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object v4

    const-string v5, "thermal_status"

    if-eqz p3, :cond_88

    const-string v3, "HIGH"

    .line 263
    :goto_4c
    invoke-virtual {v4, v5, v3}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    move-result-object v2

    .line 265
    .local v2, "setJsonString":Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_72

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", batteryLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    const-string v3, "battery_level"

    invoke-virtual {v2, v3, p4}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;

    .line 270
    :cond_72
    sget-boolean v3, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v3, :cond_7b

    const-string v3, "IddUtil"

    invoke-static {v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_7b
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->build()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "payLoad":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendJsonData(Ljava/lang/String;)V

    .line 273
    return-void

    .line 257
    .end local v0    # "logInfo":Ljava/lang/String;
    .end local v1    # "payLoad":Ljava/lang/String;
    .end local v2    # "setJsonString":Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;
    .restart local p0    # "key":Ljava/lang/String;
    :cond_83
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    .line 262
    .end local p0    # "key":Ljava/lang/String;
    .restart local v0    # "logInfo":Ljava/lang/String;
    :cond_88
    const-string v3, "NORMAL"

    goto :goto_4c
.end method

.method public static setLaunchedBy(Ljava/lang/String;)V
    .registers 4
    .param p0, "launchedBy"    # Ljava/lang/String;

    .prologue
    .line 169
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v0, :cond_1c

    const-string v0, "IddUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLaunchedBy() : launchedBy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_1c
    sput-object p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mLaunchedBy:Ljava/lang/String;

    .line 173
    return-void
.end method

.method private static setPackageInfo()V
    .registers 3

    .prologue
    .line 104
    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_e

    const-string v1, ""

    sget-object v2, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 116
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :cond_e
    :goto_e
    return-void

    .line 107
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_f
    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    .line 108
    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 110
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :try_start_1d
    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionName:Ljava/lang/String;

    .line 111
    sget-object v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mVersionCode:I
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_33} :catch_34

    goto :goto_e

    .line 112
    :catch_34
    move-exception v1

    goto :goto_e
.end method

.method public static setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V
    .registers 4
    .param p0, "screen"    # Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .prologue
    .line 181
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v0, :cond_1c

    const-string v0, "IddUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendView() : screen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_1c
    if-nez p0, :cond_1f

    .line 188
    :goto_1e
    return-void

    .line 187
    :cond_1f
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Screen;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mView:Ljava/lang/String;

    goto :goto_1e
.end method
