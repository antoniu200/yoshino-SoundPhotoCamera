.class public Lcom/sonymobile/gagtmhelper/GaGtmUtils;
.super Ljava/lang/Object;
.source "GaGtmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;
    }
.end annotation


# static fields
.field private static final GA_DEFAULT_DISPATCH_PERIOD:I = 0x708

.field private static final GTM_BUFFERED_EVENTS_FILENAME:Ljava/lang/String; = "GTM_buffered_events"

.field private static final GTM_BUFFERED_EVENTS_VERSION:I = 0x0

.field private static final GTM_KEY_DEVICE_BUILD_ID:Ljava/lang/String; = "gagtm-deviceBuildId"

.field private static final GTM_KEY_DEVICE_BUILD_MODEL:Ljava/lang/String; = "gagtm-deviceBuildModel"

.field private static final GTM_KEY_DEVICE_BUILD_TYPE:Ljava/lang/String; = "gagtm-deviceBuildType"

.field private static final GTM_KEY_DEVICE_CUSTOMER_ID:Ljava/lang/String; = "gagtm-deviceCustomerId"

.field private static final GTM_KEY_DEVICE_CUSTOMIZATION:Ljava/lang/String; = "gagtm-deviceCustomization"

.field private static final GTM_KEY_DEVICE_CUSTOMIZATION_REVISION:Ljava/lang/String; = "gagtm-deviceCustomizationRevision"

.field private static final GTM_KEY_DEVICE_NETWORK_MCC:Ljava/lang/String; = "gagtm-deviceNetworkMcc"

.field private static final GTM_KEY_DEVICE_NETWORK_MNC:Ljava/lang/String; = "gagtm-deviceNetworkMnc"

.field private static final GTM_KEY_DEVICE_SIM_MCC:Ljava/lang/String; = "gagtm-deviceSimMcc"

.field private static final GTM_KEY_DEVICE_SIM_MNC:Ljava/lang/String; = "gagtm-deviceSimMnc"

.field private static final GTM_KEY_EVENT:Ljava/lang/String; = "event"

.field private static final GTM_KEY_EVENT_ACTION:Ljava/lang/String; = "gagtm-eventAction"

.field private static final GTM_KEY_EVENT_CATEGORY:Ljava/lang/String; = "gagtm-eventCategory"

.field private static final GTM_KEY_EVENT_LABEL:Ljava/lang/String; = "gagtm-eventLabel"

.field private static final GTM_KEY_EVENT_VALUE:Ljava/lang/String; = "gagtm-eventValue"

.field private static final GTM_KEY_EXCEPTION_DESCRIPTION:Ljava/lang/String; = "gagtm-exceptionDescription"

.field private static final GTM_KEY_GA_DISPATCH_PERIOD:Ljava/lang/String; = "gagtm-dispatchPeriod"

.field private static final GTM_KEY_GA_EXCEPTION_DEEP_MODE:Ljava/lang/String; = "gagtm-exceptionDeepMode"

.field private static final GTM_KEY_GA_EXCEPTION_HASH_LIST:Ljava/lang/String; = "gagtm-exceptionHashList"

.field private static final GTM_KEY_GA_EXCEPTION_MAX_REPORTED_ROWS:Ljava/lang/String; = "gagtm-exceptionMaxReportedRows"

.field private static final GTM_KEY_GA_EXCEPTION_MAX_TRAVERSED_ROWS:Ljava/lang/String; = "gagtm-exceptionMaxTraversedRows"

.field private static final GTM_KEY_GA_EXCEPTION_PACKAGE_NAMES:Ljava/lang/String; = "gagtm-exceptionPackageNames"

.field private static final GTM_KEY_GA_FORCE_LOCAL_DISPATCH:Ljava/lang/String; = "gagtm-forceLocalDispatch"

.field private static final GTM_KEY_SCREEN_NAME:Ljava/lang/String; = "gagtm-screenName"

.field private static final GTM_KEY_TIMING_CATEGORY:Ljava/lang/String; = "gagtm-timingCategory"

.field private static final GTM_KEY_TIMING_LABEL:Ljava/lang/String; = "gagtm-timingLabel"

.field private static final GTM_KEY_TIMING_VALUE:Ljava/lang/String; = "gagtm-timingValue"

.field private static final GTM_KEY_TIMING_VAR:Ljava/lang/String; = "gagtm-timingVar"

.field private static final LOG_TAG:Ljava/lang/String; = "GaGtmHelper"

.field private static final MAX_BUFFERED_PENDING_EVENTS:I = 0x32

.field private static final SYSTEM_BUILD_CUSTOMER_ID:Ljava/lang/String; = "ro.somc.customerid"

.field private static final SYSTEM_BUILD_CUSTOMIZATION:Ljava/lang/String; = "ro.semc.version.cust"

.field private static final SYSTEM_BUILD_CUSTOMIZATION_REVISION:Ljava/lang/String; = "ro.semc.version.cust_revision"

.field private static volatile sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

.field private mContainerId:Ljava/lang/String;

.field private mContainerLoaded:Z

.field private mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

.field private mContainerLoadingTimeout:I

.field private mContext:Landroid/content/Context;

.field private mDefaultContainerResourceId:I

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

.field private mInitCalled:Z

