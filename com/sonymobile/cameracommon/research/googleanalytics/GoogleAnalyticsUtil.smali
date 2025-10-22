.class public Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;
.super Ljava/lang/Object;
.source "GoogleAnalyticsUtil.java"


# static fields
.field private static final CONTAINER_ID:Ljava/lang/String; = "GTM-MTPP62"

.field private static final MY_WANTED_TIMEOUT_SECONDS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "GoogleAnalyticsUtil"

.field private static final mCameraAddonReceiverForGA:Lcom/sonymobile/cameracommon/research/googleanalytics/CameraAddonReceiverForGA;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/sonymobile/cameracommon/research/googleanalytics/CameraAddonReceiverForGA;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/research/googleanalytics/CameraAddonReceiverForGA;-><init>()V

    sput-object v0, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->mCameraAddonReceiverForGA:Lcom/sonymobile/cameracommon/research/googleanalytics/CameraAddonReceiverForGA;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private static loadGtmContainer()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 112
    sget-object v0, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v7

    .line 116
    .local v7, "tagManager":Lcom/google/android/gms/tagmanager/TagManager;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/google/android/gms/tagmanager/TagManager;->setVerboseLoggingEnabled(Z)V

    .line 118
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    const-string v2, "GTM-MTPP62"

    sget v3, Lcom/sonyericsson/cameracommon/R$raw;->gtm_default_container:I

    new-instance v6, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil$1;

    invoke-direct {v6}, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil$1;-><init>()V

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->init(Landroid/content/Context;Ljava/lang/String;IZILcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;)Z

    .line 130
    return-void
.end method

.method public static onCreate(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    sput-object p0, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    .line 69
    sget-object v0, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->readAndSetSomcGa(Landroid/content/Context;)V

    .line 71
    sget-object v0, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->isSomcGaEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 72
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getContainerHolder()Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 73
    invoke-static {}, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->loadGtmContainer()V

    .line 76
    :cond_1c
    return-void
.end method

.method public static onDestroy(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method public static onPause(Z)V
    .registers 1
    .param p0, "isSameActivity"    # Z

    .prologue
    .line 93
    if-nez p0, :cond_5

    .line 94
    invoke-static {}, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->unregisterCameraAddonReceiverForGA()V

    .line 98
    :cond_5
    return-void
.end method

.method public static onResume()V
    .registers 0

    .prologue
    .line 84
    invoke-static {}, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->registerCameraAddonReceiverForGA()V

    .line 85
    return-void
.end method

.method private static registerCameraAddonReceiverForGA()V
    .registers 6

    .prologue
    .line 135
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.sonymobile.camera.addon.action.ADD_BUTTON_PRESSED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v2, "com.sonymobile.camera.addon.action.APP_SELECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    :try_start_f
    sget-object v2, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->mCameraAddonReceiverForGA:Lcom/sonymobile/cameracommon/research/googleanalytics/CameraAddonReceiverForGA;

    const-string v4, "com.sonymobile.permission.CAMERA_ADDON_NOTIFY_GA"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_19} :catch_1a

    .line 147
    :goto_19
    return-void

    .line 142
    :catch_1a
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "GoogleAnalyticsUtil"

    const-string v3, "CameraAddonReceiverForGA is already binded."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public static sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12
    .param p0, "category"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 186
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v0, :cond_3e

    const-string v0, "GoogleAnalyticsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendEvent(): category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 187
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", label = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_3e
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v2, p1

    move-object v3, p2

    .line 190
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 195
    return-void
.end method

.method public static sendView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V
    .registers 4
    .param p0, "screen"    # Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .prologue
    .line 168
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v0, :cond_1c

    const-string v0, "GoogleAnalyticsUtil"

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

    .line 171
    :cond_1c
    if-nez p0, :cond_1f

    .line 175
    :goto_1e
    return-void

    .line 174
    :cond_1f
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Screen;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushAppView(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public static setCustomDimension(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "gtmKey"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 161
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v0, :cond_26

    const-string v0, "GoogleAnalyticsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomDimension() : gtmKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_26
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 165
    return-void
.end method

.method private static unregisterCameraAddonReceiverForGA()V
    .registers 3

    .prologue
    .line 153
    :try_start_0
    sget-object v1, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->mCameraAddonReceiverForGA:Lcom/sonymobile/cameracommon/research/googleanalytics/CameraAddonReceiverForGA;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 158
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_7
    return-void

    .line 154
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v0

    .line 156
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string v1, "GoogleAnalyticsUtil"

    const-string v2, "CameraAddonReceiverForGA is already unbinded."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method