.field private mPendingEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTagManager:Lcom/google/android/gms/tagmanager/TagManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    .line 124
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerId:Ljava/lang/String;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultContainerResourceId:I

    .line 129
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    .line 131
    iput-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    .line 134
    iput-boolean v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mInitCalled:Z

    .line 135
    iput-boolean v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoaded:Z

    .line 136
    iput-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    .line 138
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    .line 141
    iput-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 254
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 255
    const-string v0, "GaGtmHelper"

    const-string v1, "GaGtmUtils constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_2b
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Lcom/google/android/gms/tagmanager/ContainerHolder;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    .param p1, "x1"    # Lcom/google/android/gms/tagmanager/ContainerHolder;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->flushDataLayerQueueLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    return-object v0
.end method

.method private ensureContainerLoadedLocked()V
    .registers 6

    .prologue
    .line 492
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 493
    const-string v1, "GaGtmHelper"

    const-string v2, "ensureContainerLoaded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_d
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerId:Ljava/lang/String;

    iget v3, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultContainerResourceId:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tagmanager/TagManager;->loadContainerPreferFresh(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 498
    .local v0, "pendingResult":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/tagmanager/ContainerHolder;>;"
    new-instance v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;-><init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    iget v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V

    .line 566
    return-void
.end method

.method private flushDataLayerQueueLocked()V
    .registers 6

    .prologue
    .line 569
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 570
    const-string v2, "GaGtmHelper"

    const-string v3, "flushDataLayerQueueLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_d
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    .line 575
    .local v0, "dataLayer":Lcom/google/android/gms/tagmanager/DataLayer;
    :goto_13
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, "pendingEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_43

    .line 576
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 577
    const-string v2, "GaGtmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_3f
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_13

    .line 581
    :cond_43
    return-void
.end method

.method public static getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    .registers 2

    .prologue
    .line 480
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    if-nez v0, :cond_13

    .line 481
    const-class v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    monitor-enter v1

    .line 482
    :try_start_7
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    if-nez v0, :cond_12

    .line 483
    new-instance v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-direct {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .line 485
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 488
    :cond_13
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    return-object v0

    .line 485
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method deserializeQueueFromFileAndPush()V
    .registers 23

    .prologue
    .line 347
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 348
    const-string v17, "GaGtmHelper"

    const-string v18, "deserializeQueueFromFile"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_d
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v17

    const-string v18, "GTM_buffered_events"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 354
    .local v3, "bufferFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-nez v17, :cond_3a

    .line 355
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_39

    .line 356
    const-string v17, "GaGtmHelper"

    const-string v18, "File is empty skip"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_39
    :goto_39
    return-void

    .line 362
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 363
    .local v12, "manager":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    .line 364
    .local v11, "info":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .line 366
    .local v2, "appVersion":Ljava/lang/String;
    :try_start_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 368
    iget-object v2, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_5c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_5c} :catch_176

    .line 373
    :goto_5c
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_7c

    .line 374
    const-string v17, "GaGtmHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Current appVersion="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_7c
    const/4 v6, 0x0

    .line 378
    .local v6, "bufferedEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v10, 0x0

    .line 379
    .local v10, "fis":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 382
    .local v13, "ois":Ljava/io/ObjectInputStream;
    :try_start_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "GTM_buffered_events"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v10

    .line 383
    new-instance v14, Ljava/io/ObjectInputStream;

    invoke-direct {v14, v10}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_90
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_90} :catch_294
    .catch Ljava/io/OptionalDataException; {:try_start_7f .. :try_end_90} :catch_291
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_90} :catch_203
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7f .. :try_end_90} :catch_235
    .catchall {:try_start_7f .. :try_end_90} :catchall_267

    .line 387
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .local v14, "ois":Ljava/io/ObjectInputStream;
    :try_start_90
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v16

    .line 388
    .local v16, "version":I
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_b6

    .line 389
    const-string v17, "GaGtmHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Read version="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_b6
    if-nez v16, :cond_1bd

    .line 393
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v15

    .line 396
    .local v15, "readObject":Ljava/lang/Object;
    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 397
    .local v4, "bufferedAppVersion":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_e0

    .line 398
    const-string v17, "GaGtmHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Read bufferedAppVersion="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_e0
    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_17b

    .line 403
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v15

    .line 406
    move-object v0, v15

    check-cast v0, Ljava/util/LinkedList;

    move-object v6, v0
    :try_end_ee
    .catch Ljava/io/FileNotFoundException; {:try_start_90 .. :try_end_ee} :catch_18a
    .catch Ljava/io/OptionalDataException; {:try_start_90 .. :try_end_ee} :catch_1cc
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_ee} :catch_28d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_90 .. :try_end_ee} :catch_28a
    .catchall {:try_start_90 .. :try_end_ee} :catchall_287

    .line 434
    .end local v4    # "bufferedAppVersion":Ljava/lang/String;
    .end local v15    # "readObject":Ljava/lang/Object;
    :cond_ee
    :goto_ee
    if-eqz v14, :cond_f3

    .line 436
    :try_start_f0
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_276

    .line 441
    :cond_f3
    :goto_f3
    if-eqz v10, :cond_297

    .line 443
    :try_start_f5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_1ff

    move-object v13, v14

    .line 450
    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .end local v16    # "version":I
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    :cond_f9
    :goto_f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "GTM_buffered_events"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v8

    .line 451
    .local v8, "deleted":Z
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_125

    .line 452
    const-string v17, "GaGtmHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Buffer file deleted="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_125
    if-eqz v6, :cond_39

    .line 460
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_134

    .line 461
    const-string v17, "GaGtmHelper"

    const-string v18, "Push buffered events"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v7

    .line 464
    .local v7, "dataLayer":Lcom/google/android/gms/tagmanager/DataLayer;
    sget-object v18, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v18

    .line 466
    :goto_141
    :try_start_141
    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .local v5, "bufferedEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v5, :cond_273

    .line 467
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_16f

    .line 468
    const-string v17, "GaGtmHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "item="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_16f
    invoke-virtual {v7, v5}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_141

    .line 472
    .end local v5    # "bufferedEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_173
    move-exception v17

    monitor-exit v18
    :try_end_175
    .catchall {:try_start_141 .. :try_end_175} :catchall_173

    throw v17

    .line 369
    .end local v6    # "bufferedEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7    # "dataLayer":Lcom/google/android/gms/tagmanager/DataLayer;
    .end local v8    # "deleted":Z
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    :catch_176
    move-exception v9

    .line 370
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, ""

    goto/16 :goto_5c

    .line 408
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "bufferedAppVersion":Ljava/lang/String;
    .restart local v6    # "bufferedEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v15    # "readObject":Ljava/lang/Object;
    .restart local v16    # "version":I
    :cond_17b
    :try_start_17b
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_ee

    .line 409
    const-string v17, "GaGtmHelper"

    const-string v18, "Bad app version. Skip"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_188
    .catch Ljava/io/FileNotFoundException; {:try_start_17b .. :try_end_188} :catch_18a
    .catch Ljava/io/OptionalDataException; {:try_start_17b .. :try_end_188} :catch_1cc
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_188} :catch_28d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17b .. :try_end_188} :catch_28a
    .catchall {:try_start_17b .. :try_end_188} :catchall_287

    goto/16 :goto_ee

    .line 417
    .end local v4    # "bufferedAppVersion":Ljava/lang/String;
    .end local v15    # "readObject":Ljava/lang/Object;
    .end local v16    # "version":I
    :catch_18a
    move-exception v9

    move-object v13, v14

    .line 418
    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .local v9, "e":Ljava/io/FileNotFoundException;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    :goto_18c
    :try_start_18c
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_1ae

    .line 419
    const-string v17, "GaGtmHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "FileNotFoundException="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ae
    .catchall {:try_start_18c .. :try_end_1ae} :catchall_267

    .line 434
    :cond_1ae
    if-eqz v13, :cond_1b3

    .line 436
    :try_start_1b0
    invoke-virtual {v13}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1b3
    .catch Ljava/io/IOException; {:try_start_1b0 .. :try_end_1b3} :catch_279

    .line 441
    :cond_1b3
    :goto_1b3
    if-eqz v10, :cond_f9

    .line 443
    :try_start_1b5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1b5 .. :try_end_1b8} :catch_1ba

    goto/16 :goto_f9

    .line 444
    :catch_1ba
    move-exception v17

    goto/16 :goto_f9

    .line 413
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v16    # "version":I
    :cond_1bd
    :try_start_1bd
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_ee

    .line 414
    const-string v17, "GaGtmHelper"

    const-string v18, "Bad format version. Skip"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ca
    .catch Ljava/io/FileNotFoundException; {:try_start_1bd .. :try_end_1ca} :catch_18a
    .catch Ljava/io/OptionalDataException; {:try_start_1bd .. :try_end_1ca} :catch_1cc
    .catch Ljava/io/IOException; {:try_start_1bd .. :try_end_1ca} :catch_28d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1bd .. :try_end_1ca} :catch_28a
    .catchall {:try_start_1bd .. :try_end_1ca} :catchall_287

    goto/16 :goto_ee

    .line 421
    .end local v16    # "version":I
    :catch_1cc
    move-exception v9

    move-object v13, v14

    .line 422
    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .local v9, "e":Ljava/io/OptionalDataException;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    :goto_1ce
    :try_start_1ce
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_1f0

    .line 423
    const-string v17, "GaGtmHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "OptionalDataException="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/io/OptionalDataException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f0
    .catchall {:try_start_1ce .. :try_end_1f0} :catchall_267

    .line 434
    :cond_1f0
    if-eqz v13, :cond_1f5

    .line 436
    :try_start_1f2
    invoke-virtual {v13}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1f5
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_1f5} :catch_27c

    .line 441
    :cond_1f5
    :goto_1f5
    if-eqz v10, :cond_f9

    .line 443
    :try_start_1f7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1fa
    .catch Ljava/io/IOException; {:try_start_1f7 .. :try_end_1fa} :catch_1fc

    goto/16 :goto_f9

    .line 444
    :catch_1fc
    move-exception v17

    goto/16 :goto_f9

    .end local v9    # "e":Ljava/io/OptionalDataException;
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v16    # "version":I
    :catch_1ff
    move-exception v17

    move-object v13, v14

    .line 445
    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_f9

    .line 425
    .end local v16    # "version":I
    :catch_203
    move-exception v9

    .line 426
    .local v9, "e":Ljava/io/IOException;
    :goto_204
    :try_start_204
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_226

    .line 427
    const-string v17, "GaGtmHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IOException="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_226
    .catchall {:try_start_204 .. :try_end_226} :catchall_267

    .line 434
    :cond_226
    if-eqz v13, :cond_22b

    .line 436
    :try_start_228
    invoke-virtual {v13}, Ljava/io/ObjectInputStream;->close()V
    :try_end_22b
    .catch Ljava/io/IOException; {:try_start_228 .. :try_end_22b} :catch_27f

    .line 441
    :cond_22b
    :goto_22b
    if-eqz v10, :cond_f9

    .line 443
    :try_start_22d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_230
    .catch Ljava/io/IOException; {:try_start_22d .. :try_end_230} :catch_232

    goto/16 :goto_f9

    .line 444
    :catch_232
    move-exception v17

    goto/16 :goto_f9

    .line 429
    .end local v9    # "e":Ljava/io/IOException;
    :catch_235
    move-exception v9

    .line 430
    .local v9, "e":Ljava/lang/ClassNotFoundException;
    :goto_236
    :try_start_236
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_258

    .line 431
    const-string v17, "GaGtmHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ClassNotFoundException="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_258
    .catchall {:try_start_236 .. :try_end_258} :catchall_267

    .line 434
    :cond_258
    if-eqz v13, :cond_25d

    .line 436
    :try_start_25a
    invoke-virtual {v13}, Ljava/io/ObjectInputStream;->close()V
    :try_end_25d
    .catch Ljava/io/IOException; {:try_start_25a .. :try_end_25d} :catch_281

    .line 441
    :cond_25d
    :goto_25d
    if-eqz v10, :cond_f9

    .line 443
    :try_start_25f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_262
    .catch Ljava/io/IOException; {:try_start_25f .. :try_end_262} :catch_264

    goto/16 :goto_f9

    .line 444
    :catch_264
    move-exception v17

    goto/16 :goto_f9

    .line 434
    .end local v9    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_267
    move-exception v17

    :goto_268
    if-eqz v13, :cond_26d

    .line 436
    :try_start_26a
    invoke-virtual {v13}, Ljava/io/ObjectInputStream;->close()V
    :try_end_26d
    .catch Ljava/io/IOException; {:try_start_26a .. :try_end_26d} :catch_283

    .line 441
    :cond_26d
    :goto_26d
    if-eqz v10, :cond_272

    .line 443
    :try_start_26f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_272
    .catch Ljava/io/IOException; {:try_start_26f .. :try_end_272} :catch_285

    .line 445
    :cond_272
    :goto_272
    throw v17

    .line 472
    .restart local v5    # "bufferedEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "dataLayer":Lcom/google/android/gms/tagmanager/DataLayer;
    .restart local v8    # "deleted":Z
    :cond_273
    :try_start_273
    monitor-exit v18
    :try_end_274
    .catchall {:try_start_273 .. :try_end_274} :catchall_173

    goto/16 :goto_39

    .line 437
    .end local v5    # "bufferedEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "dataLayer":Lcom/google/android/gms/tagmanager/DataLayer;
    .end local v8    # "deleted":Z
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v16    # "version":I
    :catch_276
    move-exception v17

    goto/16 :goto_f3

    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .end local v16    # "version":I
    .local v9, "e":Ljava/io/FileNotFoundException;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    :catch_279
    move-exception v17

    goto/16 :goto_1b3

    .local v9, "e":Ljava/io/OptionalDataException;
    :catch_27c
    move-exception v17

    goto/16 :goto_1f5

    .local v9, "e":Ljava/io/IOException;
    :catch_27f
    move-exception v17

    goto :goto_22b

    .local v9, "e":Ljava/lang/ClassNotFoundException;
    :catch_281
    move-exception v17

    goto :goto_25d

    .end local v9    # "e":Ljava/lang/ClassNotFoundException;
    :catch_283
    move-exception v18

    goto :goto_26d

    .line 444
    :catch_285
    move-exception v18

    goto :goto_272

    .line 434
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v14    # "ois":Ljava/io/ObjectInputStream;
    :catchall_287
    move-exception v17

    move-object v13, v14

    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_268

    .line 429
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v14    # "ois":Ljava/io/ObjectInputStream;
    :catch_28a
    move-exception v9

    move-object v13, v14

    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_236

    .line 425
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v14    # "ois":Ljava/io/ObjectInputStream;
    :catch_28d
    move-exception v9

    move-object v13, v14

    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_204

    .line 421
    :catch_291
    move-exception v9

    goto/16 :goto_1ce

    .line 417
    :catch_294
    move-exception v9

    goto/16 :goto_18c

    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v16    # "version":I
    :cond_297
    move-object v13, v14

    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_f9
.end method

.method public getContainerHolder()Lcom/google/android/gms/tagmanager/ContainerHolder;
    .registers 3

    .prologue
    .line 588
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 589
    :try_start_3
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    monitor-exit v1

    return-object v0

    .line 590
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "defaultContainerResourceId"    # I
    .param p4, "useSomcGaSetting"    # Z

    .prologue
    .line 242
    iget v5, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    iget-object v6, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->init(Landroid/content/Context;Ljava/lang/String;IZILcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;IZILcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;)Z
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "defaultContainerResourceId"    # I
    .param p4, "useSomcGaSetting"    # Z
    .param p5, "containerLoadingTimeout"    # I
    .param p6, "callback"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    .prologue
    const/4 v0, 0x1

    .line 188
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_4
    iget-boolean v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mInitCalled:Z

    if-eqz v2, :cond_18

    .line 191
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 192
    const-string v0, "GaGtmHelper"

    const-string v2, "Ignoring call to init, already called."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_15
    const/4 v0, 0x0

    monitor-exit v1

    .line 224
    :goto_17
    return v0

    .line 196
    :cond_18
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mInitCalled:Z

    .line 198
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 199
    const-string v2, "GaGtmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " defaultContainerResourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " containerLoadingTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz p6, :cond_6b

    .line 204
    const-string v2, "GaGtmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_6b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    .line 210
    iput-object p2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerId:Ljava/lang/String;

    .line 211
    iput p3, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultContainerResourceId:I

    .line 212
    iput p5, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    .line 213
    iput-object p6, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    .line 214
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    .line 216
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->ensureContainerLoadedLocked()V

    .line 218
    if-eqz p4, :cond_90

    .line 219
    new-instance v2, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    invoke-direct {v2, p1}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    .line 220
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    invoke-virtual {v2}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->subscribeGaSettingChanges()V

    .line 222
    :cond_90
    monitor-exit v1

    goto :goto_17

    :catchall_92
    move-exception v0

    monitor-exit v1
    :try_end_94
    .catchall {:try_start_4 .. :try_end_94} :catchall_92

    throw v0
.end method

.method public pushAppView(Ljava/lang/String;)V
    .registers 5
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 599
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 600
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushAppView screenName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_1e
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "appView"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gagtm-screenName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 605
    return-void
.end method

.method public pushDeepEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p1, "eventCategory"    # Ljava/lang/String;
    .param p2, "eventAction"    # Ljava/lang/String;
    .param p3, "eventLabel"    # Ljava/lang/String;
    .param p4, "eventValue"    # J

    .prologue
    .line 685
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 686
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushDeepEvent category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_40
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "deepEvent"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gagtm-eventCategory"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string v2, "gagtm-eventAction"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gagtm-eventLabel"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p3, v0, v1

    const/16 v1, 0x8

    const-string v2, "gagtm-eventValue"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 696
    return-void
.end method

.method public pushDeepException(Ljava/lang/String;)V
    .registers 5
    .param p1, "exceptionDescription"    # Ljava/lang/String;

    .prologue
    .line 720
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 721
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushDeepException exceptionDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_1e
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "deepException"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gagtm-exceptionDescription"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 727
    return-void
.end method

.method public pushEndSession()V
    .registers 4

    .prologue
    .line 667
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 668
    const-string v0, "GaGtmHelper"

    const-string v1, "pushEndSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_d
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "endSession"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 672
    return-void
.end method

.method public pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p1, "eventCategory"    # Ljava/lang/String;
    .param p2, "eventAction"    # Ljava/lang/String;
    .param p3, "eventLabel"    # Ljava/lang/String;
    .param p4, "eventValue"    # J

    .prologue
    .line 618
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 619
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushEvent category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_3c
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gagtm-eventCategory"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string v2, "gagtm-eventAction"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gagtm-eventLabel"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p3, v0, v1

    const/16 v1, 0x8

    const-string v2, "gagtm-eventValue"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 628
    return-void
.end method

.method public pushException(Ljava/lang/String;)V
    .registers 5
    .param p1, "exceptionDescription"    # Ljava/lang/String;

    .prologue
    .line 705
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 706
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushException exceptionDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_1e
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "exception"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gagtm-exceptionDescription"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 711
    return-void
.end method

.method public declared-synchronized pushInitDefaultsToDataLayer()V
    .registers 15

    .prologue
    .line 765
    monitor-enter p0

    :try_start_1
    const-string v1, ""

    .line 766
    .local v1, "customization":Ljava/lang/String;
    const-string v2, ""

    .line 767
    .local v2, "customizationRevision":Ljava/lang/String;
    const-string v0, ""

    .line 768
    .local v0, "customerId":Ljava/lang/String;
    const-string v8, ""

    .line 769
    .local v8, "simMnc":Ljava/lang/String;
    const-string v7, ""

    .line 770
    .local v7, "simMcc":Ljava/lang/String;
    const-string v5, ""

    .line 771
    .local v5, "networkMnc":Ljava/lang/String;
    const-string v4, ""

    .line 773
    .local v4, "networkMcc":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 774
    const-string v11, "GaGtmHelper"

    const-string v12, "pushInitDefaultsToDataLayer"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1b5

    .line 779
    :cond_1c
    :try_start_1c
    iget-object v11, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string v12, "ro.semc.version.cust"

    invoke-static {v11, v12}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 780
    iget-object v11, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string v12, "ro.semc.version.cust_revision"

    invoke-static {v11, v12}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 782
    iget-object v11, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string v12, "ro.somc.customerid"

    invoke-static {v11, v12}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_33} :catch_190
    .catchall {:try_start_1c .. :try_end_33} :catchall_1b5

    move-result-object v0

    .line 790
    :cond_34
    :goto_34
    :try_start_34
    iget-object v11, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_1b5

    .line 795
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    :try_start_3e
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_1b8

    .line 797
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v9

    .line 798
    .local v9, "simOperator":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-eq v11, v12, :cond_57

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_62

    .line 799
    :cond_57
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 801
    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_61} :catch_1c7
    .catchall {:try_start_3e .. :try_end_61} :catchall_1b5

    move-result-object v8

    .line 818
    .end local v9    # "simOperator":Ljava/lang/String;
    :cond_62
    :goto_62
    :try_start_62
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    .line 819
    .local v6, "networkOperator":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-eq v11, v12, :cond_74

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_7f

    .line 820
    :cond_74
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 821
    const/4 v11, 0x3

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7e} :catch_1ec
    .catchall {:try_start_62 .. :try_end_7e} :catchall_1b5

    move-result-object v5

    .line 829
    .end local v6    # "networkOperator":Ljava/lang/String;
    :cond_7f
    :goto_7f
    :try_start_7f
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_121

    .line 830
    const-string v11, "GaGtmHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Pushing to data layer deviceBuildModel:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "deviceBuildId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", deviceBuildType:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "deviceCustomization:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "deviceCustomizationRevision:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "deviceCustomerId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", deviceSimMcc: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "deviceSimMnc: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", deviceNetworkMcc: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "deviceNetworkMnc: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_121
    const/16 v11, 0x14

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "gagtm-deviceBuildModel"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "gagtm-deviceBuildId"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    sget-object v13, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "gagtm-deviceBuildType"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    sget-object v13, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "gagtm-deviceCustomization"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    aput-object v1, v11, v12

    const/16 v12, 0x8

    const-string v13, "gagtm-deviceCustomizationRevision"

    aput-object v13, v11, v12

    const/16 v12, 0x9

    aput-object v2, v11, v12

    const/16 v12, 0xa

    const-string v13, "gagtm-deviceCustomerId"

    aput-object v13, v11, v12

    const/16 v12, 0xb

    aput-object v0, v11, v12

    const/16 v12, 0xc

    const-string v13, "gagtm-deviceSimMcc"

    aput-object v13, v11, v12

    const/16 v12, 0xd

    aput-object v7, v11, v12

    const/16 v12, 0xe

    const-string v13, "gagtm-deviceSimMnc"

    aput-object v13, v11, v12

    const/16 v12, 0xf

    aput-object v8, v11, v12

    const/16 v12, 0x10

    const-string v13, "gagtm-deviceNetworkMcc"

    aput-object v13, v11, v12

    const/16 v12, 0x11

    aput-object v4, v11, v12

    const/16 v12, 0x12

    const-string v13, "gagtm-deviceNetworkMnc"

    aput-object v13, v11, v12

    const/16 v12, 0x13

    aput-object v5, v11, v12

    invoke-static {v11}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V
    :try_end_18e
    .catchall {:try_start_7f .. :try_end_18e} :catchall_1b5

    .line 850
    monitor-exit p0

    return-void

    .line 784
    .end local v10    # "tm":Landroid/telephony/TelephonyManager;
    :catch_190
    move-exception v3

    .line 785
    .local v3, "e":Ljava/lang/Exception;
    :try_start_191
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_34

    .line 786
    const-string v11, "GaGtmHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SystemProperty exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b3
    .catchall {:try_start_191 .. :try_end_1b3} :catchall_1b5

    goto/16 :goto_34

    .line 765
    .end local v0    # "customerId":Ljava/lang/String;
    .end local v1    # "customization":Ljava/lang/String;
    .end local v2    # "customizationRevision":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "networkMcc":Ljava/lang/String;
    .end local v5    # "networkMnc":Ljava/lang/String;
    .end local v7    # "simMcc":Ljava/lang/String;
    .end local v8    # "simMnc":Ljava/lang/String;
    :catchall_1b5
    move-exception v11

    monitor-exit p0

    throw v11

    .line 806
    .restart local v0    # "customerId":Ljava/lang/String;
    .restart local v1    # "customization":Ljava/lang/String;
    .restart local v2    # "customizationRevision":Ljava/lang/String;
    .restart local v4    # "networkMcc":Ljava/lang/String;
    .restart local v5    # "networkMnc":Ljava/lang/String;
    .restart local v7    # "simMcc":Ljava/lang/String;
    .restart local v8    # "simMnc":Ljava/lang/String;
    .restart local v10    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1b8
    :try_start_1b8
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_62

    .line 807
    const-string v11, "GaGtmHelper"

    const-string v12, "SIM state is not ready"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1c5} :catch_1c7
    .catchall {:try_start_1b8 .. :try_end_1c5} :catchall_1b5

    goto/16 :goto_62

    .line 810
    :catch_1c7
    move-exception v3

    .line 811
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_1c8
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_62

    .line 812
    const-string v11, "GaGtmHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected exception reading SIM info:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_62

    .line 823
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1ec
    move-exception v3

    .line 824
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_7f

    .line 825
    const-string v11, "GaGtmHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected exception reading network info:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20f
    .catchall {:try_start_1c8 .. :try_end_20f} :catchall_1b5

    goto/16 :goto_7f
.end method

.method public pushStartSession()V
    .registers 4

    .prologue
    .line 656
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 657
    const-string v0, "GaGtmHelper"

    const-string v1, "pushStartSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_d
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "startSession"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 661
    return-void
.end method

.method public pushTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "timingCategory"    # Ljava/lang/String;
    .param p2, "timingValue"    # J
    .param p4, "timingVar"    # Ljava/lang/String;
    .param p5, "timingLabel"    # Ljava/lang/String;

    .prologue
    .line 641
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 642
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushTiming category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " var="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_40
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "timing"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gagtm-timingCategory"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string v2, "gagtm-timingValue"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gagtm-timingVar"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p4, v0, v1

    const/16 v1, 0x8

    const-string v2, "gagtm-timingLabel"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object p5, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 650
    return-void
.end method

.method public pushToDataLayer(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 736
    .local p1, "keyValueData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 737
    :try_start_3
    iget-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoaded:Z

    if-eqz v0, :cond_12

    .line 738
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 756
    :cond_10
    :goto_10
    monitor-exit v1

    .line 757
    return-void

    .line 741
    :cond_12
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 742
    const-string v0, "GaGtmHelper"

    const-string v2, "Container is NOT loaded, add to queue"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_1f
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x32

    if-ge v0, v2, :cond_32

    .line 748
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 756
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0

    .line 750
    :cond_32
    :try_start_32
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 751
    const-string v0, "GaGtmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max pending events reached. Dropping event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_2f

    goto :goto_10
.end method

.method public serializeQueueToFile()V
    .registers 12

    .prologue
    .line 264
    sget-object v8, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v8

    .line 265
    :try_start_3
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 266
    const-string v7, "GaGtmHelper"

    const-string v9, "serializeQueueToFile"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_10
    iget-object v7, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-nez v7, :cond_27

    .line 271
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 272
    const-string v7, "GaGtmHelper"

    const-string v9, "No buffered events to serialize to file."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_25
    monitor-exit v8

    .line 340
    :goto_26
    return-void

    .line 278
    :cond_27
    iget-object v7, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_ab

    move-result-object v4

    .line 279
    .local v4, "manager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 280
    .local v3, "info":Landroid/content/pm/PackageInfo;
    const/4 v0, 0x0

    .line 282
    .local v0, "appVersion":Ljava/lang/String;
    :try_start_2f
    iget-object v7, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 284
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_3c} :catch_ae
    .catchall {:try_start_2f .. :try_end_3c} :catchall_ab

    .line 288
    :goto_3c
    :try_start_3c
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 289
    const-string v7, "GaGtmHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current appVersion="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_3c .. :try_end_5a} :catchall_ab

    .line 295
    :cond_5a
    const/4 v2, 0x0

    .line 296
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 298
    .local v5, "oos":Ljava/io/ObjectOutputStream;
    :try_start_5c
    iget-object v7, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string v9, "GTM_buffered_events"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 300
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_6a} :catch_b5
    .catchall {:try_start_5c .. :try_end_6a} :catchall_e5

    .line 303
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .local v6, "oos":Ljava/io/ObjectOutputStream;
    :try_start_6a
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 304
    const-string v7, "GaGtmHelper"

    const-string v9, "Write version"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_77
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 309
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_88

    .line 310
    const-string v7, "GaGtmHelper"

    const-string v9, "Write app version"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_88
    invoke-virtual {v6, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 315
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_98

    .line 316
    const-string v7, "GaGtmHelper"

    const-string v9, "Write pending events to file"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_98
    iget-object v7, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v6, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_9d} :catch_fc
    .catchall {:try_start_6a .. :try_end_9d} :catchall_f9

    .line 325
    if-eqz v6, :cond_a2

    .line 327
    :try_start_9f
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_f1
    .catchall {:try_start_9f .. :try_end_a2} :catchall_ab

    .line 332
    :cond_a2
    :goto_a2
    if-eqz v2, :cond_ff

    .line 334
    :try_start_a4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_b2
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_ab

    move-object v5, v6

    .line 339
    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :cond_a8
    :goto_a8
    :try_start_a8
    monitor-exit v8

    goto/16 :goto_26

    .end local v0    # "appVersion":Ljava/lang/String;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "manager":Landroid/content/pm/PackageManager;
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_ab
    move-exception v7

    monitor-exit v8
    :try_end_ad
    .catchall {:try_start_a8 .. :try_end_ad} :catchall_ab

    throw v7

    .line 285
    .restart local v0    # "appVersion":Ljava/lang/String;
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    .restart local v4    # "manager":Landroid/content/pm/PackageManager;
    :catch_ae
    move-exception v1

    .line 286
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_af
    const-string v0, ""
    :try_end_b1
    .catchall {:try_start_af .. :try_end_b1} :catchall_ab

    goto :goto_3c

    .line 335
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catch_b2
    move-exception v7

    move-object v5, v6

    .line 336
    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_a8

    .line 319
    :catch_b5
    move-exception v1

    .line 320
    .local v1, "e":Ljava/io/IOException;
    :goto_b6
    :try_start_b6
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_d8

    .line 321
    const-string v7, "GaGtmHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catchall {:try_start_b6 .. :try_end_d8} :catchall_e5

    .line 325
    :cond_d8
    if-eqz v5, :cond_dd

    .line 327
    :try_start_da
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_f3
    .catchall {:try_start_da .. :try_end_dd} :catchall_ab

    .line 332
    :cond_dd
    :goto_dd
    if-eqz v2, :cond_a8

    .line 334
    :try_start_df
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_e3
    .catchall {:try_start_df .. :try_end_e2} :catchall_ab

    goto :goto_a8

    .line 335
    :catch_e3
    move-exception v7

    goto :goto_a8

    .line 325
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_e5
    move-exception v7

    :goto_e6
    if-eqz v5, :cond_eb

    .line 327
    :try_start_e8
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_f5
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_ab

    .line 332
    :cond_eb
    :goto_eb
    if-eqz v2, :cond_f0

    .line 334
    :try_start_ed
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_f7
    .catchall {:try_start_ed .. :try_end_f0} :catchall_ab

    .line 336
    :cond_f0
    :goto_f0
    :try_start_f0
    throw v7
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ab

    .line 328
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catch_f1
    move-exception v7

    goto :goto_a2

    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catch_f3
    move-exception v7

    goto :goto_dd

    .end local v1    # "e":Ljava/io/IOException;
    :catch_f5
    move-exception v9

    goto :goto_eb

    .line 335
    :catch_f7
    move-exception v9

    goto :goto_f0

    .line 325
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_f9
    move-exception v7

    move-object v5, v6

    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_e6

    .line 319
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catch_fc
    move-exception v1

    move-object v5, v6

    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_b6

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :cond_ff
    move-object v5, v6

    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_a8
.end method

.method public setContainerDefaults()V
    .registers 15

    .prologue
    .line 857
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 858
    const-string v9, "GaGtmHelper"

    const-string v10, "setContainerDefaults"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_d
    iget-object v9, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    if-nez v9, :cond_1f

    .line 862
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 863
    const-string v9, "GaGtmHelper"

    const-string v10, "container holder is null exiting"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_1e
    :goto_1e
    return-void

    .line 868
    :cond_1f
    iget-object v9, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-interface {v9}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    .line 870
    .local v0, "container":Lcom/google/android/gms/tagmanager/Container;
    if-nez v0, :cond_35

    .line 871
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 872
    const-string v9, "GaGtmHelper"

    const-string v10, "container is null exiting"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 878
    :cond_35
    const-string v9, "gagtm-dispatchPeriod"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v1, v10

    .line 879
    .local v1, "gaDispatchPeriod":I
    if-gtz v1, :cond_40

    .line 882
    const/16 v1, 0x708

    .line 884
    :cond_40
    iget-object v9, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v8

    .line 885
    .local v8, "googleAnalytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_64

    .line 886
    const-string v9, "GaGtmHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "gaDispatchPeriod:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_64
    invoke-virtual {v8, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    .line 891
    const-string v9, "gagtm-forceLocalDispatch"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v9, v10, v12

    if-nez v9, :cond_d2

    const/4 v7, 0x1

    .line 893
    .local v7, "gaForceLocalDispatch":Z
    :goto_74
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_92

    .line 894
    const-string v9, "GaGtmHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "gaForceLocalDispatch:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_92
    if-eqz v7, :cond_a1

    .line 897
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_a1

    .line 898
    const-string v9, "GaGtmHelper"

    const-string v10, "gaForceLocalDispatch will be ignored, consider removing it from your container"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_a1
    const-string v9, "gagtm-exceptionMaxReportedRows"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v4, v10

    .line 909
    .local v4, "gaExceptionMaxReportedRows":I
    invoke-static {v4}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setMaxReportedRows(I)V

    .line 912
    const-string v9, "gagtm-exceptionMaxTraversedRows"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v5, v10

    .line 914
    .local v5, "gaExceptionMaxTraversedRows":I
    invoke-static {v5}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setMaxTraversedRows(I)V

    .line 917
    const-string v9, "gagtm-exceptionPackageNames"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/tagmanager/Container;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 918
    .local v6, "gaExceptionPackageNames":Ljava/lang/String;
    invoke-static {v6}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setEnabledPackageNames(Ljava/lang/String;)V

    .line 921
    const-string v9, "gagtm-exceptionHashList"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/tagmanager/Container;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 922
    .local v3, "gaExceptionHashList":Ljava/lang/String;
    invoke-static {v3}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setDeepCrashHashList(Ljava/lang/String;)V

    .line 925
    const-string v9, "gagtm-exceptionDeepMode"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/tagmanager/Container;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 926
    .local v2, "gaExceptionDeepMode":Ljava/lang/String;
    invoke-static {v2}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setDeepMode(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 891
    .end local v2    # "gaExceptionDeepMode":Ljava/lang/String;
    .end local v3    # "gaExceptionHashList":Ljava/lang/String;
    .end local v4    # "gaExceptionMaxReportedRows":I
    .end local v5    # "gaExceptionMaxTraversedRows":I
    .end local v6    # "gaExceptionPackageNames":Ljava/lang/String;
    .end local v7    # "gaForceLocalDispatch":Z
    :cond_d2
    const/4 v7, 0x0

    goto :goto_74
.end method
